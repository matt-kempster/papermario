#!/usr/bin/env python3

def migrate_asm(asm: str) -> str:
    lines = ["#include \"common.h\"", ""]

    for line in asm.splitlines():
        line = line.strip()

        if line.startswith('glabel'):
            symbol_name = line.split(" ")[1]
            lines.append(f"s32 {symbol_name}[] = {{")
        elif line.startswith(".word"):
            lines.append("    " + line[5:])
            lines.append("};")
            lines.append("")

    return "\n".join(lines)

if __name__ == "__main__":
    import sys
    import os

    if len(sys.argv) > 1:
        for filename in sys.argv[1:]:
            with open(filename, "r") as f:
                asm = f.read()

            c = migrate_asm(asm)
            c_filename = (filename.split(".")[0] + ".c").replace("ver/us/asm/data/", "src/")

            with open(c_filename, "w") as f:
                f.write(c)

            os.remove(filename)

            print(f"{filename} migrated to {c_filename}")
    else:
        print("warning: no files specified")
        print("usage: ./tools/migrate_data_simple.c <.data.s files>")
