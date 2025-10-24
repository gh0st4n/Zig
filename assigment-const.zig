const std = @import("std");

fn foo() !void {
    const val: i32 = 145;

    var stdout_buf: [128]u8 = undefined;
    var stdout_writer = std.fs.File.stdout().writer(&stdout_buf);
    const out = &stdout_writer.interface;

    try out.print("- Value: {}\n", .{val});
    try out.flush();
}

pub fn main() !void {
    try foo();
}

