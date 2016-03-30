--[[
  * TITLE  : Easybulb Lua Interface
  * AUTHOR : wagn, hates_sundays
  * WEBSITE: http://wagn.me/ http://sundays.org.uk/
  * VERSION: 1.0
  * UPDATED: 30/3/2016
  * DESC   : Controls an Easybulb via UDP.
--]]

local socket        = require "socket";
local udp           = socket.udp();
local address, port = "192.168.0.8", 8899; -- Configure this.

local command = {};
local options = {
  [1] = {"on", 0x42, 0x00, 0x55},
  [2] = {"off", 0x4e, 0x03, 0x55},
  [3] = {"white", 0xc2, 0x00, 0x55},
  [4] = {"violet", 0x40, 0x00, 0x55},
  [5] = {"blue", 0x40, 0x10, 0x55},
  [6] = {"lightblue", 0x40, 0x20, 0x55},
  [7] = {"green", 0x40, 0x60, 0x55},
  [8] = {"lime", 0x40, 0x70, 0x55},
  [9] = {"yellow", 0x40, 0x80, 0x55},
  [10] = {"yelloworange", 0x40, 0x90, 0x55},
  [11] = {"orange", 0x40, 0xa0, 0x55},
  [12] = {"red", 0x40, 0xb0, 0x55},
  [13] = {"pink", 0x40, 0xc0, 0x55},
  [14] = {"lilac", 0x40, 0xe0, 0x55},
  [15] = {"disco", 0x4d, 0x00, 0x55};
};

local function unpack (t, i) -- Deprecated in 5.2
  local i = i or 1;
  if t[i] ~= nil then
    return t[i], unpack(t, i + 1);
  end
end

for i, v in ipairs(options) do
  if arg[1] == v[1] then
    table.insert(command, v[2]);
    table.insert(command, v[3]);
    table.insert(command, v[4]);
  end
end

local message = string.char(unpack(command));
udp:setpeername(address, port); -- Connect
udp:settimeout(0);
udp:send(message);
udp:close();

