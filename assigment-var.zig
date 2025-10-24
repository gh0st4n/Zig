const std = @import("std");

fn foo() void{
    var y:i32 = 5678;

    y += 1;

    std.debug.print("- The values is : {d}\n", .{y});
}

pub fn main() void{
    foo();
}
