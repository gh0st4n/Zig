const std = @import("std");

pub fn main() void{
  const nama:[]const u8 = "GH0sT4n";
  const namat:[]const u8 = "Walawe";
  const cha = nama[0]; //Menggambil Huruf "G" karena index dimulai dari 0
  // const chaer = nama[10]; // Akan error karena index variabel nama hanya 6
  const chat = nama[3];

  std.debug.print("Nama GW : {s} <-> Nama Teman {s}\n", .{nama, namat});
  std.debug.print("Elemen Pertama Nama GW : {c}\n", .{cha});
  std.debug.print("Elemen Keempat Nama Teman GW : {c}\n". ,{chat});
}
