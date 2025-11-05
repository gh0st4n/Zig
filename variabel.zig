const std = @import("std");

pub fn main() void{ 
    // Immutable(Tidak Dapat di ubah)
    const fixed_value = 42; // Tipe data (i32 secara default) disimpulkan
    
    // Mutable(Dapat Di ubah)
    var changeable_value:u16 = 10; // Tipe data uint16 eksplisit
    
    // Mencetak Nilai
    std.debug.print("Nilai Konstanta = {d}\n", .{fixed_value});
    std.debug.print("Nilai Variabel Awal = {d}\n", .{changeable_value});

    // Mengubah nilai Variabel
    changeable_value = 20;
    std.debug.print("Nilai Variabel Baru = {d}\n", .{changeable_value});

    // fixed_value = 50; // Akan menyebabkan error kompilasi karena nilai const
}
