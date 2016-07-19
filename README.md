# Easybulb-Lua
Controlling an Easybulb Plus through UDP with Lua & Luasocket

# Dependencies
Lua ≥ 5.2

LuaSocket ≥ 3.0


# Usage
In a Linux terminal:
```
lua easybulb.lua on
```


The full list of commands:

| Command      | Bytes            | RGB Value   | Hex Value |
|--------------|------------------|-------------|-----------|
| on           | `0x42, 0x00, 0x55` | | |
| off          | `0x4e, 0x03, 0x55` | | |
| white        | `0xc2, 0x00, 0x55` | | |
| violet       | `0x40, 0x00, 0x55` | | |
| blue         | `0x40, 0x10, 0x55` | | |
| lightblue    | `0x40, 0x20, 0x55` | | |
| green        | `0x40, 0x60, 0x55` | | |
| lime         | `0x40, 0x70, 0x55` | | |
| yellow       | `0x40, 0x80, 0x55` | | |
| yelloworange | `0x40, 0x90, 0x55` | | |
| orange       | `0x40, 0xa0, 0x55` | | |
| red          | `0x40, 0xb0, 0x55` | | |
| pink         | `0x40, 0xc0, 0x55` | | |
| lilac        | `0x40, 0xe0, 0x55` | | |
| disco        | `0x4d, 0x00, 0x55` | | |
