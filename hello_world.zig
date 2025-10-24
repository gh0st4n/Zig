const std = @import("std");

pub fn main() !void{
    try std.fs.File.stdout().writeAll("Hello World!\n");
}

// Simple Code Hello World
// pub fn main() void {
//     std.debug.print("Hello World\n", .{});
// }
