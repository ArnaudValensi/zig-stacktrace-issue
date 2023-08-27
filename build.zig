const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "foobar",
        .root_source_file = .{ .path = "stacktrace.zig" },
        .target = target,
        .optimize = optimize,
    });
    exe.addCSourceFile(.{
        .file = .{ .path = "main.c" },
        .flags = &.{"-std=c99"},
    });
    exe.linkLibC();
    b.installArtifact(exe);
}
