const std = @import("std");

export fn dump_stack_trace() void {
    std.debug.dumpCurrentStackTrace(null);
}

pub const _start = void;
