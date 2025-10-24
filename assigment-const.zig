const std = @import("std");

// fn foo() !void{
//     const val:i32 = 145;
//     try std.fs.File.stdout().writeAll("- Value: {}", .{val});
// }
//
// pub fn main() !void{
//     try foo();
// }

//==Error==
// tan@T4n-Mala:/home/extend/Developer/Zig/Self/Official$ zig build-exe assigment-const.zig
// assigment-const.zig:5:29: error: member function expected 1 argument(s), found 2
//     try std.fs.File.stdout().writeAll("- Value: {}", .{val});
//         ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~
// /home/tan/.utility/Language/Zig/Zig-0.15.2/lib/std/fs/File.zig:975:5: note: function declared here
// pub fn writeAll(self: File, bytes: []const u8) WriteError!void {
// ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// referenced by:
//     main: assigment-const.zig:9:12
//     callMain [inlined]: /home/tan/.utility/Language/Zig/Zig-0.15.2/lib/std/start.zig:627:37
//     callMainWithArgs [inlined]: /home/tan/.utility/Language/Zig/Zig-0.15.2/lib/std/start.zig:587:20
//     posixCallMainAndExit: /home/tan/.utility/Language/Zig/Zig-0.15.2/lib/std/start.zig:542:36
//     2 reference(s) hidden; use '-freference-trace=6' to see all references
//
fn foo() void{
    const val:i32 = 4567;
    std.debug.print("- The value = {d}\n", .{val});
}

pub fn main() void{
    foo();
}
