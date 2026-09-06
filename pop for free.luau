\-- ================= \[ HWID PROTECTION ] =================

local function \_\_verify\_hwid()

&#x20;   local allowed\_hwids = {

&#x20;       \["48b2f42344b0d8636315bf21e3c58641c25fcc87c77a98ff9379a063a7127d3a"] = true,

&#x20;       \["7b66393562366263622d306139312d313166312d616664342d3830366536663665363936337d"] = true,

&#x20;   }



&#x20;   local current\_hwid = nil



&#x20;   local function normalize(id)

&#x20;       if typeof(id) == "string" then

&#x20;           local cleaned = string.gsub(id, "\[%s{}]", "")

&#x20;           return string.lower(cleaned)

&#x20;       end

&#x20;       return nil

&#x20;   end



&#x20;   pcall(function()

&#x20;       if typeof(gethwid) == "function" then

&#x20;           current\_hwid = normalize(gethwid())

&#x20;       elseif typeof(get\_hwid) == "function" then

&#x20;           current\_hwid = normalize(get\_hwid())

&#x20;       elseif syn and typeof(syn.get\_hardware\_id) == "function" then

&#x20;           current\_hwid = normalize(syn.get\_hardware\_id())

&#x20;       elseif fluxus and typeof(fluxus.get\_hwid) == "function" then

&#x20;           current\_hwid = normalize(fluxus.get\_hwid())

&#x20;       end

&#x20;   end)



&#x20;   if not current\_hwid then

&#x20;       pcall(function()

&#x20;           local rbxAnalytics = game:GetService("RbxAnalyticsService")

&#x20;           current\_hwid = normalize(rbxAnalytics:GetClientId())

&#x20;       end)

&#x20;   end



&#x20;   if not current\_hwid or not allowed\_hwids\[current\_hwid] then

&#x20;       local Players = game:GetService("Players")

&#x20;       local localPlayer = Players.LocalPlayer

&#x20;       if localPlayer then

&#x20;           pcall(function()

&#x20;               localPlayer:Kick("\[HWID Lock] HWID non autorise / Unauthorized HWID: " .. tostring(current\_hwid))

&#x20;           end)

&#x20;       end

&#x20;       error("\[HWID Lock] HWID non autorise: " .. tostring(current\_hwid), 0)

&#x20;       return false

&#x20;   end

&#x20;   return true

end



if not \_\_verify\_hwid() then

&#x20;   return

end

\-- =======================================================



\--!nolint UnknownGlobal

\--!nocheck



\-- MACRO PLAYBACK (AUTO EXPERT OBBY - NATIVE IN-GAME SPEED PATHFINDING)

local frames = {

{t = 0.000, c = CFrame.new(108.22, 1.84, 8.67), j = false},

{t = 0.018, c = CFrame.new(108.22, 1.84, 8.67), j = false},

{t = 0.050, c = CFrame.new(108.22, 1.85, 8.67), j = false},

{t = 0.083, c = CFrame.new(108.22, 1.85, 8.67), j = false},

{t = 0.100, c = CFrame.new(108.22, 1.85, 8.67), j = false},

{t = 0.117, c = CFrame.new(108.23, 1.85, 8.67), j = false},

{t = 0.150, c = CFrame.new(108.23, 1.85, 8.67), j = false},

{t = 0.183, c = CFrame.new(108.23, 1.85, 8.67), j = false},

{t = 0.217, c = CFrame.new(108.22, 1.85, 8.67), j = false},

{t = 0.250, c = CFrame.new(108.22, 1.85, 8.67), j = false},

{t = 0.267, c = CFrame.new(108.22, 1.85, 8.67), j = false},

{t = 0.299, c = CFrame.new(108.22, 1.85, 8.67), j = false},

{t = 0.316, c = CFrame.new(108.22, 1.85, 8.67), j = false},

{t = 0.334, c = CFrame.new(108.22, 1.84, 8.67), j = false},

{t = 0.366, c = CFrame.new(108.22, 1.85, 8.67), j = false},

{t = 0.383, c = CFrame.new(108.22, 1.85, 8.68), j = false},

{t = 0.417, c = CFrame.new(108.22, 1.84, 8.67), j = false},

{t = 0.435, c = CFrame.new(108.22, 1.84, 8.67), j = false},

{t = 0.467, c = CFrame.new(108.23, 1.84, 8.80), j = false},

{t = 0.500, c = CFrame.new(108.35, 1.84, 9.53), j = false},

{t = 0.517, c = CFrame.new(108.41, 1.84, 9.95), j = false},

{t = 0.550, c = CFrame.new(108.53, 1.84, 10.77), j = false},

{t = 0.583, c = CFrame.new(108.64, 1.84, 11.59), j = false},

{t = 0.616, c = CFrame.new(108.76, 1.84, 12.42), j = false},

{t = 0.633, c = CFrame.new(108.82, 1.84, 12.83), j = false},

{t = 0.666, c = CFrame.new(108.93, 1.84, 13.66), j = false},

{t = 0.699, c = CFrame.new(109.05, 1.84, 14.49), j = false},

{t = 0.716, c = CFrame.new(109.10, 1.84, 14.90), j = false},

{t = 0.734, c = CFrame.new(109.17, 1.84, 15.31), j = false},

{t = 0.766, c = CFrame.new(109.29, 1.84, 16.13), j = false},

{t = 0.784, c = CFrame.new(109.34, 1.84, 16.55), j = false},

{t = 0.817, c = CFrame.new(109.46, 1.84, 17.37), j = false},

{t = 0.849, c = CFrame.new(109.57, 1.84, 18.19), j = false},

{t = 0.867, c = CFrame.new(109.63, 1.84, 18.60), j = false},

{t = 0.900, c = CFrame.new(109.75, 1.84, 19.42), j = false},

{t = 0.933, c = CFrame.new(109.87, 1.84, 20.25), j = false},

{t = 0.951, c = CFrame.new(109.93, 1.84, 20.65), j = false},

{t = 0.982, c = CFrame.new(110.05, 1.84, 21.48), j = false},

{t = 0.999, c = CFrame.new(110.11, 1.84, 21.89), j = false},

{t = 1.017, c = CFrame.new(110.17, 1.84, 22.30), j = false},

{t = 1.051, c = CFrame.new(110.29, 1.84, 23.13), j = false},

{t = 1.068, c = CFrame.new(110.36, 1.85, 23.54), j = false},

{t = 1.100, c = CFrame.new(110.58, 1.85, 24.34), j = false},

{t = 1.117, c = CFrame.new(110.72, 1.85, 24.73), j = false},

{t = 1.134, c = CFrame.new(110.87, 1.85, 25.12), j = false},

{t = 1.166, c = CFrame.new(111.15, 1.84, 25.91), j = false},

{t = 1.184, c = CFrame.new(111.30, 1.85, 26.30), j = false},

{t = 1.217, c = CFrame.new(111.65, 1.85, 27.06), j = false},

{t = 1.250, c = CFrame.new(112.08, 1.85, 27.78), j = false},

{t = 1.284, c = CFrame.new(112.53, 1.85, 28.48), j = false},

{t = 1.317, c = CFrame.new(112.98, 1.85, 29.18), j = false},

{t = 1.350, c = CFrame.new(113.45, 1.85, 29.86), j = false},

{t = 1.383, c = CFrame.new(113.93, 1.85, 30.55), j = false},

{t = 1.400, c = CFrame.new(114.18, 1.84, 30.89), j = false},

{t = 1.433, c = CFrame.new(114.69, 1.84, 31.55), j = false},

{t = 1.451, c = CFrame.new(114.96, 1.85, 31.87), j = false},

{t = 1.484, c = CFrame.new(115.52, 1.85, 32.49), j = false},

{t = 1.516, c = CFrame.new(116.09, 1.85, 33.09), j = false},

{t = 1.533, c = CFrame.new(116.39, 1.85, 33.38), j = false},

{t = 1.551, c = CFrame.new(116.69, 1.85, 33.67), j = false},

{t = 1.582, c = CFrame.new(117.29, 1.85, 34.25), j = false},

{t = 1.599, c = CFrame.new(117.59, 1.85, 34.54), j = false},

{t = 1.616, c = CFrame.new(117.91, 1.85, 34.81), j = false},

{t = 1.634, c = CFrame.new(118.22, 1.85, 35.09), j = false},

{t = 1.666, c = CFrame.new(118.85, 1.85, 35.62), j = false},

{t = 1.684, c = CFrame.new(119.17, 1.85, 35.90), j = false},

{t = 1.718, c = CFrame.new(119.80, 1.85, 36.43), j = false},

{t = 1.751, c = CFrame.new(120.46, 1.85, 36.94), j = false},

{t = 1.782, c = CFrame.new(121.13, 1.85, 37.42), j = false},

{t = 1.799, c = CFrame.new(121.47, 1.85, 37.66), j = false},

{t = 1.817, c = CFrame.new(121.82, 1.85, 37.89), j = false},

{t = 1.849, c = CFrame.new(122.51, 1.85, 38.36), j = false},

{t = 1.883, c = CFrame.new(123.21, 1.85, 38.82), j = false},

{t = 1.916, c = CFrame.new(123.92, 1.85, 39.26), j = false},

{t = 1.933, c = CFrame.new(124.27, 1.85, 39.47), j = false},

{t = 1.966, c = CFrame.new(124.98, 1.85, 39.90), j = false},

{t = 2.000, c = CFrame.new(125.70, 1.85, 40.33), j = false},

{t = 2.032, c = CFrame.new(126.42, 1.85, 40.77), j = false},

{t = 2.051, c = CFrame.new(126.77, 1.85, 40.98), j = false},

{t = 2.083, c = CFrame.new(127.49, 1.85, 41.42), j = false},

{t = 2.100, c = CFrame.new(127.84, 1.85, 41.63), j = false},

{t = 2.134, c = CFrame.new(128.56, 1.85, 42.06), j = false},

{t = 2.166, c = CFrame.new(129.28, 1.85, 42.49), j = false},

{t = 2.183, c = CFrame.new(129.63, 1.85, 42.70), j = false},

{t = 2.217, c = CFrame.new(130.35, 1.84, 43.13), j = false},

{t = 2.249, c = CFrame.new(131.06, 1.85, 43.56), j = false},

{t = 2.266, c = CFrame.new(131.42, 1.84, 43.77), j = false},

{t = 2.300, c = CFrame.new(132.13, 1.84, 44.20), j = false},

{t = 2.333, c = CFrame.new(132.85, 1.84, 44.63), j = false},

{t = 2.366, c = CFrame.new(133.56, 1.84, 45.06), j = false},

{t = 2.399, c = CFrame.new(134.28, 1.84, 45.48), j = false},

{t = 2.416, c = CFrame.new(134.64, 1.84, 45.69), j = false},

{t = 2.450, c = CFrame.new(135.36, 1.84, 46.12), j = false},

{t = 2.469, c = CFrame.new(135.71, 1.84, 46.34), j = false},

{t = 2.499, c = CFrame.new(136.43, 1.84, 46.77), j = false},

{t = 2.516, c = CFrame.new(136.78, 1.84, 46.98), j = false},

{t = 2.534, c = CFrame.new(137.14, 1.84, 47.20), j = false},

{t = 2.566, c = CFrame.new(137.85, 1.84, 47.63), j = false},

{t = 2.600, c = CFrame.new(138.57, 1.84, 48.06), j = false},

{t = 2.633, c = CFrame.new(139.28, 1.84, 48.49), j = false},

{t = 2.666, c = CFrame.new(139.99, 1.84, 48.92), j = false},

{t = 2.683, c = CFrame.new(140.35, 1.84, 49.14), j = false},

{t = 2.700, c = CFrame.new(140.70, 1.84, 49.36), j = false},

{t = 2.734, c = CFrame.new(141.40, 1.84, 49.81), j = false},

{t = 2.766, c = CFrame.new(142.10, 1.84, 50.28), j = false},

{t = 2.799, c = CFrame.new(142.79, 1.84, 50.74), j = false},

{t = 2.816, c = CFrame.new(143.13, 1.84, 50.98), j = false},

{t = 2.833, c = CFrame.new(143.48, 1.84, 51.21), j = false},

{t = 2.851, c = CFrame.new(143.83, 1.85, 51.44), j = false},

{t = 2.883, c = CFrame.new(144.51, 1.85, 51.91), j = false},

{t = 2.917, c = CFrame.new(145.20, 1.84, 52.38), j = false},

{t = 2.934, c = CFrame.new(145.55, 1.85, 52.62), j = false},

{t = 2.966, c = CFrame.new(146.23, 1.85, 53.09), j = false},

{t = 2.983, c = CFrame.new(146.57, 1.85, 53.32), j = false},

{t = 3.000, c = CFrame.new(146.92, 1.85, 53.56), j = false},

{t = 3.017, c = CFrame.new(147.26, 1.85, 53.80), j = false},

{t = 3.049, c = CFrame.new(147.94, 1.85, 54.27), j = false},

{t = 3.066, c = CFrame.new(148.28, 1.85, 54.51), j = false},

{t = 3.100, c = CFrame.new(148.97, 1.85, 54.98), j = false},

{t = 3.117, c = CFrame.new(149.31, 1.85, 55.22), j = false},

{t = 3.149, c = CFrame.new(150.00, 1.85, 55.69), j = false},

{t = 3.166, c = CFrame.new(150.34, 1.85, 55.93), j = false},

{t = 3.184, c = CFrame.new(150.69, 1.85, 56.16), j = false},

{t = 3.217, c = CFrame.new(151.38, 1.85, 56.63), j = false},

{t = 3.249, c = CFrame.new(152.06, 1.85, 57.10), j = false},

{t = 3.266, c = CFrame.new(152.41, 1.85, 57.34), j = false},

{t = 3.300, c = CFrame.new(153.09, 1.85, 57.81), j = false},

{t = 3.333, c = CFrame.new(153.77, 1.85, 58.30), j = false},

{t = 3.350, c = CFrame.new(154.09, 1.85, 58.56), j = false},

{t = 3.382, c = CFrame.new(154.75, 1.85, 59.08), j = false},

{t = 3.416, c = CFrame.new(155.39, 1.85, 59.61), j = false},

{t = 3.433, c = CFrame.new(155.70, 1.85, 59.88), j = false},

{t = 3.466, c = CFrame.new(156.33, 1.85, 60.44), j = false},

{t = 3.485, c = CFrame.new(156.65, 1.85, 60.71), j = false},

{t = 3.517, c = CFrame.new(157.26, 1.85, 61.27), j = false},

{t = 3.550, c = CFrame.new(157.87, 1.85, 61.84), j = false},

{t = 3.566, c = CFrame.new(158.17, 1.85, 62.12), j = false},

{t = 3.599, c = CFrame.new(158.76, 1.85, 62.71), j = false},

{t = 3.617, c = CFrame.new(159.05, 1.85, 63.01), j = false},

{t = 3.649, c = CFrame.new(159.62, 1.85, 63.61), j = false},

{t = 3.667, c = CFrame.new(159.90, 1.85, 63.92), j = false},

{t = 3.700, c = CFrame.new(160.45, 1.85, 64.55), j = false},

{t = 3.716, c = CFrame.new(160.72, 1.84, 64.87), j = false},

{t = 3.733, c = CFrame.new(160.97, 1.84, 65.20), j = false},

{t = 3.750, c = CFrame.new(161.22, 1.84, 65.54), j = false},

{t = 3.783, c = CFrame.new(161.68, 1.84, 66.23), j = false},

{t = 3.816, c = CFrame.new(162.08, 1.84, 66.95), j = false},

{t = 3.833, c = CFrame.new(162.27, 1.84, 67.32), j = false},

{t = 3.866, c = CFrame.new(162.62, 1.84, 68.08), j = false},

{t = 3.883, c = CFrame.new(162.79, 1.84, 68.47), j = false},

{t = 3.900, c = CFrame.new(162.95, 1.84, 68.85), j = false},

{t = 3.932, c = CFrame.new(163.25, 1.84, 69.63), j = false},

{t = 3.950, c = CFrame.new(163.39, 1.84, 70.01), j = false},

{t = 3.982, c = CFrame.new(163.66, 1.84, 70.80), j = false},

{t = 4.001, c = CFrame.new(163.79, 1.84, 71.19), j = false},

{t = 4.033, c = CFrame.new(164.03, 1.83, 71.99), j = false},

{t = 4.066, c = CFrame.new(164.28, 1.84, 72.79), j = false},

{t = 4.083, c = CFrame.new(164.40, 1.84, 73.19), j = false},

{t = 4.117, c = CFrame.new(164.64, 1.84, 73.98), j = false},

{t = 4.149, c = CFrame.new(164.89, 1.84, 74.79), j = false},

{t = 4.168, c = CFrame.new(165.00, 1.82, 75.19), j = false},

{t = 4.199, c = CFrame.new(165.24, 1.81, 75.99), j = false},

{t = 4.217, c = CFrame.new(165.35, 1.81, 76.40), j = false},

{t = 4.249, c = CFrame.new(165.56, 1.80, 77.20), j = false},

{t = 4.266, c = CFrame.new(165.66, 1.80, 77.61), j = false},

{t = 4.300, c = CFrame.new(165.86, 1.81, 78.42), j = false},

{t = 4.333, c = CFrame.new(166.04, 1.81, 79.24), j = false},

{t = 4.367, c = CFrame.new(166.20, 1.80, 80.06), j = false},

{t = 4.399, c = CFrame.new(166.35, 1.81, 80.88), j = false},

{t = 4.417, c = CFrame.new(166.43, 1.81, 81.29), j = false},

{t = 4.449, c = CFrame.new(166.58, 1.81, 82.11), j = false},

{t = 4.467, c = CFrame.new(166.64, 1.81, 82.52), j = false},

{t = 4.503, c = CFrame.new(166.74, 1.81, 83.35), j = false},

{t = 4.532, c = CFrame.new(166.83, 1.81, 84.18), j = false},

{t = 4.549, c = CFrame.new(166.87, 1.81, 84.60), j = false},

{t = 4.567, c = CFrame.new(166.92, 1.81, 85.01), j = false},

{t = 4.599, c = CFrame.new(167.00, 1.81, 85.84), j = false},

{t = 4.617, c = CFrame.new(167.03, 1.81, 86.26), j = false},

{t = 4.649, c = CFrame.new(167.09, 1.81, 87.09), j = false},

{t = 4.667, c = CFrame.new(167.13, 1.81, 87.50), j = false},

{t = 4.699, c = CFrame.new(167.18, 1.81, 88.33), j = false},

{t = 4.716, c = CFrame.new(167.21, 1.81, 88.74), j = false},

{t = 4.749, c = CFrame.new(167.24, 1.81, 89.57), j = false},

{t = 4.766, c = CFrame.new(167.26, 1.81, 89.98), j = false},

{t = 4.799, c = CFrame.new(167.31, 1.81, 90.81), j = false},

{t = 4.816, c = CFrame.new(167.33, 1.81, 91.22), j = false},

{t = 4.833, c = CFrame.new(167.36, 1.81, 91.64), j = false},

{t = 4.850, c = CFrame.new(167.37, 1.81, 92.06), j = false},

{t = 4.882, c = CFrame.new(167.42, 1.82, 92.89), j = false},

{t = 4.899, c = CFrame.new(167.44, 1.82, 93.30), j = false},

{t = 4.917, c = CFrame.new(167.46, 1.82, 93.72), j = false},

{t = 4.949, c = CFrame.new(167.50, 1.82, 94.55), j = false},

{t = 4.966, c = CFrame.new(167.51, 1.82, 94.96), j = false},

{t = 5.000, c = CFrame.new(167.55, 1.82, 95.80), j = false},

{t = 5.032, c = CFrame.new(167.59, 1.82, 96.63), j = false},

{t = 5.050, c = CFrame.new(167.61, 1.82, 97.05), j = false},

{t = 5.066, c = CFrame.new(167.62, 1.82, 97.47), j = false},

{t = 5.100, c = CFrame.new(167.64, 1.82, 98.29), j = false},

{t = 5.133, c = CFrame.new(167.67, 1.82, 99.13), j = false},

{t = 5.151, c = CFrame.new(167.68, 1.82, 99.54), j = false},

{t = 5.182, c = CFrame.new(167.71, 1.82, 100.37), j = false},

{t = 5.201, c = CFrame.new(167.72, 2.69, 100.79), j = true},

{t = 5.233, c = CFrame.new(167.74, 4.29, 101.62), j = false},

{t = 5.266, c = CFrame.new(167.78, 5.67, 102.45), j = false},

{t = 5.299, c = CFrame.new(167.86, 6.82, 103.28), j = false},

{t = 5.318, c = CFrame.new(167.92, 7.32, 103.70), j = false},

{t = 5.350, c = CFrame.new(168.07, 8.15, 104.51), j = false},

{t = 5.382, c = CFrame.new(168.09, 8.77, 105.31), j = false},

{t = 5.416, c = CFrame.new(167.99, 9.16, 106.13), j = false},

{t = 5.449, c = CFrame.new(167.98, 9.33, 106.97), j = false},

{t = 5.466, c = CFrame.new(168.02, 9.34, 107.38), j = false},

{t = 5.483, c = CFrame.new(168.08, 9.29, 107.79), j = false},

{t = 5.518, c = CFrame.new(168.30, 9.03, 108.59), j = false},

{t = 5.550, c = CFrame.new(168.66, 8.56, 109.34), j = false},

{t = 5.567, c = CFrame.new(168.89, 8.24, 109.69), j = false},

{t = 5.600, c = CFrame.new(169.35, 8.05, 110.30), j = false},

{t = 5.632, c = CFrame.new(169.43, 8.62, 110.68), j = false},

{t = 5.650, c = CFrame.new(169.45, 8.91, 110.81), j = false},

{t = 5.667, c = CFrame.new(168.99, 9.66, 111.00), j = true},

{t = 5.700, c = CFrame.new(168.15, 10.99, 111.40), j = false},

{t = 5.733, c = CFrame.new(167.47, 12.11, 111.82), j = false},

{t = 5.766, c = CFrame.new(166.94, 13.01, 112.29), j = false},

{t = 5.799, c = CFrame.new(166.54, 13.69, 112.84), j = false},

{t = 5.816, c = CFrame.new(166.39, 13.95, 113.15), j = false},

{t = 5.850, c = CFrame.new(166.18, 14.31, 113.84), j = false},

{t = 5.882, c = CFrame.new(166.13, 14.45, 114.58), j = false},

{t = 5.900, c = CFrame.new(166.16, 14.44, 114.97), j = false},

{t = 5.917, c = CFrame.new(166.23, 14.37, 115.36), j = false},

{t = 5.949, c = CFrame.new(166.50, 14.07, 116.11), j = false},

{t = 5.966, c = CFrame.new(166.68, 13.84, 116.47), j = false},

{t = 5.983, c = CFrame.new(166.85, 13.63, 116.74), j = false},

{t = 6.016, c = CFrame.new(167.36, 12.83, 117.53), j = false},

{t = 6.049, c = CFrame.new(167.83, 11.88, 118.21), j = false},

{t = 6.067, c = CFrame.new(168.07, 11.32, 118.55), j = false},

{t = 6.100, c = CFrame.new(168.60, 10.04, 119.19), j = false},

{t = 6.134, c = CFrame.new(169.16, 8.55, 119.81), j = false},

{t = 6.166, c = CFrame.new(169.49, 8.95, 120.32), j = false},

{t = 6.183, c = CFrame.new(169.49, 9.24, 120.39), j = false},

{t = 6.216, c = CFrame.new(169.48, 9.83, 120.39), j = false},

{t = 6.249, c = CFrame.new(169.49, 10.41, 120.39), j = false},

{t = 6.267, c = CFrame.new(168.99, 11.16, 120.43), j = true},

{t = 6.300, c = CFrame.new(168.09, 12.49, 120.52), j = false},

{t = 6.332, c = CFrame.new(167.34, 13.60, 120.68), j = false},

{t = 6.350, c = CFrame.new(167.02, 14.08, 120.79), j = false},

{t = 6.383, c = CFrame.new(166.46, 14.86, 121.08), j = false},

{t = 6.400, c = CFrame.new(166.23, 15.17, 121.26), j = false},

{t = 6.432, c = CFrame.new(165.85, 15.63, 121.72), j = false},

{t = 6.449, c = CFrame.new(165.71, 15.78, 121.99), j = false},

{t = 6.467, c = CFrame.new(165.59, 15.88, 122.29), j = false},

{t = 6.500, c = CFrame.new(165.46, 15.90, 122.94), j = false},

{t = 6.534, c = CFrame.new(165.48, 15.71, 123.65), j = false},

{t = 6.566, c = CFrame.new(165.65, 15.30, 124.40), j = false},

{t = 6.583, c = CFrame.new(165.79, 15.01, 124.77), j = false},

{t = 6.616, c = CFrame.new(166.20, 14.28, 125.49), j = false},

{t = 6.633, c = CFrame.new(166.43, 13.82, 125.83), j = false},

{t = 6.666, c = CFrame.new(166.92, 12.76, 126.51), j = false},

{t = 6.700, c = CFrame.new(167.43, 11.47, 127.16), j = false},

{t = 6.732, c = CFrame.new(167.96, 9.97, 127.80), j = false},

{t = 6.766, c = CFrame.new(168.50, 8.25, 128.45), j = false},

{t = 6.783, c = CFrame.new(168.77, 7.31, 128.76), j = false},

{t = 6.800, c = CFrame.new(169.05, 6.31, 129.08), j = false},

{t = 6.818, c = CFrame.new(169.30, 6.41, 129.38), j = false},

{t = 6.849, c = CFrame.new(169.64, 6.98, 129.87), j = false},

{t = 6.866, c = CFrame.new(169.69, 7.27, 130.04), j = false},

{t = 6.899, c = CFrame.new(169.76, 7.86, 130.27), j = false},

{t = 6.917, c = CFrame.new(169.78, 8.11, 130.36), j = true},

{t = 6.951, c = CFrame.new(169.76, 8.58, 130.53), j = false},

{t = 6.983, c = CFrame.new(169.65, 9.02, 130.66), j = false},

{t = 6.999, c = CFrame.new(169.58, 9.32, 130.68), j = false},

{t = 7.016, c = CFrame.new(169.07, 10.06, 130.62), j = true},

{t = 7.049, c = CFrame.new(168.17, 11.39, 130.53), j = false},

{t = 7.066, c = CFrame.new(167.78, 11.97, 130.52), j = false},

{t = 7.099, c = CFrame.new(167.08, 12.96, 130.56), j = false},

{t = 7.116, c = CFrame.new(166.77, 13.38, 130.62), j = false},

{t = 7.149, c = CFrame.new(166.23, 14.05, 130.83), j = false},

{t = 7.166, c = CFrame.new(165.98, 14.31, 131.00), j = false},

{t = 7.200, c = CFrame.new(165.54, 14.65, 131.43), j = false},

{t = 7.234, c = CFrame.new(165.15, 14.78, 132.02), j = false},

{t = 7.266, c = CFrame.new(164.88, 14.69, 132.68), j = false},

{t = 7.284, c = CFrame.new(164.80, 14.56, 133.02), j = false},

{t = 7.316, c = CFrame.new(164.76, 14.14, 133.70), j = false},

{t = 7.333, c = CFrame.new(164.80, 13.85, 134.05), j = false},

{t = 7.350, c = CFrame.new(164.88, 13.50, 134.40), j = false},

{t = 7.383, c = CFrame.new(165.17, 12.65, 135.09), j = false},

{t = 7.416, c = CFrame.new(165.59, 11.58, 135.79), j = false},

{t = 7.450, c = CFrame.new(166.05, 10.29, 136.49), j = false},

{t = 7.482, c = CFrame.new(166.49, 8.78, 137.19), j = false},

{t = 7.499, c = CFrame.new(166.69, 7.94, 137.56), j = false},

{t = 7.516, c = CFrame.new(166.86, 7.06, 137.94), j = false},

{t = 7.551, c = CFrame.new(167.10, 5.11, 138.74), j = false},

{t = 7.583, c = CFrame.new(167.22, 2.95, 139.56), j = false},

{t = 7.617, c = CFrame.new(167.30, 0.57, 140.39), j = false},

{t = 7.650, c = CFrame.new(167.38, -0.44, 140.80), j = false},

{t = 7.683, c = CFrame.new(167.45, 0.82, 141.36), j = false},

{t = 7.700, c = CFrame.new(167.49, 1.12, 141.78), j = false},

{t = 7.716, c = CFrame.new(167.53, 1.29, 142.19), j = false},

{t = 7.750, c = CFrame.new(167.60, 1.48, 143.02), j = false},

{t = 7.783, c = CFrame.new(167.67, 1.55, 143.85), j = false},

{t = 7.816, c = CFrame.new(167.74, 1.57, 144.68), j = false},

{t = 7.849, c = CFrame.new(167.81, 1.58, 145.51), j = false},

{t = 7.866, c = CFrame.new(167.85, 1.58, 145.92), j = false},

{t = 7.900, c = CFrame.new(167.92, 1.58, 146.75), j = false},

{t = 7.933, c = CFrame.new(168.00, 1.58, 147.58), j = false},

{t = 7.951, c = CFrame.new(168.05, 1.58, 147.99), j = false},

{t = 7.983, c = CFrame.new(168.09, 1.58, 148.36), j = false},

{t = 8.067, c = CFrame.new(168.09, 1.59, 148.50), j = false},

{t = 8.100, c = CFrame.new(168.07, 1.59, 149.24), j = false},

{t = 8.133, c = CFrame.new(168.04, 1.59, 150.08), j = false},

{t = 8.166, c = CFrame.new(168.02, 1.59, 150.91), j = false},

{t = 8.200, c = CFrame.new(168.00, 1.59, 151.75), j = false},

{t = 8.233, c = CFrame.new(167.98, 1.59, 152.58), j = false},

{t = 8.266, c = CFrame.new(167.95, 1.59, 153.41), j = false},

{t = 8.283, c = CFrame.new(167.94, 1.59, 153.83), j = false},

{t = 8.300, c = CFrame.new(167.93, 1.59, 154.25), j = false},

{t = 8.333, c = CFrame.new(167.91, 1.59, 155.08), j = false},

{t = 8.366, c = CFrame.new(167.89, 1.59, 155.91), j = false},

{t = 8.382, c = CFrame.new(167.88, 1.59, 156.33), j = false},

{t = 8.400, c = CFrame.new(167.87, 1.59, 156.74), j = false},

{t = 8.434, c = CFrame.new(167.84, 1.55, 157.58), j = false},

{t = 8.466, c = CFrame.new(167.81, 1.39, 158.42), j = false},

{t = 8.484, c = CFrame.new(167.79, 2.27, 158.83), j = true},

{t = 8.516, c = CFrame.new(167.71, 3.87, 159.66), j = false},

{t = 8.533, c = CFrame.new(167.66, 4.58, 160.08), j = false},

{t = 8.566, c = CFrame.new(167.55, 5.85, 160.91), j = false},

{t = 8.583, c = CFrame.new(167.49, 6.40, 161.32), j = false},

{t = 8.600, c = CFrame.new(167.41, 6.90, 161.73), j = false},

{t = 8.633, c = CFrame.new(167.25, 7.73, 162.55), j = false},

{t = 8.668, c = CFrame.new(167.09, 8.34, 163.37), j = false},

{t = 8.700, c = CFrame.new(166.92, 8.73, 164.18), j = false},

{t = 8.733, c = CFrame.new(166.76, 8.91, 164.99), j = false},

{t = 8.766, c = CFrame.new(166.60, 8.87, 165.81), j = false},

{t = 8.783, c = CFrame.new(166.52, 8.77, 166.22), j = false},

{t = 8.800, c = CFrame.new(166.45, 8.61, 166.63), j = false},

{t = 8.833, c = CFrame.new(166.29, 8.13, 167.45), j = false},

{t = 8.867, c = CFrame.new(166.13, 7.44, 168.27), j = false},

{t = 8.884, c = CFrame.new(166.04, 7.01, 168.67), j = false},

{t = 8.916, c = CFrame.new(165.89, 6.12, 169.09), j = false},

{t = 8.934, c = CFrame.new(165.71, 6.09, 169.09), j = false},

{t = 8.967, c = CFrame.new(165.16, 6.15, 169.10), j = false},

{t = 8.999, c = CFrame.new(164.57, 6.17, 169.12), j = false},

{t = 9.016, c = CFrame.new(164.28, 6.18, 169.08), j = false},

{t = 9.050, c = CFrame.new(163.72, 6.18, 169.07), j = false},

{t = 9.082, c = CFrame.new(163.17, 6.19, 169.06), j = false},

{t = 9.116, c = CFrame.new(162.68, 6.18, 169.11), j = false},

{t = 9.133, c = CFrame.new(162.43, 6.18, 169.18), j = false},

{t = 9.166, c = CFrame.new(161.93, 6.15, 169.49), j = false},

{t = 9.200, c = CFrame.new(161.42, 6.93, 169.88), j = true},

{t = 9.233, c = CFrame.new(160.98, 8.50, 170.34), j = false},

{t = 9.265, c = CFrame.new(160.68, 9.85, 170.89), j = false},

{t = 9.282, c = CFrame.new(160.58, 10.44, 171.20), j = false},

{t = 9.300, c = CFrame.new(160.52, 10.98, 171.51), j = false},

{t = 9.333, c = CFrame.new(160.51, 11.89, 172.19), j = false},

{t = 9.366, c = CFrame.new(160.64, 12.58, 172.92), j = false},

{t = 9.383, c = CFrame.new(160.77, 12.85, 173.31), j = false},

{t = 9.416, c = CFrame.new(161.05, 13.22, 174.09), j = false},

{t = 9.433, c = CFrame.new(161.19, 13.32, 174.48), j = false},

{t = 9.450, c = CFrame.new(161.34, 13.37, 174.87), j = false},

{t = 9.467, c = CFrame.new(161.48, 13.36, 175.26), j = false},

{t = 9.499, c = CFrame.new(161.79, 13.19, 176.04), j = false},

{t = 9.533, c = CFrame.new(162.13, 12.79, 176.80), j = false},

{t = 9.550, c = CFrame.new(162.26, 12.52, 177.17), j = false},

{t = 9.583, c = CFrame.new(162.26, 11.85, 177.92), j = false},

{t = 9.617, c = CFrame.new(162.34, 10.97, 178.67), j = false},

{t = 9.634, c = CFrame.new(162.38, 10.46, 179.04), j = false},

{t = 9.667, c = CFrame.new(162.44, 9.28, 179.77), j = false},

{t = 9.686, c = CFrame.new(162.47, 8.62, 180.13), j = false},

{t = 9.717, c = CFrame.new(162.53, 7.16, 180.85), j = false},

{t = 9.750, c = CFrame.new(162.74, 5.49, 181.52), j = false},

{t = 9.783, c = CFrame.new(163.08, 4.85, 182.00), j = false},

{t = 9.800, c = CFrame.new(163.33, 5.38, 182.08), j = false},

{t = 9.833, c = CFrame.new(163.80, 6.07, 182.06), j = false},

{t = 9.850, c = CFrame.new(164.07, 6.13, 181.81), j = false},

{t = 9.882, c = CFrame.new(164.63, 6.18, 181.20), j = false},

{t = 9.899, c = CFrame.new(164.91, 6.19, 180.89), j = false},

{t = 9.933, c = CFrame.new(165.43, 6.20, 180.61), j = false},

{t = 9.966, c = CFrame.new(165.86, 6.20, 180.58), j = false},

{t = 9.982, c = CFrame.new(166.06, 6.20, 180.58), j = false},

{t = 10.016, c = CFrame.new(166.47, 6.20, 180.58), j = false},

{t = 10.033, c = CFrame.new(166.68, 6.20, 180.59), j = false},

{t = 10.050, c = CFrame.new(166.88, 6.20, 180.58), j = false},

{t = 10.083, c = CFrame.new(167.11, 6.20, 180.61), j = false},

{t = 10.100, c = CFrame.new(167.11, 6.20, 180.63), j = false},

{t = 10.133, c = CFrame.new(167.11, 6.20, 180.63), j = false},

{t = 10.150, c = CFrame.new(167.11, 6.20, 180.63), j = false},

{t = 10.184, c = CFrame.new(167.11, 6.20, 180.65), j = false},

{t = 10.216, c = CFrame.new(167.11, 6.20, 180.67), j = false},

{t = 10.249, c = CFrame.new(167.12, 6.20, 180.68), j = false},

{t = 10.283, c = CFrame.new(167.12, 6.20, 180.67), j = false},

{t = 10.300, c = CFrame.new(167.12, 6.20, 180.68), j = false},

{t = 10.333, c = CFrame.new(167.12, 6.20, 180.68), j = false},

{t = 10.366, c = CFrame.new(167.13, 6.20, 180.67), j = false},

{t = 10.383, c = CFrame.new(167.13, 6.20, 180.68), j = false},

{t = 10.400, c = CFrame.new(167.12, 6.20, 180.67), j = false},

{t = 10.432, c = CFrame.new(167.12, 6.20, 180.67), j = false},

{t = 10.450, c = CFrame.new(167.12, 6.20, 180.67), j = false},

{t = 10.467, c = CFrame.new(167.18, 6.20, 180.78), j = false},

{t = 10.501, c = CFrame.new(167.50, 7.07, 181.42), j = true},

{t = 10.533, c = CFrame.new(167.80, 8.66, 182.19), j = false},

{t = 10.566, c = CFrame.new(168.01, 10.04, 183.00), j = false},

{t = 10.599, c = CFrame.new(168.15, 11.20, 183.82), j = false},

{t = 10.616, c = CFrame.new(168.19, 11.70, 184.23), j = false},

{t = 10.633, c = CFrame.new(168.23, 12.14, 184.64), j = false},

{t = 10.667, c = CFrame.new(168.25, 12.86, 185.48), j = false},

{t = 10.702, c = CFrame.new(168.21, 13.36, 186.31), j = false},

{t = 10.733, c = CFrame.new(168.15, 13.65, 187.14), j = false},

{t = 10.766, c = CFrame.new(168.06, 13.72, 187.97), j = false},

{t = 10.783, c = CFrame.new(168.01, 13.67, 188.38), j = false},

{t = 10.800, c = CFrame.new(167.95, 13.56, 188.80), j = false},

{t = 10.817, c = CFrame.new(167.88, 13.41, 189.20), j = false},

{t = 10.850, c = CFrame.new(167.62, 12.93, 189.94), j = false},

{t = 10.883, c = CFrame.new(167.23, 12.24, 190.60), j = false},

{t = 10.915, c = CFrame.new(166.80, 11.45, 191.13), j = false},

{t = 10.933, c = CFrame.new(166.54, 10.79, 191.54), j = false},

{t = 10.966, c = CFrame.new(166.23, 9.55, 192.25), j = false},

{t = 10.983, c = CFrame.new(166.13, 8.85, 192.58), j = false},

{t = 11.017, c = CFrame.new(165.85, 7.45, 192.55), j = false},

{t = 11.050, c = CFrame.new(165.60, 5.83, 192.50), j = false},

{t = 11.082, c = CFrame.new(165.50, 4.00, 192.48), j = false},

{t = 11.100, c = CFrame.new(165.50, 2.99, 192.48), j = false},

{t = 11.132, c = CFrame.new(165.50, 1.18, 192.48), j = false},

{t = 11.149, c = CFrame.new(165.50, 1.21, 192.48), j = false},

{t = 11.167, c = CFrame.new(165.37, 1.32, 192.47), j = false},

{t = 11.201, c = CFrame.new(164.63, 1.44, 192.40), j = false},

{t = 11.233, c = CFrame.new(163.92, 1.48, 192.34), j = false},

{t = 11.267, c = CFrame.new(163.84, 1.49, 192.34), j = false},

{t = 11.300, c = CFrame.new(163.84, 1.49, 192.34), j = false},

{t = 11.333, c = CFrame.new(163.84, 1.49, 192.34), j = false},

{t = 11.366, c = CFrame.new(163.84, 1.49, 192.34), j = false},

{t = 11.383, c = CFrame.new(163.84, 1.49, 192.34), j = false},

{t = 11.416, c = CFrame.new(163.84, 1.49, 192.34), j = false},

{t = 11.433, c = CFrame.new(163.84, 1.50, 192.34), j = false},

{t = 11.465, c = CFrame.new(163.84, 1.50, 192.34), j = false},

{t = 11.499, c = CFrame.new(163.84, 1.50, 192.34), j = false},

{t = 11.532, c = CFrame.new(163.84, 1.50, 192.34), j = false},

{t = 11.549, c = CFrame.new(163.84, 1.50, 192.34), j = false},

{t = 11.583, c = CFrame.new(163.84, 1.50, 192.34), j = false},

{t = 11.615, c = CFrame.new(163.84, 1.50, 192.34), j = false},

{t = 11.633, c = CFrame.new(163.84, 1.50, 192.34), j = false},

{t = 11.666, c = CFrame.new(163.84, 1.50, 192.34), j = false},

{t = 11.699, c = CFrame.new(163.85, 1.50, 192.33), j = false},

{t = 11.719, c = CFrame.new(163.85, 1.50, 192.33), j = false},

{t = 11.750, c = CFrame.new(163.84, 1.50, 192.33), j = false},

{t = 11.783, c = CFrame.new(163.84, 1.50, 192.33), j = false},

{t = 11.816, c = CFrame.new(163.84, 1.50, 192.33), j = false},

{t = 11.849, c = CFrame.new(163.84, 1.50, 192.33), j = false},

{t = 11.866, c = CFrame.new(163.84, 1.50, 192.32), j = false},

{t = 11.883, c = CFrame.new(163.84, 1.50, 192.45), j = false},

{t = 11.901, c = CFrame.new(163.71, 1.50, 192.70), j = false},

{t = 11.932, c = CFrame.new(163.33, 1.50, 192.70), j = false},

{t = 11.949, c = CFrame.new(163.11, 1.50, 192.71), j = false},

{t = 11.966, c = CFrame.new(162.89, 1.50, 192.74), j = false},

{t = 11.984, c = CFrame.new(162.67, 1.50, 192.79), j = false},

{t = 12.016, c = CFrame.new(162.22, 3.18, 192.85), j = false},

{t = 12.050, c = CFrame.new(161.76, 4.59, 192.87), j = false},

{t = 12.083, c = CFrame.new(161.30, 5.76, 192.99), j = false},

{t = 12.100, c = CFrame.new(161.07, 6.26, 193.11), j = false},

{t = 12.133, c = CFrame.new(160.64, 7.11, 193.46), j = false},

{t = 12.166, c = CFrame.new(160.26, 7.74, 193.97), j = false},

{t = 12.183, c = CFrame.new(160.11, 7.97, 194.28), j = false},

{t = 12.217, c = CFrame.new(159.88, 8.27, 194.97), j = false},

{t = 12.249, c = CFrame.new(159.80, 8.35, 195.63), j = false},

{t = 12.266, c = CFrame.new(159.82, 8.31, 196.13), j = false},

{t = 12.283, c = CFrame.new(159.87, 8.21, 196.53), j = false},

{t = 12.316, c = CFrame.new(160.07, 7.86, 197.34), j = false},

{t = 12.333, c = CFrame.new(160.18, 7.60, 197.74), j = false},

{t = 12.366, c = CFrame.new(160.42, 6.92, 198.54), j = false},

{t = 12.383, c = CFrame.new(160.54, 6.50, 198.94), j = false},

{t = 12.416, c = CFrame.new(160.81, 5.49, 199.73), j = false},

{t = 12.433, c = CFrame.new(160.97, 4.91, 200.12), j = false},

{t = 12.450, c = CFrame.new(161.15, 4.27, 200.49), j = false},

{t = 12.466, c = CFrame.new(161.34, 3.57, 200.86), j = false},

{t = 12.500, c = CFrame.new(161.78, 2.02, 201.57), j = false},

{t = 12.533, c = CFrame.new(162.34, 0.25, 202.19), j = false},

{t = 12.550, c = CFrame.new(162.50, -0.68, 202.45), j = false},

{t = 12.582, c = CFrame.new(162.47, 0.61, 202.92), j = false},

{t = 12.599, c = CFrame.new(162.53, 0.97, 203.19), j = false},

{t = 12.634, c = CFrame.new(162.79, 1.30, 203.62), j = false},

{t = 12.665, c = CFrame.new(163.12, 1.41, 203.98), j = false},

{t = 12.682, c = CFrame.new(163.30, 1.44, 204.15), j = false},

{t = 12.716, c = CFrame.new(163.88, 1.47, 204.40), j = false},

{t = 12.735, c = CFrame.new(164.29, 1.48, 204.46), j = false},

{t = 12.766, c = CFrame.new(165.11, 1.48, 204.58), j = false},

{t = 12.783, c = CFrame.new(165.52, 1.48, 204.65), j = false},

{t = 12.816, c = CFrame.new(166.35, 1.49, 204.77), j = false},

{t = 12.834, c = CFrame.new(166.75, 1.49, 204.84), j = false},

{t = 12.865, c = CFrame.new(167.47, 1.48, 204.55), j = false},

{t = 12.883, c = CFrame.new(167.70, 1.49, 204.38), j = false},

{t = 12.900, c = CFrame.new(167.76, 1.48, 204.33), j = false},

{t = 12.917, c = CFrame.new(167.77, 1.48, 204.33), j = false},

{t = 12.949, c = CFrame.new(167.77, 1.48, 204.33), j = false},

{t = 12.966, c = CFrame.new(167.77, 1.49, 204.33), j = false},

{t = 12.999, c = CFrame.new(167.77, 1.49, 204.33), j = false},

{t = 13.016, c = CFrame.new(167.77, 1.49, 204.33), j = false},

{t = 13.049, c = CFrame.new(167.77, 1.50, 204.32), j = false},

{t = 13.082, c = CFrame.new(167.76, 1.49, 204.32), j = false},

{t = 13.099, c = CFrame.new(167.77, 1.50, 204.33), j = false},

{t = 13.115, c = CFrame.new(167.77, 1.50, 204.33), j = false},

{t = 13.133, c = CFrame.new(167.77, 1.49, 204.32), j = false},

{t = 13.166, c = CFrame.new(167.77, 1.50, 204.31), j = false},

{t = 13.199, c = CFrame.new(167.76, 1.50, 204.32), j = false},

{t = 13.216, c = CFrame.new(167.76, 1.50, 204.31), j = false},

{t = 13.248, c = CFrame.new(167.76, 1.50, 204.32), j = false},

{t = 13.266, c = CFrame.new(167.77, 1.50, 204.31), j = false},

{t = 13.284, c = CFrame.new(167.76, 1.50, 204.31), j = false},

{t = 13.316, c = CFrame.new(167.76, 1.50, 204.31), j = false},

{t = 13.333, c = CFrame.new(167.76, 1.50, 204.31), j = false},

{t = 13.350, c = CFrame.new(167.77, 1.50, 204.31), j = false},

{t = 13.382, c = CFrame.new(167.76, 1.50, 204.31), j = false},

{t = 13.399, c = CFrame.new(167.77, 1.50, 204.30), j = false},

{t = 13.416, c = CFrame.new(167.78, 1.50, 204.30), j = false},

{t = 13.449, c = CFrame.new(167.78, 1.50, 204.30), j = false},

{t = 13.466, c = CFrame.new(167.78, 1.50, 204.30), j = false},

{t = 13.500, c = CFrame.new(167.79, 1.50, 204.38), j = false},

{t = 13.533, c = CFrame.new(167.88, 1.50, 205.17), j = false},

{t = 13.549, c = CFrame.new(167.90, 1.50, 205.59), j = false},

{t = 13.567, c = CFrame.new(167.91, 2.38, 206.00), j = true},

{t = 13.599, c = CFrame.new(167.87, 3.97, 206.84), j = false},

{t = 13.616, c = CFrame.new(167.85, 4.69, 207.25), j = false},

{t = 13.649, c = CFrame.new(167.76, 5.95, 208.08), j = false},

{t = 13.666, c = CFrame.new(167.71, 6.50, 208.49), j = false},

{t = 13.683, c = CFrame.new(167.67, 7.00, 208.91), j = false},

{t = 13.716, c = CFrame.new(167.57, 7.83, 209.74), j = false},

{t = 13.733, c = CFrame.new(167.52, 8.16, 210.15), j = false},

{t = 13.752, c = CFrame.new(167.48, 8.44, 210.57), j = false},

{t = 13.782, c = CFrame.new(167.38, 8.84, 211.39), j = false},

{t = 13.800, c = CFrame.new(167.32, 8.95, 211.81), j = false},

{t = 13.833, c = CFrame.new(167.21, 9.02, 212.63), j = false},

{t = 13.851, c = CFrame.new(167.15, 8.97, 213.05), j = false},

{t = 13.883, c = CFrame.new(167.04, 8.72, 213.88), j = false},

{t = 13.916, c = CFrame.new(166.92, 8.24, 214.70), j = false},

{t = 13.933, c = CFrame.new(166.86, 7.92, 215.12), j = false},

{t = 13.966, c = CFrame.new(166.74, 7.11, 215.94), j = false},

{t = 13.984, c = CFrame.new(166.57, 6.65, 216.21), j = false},

{t = 14.016, c = CFrame.new(166.00, 6.37, 216.35), j = false},

{t = 14.033, c = CFrame.new(165.70, 6.41, 216.35), j = false},

{t = 14.066, c = CFrame.new(164.92, 6.46, 216.15), j = false},

{t = 14.100, c = CFrame.new(164.22, 6.48, 216.06), j = false},

{t = 14.132, c = CFrame.new(164.14, 6.48, 216.05), j = false},

{t = 14.166, c = CFrame.new(164.14, 6.48, 216.05), j = false},

{t = 14.199, c = CFrame.new(164.14, 6.48, 216.05), j = false},

{t = 14.216, c = CFrame.new(164.14, 6.49, 216.05), j = false},

{t = 14.250, c = CFrame.new(164.14, 6.49, 216.06), j = false},

{t = 14.267, c = CFrame.new(164.14, 6.49, 216.06), j = false},

{t = 14.299, c = CFrame.new(164.14, 6.48, 216.05), j = false},

{t = 14.332, c = CFrame.new(164.14, 6.49, 216.05), j = false},

{t = 14.350, c = CFrame.new(164.14, 6.49, 216.05), j = false},

{t = 14.366, c = CFrame.new(164.14, 6.49, 216.05), j = false},

{t = 14.399, c = CFrame.new(164.15, 6.49, 216.05), j = false},

{t = 14.433, c = CFrame.new(164.15, 6.49, 216.06), j = false},

{t = 14.466, c = CFrame.new(164.15, 6.49, 216.06), j = false},

{t = 14.483, c = CFrame.new(164.15, 6.49, 216.06), j = false},

{t = 14.499, c = CFrame.new(164.15, 6.49, 216.05), j = false},

{t = 14.517, c = CFrame.new(164.15, 6.50, 216.05), j = false},

{t = 14.549, c = CFrame.new(164.15, 6.50, 216.05), j = false},

{t = 14.566, c = CFrame.new(164.15, 6.50, 216.05), j = false},

{t = 14.584, c = CFrame.new(164.07, 6.50, 216.14), j = false},

{t = 14.616, c = CFrame.new(163.70, 6.49, 216.27), j = false},

{t = 14.633, c = CFrame.new(163.45, 6.49, 216.24), j = false},

{t = 14.650, c = CFrame.new(163.20, 6.50, 216.26), j = false},

{t = 14.667, c = CFrame.new(162.96, 7.36, 216.31), j = true},

{t = 14.700, c = CFrame.new(162.54, 8.92, 216.56), j = false},

{t = 14.733, c = CFrame.new(162.13, 10.21, 216.79), j = false},

{t = 14.750, c = CFrame.new(161.95, 10.78, 216.96), j = false},

{t = 14.768, c = CFrame.new(161.79, 11.29, 217.17), j = false},

{t = 14.799, c = CFrame.new(161.55, 12.14, 217.67), j = false},

{t = 14.817, c = CFrame.new(161.47, 12.49, 217.97), j = false},

{t = 14.833, c = CFrame.new(161.41, 12.78, 218.29), j = false},

{t = 14.866, c = CFrame.new(161.37, 13.20, 219.04), j = false},

{t = 14.883, c = CFrame.new(161.39, 13.34, 219.45), j = false},

{t = 14.917, c = CFrame.new(161.42, 13.43, 220.29), j = false},

{t = 14.950, c = CFrame.new(161.49, 13.31, 221.12), j = false},

{t = 14.983, c = CFrame.new(161.60, 13.02, 221.85), j = false},

{t = 15.000, c = CFrame.new(161.70, 12.72, 222.36), j = false},

{t = 15.033, c = CFrame.new(161.89, 12.14, 223.06), j = false},

{t = 15.049, c = CFrame.new(162.01, 11.74, 223.46), j = false},

{t = 15.066, c = CFrame.new(162.19, 11.16, 223.95), j = false},

{t = 15.100, c = CFrame.new(162.18, 10.11, 224.70), j = false},

{t = 15.132, c = CFrame.new(162.24, 8.87, 225.45), j = false},

{t = 15.150, c = CFrame.new(162.29, 8.17, 225.83), j = false},

{t = 15.167, c = CFrame.new(162.29, 7.44, 226.21), j = false},

{t = 15.199, c = CFrame.new(162.43, 5.80, 226.96), j = false},

{t = 15.232, c = CFrame.new(162.50, 4.56, 227.57), j = false},

{t = 15.249, c = CFrame.new(162.41, 4.71, 227.72), j = false},

{t = 15.266, c = CFrame.new(162.38, 4.80, 227.87), j = false},

{t = 15.283, c = CFrame.new(162.37, 4.84, 228.01), j = false},

{t = 15.300, c = CFrame.new(162.39, 4.82, 228.15), j = false},

{t = 15.332, c = CFrame.new(162.54, 4.62, 228.37), j = false},

{t = 15.349, c = CFrame.new(162.64, 4.51, 228.46), j = false},

{t = 15.381, c = CFrame.new(162.87, 4.50, 228.54), j = false},

{t = 15.399, c = CFrame.new(163.15, 5.10, 228.55), j = false},

{t = 15.417, c = CFrame.new(163.55, 5.69, 228.54), j = false},

{t = 15.448, c = CFrame.new(164.38, 6.25, 228.52), j = false},

{t = 15.467, c = CFrame.new(164.81, 6.36, 228.50), j = false},

{t = 15.495, c = CFrame.new(165.54, 6.44, 228.47), j = false},

{t = 15.512, c = CFrame.new(165.96, 6.46, 228.46), j = false},

{t = 15.529, c = CFrame.new(166.38, 6.47, 228.45), j = false},

{t = 15.547, c = CFrame.new(166.80, 6.48, 228.44), j = false},

{t = 15.579, c = CFrame.new(167.63, 6.48, 228.39), j = false},

{t = 15.596, c = CFrame.new(168.04, 6.48, 228.35), j = false},

{t = 15.613, c = CFrame.new(168.45, 6.49, 228.29), j = false},

{t = 15.645, c = CFrame.new(169.28, 6.49, 228.17), j = false},

{t = 15.663, c = CFrame.new(169.68, 6.49, 228.10), j = false},

{t = 15.696, c = CFrame.new(170.39, 6.49, 227.95), j = false},

{t = 15.780, c = CFrame.new(170.43, 6.49, 228.07), j = false},

{t = 15.796, c = CFrame.new(170.44, 6.49, 228.15), j = false},

{t = 15.813, c = CFrame.new(170.44, 6.49, 228.15), j = false},

{t = 15.846, c = CFrame.new(170.45, 6.49, 228.15), j = false},

{t = 15.864, c = CFrame.new(170.45, 6.48, 228.15), j = false},

{t = 15.897, c = CFrame.new(170.45, 6.49, 228.15), j = false},

{t = 15.931, c = CFrame.new(170.45, 6.49, 228.14), j = false},

{t = 15.962, c = CFrame.new(170.45, 6.49, 228.14), j = false},

{t = 15.979, c = CFrame.new(170.45, 6.49, 228.14), j = false},

{t = 15.996, c = CFrame.new(170.44, 6.49, 228.13), j = false},

{t = 16.031, c = CFrame.new(170.44, 6.49, 228.14), j = false},

{t = 16.064, c = CFrame.new(170.45, 6.49, 228.26), j = false},

{t = 16.097, c = CFrame.new(170.50, 6.49, 229.01), j = false},

{t = 16.131, c = CFrame.new(170.55, 6.42, 229.83), j = false},

{t = 16.164, c = CFrame.new(170.61, 7.17, 230.66), j = true},

{t = 16.197, c = CFrame.new(170.66, 8.77, 231.49), j = false},

{t = 16.229, c = CFrame.new(170.71, 9.99, 232.22), j = false},

{t = 16.246, c = CFrame.new(170.75, 10.75, 232.74), j = false},

{t = 16.264, c = CFrame.new(170.78, 11.30, 233.16), j = false},

{t = 16.296, c = CFrame.new(170.84, 12.25, 233.98), j = false},

{t = 16.330, c = CFrame.new(170.89, 12.97, 234.81), j = false},

{t = 16.364, c = CFrame.new(170.95, 13.48, 235.64), j = false},

{t = 16.382, c = CFrame.new(170.98, 13.65, 236.06), j = false},

{t = 16.413, c = CFrame.new(171.03, 13.82, 236.89), j = false},

{t = 16.431, c = CFrame.new(171.06, 13.83, 237.30), j = false},

{t = 16.464, c = CFrame.new(171.12, 13.68, 238.14), j = false},

{t = 16.496, c = CFrame.new(171.18, 13.32, 238.97), j = false},

{t = 16.531, c = CFrame.new(171.24, 12.73, 239.81), j = false},

{t = 16.563, c = CFrame.new(171.29, 11.93, 240.64), j = false},

{t = 16.596, c = CFrame.new(171.35, 10.91, 241.47), j = false},

{t = 16.613, c = CFrame.new(171.38, 10.31, 241.89), j = false},

{t = 16.647, c = CFrame.new(171.45, 8.97, 242.73), j = false},

{t = 16.679, c = CFrame.new(171.50, 7.40, 243.56), j = false},

{t = 16.697, c = CFrame.new(171.53, 6.53, 243.98), j = false},

{t = 16.730, c = CFrame.new(171.59, 4.96, 244.81), j = false},

{t = 16.764, c = CFrame.new(171.64, 5.10, 245.64), j = false},

{t = 16.797, c = CFrame.new(171.68, 5.21, 246.48), j = false},

{t = 16.829, c = CFrame.new(171.71, 5.24, 247.31), j = false},

{t = 16.864, c = CFrame.new(171.74, 5.26, 248.14), j = false},

{t = 16.896, c = CFrame.new(171.76, 5.26, 248.98), j = false},

{t = 16.913, c = CFrame.new(171.78, 5.26, 249.40), j = false},

{t = 16.947, c = CFrame.new(171.79, 5.26, 250.10), j = false},

{t = 16.979, c = CFrame.new(171.80, 5.26, 250.19), j = false},

{t = 17.064, c = CFrame.new(171.79, 5.25, 250.38), j = false},

{t = 17.095, c = CFrame.new(171.78, 5.25, 251.17), j = false},

{t = 17.113, c = CFrame.new(171.78, 5.25, 251.58), j = false},

{t = 17.146, c = CFrame.new(171.78, 5.25, 252.42), j = false},

{t = 17.178, c = CFrame.new(171.77, 5.25, 253.15), j = false},

{t = 17.195, c = CFrame.new(171.77, 5.25, 253.67), j = false},

{t = 17.213, c = CFrame.new(171.76, 5.25, 253.98), j = false},

{t = 17.246, c = CFrame.new(171.76, 5.25, 254.91), j = false},

{t = 17.280, c = CFrame.new(171.76, 5.25, 255.75), j = false},

{t = 17.312, c = CFrame.new(171.76, 5.21, 256.47), j = false},

{t = 17.329, c = CFrame.new(171.76, 6.07, 256.89), j = true},

{t = 17.362, c = CFrame.new(171.78, 7.64, 257.72), j = false},

{t = 17.395, c = CFrame.new(171.80, 9.14, 258.66), j = false},

{t = 17.428, c = CFrame.new(171.82, 10.25, 259.49), j = false},

{t = 17.446, c = CFrame.new(171.82, 10.71, 259.91), j = false},

{t = 17.479, c = CFrame.new(171.85, 11.49, 260.74), j = false},

{t = 17.512, c = CFrame.new(171.87, 11.99, 261.46), j = false},

{t = 17.530, c = CFrame.new(171.88, 12.25, 261.98), j = false},

{t = 17.562, c = CFrame.new(171.91, 12.46, 262.70), j = false},

{t = 17.580, c = CFrame.new(171.92, 12.51, 263.22), j = false},

{t = 17.597, c = CFrame.new(171.93, 12.49, 263.64), j = false},

{t = 17.629, c = CFrame.new(171.95, 12.33, 264.37), j = false},

{t = 17.662, c = CFrame.new(171.96, 11.87, 265.28), j = false},

{t = 17.695, c = CFrame.new(171.98, 11.32, 265.87), j = false},

{t = 17.729, c = CFrame.new(171.98, 10.49, 266.40), j = false},

{t = 17.763, c = CFrame.new(171.99, 9.51, 266.67), j = false},

{t = 17.796, c = CFrame.new(171.99, 9.58, 266.68), j = false},

{t = 17.829, c = CFrame.new(172.00, 9.67, 266.67), j = false},

{t = 17.862, c = CFrame.new(171.99, 9.69, 266.67), j = false},

{t = 17.895, c = CFrame.new(171.99, 9.70, 266.67), j = false},

{t = 17.912, c = CFrame.new(172.00, 9.71, 266.67), j = false},

{t = 17.930, c = CFrame.new(171.99, 9.71, 266.66), j = false},

{t = 17.962, c = CFrame.new(172.00, 9.71, 266.67), j = false},

{t = 17.998, c = CFrame.new(172.00, 9.71, 266.67), j = false},

{t = 18.028, c = CFrame.new(172.00, 9.71, 266.67), j = false},

{t = 18.062, c = CFrame.new(172.00, 9.71, 266.67), j = false},

{t = 18.096, c = CFrame.new(172.00, 9.71, 266.68), j = false},

{t = 18.113, c = CFrame.new(172.00, 9.71, 266.68), j = false},

{t = 18.129, c = CFrame.new(172.00, 9.71, 266.60), j = false},

{t = 18.162, c = CFrame.new(172.01, 9.49, 266.01), j = false},

{t = 18.179, c = CFrame.new(172.01, 9.31, 265.74), j = false},

{t = 18.197, c = CFrame.new(172.01, 9.07, 265.46), j = false},

{t = 18.231, c = CFrame.new(172.01, 9.65, 264.91), j = true},

{t = 18.262, c = CFrame.new(172.01, 11.25, 264.45), j = false},

{t = 18.296, c = CFrame.new(172.01, 12.62, 264.15), j = false},

{t = 18.329, c = CFrame.new(172.01, 13.65, 264.01), j = false},

{t = 18.346, c = CFrame.new(172.01, 14.16, 263.98), j = false},

{t = 18.378, c = CFrame.new(172.02, 15.02, 264.05), j = false},

{t = 18.395, c = CFrame.new(172.03, 15.37, 264.15), j = false},

{t = 18.413, c = CFrame.new(172.02, 15.66, 264.29), j = false},

{t = 18.446, c = CFrame.new(172.04, 16.12, 264.74), j = false},

{t = 18.462, c = CFrame.new(172.05, 16.21, 264.93), j = false},

{t = 18.480, c = CFrame.new(172.05, 16.29, 265.30), j = false},

{t = 18.512, c = CFrame.new(172.06, 16.27, 265.93), j = false},

{t = 18.529, c = CFrame.new(172.07, 16.18, 266.34), j = false},

{t = 18.546, c = CFrame.new(172.07, 16.41, 266.29), j = false},

{t = 18.579, c = CFrame.new(172.07, 16.99, 266.28), j = false},

{t = 18.596, c = CFrame.new(172.07, 17.29, 266.28), j = false},

{t = 18.613, c = CFrame.new(172.06, 17.55, 266.31), j = false},

{t = 18.645, c = CFrame.new(172.06, 17.90, 266.48), j = false},

{t = 18.678, c = CFrame.new(172.07, 18.03, 266.81), j = false},

{t = 18.697, c = CFrame.new(172.05, 18.01, 267.07), j = false},

{t = 18.730, c = CFrame.new(171.66, 18.97, 267.28), j = false},

{t = 18.747, c = CFrame.new(171.44, 19.27, 267.32), j = false},

{t = 18.778, c = CFrame.new(171.05, 19.50, 267.36), j = false},

{t = 18.796, c = CFrame.new(170.76, 19.54, 267.43), j = false},

{t = 18.829, c = CFrame.new(170.56, 19.57, 267.51), j = false},

{t = 18.862, c = CFrame.new(170.52, 19.42, 267.39), j = false},

{t = 18.895, c = CFrame.new(170.52, 19.26, 267.39), j = false},

{t = 18.913, c = CFrame.new(170.52, 19.29, 267.39), j = false},

{t = 18.946, c = CFrame.new(170.52, 19.31, 267.39), j = false},

{t = 18.963, c = CFrame.new(170.52, 19.32, 267.39), j = false},

{t = 18.995, c = CFrame.new(170.52, 19.33, 267.38), j = false},

{t = 19.014, c = CFrame.new(170.53, 19.33, 267.38), j = false},

{t = 19.046, c = CFrame.new(170.53, 19.33, 267.38), j = false},

{t = 19.063, c = CFrame.new(170.54, 19.33, 267.38), j = false},

{t = 19.081, c = CFrame.new(170.62, 19.33, 267.37), j = false},

{t = 19.112, c = CFrame.new(171.21, 19.49, 267.31), j = false},

{t = 19.128, c = CFrame.new(171.59, 19.57, 267.28), j = false},

{t = 19.146, c = CFrame.new(172.00, 19.62, 267.24), j = false},

{t = 19.179, c = CFrame.new(172.37, 19.60, 267.19), j = false},

{t = 19.195, c = CFrame.new(172.37, 19.55, 267.20), j = false},

{t = 19.264, c = CFrame.new(172.37, 20.46, 267.20), j = true},

{t = 19.296, c = CFrame.new(172.37, 21.37, 267.03), j = false},

{t = 19.314, c = CFrame.new(172.39, 21.21, 266.72), j = false},

{t = 19.347, c = CFrame.new(172.35, 20.71, 266.15), j = false},

{t = 19.382, c = CFrame.new(172.31, 22.45, 265.67), j = false},

{t = 19.413, c = CFrame.new(172.29, 23.99, 265.33), j = false},

{t = 19.446, c = CFrame.new(172.26, 25.31, 265.14), j = false},

{t = 19.463, c = CFrame.new(172.24, 25.89, 265.12), j = false},

{t = 19.480, c = CFrame.new(172.23, 26.42, 265.13), j = false},

{t = 19.512, c = CFrame.new(172.22, 27.31, 265.27), j = false},

{t = 19.529, c = CFrame.new(172.22, 27.67, 265.40), j = false},

{t = 19.563, c = CFrame.new(172.21, 28.23, 265.77), j = false},

{t = 19.596, c = CFrame.new(172.22, 28.57, 266.31), j = false},

{t = 19.613, c = CFrame.new(172.22, 28.66, 266.64), j = false},

{t = 19.647, c = CFrame.new(172.23, 28.67, 267.41), j = false},

{t = 19.664, c = CFrame.new(172.24, 28.71, 267.70), j = false},

{t = 19.696, c = CFrame.new(172.24, 28.85, 267.79), j = false},

{t = 19.713, c = CFrame.new(172.23, 28.85, 267.79), j = false},

{t = 19.746, c = CFrame.new(172.23, 28.78, 267.79), j = false},

{t = 19.763, c = CFrame.new(172.22, 28.79, 267.79), j = false},

{t = 19.796, c = CFrame.new(172.22, 28.80, 267.79), j = false},

{t = 19.814, c = CFrame.new(172.21, 28.81, 267.92), j = false},

{t = 19.846, c = CFrame.new(172.17, 28.89, 268.66), j = false},

{t = 19.863, c = CFrame.new(172.15, 28.89, 269.05), j = false},

{t = 19.880, c = CFrame.new(172.14, 28.84, 269.32), j = false},

{t = 19.912, c = CFrame.new(172.14, 28.80, 269.39), j = false},

{t = 19.930, c = CFrame.new(172.15, 28.80, 269.39), j = false},

{t = 19.963, c = CFrame.new(172.14, 28.81, 269.38), j = false},

{t = 19.980, c = CFrame.new(172.14, 28.81, 269.39), j = false},

{t = 20.013, c = CFrame.new(172.14, 28.81, 269.38), j = false},

{t = 20.046, c = CFrame.new(172.15, 28.81, 269.38), j = false},

{t = 20.079, c = CFrame.new(172.14, 28.81, 269.38), j = false},

{t = 20.112, c = CFrame.new(172.15, 28.81, 269.38), j = false},

{t = 20.129, c = CFrame.new(172.15, 28.81, 269.38), j = false},

{t = 20.163, c = CFrame.new(172.15, 28.81, 269.38), j = false},

{t = 20.197, c = CFrame.new(172.15, 28.81, 269.38), j = false},

{t = 20.229, c = CFrame.new(172.15, 28.81, 269.38), j = false},

{t = 20.247, c = CFrame.new(172.16, 28.81, 269.38), j = false},

{t = 20.279, c = CFrame.new(172.16, 28.81, 269.38), j = false},

{t = 20.296, c = CFrame.new(172.16, 28.81, 269.37), j = false},

{t = 20.329, c = CFrame.new(172.16, 28.81, 269.36), j = false},

{t = 20.346, c = CFrame.new(172.16, 28.81, 269.36), j = false},

{t = 20.363, c = CFrame.new(172.16, 28.82, 269.36), j = false},

{t = 20.398, c = CFrame.new(172.16, 28.82, 269.36), j = false},

{t = 20.430, c = CFrame.new(172.16, 28.81, 269.35), j = false},

{t = 20.463, c = CFrame.new(172.16, 28.81, 269.36), j = false},

{t = 20.496, c = CFrame.new(172.16, 28.81, 269.36), j = false},

{t = 20.530, c = CFrame.new(172.16, 28.82, 269.36), j = false},

{t = 20.546, c = CFrame.new(172.16, 28.82, 269.36), j = false},

{t = 20.563, c = CFrame.new(172.16, 28.81, 269.36), j = false},

{t = 20.596, c = CFrame.new(172.16, 28.81, 269.36), j = false},

{t = 20.614, c = CFrame.new(172.16, 28.77, 269.56), j = false},

{t = 20.646, c = CFrame.new(172.17, 28.57, 270.05), j = false},

{t = 20.662, c = CFrame.new(172.17, 28.56, 270.43), j = false},

{t = 20.696, c = CFrame.new(172.17, 28.56, 271.26), j = false},

{t = 20.713, c = CFrame.new(172.17, 29.42, 271.67), j = true},

{t = 20.745, c = CFrame.new(172.18, 30.99, 272.51), j = false},

{t = 20.763, c = CFrame.new(172.18, 31.86, 273.03), j = false},

{t = 20.796, c = CFrame.new(172.19, 32.93, 273.75), j = false},

{t = 20.829, c = CFrame.new(172.20, 33.96, 274.59), j = false},

{t = 20.864, c = CFrame.new(172.21, 34.76, 275.42), j = false},

{t = 20.896, c = CFrame.new(172.21, 35.35, 276.25), j = false},

{t = 20.913, c = CFrame.new(172.21, 35.56, 276.67), j = false},

{t = 20.945, c = CFrame.new(172.21, 35.82, 277.51), j = false},

{t = 20.963, c = CFrame.new(172.21, 35.87, 277.93), j = false},

{t = 20.996, c = CFrame.new(172.21, 35.80, 278.76), j = false},

{t = 21.030, c = CFrame.new(172.20, 35.52, 279.59), j = false},

{t = 21.063, c = CFrame.new(172.20, 34.94, 280.53), j = false},

{t = 21.095, c = CFrame.new(172.19, 34.29, 281.26), j = false},

{t = 21.112, c = CFrame.new(172.19, 33.85, 281.68), j = false},

{t = 21.130, c = CFrame.new(172.19, 33.35, 282.09), j = false},

{t = 21.163, c = CFrame.new(172.18, 32.19, 282.93), j = false},

{t = 21.196, c = CFrame.new(172.17, 30.82, 283.77), j = false},

{t = 21.229, c = CFrame.new(172.17, 29.22, 284.60), j = false},

{t = 21.247, c = CFrame.new(172.17, 28.35, 284.89), j = false},

{t = 21.280, c = CFrame.new(172.17, 28.34, 284.98), j = false},

{t = 21.296, c = CFrame.new(172.17, 28.43, 284.98), j = false},

{t = 21.329, c = CFrame.new(172.17, 28.53, 284.98), j = false},

{t = 21.346, c = CFrame.new(172.17, 28.55, 284.97), j = false},

{t = 21.363, c = CFrame.new(172.17, 28.56, 284.98), j = false},

{t = 21.396, c = CFrame.new(172.17, 28.56, 284.98), j = false},

{t = 21.415, c = CFrame.new(172.16, 28.57, 284.98), j = false},

{t = 21.445, c = CFrame.new(172.16, 28.56, 284.98), j = false},

{t = 21.463, c = CFrame.new(172.17, 28.56, 284.98), j = false},

{t = 21.497, c = CFrame.new(172.17, 28.56, 285.11), j = false},

{t = 21.514, c = CFrame.new(172.19, 28.56, 285.44), j = false},

{t = 21.547, c = CFrame.new(172.22, 29.43, 286.27), j = true},

{t = 21.580, c = CFrame.new(172.25, 30.99, 287.11), j = false},

{t = 21.612, c = CFrame.new(172.28, 32.34, 287.94), j = false},

{t = 21.629, c = CFrame.new(172.30, 32.93, 288.35), j = false},

{t = 21.663, c = CFrame.new(172.33, 33.95, 289.18), j = false},

{t = 21.696, c = CFrame.new(172.35, 34.76, 290.01), j = false},

{t = 21.712, c = CFrame.new(172.33, 35.09, 290.42), j = false},

{t = 21.730, c = CFrame.new(172.31, 35.35, 290.84), j = false},

{t = 21.763, c = CFrame.new(172.25, 35.72, 291.67), j = false},

{t = 21.796, c = CFrame.new(172.18, 35.88, 292.49), j = false},

{t = 21.829, c = CFrame.new(172.10, 35.81, 293.32), j = false},

{t = 21.846, c = CFrame.new(172.06, 35.69, 293.73), j = false},

{t = 21.863, c = CFrame.new(172.01, 35.52, 294.15), j = false},

{t = 21.896, c = CFrame.new(171.94, 35.02, 294.95), j = false},

{t = 21.913, c = CFrame.new(171.91, 34.68, 295.30), j = false},

{t = 21.930, c = CFrame.new(171.88, 34.29, 295.62), j = false},

{t = 21.947, c = CFrame.new(171.86, 33.85, 295.89), j = false},

{t = 21.979, c = CFrame.new(171.82, 32.80, 296.32), j = false},

{t = 21.996, c = CFrame.new(171.81, 32.19, 296.47), j = false},

{t = 22.013, c = CFrame.new(171.79, 31.36, 296.60), j = false},

{t = 22.046, c = CFrame.new(171.78, 30.05, 296.69), j = false},

{t = 22.063, c = CFrame.new(171.78, 29.23, 296.69), j = false},

{t = 22.096, c = CFrame.new(171.79, 27.93, 296.69), j = false},

{t = 22.113, c = CFrame.new(171.79, 28.01, 296.69), j = false},

{t = 22.145, c = CFrame.new(171.80, 28.15, 296.69), j = false},

{t = 22.163, c = CFrame.new(171.80, 28.18, 296.69), j = false},

{t = 22.186, c = CFrame.new(171.81, 28.20, 296.69), j = false},

{t = 22.213, c = CFrame.new(171.80, 28.21, 296.69), j = false},

{t = 22.245, c = CFrame.new(171.80, 28.21, 296.69), j = false},

{t = 22.262, c = CFrame.new(171.80, 28.21, 296.70), j = false},

{t = 22.295, c = CFrame.new(171.81, 28.22, 296.70), j = false},

{t = 22.313, c = CFrame.new(171.81, 28.22, 296.71), j = false},

{t = 22.346, c = CFrame.new(171.81, 28.21, 296.71), j = false},

{t = 22.363, c = CFrame.new(171.80, 28.21, 296.71), j = false},

{t = 22.396, c = CFrame.new(171.81, 28.21, 296.70), j = false},

{t = 22.432, c = CFrame.new(171.81, 28.22, 296.84), j = false},

{t = 22.463, c = CFrame.new(171.81, 30.08, 297.34), j = false},

{t = 22.496, c = CFrame.new(171.81, 31.35, 297.85), j = false},

{t = 22.530, c = CFrame.new(171.81, 32.59, 298.60), j = false},

{t = 22.563, c = CFrame.new(171.81, 33.61, 299.43), j = false},

{t = 22.580, c = CFrame.new(171.81, 34.04, 299.85), j = false},

{t = 22.613, c = CFrame.new(171.81, 34.74, 300.68), j = false},

{t = 22.646, c = CFrame.new(171.81, 35.22, 301.51), j = false},

{t = 22.679, c = CFrame.new(171.81, 35.48, 302.35), j = false},

{t = 22.695, c = CFrame.new(171.80, 35.52, 302.77), j = false},

{t = 22.729, c = CFrame.new(171.79, 35.46, 303.60), j = false},

{t = 22.746, c = CFrame.new(171.79, 35.34, 304.02), j = false},

{t = 22.779, c = CFrame.new(171.79, 34.94, 304.85), j = false},

{t = 22.796, c = CFrame.new(171.78, 34.66, 305.27), j = false},

{t = 22.829, c = CFrame.new(171.78, 33.94, 306.10), j = false},

{t = 22.863, c = CFrame.new(171.78, 33.00, 306.92), j = false},

{t = 22.879, c = CFrame.new(171.78, 32.45, 307.34), j = false},

{t = 22.897, c = CFrame.new(171.78, 31.85, 307.76), j = false},

{t = 22.929, c = CFrame.new(171.77, 30.47, 308.59), j = false},

{t = 22.946, c = CFrame.new(171.76, 29.71, 309.00), j = false},

{t = 22.979, c = CFrame.new(171.75, 28.00, 309.83), j = false},

{t = 22.996, c = CFrame.new(171.73, 26.83, 310.34), j = false},

{t = 23.013, c = CFrame.new(171.72, 25.83, 310.76), j = false},

{t = 23.045, c = CFrame.new(171.70, 23.95, 311.49), j = false},

{t = 23.063, c = CFrame.new(171.69, 22.80, 311.91), j = false},

{t = 23.080, c = CFrame.new(171.68, 21.60, 312.32), j = false},

{t = 23.113, c = CFrame.new(171.67, 19.02, 313.15), j = false},

{t = 23.146, c = CFrame.new(171.66, 16.23, 313.99), j = false},

{t = 23.179, c = CFrame.new(171.65, 13.22, 314.82), j = false},

{t = 23.196, c = CFrame.new(171.64, 11.63, 315.23), j = false},

{t = 23.213, c = CFrame.new(171.64, 9.99, 315.65), j = false},

{t = 23.246, c = CFrame.new(171.62, 7.95, 316.45), j = false},

{t = 23.262, c = CFrame.new(171.61, 8.01, 316.70), j = false},

{t = 23.280, c = CFrame.new(171.61, 8.10, 316.75), j = false},

{t = 23.312, c = CFrame.new(171.62, 8.18, 316.75), j = false},

{t = 23.346, c = CFrame.new(171.61, 8.21, 316.75), j = false},

{t = 23.378, c = CFrame.new(171.62, 8.22, 316.75), j = false},

{t = 23.396, c = CFrame.new(171.61, 8.21, 316.76), j = false},

{t = 23.413, c = CFrame.new(171.62, 8.22, 316.75), j = false},

{t = 23.448, c = CFrame.new(171.62, 8.21, 316.75), j = false},

{t = 23.478, c = CFrame.new(171.62, 8.21, 316.75), j = false},

{t = 23.496, c = CFrame.new(171.62, 8.22, 316.76), j = false},

{t = 23.513, c = CFrame.new(171.62, 8.22, 316.76), j = false},

{t = 23.546, c = CFrame.new(171.62, 8.21, 316.76), j = false},

{t = 23.579, c = CFrame.new(171.63, 8.22, 316.77), j = false},

{t = 23.596, c = CFrame.new(171.62, 8.21, 316.77), j = false},

{t = 23.613, c = CFrame.new(171.62, 8.21, 316.77), j = false},

{t = 23.645, c = CFrame.new(171.62, 8.21, 316.77), j = false},

{t = 23.663, c = CFrame.new(171.63, 8.21, 316.78), j = false},

{t = 23.696, c = CFrame.new(171.63, 8.21, 316.78), j = false},

{t = 23.712, c = CFrame.new(171.62, 8.21, 316.78), j = false},

{t = 23.745, c = CFrame.new(171.62, 8.21, 316.78), j = false},

{t = 23.763, c = CFrame.new(171.62, 8.21, 316.78), j = false},

{t = 23.796, c = CFrame.new(171.61, 8.21, 316.78), j = false},

{t = 23.813, c = CFrame.new(171.61, 8.18, 316.91), j = false},

{t = 23.845, c = CFrame.new(171.60, 7.98, 317.46), j = false},

{t = 23.863, c = CFrame.new(171.59, 8.85, 317.74), j = true},

{t = 23.895, c = CFrame.new(171.58, 10.45, 318.40), j = false},

{t = 23.912, c = CFrame.new(171.57, 11.16, 318.78), j = false},

{t = 23.946, c = CFrame.new(171.55, 12.43, 319.61), j = false},

{t = 23.963, c = CFrame.new(171.55, 12.99, 320.03), j = false},

{t = 23.995, c = CFrame.new(171.52, 13.92, 320.86), j = false},

{t = 24.013, c = CFrame.new(171.51, 14.31, 321.27), j = false},

{t = 24.030, c = CFrame.new(171.50, 14.64, 321.68), j = false},

{t = 24.063, c = CFrame.new(171.48, 15.15, 322.52), j = false},

{t = 24.096, c = CFrame.new(171.46, 15.43, 323.36), j = false},

{t = 24.128, c = CFrame.new(171.44, 15.50, 324.19), j = false},

{t = 24.146, c = CFrame.new(171.43, 15.46, 324.61), j = false},

{t = 24.163, c = CFrame.new(171.42, 15.36, 325.03), j = false},

{t = 24.180, c = CFrame.new(171.41, 15.15, 325.54), j = false},

{t = 24.197, c = CFrame.new(171.40, 14.93, 325.96), j = false},

{t = 24.229, c = CFrame.new(171.37, 14.41, 326.69), j = false},

{t = 24.246, c = CFrame.new(171.36, 14.03, 327.11), j = false},

{t = 24.280, c = CFrame.new(171.34, 13.12, 327.94), j = false},

{t = 24.313, c = CFrame.new(171.32, 11.99, 328.77), j = false},

{t = 24.330, c = CFrame.new(171.31, 11.35, 329.18), j = false},

{t = 24.363, c = CFrame.new(171.30, 9.89, 330.01), j = false},

{t = 24.396, c = CFrame.new(171.29, 8.21, 330.85), j = false},

{t = 24.429, c = CFrame.new(171.30, 6.88, 331.68), j = false},

{t = 24.446, c = CFrame.new(171.32, 6.99, 332.10), j = false},

{t = 24.465, c = CFrame.new(171.33, 7.10, 332.52), j = false},

{t = 24.495, c = CFrame.new(171.37, 7.21, 333.35), j = false},

{t = 24.512, c = CFrame.new(171.39, 7.23, 333.77), j = false},

{t = 24.530, c = CFrame.new(171.41, 7.24, 334.18), j = false},

{t = 24.562, c = CFrame.new(171.46, 7.25, 335.01), j = false},

{t = 24.597, c = CFrame.new(171.51, 7.25, 335.84), j = false},

{t = 24.615, c = CFrame.new(171.52, 7.25, 336.13), j = false},

{t = 24.646, c = CFrame.new(171.53, 7.25, 336.22), j = false},

{t = 24.713, c = CFrame.new(171.52, 7.25, 336.35), j = false},

{t = 24.746, c = CFrame.new(171.51, 7.26, 337.09), j = false},

{t = 24.763, c = CFrame.new(171.51, 7.26, 337.51), j = false},

{t = 24.780, c = CFrame.new(171.50, 7.26, 338.02), j = false},

{t = 24.813, c = CFrame.new(171.50, 7.26, 338.86), j = false},

{t = 24.830, c = CFrame.new(171.49, 7.26, 339.28), j = false},

{t = 24.862, c = CFrame.new(171.49, 7.26, 340.01), j = false},

{t = 24.880, c = CFrame.new(171.49, 7.26, 340.53), j = false},

{t = 24.915, c = CFrame.new(171.48, 7.26, 341.37), j = false},

{t = 24.945, c = CFrame.new(171.47, 7.26, 342.10), j = false},

{t = 24.963, c = CFrame.new(171.46, 7.25, 342.51), j = false},

{t = 24.979, c = CFrame.new(171.46, 7.26, 342.93), j = false},

{t = 25.013, c = CFrame.new(171.45, 7.25, 343.77), j = false},

{t = 25.030, c = CFrame.new(171.45, 7.25, 344.18), j = false},

{t = 25.063, c = CFrame.new(171.44, 7.25, 345.02), j = false},

{t = 25.080, c = CFrame.new(171.44, 7.25, 345.43), j = false},

{t = 25.113, c = CFrame.new(171.43, 7.25, 346.27), j = false},

{t = 25.130, c = CFrame.new(171.43, 7.25, 346.69), j = false},

{t = 25.163, c = CFrame.new(171.42, 7.25, 347.52), j = false},

{t = 25.180, c = CFrame.new(171.42, 7.25, 347.93), j = false},

{t = 25.196, c = CFrame.new(171.41, 7.25, 348.36), j = false},

{t = 25.229, c = CFrame.new(171.41, 7.25, 349.19), j = false},

{t = 25.246, c = CFrame.new(171.40, 7.25, 349.61), j = false},

{t = 25.280, c = CFrame.new(171.39, 7.25, 350.45), j = false},

{t = 25.313, c = CFrame.new(171.39, 7.25, 351.28), j = false},

{t = 25.330, c = CFrame.new(171.39, 7.25, 351.69), j = false},

{t = 25.346, c = CFrame.new(171.39, 7.25, 352.11), j = false},

{t = 25.380, c = CFrame.new(171.39, 7.25, 353.04), j = false},

{t = 25.397, c = CFrame.new(171.38, 7.25, 353.46), j = false},

{t = 25.429, c = CFrame.new(171.37, 7.25, 354.29), j = false},

{t = 25.463, c = CFrame.new(171.37, 7.25, 355.02), j = false},

{t = 25.481, c = CFrame.new(171.36, 7.25, 355.44), j = false},

{t = 25.513, c = CFrame.new(171.36, 7.25, 356.27), j = false},

{t = 25.530, c = CFrame.new(171.36, 7.25, 356.68), j = false},

{t = 25.563, c = CFrame.new(171.35, 7.25, 357.51), j = false},

{t = 25.596, c = CFrame.new(171.34, 7.25, 358.34), j = false},

{t = 25.630, c = CFrame.new(171.34, 7.25, 359.28), j = false},

{t = 25.662, c = CFrame.new(171.34, 7.25, 360.01), j = false},

{t = 25.679, c = CFrame.new(171.34, 7.25, 360.42), j = false},

{t = 25.696, c = CFrame.new(171.33, 7.25, 360.84), j = false},

{t = 25.730, c = CFrame.new(171.33, 7.25, 361.67), j = false},

{t = 25.746, c = CFrame.new(171.33, 7.25, 362.09), j = false},

{t = 25.780, c = CFrame.new(171.32, 7.25, 362.92), j = false},

{t = 25.797, c = CFrame.new(171.32, 7.25, 363.44), j = false},

{t = 25.829, c = CFrame.new(171.31, 7.25, 364.17), j = false},

{t = 25.847, c = CFrame.new(171.30, 7.25, 364.59), j = false},

{t = 25.879, c = CFrame.new(171.30, 7.24, 365.42), j = false},

{t = 25.896, c = CFrame.new(171.30, 7.25, 365.84), j = false},

{t = 25.931, c = CFrame.new(171.29, 7.25, 366.67), j = false},

{t = 25.963, c = CFrame.new(171.28, 7.25, 367.50), j = false},

{t = 25.996, c = CFrame.new(171.27, 7.25, 368.34), j = false},

{t = 26.030, c = CFrame.new(171.27, 7.25, 369.18), j = false},

{t = 26.063, c = CFrame.new(171.26, 7.25, 370.01), j = false},

{t = 26.096, c = CFrame.new(171.25, 7.25, 370.84), j = false},

{t = 26.113, c = CFrame.new(171.24, 7.25, 371.26), j = false},

{t = 26.129, c = CFrame.new(171.24, 7.25, 371.68), j = false},

{t = 26.163, c = CFrame.new(171.23, 7.25, 372.62), j = false},

{t = 26.196, c = CFrame.new(171.22, 7.25, 373.35), j = false},

{t = 26.230, c = CFrame.new(171.21, 7.25, 374.18), j = false},

{t = 26.263, c = CFrame.new(171.20, 7.25, 375.02), j = false},

{t = 26.280, c = CFrame.new(171.20, 7.26, 375.53), j = false},

{t = 26.313, c = CFrame.new(171.20, 7.25, 376.37), j = false},

{t = 26.329, c = CFrame.new(171.19, 7.26, 376.68), j = false},

{t = 26.363, c = CFrame.new(171.18, 7.25, 377.51), j = false},

{t = 26.380, c = CFrame.new(171.18, 7.25, 377.92), j = false},

{t = 26.397, c = CFrame.new(171.17, 7.26, 378.34), j = false},

{t = 26.430, c = CFrame.new(171.17, 7.26, 379.18), j = false},

{t = 26.462, c = CFrame.new(171.17, 7.26, 380.02), j = false},

{t = 26.480, c = CFrame.new(171.16, 7.26, 380.43), j = false},

{t = 26.513, c = CFrame.new(171.16, 7.26, 381.37), j = false},

{t = 26.546, c = CFrame.new(171.15, 7.26, 382.10), j = false},

{t = 26.563, c = CFrame.new(171.15, 7.26, 382.51), j = false},

{t = 26.597, c = CFrame.new(171.14, 7.25, 383.45), j = false},

{t = 26.629, c = CFrame.new(171.14, 7.25, 384.18), j = false},

{t = 26.646, c = CFrame.new(171.14, 7.25, 384.60), j = false},

{t = 26.679, c = CFrame.new(171.14, 7.25, 385.43), j = false},

{t = 26.697, c = CFrame.new(171.14, 7.26, 385.95), j = false},

{t = 26.730, c = CFrame.new(171.13, 7.26, 386.68), j = false},

{t = 26.762, c = CFrame.new(171.13, 7.26, 387.52), j = false},

{t = 26.795, c = CFrame.new(171.13, 7.26, 388.35), j = false},

{t = 26.813, c = CFrame.new(171.12, 7.26, 388.87), j = false},

{t = 26.830, c = CFrame.new(171.12, 7.26, 389.28), j = false},

{t = 26.862, c = CFrame.new(171.12, 7.26, 390.01), j = false},

{t = 26.881, c = CFrame.new(171.11, 7.26, 390.43), j = false},

{t = 26.912, c = CFrame.new(171.11, 7.26, 391.26), j = false},

{t = 26.948, c = CFrame.new(171.10, 7.25, 392.09), j = false},

{t = 26.979, c = CFrame.new(171.09, 7.25, 392.92), j = false},

{t = 26.995, c = CFrame.new(171.08, 7.25, 393.34), j = false},

{t = 27.013, c = CFrame.new(171.08, 7.25, 393.86), j = false},

{t = 27.030, c = CFrame.new(171.07, 7.25, 394.17), j = false},

{t = 27.046, c = CFrame.new(171.07, 7.25, 394.59), j = false},

{t = 27.079, c = CFrame.new(171.06, 7.25, 395.41), j = false},

{t = 27.097, c = CFrame.new(171.06, 7.26, 395.94), j = false},

{t = 27.130, c = CFrame.new(171.05, 7.22, 396.66), j = false},

{t = 27.147, c = CFrame.new(171.04, 7.13, 397.08), j = false},

{t = 27.164, c = CFrame.new(171.03, 8.00, 397.49), j = true},

{t = 27.195, c = CFrame.new(171.05, 9.56, 398.32), j = false},

{t = 27.213, c = CFrame.new(171.06, 10.26, 398.74), j = false},

{t = 27.246, c = CFrame.new(171.07, 11.50, 399.57), j = false},

{t = 27.280, c = CFrame.new(171.09, 12.52, 400.41), j = false},

{t = 27.312, c = CFrame.new(171.11, 13.33, 401.24), j = false},

{t = 27.330, c = CFrame.new(171.13, 13.65, 401.65), j = false},

{t = 27.347, c = CFrame.new(171.14, 13.97, 402.18), j = false},

{t = 27.379, c = CFrame.new(171.15, 14.28, 402.91), j = false},

{t = 27.413, c = CFrame.new(171.17, 14.43, 403.85), j = false},

{t = 27.447, c = CFrame.new(171.19, 14.34, 404.68), j = false},

{t = 27.463, c = CFrame.new(171.21, 14.25, 405.00), j = false},

{t = 27.496, c = CFrame.new(171.23, 13.85, 405.83), j = false},

{t = 27.530, c = CFrame.new(171.25, 13.24, 406.66), j = false},

{t = 27.562, c = CFrame.new(171.28, 12.41, 407.49), j = false},

{t = 27.580, c = CFrame.new(171.30, 11.78, 408.01), j = false},

{t = 27.612, c = CFrame.new(171.33, 10.76, 408.74), j = false},

{t = 27.630, c = CFrame.new(171.34, 9.93, 409.27), j = false},

{t = 27.663, c = CFrame.new(171.37, 8.61, 409.99), j = false}

}



\--!nolint UnknownGlobal

\--!nocheck



\-- ========================================================

\-- SINGLETON INSTANCE CLEANUP (TERMINATE PREVIOUS RUNS \& REMOVE OLD GUI)

\-- ========================================================



local function getGlobal(name)

&#x20;   local val = nil

&#x20;   pcall(function()

&#x20;       if typeof(getgenv) == "function" and getgenv()\[name] \~= nil then

&#x20;           val = getgenv()\[name]

&#x20;       elseif \_G and \_G\[name] \~= nil then

&#x20;           val = \_G\[name]

&#x20;       elseif shared and shared\[name] \~= nil then

&#x20;           val = shared\[name]

&#x20;       end

&#x20;   end)

&#x20;   if val \~= nil then return val end

&#x20;   pcall(function()

&#x20;       local g = (typeof(getfenv) == "function" and getfenv()) or {}

&#x20;       val = g\[name]

&#x20;   end)

&#x20;   return val

end



local \_writefile = (typeof(writefile) == "function" and writefile) or getGlobal("writefile") or (syn and syn.writefile) or (fluxus and fluxus.writefile)

local \_readfile = (typeof(readfile) == "function" and readfile) or getGlobal("readfile") or (syn and syn.readfile) or (fluxus and fluxus.readfile)

local \_isfile = (typeof(isfile) == "function" and isfile) or getGlobal("isfile") or (syn and syn.isfile) or (fluxus and fluxus.isfile)

local \_setfpscap = (typeof(setfpscap) == "function" and setfpscap) or getGlobal("setfpscap") or (syn and syn.setfpscap) or (fluxus and fluxus.setfpscap)



local function safeWriteFile(filename, dataStr)

&#x20;   local written = false

&#x20;   local wf = (typeof(writefile) == "function" and writefile) or \_writefile or getGlobal("writefile")

&#x20;   if typeof(wf) == "function" then

&#x20;       pcall(function()

&#x20;           wf(filename, dataStr)

&#x20;           written = true

&#x20;       end)

&#x20;   end

&#x20;   pcall(function()

&#x20;       if typeof(getgenv) == "function" then getgenv().ExpertObbySavedConfig = dataStr end

&#x20;       \_G.ExpertObbySavedConfig = dataStr

&#x20;       if shared then shared.ExpertObbySavedConfig = dataStr end

&#x20;   end)

&#x20;   return written

end



local function safeReadFile(filename)

&#x20;   local rf = (typeof(readfile) == "function" and readfile) or \_readfile or getGlobal("readfile")

&#x20;   local isf = (typeof(isfile) == "function" and isfile) or \_isfile or getGlobal("isfile")

&#x20;   if typeof(rf) == "function" then

&#x20;       local ok, res = pcall(function()

&#x20;           if typeof(isf) == "function" then

&#x20;               if isf(filename) then return rf(filename) end

&#x20;           else

&#x20;               return rf(filename)

&#x20;           end

&#x20;           return nil

&#x20;       end)

&#x20;       if ok and res and typeof(res) == "string" and #res > 0 then

&#x20;           return res

&#x20;       end

&#x20;   end

&#x20;   local mem = nil

&#x20;   pcall(function()

&#x20;       if typeof(getgenv) == "function" and getgenv().ExpertObbySavedConfig then

&#x20;           mem = getgenv().ExpertObbySavedConfig

&#x20;       elseif \_G.ExpertObbySavedConfig then

&#x20;           mem = \_G.ExpertObbySavedConfig

&#x20;       elseif shared and shared.ExpertObbySavedConfig then

&#x20;           mem = shared.ExpertObbySavedConfig

&#x20;       end

&#x20;   end)

&#x20;   if mem and typeof(mem) == "string" and #mem > 0 then

&#x20;       return mem

&#x20;   end

&#x20;   return nil

end



pcall(function()

&#x20;   if getgenv and getgenv().ExpertObbyCleanup then

&#x20;       getgenv().ExpertObbyCleanup()

&#x20;   elseif \_G.ExpertObbyCleanup then

&#x20;       \_G.ExpertObbyCleanup()

&#x20;   end

end)



\-- ================= \[ PRE-GENERATED MULTI-ROUTE SYSTEM ] =================

\-- Toutes les variations de trajectoire sont générées une seule fois par route.

\-- Aucun math.random() n'est exécuté dans la boucle Heartbeat pour la position.



local routeVariants = {

&#x20;   standard   = { offset\_x = 0.00, offset\_z = 0.00, speed\_mult = 1.00, smoothness = 1.00, name = "Standard" },

&#x20;   cautious   = { offset\_x = -0.15, offset\_z = -0.12, speed\_mult = 0.92, smoothness = 0.88, name = "Cautious" },

&#x20;   aggressive = { offset\_x = 0.18, offset\_z = 0.14, speed\_mult = 1.08, smoothness = 1.05, name = "Aggressive" },

&#x20;   lefty      = { offset\_x = -0.22, offset\_z = 0.08, speed\_mult = 0.96, smoothness = 0.95, name = "Left-Biased" },

&#x20;   righty     = { offset\_x = 0.25, offset\_z = -0.10, speed\_mult = 1.04, smoothness = 0.98, name = "Right-Biased" },

&#x20;   floaty     = { offset\_x = 0.05, offset\_z = -0.18, speed\_mult = 1.02, smoothness = 1.15, name = "Floaty" },

&#x20;   tight      = { offset\_x = -0.08, offset\_z = 0.12, speed\_mult = 0.98, smoothness = 0.82, name = "Tight" },

}



local currentRoute = nil

local runCounter = 0

local humanJitterState = { phaseX = 0, phaseZ = 0 }



local function smoothStep(t)

&#x20;   t = math.clamp(t, 0, 1)

&#x20;   return t \* t \* (3 - 2 \* t)

end



local function hashNoise1D(index, seed)

&#x20;   local x = math.sin(index \* 12.9898 + seed \* 78.233) \* 43758.5453

&#x20;   return x - math.floor(x)

end



local function randomFloat(minValue, maxValue)

&#x20;   return minValue + (maxValue - minValue) \* math.random()

end



\-- Chaque run reçoit sa propre variante autour des valeurs d'origine.

\-- Les écarts restent volontairement faibles pour conserver le profil de chaque mode.

local function randomizeRouteConfig(base, routeKey)

&#x20;   runCounter += 1



&#x20;   local cfg = {

&#x20;       base\_name = base.name,

&#x20;       name = base.name,

&#x20;       offset\_x = base.offset\_x + randomFloat(-0.045, 0.045),

&#x20;       offset\_z = base.offset\_z + randomFloat(-0.045, 0.045),

&#x20;       speed\_mult = math.clamp(base.speed\_mult + randomFloat(-0.025, 0.025), 0.88, 1.12),

&#x20;       smoothness = math.clamp(base.smoothness + randomFloat(-0.035, 0.035), 0.75, 1.20),

&#x20;       seed = randomFloat(-5000, 5000),

&#x20;       run\_id = runCounter,

&#x20;       route\_key = routeKey,

&#x20;   }



&#x20;   return cfg

end



local function selectRandomRoute()

&#x20;   local names = {}

&#x20;   for name in pairs(routeVariants) do

&#x20;       names\[#names + 1] = name

&#x20;   end



&#x20;   local routeName = names\[math.random(1, #names)]

&#x20;   currentRoute = routeName



&#x20;   return randomizeRouteConfig(routeVariants\[routeName], routeName), routeName

end



local function buildKeyframes(baseFrames, route)

&#x20;   local keyframes = {}

&#x20;   local count = math.max(6, math.ceil(#baseFrames / 45))



&#x20;   for k = 1, count do

&#x20;       local idx = math.floor(1 + (k - 1) \* (#baseFrames - 1) / math.max(1, count - 1))

&#x20;       local seedBase = route.seed or 0

&#x20;       local extraX = (hashNoise1D(k, 17.1 + seedBase) - 0.5) \* 0.07

&#x20;       local extraZ = (hashNoise1D(k, 31.7 + seedBase) - 0.5) \* 0.07

&#x20;       local extraY = (hashNoise1D(k, 55.3 + seedBase) - 0.5) \* 0.012



&#x20;       keyframes\[k] = {

&#x20;           idx = idx,

&#x20;           x = route.offset\_x + extraX,

&#x20;           z = route.offset\_z + extraZ,

&#x20;           y = extraY,

&#x20;       }

&#x20;   end



&#x20;   return keyframes

end



local function generateRouteVariant(baseFrames, route)

&#x20;   if not baseFrames or #baseFrames == 0 then return {} end

&#x20;   if not route then return baseFrames end



&#x20;   local keyframes = buildKeyframes(baseFrames, route)

&#x20;   local out = table.create(#baseFrames)

&#x20;   local k = 1



&#x20;   for i, baseFrame in ipairs(baseFrames) do

&#x20;       while k < #keyframes and i > keyframes\[k + 1].idx do

&#x20;           k = k + 1

&#x20;       end



&#x20;       local a = keyframes\[k]

&#x20;       local b = keyframes\[math.min(#keyframes, k + 1)]

&#x20;       local span = math.max(1, b.idx - a.idx)

&#x20;       local t = smoothStep((i - a.idx) / span)



&#x20;       -- Déplacement latéral relatif à la tangente du parcours, pas en random par frame.

&#x20;       local p = baseFrame.c.Position

&#x20;       local prevP = baseFrames\[math.max(1, i - 1)].c.Position

&#x20;       local nextP = baseFrames\[math.min(#baseFrames, i + 1)].c.Position

&#x20;       local tangent = nextP - prevP

&#x20;       local flat = Vector3.new(tangent.X, 0, tangent.Z)

&#x20;       local lateral = Vector3.zero

&#x20;       if flat.Magnitude > 1e-4 then

&#x20;           flat = flat.Unit

&#x20;           lateral = Vector3.new(-flat.Z, 0, flat.X)

&#x20;       end



&#x20;       local offX = a.x + (b.x - a.x) \* t

&#x20;       local offZ = a.z + (b.z - a.z) \* t

&#x20;       local offY = a.y + (b.y - a.y) \* t

&#x20;       local lateralOffset = offX

&#x20;       local longitudinalOffset = offZ \* 0.15

&#x20;       local shifted = p + lateral \* lateralOffset + flat \* longitudinalOffset + Vector3.new(0, offY, 0)



&#x20;       out\[i] = {

&#x20;           t = baseFrame.t,

&#x20;           c = CFrame.new(shifted) \* (baseFrame.c - baseFrame.c.Position),

&#x20;           j = baseFrame.j,

&#x20;       }

&#x20;   end



&#x20;   return out

end



local function generateTimingProfile(baseFrames, route)

&#x20;   if not baseFrames or #baseFrames == 0 then return {} end

&#x20;   if not route then return {} end



&#x20;   local profile = table.create(#baseFrames)

&#x20;   local segmentCount = math.max(4, math.ceil(#baseFrames / 70))

&#x20;   local keys = table.create(segmentCount)

&#x20;   local seedBase = route.seed or 0



&#x20;   for i = 1, segmentCount do

&#x20;       local progress = (i - 1) / math.max(1, segmentCount - 1)

&#x20;       local natural = math.sin(progress \* math.pi)

&#x20;       local wobble = (hashNoise1D(i, 91.7 + seedBase) - 0.5) \* 0.045 \* natural

&#x20;       keys\[i] = route.speed\_mult \* (1 + wobble)

&#x20;   end



&#x20;   for i = 1, #baseFrames do

&#x20;       local u = (i - 1) / math.max(1, #baseFrames - 1) \* (segmentCount - 1)

&#x20;       local aIdx = math.floor(u) + 1

&#x20;       local bIdx = math.min(segmentCount, aIdx + 1)

&#x20;       local t = smoothStep(u - math.floor(u))

&#x20;       profile\[i] = keys\[aIdx] \* (1 - t) + keys\[bIdx] \* t

&#x20;   end



&#x20;   return profile

end



local function getHumanMicroJitter(nowClock, safetyFactor)

&#x20;   local s = math.clamp(safetyFactor or 0, 0, 1)

&#x20;   return Vector3.new(

&#x20;       math.sin(nowClock \* 0.75 + humanJitterState.phaseX) \* 0.0009 \* s,

&#x20;       0,

&#x20;       math.cos(nowClock \* 0.95 + humanJitterState.phaseZ) \* 0.0009 \* s

&#x20;   )

end



\-- Compatibilité avec le reste du script : ne plus utiliser de randomisation par frame.

local function applyRouteVariance(pos, route)

&#x20;   return pos

end



\-- ================= \[ HUMAN ERROR \& RANDOMIZATION ] =================

local errorChance = 0.12

local consecutiveErrors = 0

local maxConsecutiveErrors = 2



local function simulateHumanError()

&#x20;   if consecutiveErrors >= maxConsecutiveErrors then return false end

&#x20;   if math.random(1, 1000) / 1000 < errorChance then

&#x20;       consecutiveErrors = consecutiveErrors + 1

&#x20;       return true

&#x20;   end

&#x20;   consecutiveErrors = 0

&#x20;   return false

end



local function addPathVariance(pos, amount)

&#x20;   return pos + Vector3.new((math.random() - 0.5) \* amount, 0, (math.random() - 0.5) \* amount)

end



local function randomDelay(min, max)

&#x20;   local base = min + (max - min) \* math.random()

&#x20;   local variance = base \* 0.18

&#x20;   return base + (math.random() - 0.5) \* variance \* 2

end



local Players = game:GetService("Players")

local VirtualUser = game:GetService("VirtualUser")

local PathfindingService = game:GetService("PathfindingService")

local RunService = game:GetService("RunService")

local TeleportService = game:GetService("TeleportService")

local GuiService = game:GetService("GuiService")

local Lighting = game:GetService("Lighting")

local CoreGui = game:GetService("CoreGui")

local HttpService = game:GetService("HttpService")

local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer



pcall(function()

&#x20;   local parentTarget = LocalPlayer:FindFirstChild("PlayerGui") or CoreGui

&#x20;   local oldGui = parentTarget:FindFirstChild("AutoExpertObbyGui")

&#x20;   if oldGui then oldGui:Destroy() end

&#x20;   if CoreGui:FindFirstChild("AutoExpertObbyGui") then

&#x20;       CoreGui:FindFirstChild("AutoExpertObbyGui"):Destroy()

&#x20;   end

end)



local isRunningScript = true

local activeConnections = {}



\-- ========================================================

\-- AFK MOVEMENT SIGNAL KEEPALIVE

\-- Based on save.rbxlx: the game's AFK watcher resets its timer

\-- whenever Humanoid.MoveDirection.Magnitude > 0.05.

\-- Instead of intercepting AFKModeEvent, keep a small real movement

\-- input active and periodically vary it so MoveDirection changes.

\-- This leaves the game's AFK RemoteEvent logic untouched.

\-- ========================================================

local afkMovementKeepaliveConnection = nil

local afkMovementCharacterConnection = nil

local afkMovementToken = 0



local function stopAfkMovementKeepalive()

&#x20;   afkMovementToken += 1

&#x20;   if afkMovementKeepaliveConnection then

&#x20;       pcall(function() afkMovementKeepaliveConnection:Disconnect() end)

&#x20;       afkMovementKeepaliveConnection = nil

&#x20;   end

&#x20;   if afkMovementCharacterConnection then

&#x20;       pcall(function() afkMovementCharacterConnection:Disconnect() end)

&#x20;       afkMovementCharacterConnection = nil

&#x20;   end

&#x20;   pcall(function()

&#x20;       local character = LocalPlayer and LocalPlayer.Character

&#x20;       local humanoid = character and character:FindFirstChildOfClass("Humanoid")

&#x20;       if humanoid then

&#x20;           humanoid:Move(Vector3.zero, false)

&#x20;       end

&#x20;   end)

end



local function startAfkMovementKeepalive()

&#x20;   stopAfkMovementKeepalive()

&#x20;   local token = afkMovementToken

&#x20;   local phase = false

&#x20;   local lastPulse = 0



&#x20;   local function pulse()

&#x20;       if token \~= afkMovementToken or not isRunningScript then

&#x20;           return

&#x20;       end

&#x20;       local character = LocalPlayer and LocalPlayer.Character

&#x20;       local humanoid = character and character:FindFirstChildOfClass("Humanoid")

&#x20;       if not humanoid or humanoid.Health <= 0 then

&#x20;           return

&#x20;       end



&#x20;       -- Both values stay above the game's 0.05 threshold while changing

&#x20;       -- slightly between pulses so GetPropertyChangedSignal can fire.

&#x20;       phase = not phase

&#x20;       local amount = phase and 0.061 or 0.062

&#x20;       humanoid:Move(Vector3.new(0, 0, amount), false)

&#x20;       lastPulse = os.clock()

&#x20;   end



&#x20;   afkMovementKeepaliveConnection = RunService.Heartbeat:Connect(function()

&#x20;       if token \~= afkMovementToken or not isRunningScript then

&#x20;           return

&#x20;       end

&#x20;       if os.clock() - lastPulse >= 1.0 then

&#x20;           pulse()

&#x20;       end

&#x20;   end)



&#x20;   afkMovementCharacterConnection = LocalPlayer.CharacterAdded:Connect(function(character)

&#x20;       if token \~= afkMovementToken or not isRunningScript then

&#x20;           return

&#x20;       end

&#x20;       task.defer(function()

&#x20;           local humanoid = character:FindFirstChildOfClass("Humanoid") or character:WaitForChild("Humanoid", 5)

&#x20;           if humanoid and token == afkMovementToken and isRunningScript then

&#x20;               phase = not phase

&#x20;               humanoid:Move(Vector3.new(0, 0, phase and 0.061 or 0.062), false)

&#x20;               lastPulse = os.clock()

&#x20;           end

&#x20;       end)

&#x20;   end)



&#x20;   pulse()

end



startAfkMovementKeepalive()



local CONFIG\_FILE = "expert\_macro\_config.json"

local isPlaying = false

local runEnabled = false

local isLooping = true

local cpuSaverEnabled = false

local gpuSaverEnabled = false

local humanMistakesEnabled = true

local useRandomDelays = true

local autoReconnectEnabled = true

local staffEvadeEnabled = false

local cameraToggleEnabled = true

local antiCaptchaEnabled = true

local isReconnecting = false

local playbackThread = nil



local sessionStartTime = os.clock()

local totalLapsCompleted = 0

local lastLapTime = 0

local bestLapTime = 0

local worstLapTime = 0



local gpuBlackoutFrame = nil

local pbToastFrame = nil

local pbToastLabel = nil



local function saveSettings()

&#x20;   pcall(function()

&#x20;       local config = {

&#x20;           runEnabled = runEnabled,

&#x20;           isLooping = isLooping,

&#x20;           cpuSaver = cpuSaverEnabled,

&#x20;           gpuSaver = gpuSaverEnabled,

&#x20;           humanMistakes = humanMistakesEnabled,

&#x20;           useRandomDelays = useRandomDelays,

&#x20;           autoReconnect = autoReconnectEnabled,

&#x20;           staffEvade = staffEvadeEnabled,

&#x20;           cameraToggle = cameraToggleEnabled,

&#x20;           antiCaptcha = antiCaptchaEnabled

&#x20;       }

&#x20;       local encoded = HttpService:JSONEncode(config)

&#x20;       safeWriteFile(CONFIG\_FILE, encoded)

&#x20;       warn("\[AutoExpert] Settings saved to disk: " .. tostring(encoded))

&#x20;   end)

end



local function loadSettings()

&#x20;   pcall(function()

&#x20;       local data = safeReadFile(CONFIG\_FILE)

&#x20;       if data then

&#x20;           local config = HttpService:JSONDecode(data)

&#x20;           if config and typeof(config) == "table" then

&#x20;               if config.runEnabled \~= nil then runEnabled = config.runEnabled end

&#x20;               if config.isLooping \~= nil then isLooping = config.isLooping end

&#x20;               if config.cpuSaver \~= nil then cpuSaverEnabled = config.cpuSaver end

&#x20;               if config.gpuSaver \~= nil then gpuSaverEnabled = config.gpuSaver end

&#x20;               if config.humanMistakes \~= nil then humanMistakesEnabled = config.humanMistakes end

&#x20;               if config.randomDelay \~= nil then useRandomDelays = config.randomDelay end

&#x20;               if config.autoReconnect \~= nil then autoReconnectEnabled = config.autoReconnect end

&#x20;               if config.staffEvade \~= nil then staffEvadeEnabled = config.staffEvade end

&#x20;               if config.cameraToggle \~= nil then cameraToggleEnabled = config.cameraToggle end

&#x20;               if config.antiCaptcha \~= nil then antiCaptchaEnabled = config.antiCaptcha end

&#x20;               warn("\[AutoExpert] Settings restored from disk: " .. tostring(data))

&#x20;           end

&#x20;       else

&#x20;           warn("\[AutoExpert] No previous configuration file found. Using default settings.")

&#x20;       end

&#x20;   end)

end



pcall(function()

&#x20;   game:BindToClose(function()

&#x20;       saveSettings()

&#x20;   end)

&#x20;   local leaveConn = Players.PlayerRemoving:Connect(function(player)

&#x20;       if player == LocalPlayer then

&#x20;           saveSettings()

&#x20;       end

&#x20;   end)

&#x20;   table.insert(activeConnections, leaveConn)

end)



task.spawn(function()

&#x20;   while isRunningScript do

&#x20;       pcall(function()

&#x20;           VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)

&#x20;           task.wait(randomDelay(0.35, 0.65))

&#x20;           VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)

&#x20;       end)

&#x20;       task.wait(60)

&#x20;   end

end)



pcall(function()

&#x20;   local idledConn = LocalPlayer.Idled:Connect(function()

&#x20;       if not isRunningScript then return end

&#x20;       VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)

&#x20;       task.wait(randomDelay(0.35, 0.65))

&#x20;       VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)

&#x20;   end)

&#x20;   table.insert(activeConnections, idledConn)

end)



local function performServerHop()

&#x20;   warn("\[ServerHop] Searching for a new public server instance...")

&#x20;   task.spawn(function()

&#x20;       local HttpService = game:GetService("HttpService")

&#x20;       local req = (syn and syn.request) or (http and http.request) or http\_request or (fluxus and fluxus.request) or request

&#x20;       local placeId = game.PlaceId

&#x20;       local jobId = game.JobId

&#x20;       

&#x20;       local targetServerId = nil

&#x20;       if req then

&#x20;           local ok, response = pcall(function()

&#x20;               return req({

&#x20;                   Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc\&limit=100", tostring(placeId)),

&#x20;                   Method = "GET"

&#x20;               })

&#x20;           end)

&#x20;           if ok and response and response.Body then

&#x20;               local decodeOk, data = pcall(function() return HttpService:JSONDecode(response.Body) end)

&#x20;               if decodeOk and data and data.data then

&#x20;                   for \_, srv in ipairs(data.data) do

&#x20;                       if srv.id \~= jobId and srv.playing and srv.maxPlayers and (srv.playing < srv.maxPlayers) then

&#x20;                           targetServerId = srv.id

&#x20;                           break

&#x20;                       end

&#x20;                   end

&#x20;               end

&#x20;           end

&#x20;       end

&#x20;       

&#x20;       if targetServerId then

&#x20;           TeleportService:TeleportToPlaceInstance(placeId, targetServerId, LocalPlayer)

&#x20;       else

&#x20;           TeleportService:Teleport(placeId, LocalPlayer)

&#x20;       end

&#x20;   end)

end



local function performReconnect()

&#x20;   if isReconnecting or not autoReconnectEnabled or not isRunningScript then return end

&#x20;   isReconnecting = true

&#x20;   

&#x20;   warn("\[AutoReconnect] Connection lost / error detected. Initiating reconnect...")

&#x20;   

&#x20;   task.spawn(function()

&#x20;       while isRunningScript do

&#x20;           task.wait(3.5)

&#x20;           local success, \_ = pcall(function()

&#x20;               if #Players:GetPlayers() <= 1 then

&#x20;                   TeleportService:Teleport(game.PlaceId, LocalPlayer)

&#x20;               else

&#x20;                   TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)

&#x20;               end

&#x20;           end)

&#x20;           

&#x20;           if not success then

&#x20;               pcall(function()

&#x20;                   TeleportService:Teleport(game.PlaceId, LocalPlayer)

&#x20;               end)

&#x20;           end

&#x20;           task.wait(4.5)

&#x20;       end

&#x20;   end)

end



pcall(function()

&#x20;   local promptOverlay = CoreGui:WaitForChild("RobloxPromptGui", 5):WaitForChild("promptOverlay", 5)

&#x20;   if promptOverlay then

&#x20;       local overlayConn = promptOverlay.ChildAdded:Connect(function(child)

&#x20;           if autoReconnectEnabled and isRunningScript and (child.Name == "ErrorPrompt" or child:FindFirstChild("MessageArea") or child:FindFirstChild("ErrorTitle")) then

&#x20;               performReconnect()

&#x20;           end

&#x20;       end)

&#x20;       table.insert(activeConnections, overlayConn)

&#x20;   end

end)



pcall(function()

&#x20;   local errorConn = GuiService.ErrorMessageChanged:Connect(function(errorMessage)

&#x20;       if autoReconnectEnabled and isRunningScript and errorMessage and errorMessage \~= "" then

&#x20;           performReconnect()

&#x20;       end

&#x20;   end)

&#x20;   table.insert(activeConnections, errorConn)

end)



pcall(function()

&#x20;   local tpFailConn = TeleportService.TeleportInitFailed:Connect(function(player, teleportResult, errorMessage)

&#x20;       if autoReconnectEnabled and isRunningScript and player == LocalPlayer then

&#x20;           task.wait(3)

&#x20;           TeleportService:Teleport(game.PlaceId, LocalPlayer)

&#x20;       end

&#x20;   end)

&#x20;   table.insert(activeConnections, tpFailConn)

end)



pcall(function()

&#x20;   local playerAddedConn = Players.PlayerAdded:Connect(function(player)

&#x20;       if not isRunningScript or not staffEvadeEnabled or player == LocalPlayer then return end

&#x20;       task.spawn(function()

&#x20;           task.wait(1.5)

&#x20;           pcall(function()

&#x20;               local isCreator = (game.CreatorType == Enum.CreatorType.User and player.UserId == game.CreatorId)

&#x20;               local isGroupAdmin = false

&#x20;               if game.CreatorType == Enum.CreatorType.Group then

&#x20;                   local rank = player:GetRankInGroup(game.CreatorId)

&#x20;                   if rank >= 200 then isGroupAdmin = true end

&#x20;               end

&#x20;               

&#x20;               if isCreator or isGroupAdmin then

&#x20;                   warn(string.format("\[StaffEvade] Staff member detected (%s). Auto-hopping server...", player.Name))

&#x20;                   TeleportService:Teleport(game.PlaceId, LocalPlayer)

&#x20;               end

&#x20;           end)

&#x20;       end)

&#x20;   end)

&#x20;   table.insert(activeConnections, playerAddedConn)

end)



local originalQualityLevel = settings().Rendering.QualityLevel

local originalGlobalShadows = Lighting.GlobalShadows



local function setCpuSaver(enabled)

&#x20;   cpuSaverEnabled = enabled

&#x20;   pcall(function()

&#x20;       local fps\_fn = (typeof(setfpscap) == "function" and setfpscap) or \_setfpscap or getGlobal("setfpscap")

&#x20;       if typeof(fps\_fn) == "function" then

&#x20;           if enabled then

&#x20;               fps\_fn(15)

&#x20;           else

&#x20;               fps\_fn(60)

&#x20;           end

&#x20;       end

&#x20;   end)

end



local function setGpuSaver(enabled)

&#x20;   gpuSaverEnabled = enabled

&#x20;   

&#x20;   if gpuBlackoutFrame then

&#x20;       gpuBlackoutFrame.Visible = enabled

&#x20;   end

&#x20;   

&#x20;   pcall(function()

&#x20;       RunService:Set3dRenderingEnabled(not enabled)

&#x20;   end)

&#x20;   

&#x20;   pcall(function()

&#x20;       if enabled then

&#x20;           settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

&#x20;           Lighting.GlobalShadows = false

&#x20;           Lighting.FogEnd = 9e9

&#x20;       else

&#x20;           settings().Rendering.QualityLevel = originalQualityLevel

&#x20;           Lighting.GlobalShadows = originalGlobalShadows

&#x20;       end

&#x20;   end)

&#x20;   

&#x20;   pcall(function()

&#x20;       for \_, descendant in ipairs(workspace:GetDescendants()) do

&#x20;           if descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") or descendant:IsA("Smoke") or descendant:IsA("Fire") or descendant:IsA("Sparkles") then

&#x20;               descendant.Enabled = not enabled

&#x20;           end

&#x20;       end

&#x20;   end)

end



local camera = workspace.CurrentCamera

local camYaw = 0

local camPitch = -0.24

local camVelocityYaw = 0

local defaultCamDistance = 12.5

local currentCamDistance = 12.5



local cameraRayParams = RaycastParams.new()

cameraRayParams.FilterType = Enum.RaycastFilterType.Exclude

cameraRayParams.IgnoreWater = true



local function getShortestAngleDiff(targetAngle, currentAngle)

&#x20;   return (targetAngle - currentAngle + math.pi) % (2 \* math.pi) - math.pi

end



local function updateHumanMouseCamera(hrpPosition, targetFacingYaw, dt, now, isAirborne)

&#x20;   if not isPlaying or not isRunningScript or not cameraToggleEnabled then return end

&#x20;   

&#x20;   pcall(function()

&#x20;       if not camera or camera.Parent == nil then

&#x20;           camera = workspace.CurrentCamera

&#x20;       end

&#x20;       if camera.CameraType \~= Enum.CameraType.Scriptable then

&#x20;           camera.CameraType = Enum.CameraType.Scriptable

&#x20;       end

&#x20;       

&#x20;       local yawDiff = getShortestAngleDiff(targetFacingYaw, camYaw)

&#x20;       

&#x20;       local swipeSens = (math.abs(yawDiff) > 0.5) and 8.5 or 6.2

&#x20;       if isAirborne then swipeSens = swipeSens \* 0.85 end

&#x20;       

&#x20;       local mouseFriction = 0.82

&#x20;       camVelocityYaw = (camVelocityYaw + yawDiff \* swipeSens \* dt) \* math.pow(mouseFriction, dt \* 60)

&#x20;       camYaw = (camYaw + camVelocityYaw \* dt + math.pi) % (2 \* math.pi) - math.pi

&#x20;       

&#x20;       local microJitterY = (math.sin(now \* 2.2) \* 0.004) + ((math.random() - 0.5) \* 0.002)

&#x20;       local targetPitch = -0.24 + microJitterY

&#x20;       camPitch = camPitch + (targetPitch - camPitch) \* math.clamp(5.0 \* dt, 0, 0.35)

&#x20;       

&#x20;       local focusPoint = hrpPosition + Vector3.new(0, 2.0, 0)

&#x20;       local rotCFrame = CFrame.Angles(0, camYaw, 0) \* CFrame.Angles(camPitch, 0, 0)

&#x20;       

&#x20;       local char = LocalPlayer.Character

&#x20;       if char then

&#x20;           cameraRayParams.FilterDescendantsInstances = {char}

&#x20;       end

&#x20;       local rayDir = -rotCFrame.LookVector \* defaultCamDistance

&#x20;       local rayResult = workspace:Raycast(focusPoint, rayDir, cameraRayParams)

&#x20;       

&#x20;       local targetDist = defaultCamDistance

&#x20;       if rayResult and rayResult.Instance and rayResult.Instance.CanCollide then

&#x20;           targetDist = math.clamp(rayResult.Distance - 0.4, 2.5, defaultCamDistance)

&#x20;       end

&#x20;       currentCamDistance = currentCamDistance + (targetDist - currentCamDistance) \* math.clamp(14.0 \* dt, 0, 0.5)

&#x20;       

&#x20;       local camPos = focusPoint - (rotCFrame.LookVector \* currentCamDistance)

&#x20;       camera.CFrame = CFrame.new(camPos, focusPoint)

&#x20;   end)

end



local function resetCameraToNative()

&#x20;   pcall(function()

&#x20;       if not camera or camera.Parent == nil then

&#x20;           camera = workspace.CurrentCamera

&#x20;       end

&#x20;       camera.CameraType = Enum.CameraType.Custom

&#x20;       local char = LocalPlayer.Character

&#x20;       if char and char:FindFirstChild("Humanoid") then

&#x20;           camera.CameraSubject = char:FindFirstChild("Humanoid")

&#x20;       end

&#x20;   end)

end



local function setupCharacterAnimations(character, humanoid)

&#x20;   local animator = humanoid:FindFirstChildOfClass("Animator")

&#x20;   if not animator then

&#x20;       animator = Instance.new("Animator")

&#x20;       animator.Parent = humanoid

&#x20;   end

&#x20;   

&#x20;   local idleId = nil

&#x20;   local walkId = nil

&#x20;   local jumpId = nil

&#x20;   

&#x20;   local animateScript = character:FindFirstChild("Animate")

&#x20;   if animateScript then

&#x20;       local idleObj = animateScript:FindFirstChild("idle")

&#x20;       if idleObj then

&#x20;           local anim = idleObj:FindFirstChildOfClass("Animation") or idleObj:FindFirstChild("Animation1") or idleObj:FindFirstChild("Animation2")

&#x20;           if anim and anim.AnimationId \~= "" then idleId = anim.AnimationId end

&#x20;       end

&#x20;       local walkObj = animateScript:FindFirstChild("walk") or animateScript:FindFirstChild("run")

&#x20;       if walkObj then

&#x20;           local anim = walkObj:FindFirstChildOfClass("Animation") or walkObj:FindFirstChild("WalkAnim") or walkObj:FindFirstChild("RunAnim")

&#x20;           if anim and anim.AnimationId \~= "" then walkId = anim.AnimationId end

&#x20;       end

&#x20;       local jumpObj = animateScript:FindFirstChild("jump")

&#x20;       if jumpObj then

&#x20;           local anim = jumpObj:FindFirstChildOfClass("Animation") or jumpObj:FindFirstChild("JumpAnim")

&#x20;           if anim and anim.AnimationId \~= "" then jumpId = anim.AnimationId end

&#x20;       end

&#x20;   end

&#x20;   

&#x20;   local isR15 = (humanoid.RigType == Enum.HumanoidRigType.R15)

&#x20;   if not idleId or idleId == "" then

&#x20;       idleId = isR15 and "rbxassetid://507766666" or "rbxassetid://180435571"

&#x20;   end

&#x20;   if not walkId or walkId == "" then

&#x20;       walkId = isR15 and "rbxassetid://913376220" or "rbxassetid://180436334"

&#x20;   end

&#x20;   if not jumpId or jumpId == "" then

&#x20;       jumpId = isR15 and "rbxassetid://507765000" or "rbxassetid://125750702"

&#x20;   end

&#x20;   

&#x20;   local idleAnim = Instance.new("Animation")

&#x20;   idleAnim.AnimationId = idleId

&#x20;   local idleTrack = animator:LoadAnimation(idleAnim)

&#x20;   idleTrack.Priority = Enum.AnimationPriority.Idle

&#x20;   idleTrack.Looped = true

&#x20;   idleTrack:Play(0.2, 1.0, 1.0)

&#x20;   idleTrack:AdjustWeight(1.0, 0.05)

&#x20;   

&#x20;   local walkAnim = Instance.new("Animation")

&#x20;   walkAnim.AnimationId = walkId

&#x20;   local walkTrack = animator:LoadAnimation(walkAnim)

&#x20;   walkTrack.Priority = Enum.AnimationPriority.Movement

&#x20;   walkTrack.Looped = true

&#x20;   walkTrack:AdjustWeight(0.0, 0)

&#x20;   

&#x20;   local jumpAnim = Instance.new("Animation")

&#x20;   jumpAnim.AnimationId = jumpId

&#x20;   local jumpTrack = animator:LoadAnimation(jumpAnim)

&#x20;   jumpTrack.Priority = Enum.AnimationPriority.Action

&#x20;   jumpTrack.Looped = true

&#x20;   jumpTrack:AdjustWeight(0.0, 0)

&#x20;   

&#x20;   return idleTrack, walkTrack, jumpTrack

end



local screenGui = Instance.new("ScreenGui")

screenGui.Name = "AutoExpertObbyGui"

screenGui.ResetOnSpawn = false

screenGui.IgnoreGuiInset = true

screenGui.DisplayOrder = 999



local parentTarget = LocalPlayer:FindFirstChild("PlayerGui") or CoreGui

screenGui.Parent = parentTarget



gpuBlackoutFrame = Instance.new("Frame")

gpuBlackoutFrame.Name = "GPUBlackoutFrame"

gpuBlackoutFrame.Size = UDim2.new(1, 0, 1, 0)

gpuBlackoutFrame.Position = UDim2.new(0, 0, 0, 0)

gpuBlackoutFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

gpuBlackoutFrame.BorderSizePixel = 0

gpuBlackoutFrame.ZIndex = 1

gpuBlackoutFrame.Visible = false

gpuBlackoutFrame.Parent = screenGui



local mainFrame = Instance.new("Frame")

mainFrame.Name = "MainFrame"

mainFrame.Size = UDim2.new(0, 290, 0, 260)

mainFrame.Position = UDim2.new(0.5, -145, 0.10, 0)

mainFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 28)

mainFrame.BorderSizePixel = 0

mainFrame.Active = true

mainFrame.Draggable = true

mainFrame.ClipsDescendants = true

mainFrame.ZIndex = 10

mainFrame.Parent = screenGui



local uiCorner = Instance.new("UICorner")

uiCorner.CornerRadius = UDim.new(0, 10)

uiCorner.Parent = mainFrame



local uiStroke = Instance.new("UIStroke")

uiStroke.Color = Color3.fromRGB(48, 52, 70)

uiStroke.Thickness = 1.5

uiStroke.Parent = mainFrame



local titleLabel = Instance.new("TextLabel")

titleLabel.Name = "Title"

titleLabel.Size = UDim2.new(1, -48, 0, 22)

titleLabel.Position = UDim2.new(0, 10, 0, 6)

titleLabel.BackgroundTransparency = 1

titleLabel.Text = "⚡ Auto Expert Obby"

titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

titleLabel.TextSize = 14

titleLabel.Font = Enum.Font.GothamBold

titleLabel.TextXAlignment = Enum.TextXAlignment.Left

titleLabel.ZIndex = 11

titleLabel.Parent = mainFrame



local minimizeBtn = Instance.new("TextButton")

minimizeBtn.Name = "MinimizeBtn"

minimizeBtn.Size = UDim2.new(0, 24, 0, 20)

minimizeBtn.Position = UDim2.new(1, -30, 0, 7)

minimizeBtn.BackgroundColor3 = Color3.fromRGB(32, 35, 48)

minimizeBtn.BorderSizePixel = 0

minimizeBtn.Text = "−"

minimizeBtn.TextColor3 = Color3.fromRGB(210, 215, 230)

minimizeBtn.TextSize = 14

minimizeBtn.Font = Enum.Font.GothamBold

minimizeBtn.ZIndex = 12

minimizeBtn.Parent = mainFrame



local minCorner = Instance.new("UICorner")

minCorner.CornerRadius = UDim.new(0, 4)

minCorner.Parent = minimizeBtn



local restoreBarBtn = Instance.new("TextButton")

restoreBarBtn.Name = "RestoreBarBtn"

restoreBarBtn.Size = UDim2.new(1, 0, 1, 0)

restoreBarBtn.Position = UDim2.new(0, 0, 0, 0)

restoreBarBtn.BackgroundTransparency = 1

restoreBarBtn.Text = "⚡ Auto Obby \[ + ]"

restoreBarBtn.TextColor3 = Color3.fromRGB(255, 255, 255)

restoreBarBtn.TextSize = 12

restoreBarBtn.Font = Enum.Font.GothamBold

restoreBarBtn.ZIndex = 13

restoreBarBtn.Visible = false

restoreBarBtn.Parent = mainFrame



local contentHolder = Instance.new("Frame")

contentHolder.Name = "ContentHolder"

contentHolder.Size = UDim2.new(1, 0, 1, 0)

contentHolder.Position = UDim2.new(0, 0, 0, 0)

contentHolder.BackgroundTransparency = 1

contentHolder.ZIndex = 11

contentHolder.Parent = mainFrame



local tabBar = Instance.new("Frame")

tabBar.Name = "TabBar"

tabBar.Size = UDim2.new(1, -20, 0, 28)

tabBar.Position = UDim2.new(0, 10, 0, 32)

tabBar.BackgroundColor3 = Color3.fromRGB(15, 16, 22)

tabBar.BorderSizePixel = 0

tabBar.ZIndex = 11

tabBar.Parent = contentHolder



local tabCorner = Instance.new("UICorner")

tabCorner.CornerRadius = UDim.new(0, 6)

tabCorner.Parent = tabBar



local tabListLayout = Instance.new("UIListLayout")

tabListLayout.FillDirection = Enum.FillDirection.Horizontal

tabListLayout.SortOrder = Enum.SortOrder.LayoutOrder

tabListLayout.Padding = UDim.new(0, 4)

tabListLayout.Parent = tabBar



local runTabBtn = Instance.new("TextButton")

runTabBtn.Name = "RunTabBtn"

runTabBtn.LayoutOrder = 1

runTabBtn.Size = UDim2.new(0.315, 0, 1, 0)

runTabBtn.BackgroundColor3 = Color3.fromRGB(52, 152, 219)

runTabBtn.BorderSizePixel = 0

runTabBtn.Text = "🏃 Run"

runTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)

runTabBtn.TextSize = 12

runTabBtn.Font = Enum.Font.GothamBold

runTabBtn.ZIndex = 12

runTabBtn.Parent = tabBar



local runTabCorner = Instance.new("UICorner")

runTabCorner.CornerRadius = UDim.new(0, 5)

runTabCorner.Parent = runTabBtn



local perfTabBtn = Instance.new("TextButton")

perfTabBtn.Name = "PerfTabBtn"

perfTabBtn.LayoutOrder = 2

perfTabBtn.Size = UDim2.new(0.32, 0, 1, 0)

perfTabBtn.BackgroundColor3 = Color3.fromRGB(28, 30, 40)

perfTabBtn.BorderSizePixel = 0

perfTabBtn.Text = "⚡ Perf"

perfTabBtn.TextColor3 = Color3.fromRGB(150, 155, 175)

perfTabBtn.TextSize = 12

perfTabBtn.Font = Enum.Font.GothamBold

perfTabBtn.ZIndex = 12

perfTabBtn.Parent = tabBar



local perfTabCorner = Instance.new("UICorner")

perfTabCorner.CornerRadius = UDim.new(0, 5)

perfTabCorner.Parent = perfTabBtn



local safetyTabBtn = Instance.new("TextButton")

safetyTabBtn.Name = "SafetyTabBtn"

safetyTabBtn.LayoutOrder = 3

safetyTabBtn.Size = UDim2.new(0.32, 0, 1, 0)

safetyTabBtn.BackgroundColor3 = Color3.fromRGB(28, 30, 40)

safetyTabBtn.BorderSizePixel = 0

safetyTabBtn.Text = "🛡️ Safety"

safetyTabBtn.TextColor3 = Color3.fromRGB(150, 155, 175)

safetyTabBtn.TextSize = 12

safetyTabBtn.Font = Enum.Font.GothamBold

safetyTabBtn.ZIndex = 12

safetyTabBtn.Parent = tabBar



local safetyTabCorner = Instance.new("UICorner")

safetyTabCorner.CornerRadius = UDim.new(0, 5)

safetyTabCorner.Parent = safetyTabBtn



local pageContainer = Instance.new("Frame")

pageContainer.Name = "PageContainer"

pageContainer.Size = UDim2.new(1, -20, 0, 154)

pageContainer.Position = UDim2.new(0, 10, 0, 66)

pageContainer.BackgroundTransparency = 1

pageContainer.ClipsDescendants = true

pageContainer.ZIndex = 11

pageContainer.Parent = contentHolder



local runPage = Instance.new("Frame")

runPage.Name = "RunPage"

runPage.Size = UDim2.new(1, 0, 1, 0)

runPage.Position = UDim2.new(0, 0, 0, 0)

runPage.BackgroundTransparency = 1

runPage.Visible = true

runPage.ZIndex = 11

runPage.Parent = pageContainer



local toggleButton = Instance.new("TextButton")

toggleButton.Name = "ToggleButton"

toggleButton.Size = UDim2.new(1, 0, 0, 32)

toggleButton.Position = UDim2.new(0, 0, 0, 0)

toggleButton.BackgroundColor3 = Color3.fromRGB(46, 204, 113)

toggleButton.BorderSizePixel = 0

toggleButton.Text = "▶ Enable Run"

toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)

toggleButton.TextSize = 13

toggleButton.Font = Enum.Font.GothamBold

toggleButton.ZIndex = 12

toggleButton.Parent = runPage



local btnCorner = Instance.new("UICorner")

btnCorner.CornerRadius = UDim.new(0, 7)

btnCorner.Parent = toggleButton



local loopButton = Instance.new("TextButton")

loopButton.Name = "LoopButton"

loopButton.Size = UDim2.new(1, 0, 0, 28)

loopButton.Position = UDim2.new(0, 0, 0, 36)

loopButton.BackgroundColor3 = Color3.fromRGB(52, 152, 219)

loopButton.BorderSizePixel = 0

loopButton.Text = "🔁 Loop: ON"

loopButton.TextColor3 = Color3.fromRGB(255, 255, 255)

loopButton.TextSize = 11

loopButton.Font = Enum.Font.GothamBold

loopButton.ZIndex = 12

loopButton.Parent = runPage



local loopCorner = Instance.new("UICorner")

loopCorner.CornerRadius = UDim.new(0, 6)

loopCorner.Parent = loopButton



local statsBox = Instance.new("Frame")

statsBox.Name = "StatsBox"

statsBox.Size = UDim2.new(1, 0, 0, 82)

statsBox.Position = UDim2.new(0, 0, 0, 68)

statsBox.BackgroundColor3 = Color3.fromRGB(15, 16, 22)

statsBox.BorderSizePixel = 0

statsBox.ZIndex = 11

statsBox.Parent = runPage



local statsCorner = Instance.new("UICorner")

statsCorner.CornerRadius = UDim.new(0, 6)

statsCorner.Parent = statsBox



local statsLapsLabel = Instance.new("TextLabel")

statsLapsLabel.Name = "LapsLabel"

statsLapsLabel.Size = UDim2.new(1, -12, 0, 24)

statsLapsLabel.Position = UDim2.new(0, 6, 0, 2)

statsLapsLabel.BackgroundTransparency = 1

statsLapsLabel.Text = "🏆 Completed Laps: 0"

statsLapsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

statsLapsLabel.TextSize = 11

statsLapsLabel.Font = Enum.Font.GothamBold

statsLapsLabel.TextXAlignment = Enum.TextXAlignment.Left

statsLapsLabel.ZIndex = 12

statsLapsLabel.Parent = statsBox



local statsTimesLabel = Instance.new("TextLabel")

statsTimesLabel.Name = "TimesLabel"

statsTimesLabel.Size = UDim2.new(1, -12, 0, 24)

statsTimesLabel.Position = UDim2.new(0, 6, 0, 26)

statsTimesLabel.BackgroundTransparency = 1

statsTimesLabel.Text = "⏱️ Last: -- | PB: --"

statsTimesLabel.TextColor3 = Color3.fromRGB(160, 165, 185)

statsTimesLabel.TextSize = 10

statsTimesLabel.Font = Enum.Font.Gotham

statsTimesLabel.TextXAlignment = Enum.TextXAlignment.Left

statsTimesLabel.ZIndex = 12

statsTimesLabel.Parent = statsBox



local statsSessionLabel = Instance.new("TextLabel")

statsSessionLabel.Name = "SessionLabel"

statsSessionLabel.Size = UDim2.new(1, -12, 0, 24)

statsSessionLabel.Position = UDim2.new(0, 6, 0, 52)

statsSessionLabel.BackgroundTransparency = 1

statsSessionLabel.Text = "⏳ Session Time: 00:00:00"

statsSessionLabel.TextColor3 = Color3.fromRGB(120, 125, 145)

statsSessionLabel.TextSize = 10

statsSessionLabel.Font = Enum.Font.Gotham

statsSessionLabel.TextXAlignment = Enum.TextXAlignment.Left

statsSessionLabel.ZIndex = 12

statsSessionLabel.Parent = statsBox



task.spawn(function()

&#x20;   while isRunningScript do

&#x20;       task.wait(1)

&#x20;       if not isRunningScript then break end

&#x20;       pcall(function()

&#x20;           local elapsed = math.floor(os.clock() - sessionStartTime)

&#x20;           local hours = math.floor(elapsed / 3600)

&#x20;           local minutes = math.floor((elapsed % 3600) / 60)

&#x20;           local seconds = elapsed % 60

&#x20;           statsSessionLabel.Text = string.format("⏳ Session Time: %02d:%02d:%02d", hours, minutes, seconds)

&#x20;           

&#x20;           statsLapsLabel.Text = string.format("🏆 Completed Laps: %d", totalLapsCompleted)

&#x20;           if bestLapTime > 0 then

&#x20;               statsTimesLabel.Text = string.format("⏱️ Last: %.2fs | PB: %.2fs | Slowest: %.2fs", lastLapTime, bestLapTime, worstLapTime)

&#x20;           else

&#x20;               statsTimesLabel.Text = "⏱️ Last: -- | PB: -- | Slowest: --"

&#x20;           end

&#x20;       end)

&#x20;   end

end)



local perfPage = Instance.new("Frame")

perfPage.Name = "PerfPage"

perfPage.Size = UDim2.new(1, 0, 1, 0)

perfPage.Position = UDim2.new(0, 0, 0, 0)

perfPage.BackgroundTransparency = 1

perfPage.Visible = false

perfPage.ZIndex = 11

perfPage.Parent = pageContainer



local cpuButton = Instance.new("TextButton")

cpuButton.Name = "CpuButton"

cpuButton.Size = UDim2.new(1, 0, 0, 34)

cpuButton.Position = UDim2.new(0, 0, 0, 0)

cpuButton.BackgroundColor3 = Color3.fromRGB(80, 85, 100)

cpuButton.BorderSizePixel = 0

cpuButton.Text = "💻 CPU Saver (15 FPS): OFF"

cpuButton.TextColor3 = Color3.fromRGB(230, 230, 235)

cpuButton.TextSize = 12

cpuButton.Font = Enum.Font.GothamBold

cpuButton.ZIndex = 12

cpuButton.Parent = perfPage



local cpuCorner = Instance.new("UICorner")

cpuCorner.CornerRadius = UDim.new(0, 7)

cpuCorner.Parent = cpuButton



local gpuButton = Instance.new("TextButton")

gpuButton.Name = "GpuButton"

gpuButton.Size = UDim2.new(1, 0, 0, 34)

gpuButton.Position = UDim2.new(0, 0, 0, 38)

gpuButton.BackgroundColor3 = Color3.fromRGB(80, 85, 100)

gpuButton.BorderSizePixel = 0

gpuButton.Text = "🎮 GPU Saver (Black Screen): OFF"

gpuButton.TextColor3 = Color3.fromRGB(230, 230, 235)

gpuButton.TextSize = 12

gpuButton.Font = Enum.Font.GothamBold

gpuButton.ZIndex = 12

gpuButton.Parent = perfPage



local gpuCorner = Instance.new("UICorner")

gpuCorner.CornerRadius = UDim.new(0, 7)

gpuCorner.Parent = gpuButton



local perfInfoLabel = Instance.new("TextLabel")

perfInfoLabel.Name = "PerfInfo"

perfInfoLabel.Size = UDim2.new(1, 0, 0, 65)

perfInfoLabel.Position = UDim2.new(0, 0, 0, 76)

perfInfoLabel.BackgroundColor3 = Color3.fromRGB(15, 16, 22)

perfInfoLabel.BorderSizePixel = 0

perfInfoLabel.Text = "⚡ Limits background FPS to 15\\n🖤 Black screen cuts 3D render to \~0% GPU\\n🔋 Maximum power \& OLED battery savings"

perfInfoLabel.TextColor3 = Color3.fromRGB(140, 145, 165)

perfInfoLabel.TextSize = 10

perfInfoLabel.Font = Enum.Font.Gotham

perfInfoLabel.ZIndex = 12

perfInfoLabel.Parent = perfPage



local perfInfoCorner = Instance.new("UICorner")

perfInfoCorner.CornerRadius = UDim.new(0, 6)

perfInfoCorner.Parent = perfInfoLabel



local safetyPage = Instance.new("ScrollingFrame")

safetyPage.Name = "SafetyPage"

safetyPage.Size = UDim2.new(1, 0, 1, 0)

safetyPage.Position = UDim2.new(0, 0, 0, 0)

safetyPage.BackgroundTransparency = 1

safetyPage.BorderSizePixel = 0

safetyPage.ScrollBarThickness = 3

safetyPage.ScrollBarImageColor3 = Color3.fromRGB(80, 90, 120)

safetyPage.CanvasSize = UDim2.new(0, 0, 0, 0)

safetyPage.AutomaticCanvasSize = Enum.AutomaticSize.Y

safetyPage.Visible = false

safetyPage.ZIndex = 11

safetyPage.Parent = pageContainer



local safetyLayout = Instance.new("UIListLayout")

safetyLayout.FillDirection = Enum.FillDirection.Vertical

safetyLayout.SortOrder = Enum.SortOrder.LayoutOrder

safetyLayout.Padding = UDim.new(0, 6)

safetyLayout.Parent = safetyPage



local safetyPadding = Instance.new("UIPadding")

safetyPadding.PaddingTop = UDim.new(0, 2)

safetyPadding.PaddingBottom = UDim.new(0, 6)

safetyPadding.PaddingLeft = UDim.new(0, 2)

safetyPadding.PaddingRight = UDim.new(0, 2)

safetyPadding.Parent = safetyPage



local function createCollapsibleSection(name, icon, title, initialHeight, layoutOrder)

&#x20;   local cardFrame = Instance.new("Frame")

&#x20;   cardFrame.Name = name .. "Card"

&#x20;   cardFrame.Size = UDim2.new(1, 0, 0, 30)

&#x20;   cardFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 30)

&#x20;   cardFrame.BorderSizePixel = 0

&#x20;   cardFrame.ClipsDescendants = true

&#x20;   cardFrame.LayoutOrder = layoutOrder

&#x20;   cardFrame.ZIndex = 12

&#x20;   cardFrame.Parent = safetyPage



&#x20;   local cardCorner = Instance.new("UICorner")

&#x20;   cardCorner.CornerRadius = UDim.new(0, 6)

&#x20;   cardCorner.Parent = cardFrame



&#x20;   local headerBtn = Instance.new("TextButton")

&#x20;   headerBtn.Name = "Header"

&#x20;   headerBtn.Size = UDim2.new(1, 0, 0, 30)

&#x20;   headerBtn.BackgroundColor3 = Color3.fromRGB(28, 30, 42)

&#x20;   headerBtn.BorderSizePixel = 0

&#x20;   headerBtn.Text = ""

&#x20;   headerBtn.ZIndex = 13

&#x20;   headerBtn.Parent = cardFrame



&#x20;   local headerCorner = Instance.new("UICorner")

&#x20;   headerCorner.CornerRadius = UDim.new(0, 6)

&#x20;   headerCorner.Parent = headerBtn



&#x20;   local titleLabel = Instance.new("TextLabel")

&#x20;   titleLabel.Size = UDim2.new(1, -70, 1, 0)

&#x20;   titleLabel.Position = UDim2.new(0, 10, 0, 0)

&#x20;   titleLabel.BackgroundTransparency = 1

&#x20;   titleLabel.Text = icon .. " " .. title

&#x20;   titleLabel.TextColor3 = Color3.fromRGB(240, 240, 245)

&#x20;   titleLabel.TextSize = 11

&#x20;   titleLabel.Font = Enum.Font.GothamBold

&#x20;   titleLabel.TextXAlignment = Enum.TextXAlignment.Left

&#x20;   titleLabel.ZIndex = 14

&#x20;   titleLabel.Parent = headerBtn



&#x20;   local arrowLabel = Instance.new("TextLabel")

&#x20;   arrowLabel.Size = UDim2.new(0, 20, 1, 0)

&#x20;   arrowLabel.Position = UDim2.new(1, -24, 0, 0)

&#x20;   arrowLabel.BackgroundTransparency = 1

&#x20;   arrowLabel.Text = "▼"

&#x20;   arrowLabel.TextColor3 = Color3.fromRGB(150, 155, 175)

&#x20;   arrowLabel.TextSize = 10

&#x20;   arrowLabel.Font = Enum.Font.GothamBold

&#x20;   arrowLabel.ZIndex = 14

&#x20;   arrowLabel.Parent = headerBtn



&#x20;   local contentFrame = Instance.new("Frame")

&#x20;   contentFrame.Name = "Content"

&#x20;   contentFrame.Size = UDim2.new(1, -16, 0, initialHeight)

&#x20;   contentFrame.Position = UDim2.new(0, 8, 0, 34)

&#x20;   contentFrame.BackgroundTransparency = 1

&#x20;   contentFrame.ZIndex = 13

&#x20;   contentFrame.Parent = cardFrame



&#x20;   local isExpanded = false

&#x20;   local targetTotalHeight = 30 + initialHeight + 8



&#x20;   headerBtn.MouseButton1Click:Connect(function()

&#x20;       isExpanded = not isExpanded

&#x20;       local newHeight = isExpanded and targetTotalHeight or 30

&#x20;       local newArrow = isExpanded and "▲" or "▼"

&#x20;       arrowLabel.Text = newArrow

&#x20;       TweenService:Create(cardFrame, TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {

&#x20;           Size = UDim2.new(1, 0, 0, newHeight)

&#x20;       }):Play()

&#x20;   end)



&#x20;   return contentFrame

end



local mistakesContent = createCollapsibleSection("Mistakes", "🎯", "Human Mistakes", 62, 1)



local mistakesButton = Instance.new("TextButton")

mistakesButton.Name = "MistakesButton"

mistakesButton.Size = UDim2.new(1, 0, 0, 26)

mistakesButton.BackgroundColor3 = Color3.fromRGB(46, 204, 113)

mistakesButton.BorderSizePixel = 0

mistakesButton.Text = "🎯 Human Mistakes (0.7%): ON"

mistakesButton.TextColor3 = Color3.fromRGB(255, 255, 255)

mistakesButton.TextSize = 11

mistakesButton.Font = Enum.Font.GothamBold

mistakesButton.ZIndex = 15

mistakesButton.Parent = mistakesContent



local mistakesCorner = Instance.new("UICorner")

mistakesCorner.CornerRadius = UDim.new(0, 5)

mistakesCorner.Parent = mistakesButton



local mistakesDesc = Instance.new("TextLabel")

mistakesDesc.Size = UDim2.new(1, 0, 0, 28)

mistakesDesc.Position = UDim2.new(0, 0, 0, 30)

mistakesDesc.BackgroundTransparency = 1

mistakesDesc.Text = "Simule des micro-hésitations et variations humaines naturelles."

mistakesDesc.TextColor3 = Color3.fromRGB(140, 145, 165)

mistakesDesc.TextSize = 9

mistakesDesc.Font = Enum.Font.Gotham

mistakesDesc.TextWrapped = true

mistakesDesc.ZIndex = 14

mistakesDesc.Parent = mistakesContent



local cameraContent = createCollapsibleSection("Camera", "🎥", "Smooth Camera Follow", 62, 2)



local cameraButton = Instance.new("TextButton")

cameraButton.Name = "CameraButton"

cameraButton.Size = UDim2.new(1, 0, 0, 26)

cameraButton.BackgroundColor3 = Color3.fromRGB(52, 152, 219)

cameraButton.BorderSizePixel = 0

cameraButton.Text = "🎥 Smooth Cam Follow: ON"

cameraButton.TextColor3 = Color3.fromRGB(255, 255, 255)

cameraButton.TextSize = 11

cameraButton.Font = Enum.Font.GothamBold

cameraButton.ZIndex = 15

cameraButton.Parent = cameraContent



local cameraCorner = Instance.new("UICorner")

cameraCorner.CornerRadius = UDim.new(0, 5)

cameraCorner.Parent = cameraButton



local cameraDesc = Instance.new("TextLabel")

cameraDesc.Size = UDim2.new(1, 0, 0, 28)

cameraDesc.Position = UDim2.new(0, 0, 0, 30)

cameraDesc.BackgroundTransparency = 1

cameraDesc.Text = "Suivi caméra fluide avec lissage dynamique et anti-collision."

cameraDesc.TextColor3 = Color3.fromRGB(140, 145, 165)

cameraDesc.TextSize = 9

cameraDesc.Font = Enum.Font.Gotham

cameraDesc.TextWrapped = true

cameraDesc.ZIndex = 14

cameraDesc.Parent = cameraContent



local delayContent = createCollapsibleSection("Delays", "⏱️", "Random Lap Delays", 62, 3)



local randomDelayButton = Instance.new("TextButton")

randomDelayButton.Name = "RandomDelayButton"

randomDelayButton.Size = UDim2.new(1, 0, 0, 26)

randomDelayButton.BackgroundColor3 = Color3.fromRGB(52, 152, 219)

randomDelayButton.BorderSizePixel = 0

randomDelayButton.Text = "⏱️ Random Lap Delays: ON"

randomDelayButton.TextColor3 = Color3.fromRGB(255, 255, 255)

randomDelayButton.TextSize = 11

randomDelayButton.Font = Enum.Font.GothamBold

randomDelayButton.ZIndex = 15

randomDelayButton.Parent = delayContent



local delayCorner = Instance.new("UICorner")

delayCorner.CornerRadius = UDim.new(0, 5)

delayCorner.Parent = randomDelayButton



local delayDesc = Instance.new("TextLabel")

delayDesc.Size = UDim2.new(1, 0, 0, 28)

delayDesc.Position = UDim2.new(0, 0, 0, 30)

delayDesc.BackgroundTransparency = 1

delayDesc.Text = "Ajoute un délai aléatoire sécurisant entre chaque départ de tour."

delayDesc.TextColor3 = Color3.fromRGB(140, 145, 165)

delayDesc.TextSize = 9

delayDesc.Font = Enum.Font.Gotham

delayDesc.TextWrapped = true

delayDesc.ZIndex = 14

delayDesc.Parent = delayContent



local evadeContent = createCollapsibleSection("StaffEvade", "🚨", "Staff \& Mod Evade", 62, 4)



local staffEvadeButton = Instance.new("TextButton")

staffEvadeButton.Name = "StaffEvadeButton"

staffEvadeButton.Size = UDim2.new(1, 0, 0, 26)

staffEvadeButton.BackgroundColor3 = Color3.fromRGB(231, 76, 60)

staffEvadeButton.BorderSizePixel = 0

staffEvadeButton.Text = "🚨 Staff / Mod Evade: ON"

staffEvadeButton.TextColor3 = Color3.fromRGB(255, 255, 255)

staffEvadeButton.TextSize = 11

staffEvadeButton.Font = Enum.Font.GothamBold

staffEvadeButton.ZIndex = 15

staffEvadeButton.Parent = evadeContent



local evadeCorner = Instance.new("UICorner")

evadeCorner.CornerRadius = UDim.new(0, 5)

evadeCorner.Parent = staffEvadeButton



local evadeDesc = Instance.new("TextLabel")

evadeDesc.Size = UDim2.new(1, 0, 0, 28)

evadeDesc.Position = UDim2.new(0, 0, 0, 30)

evadeDesc.BackgroundTransparency = 1

evadeDesc.Text = "Met en pause le parcours dès l'entrée d'un modérateur/admin."

evadeDesc.TextColor3 = Color3.fromRGB(140, 145, 165)

evadeDesc.TextSize = 9

evadeDesc.Font = Enum.Font.Gotham

evadeDesc.TextWrapped = true

evadeDesc.ZIndex = 14

evadeDesc.Parent = evadeContent



local reconnectContent = createCollapsibleSection("Reconnect", "🔄", "Auto-Reconnect \& Hop", 120, 5)



local reconnectButton = Instance.new("TextButton")

reconnectButton.Name = "ReconnectButton"

reconnectButton.Size = UDim2.new(1, 0, 0, 26)

reconnectButton.BackgroundColor3 = Color3.fromRGB(230, 126, 34)

reconnectButton.BorderSizePixel = 0

reconnectButton.Text = "🔄 Auto-Reconnect: ON"

reconnectButton.TextColor3 = Color3.fromRGB(255, 255, 255)

reconnectButton.TextSize = 11

reconnectButton.Font = Enum.Font.GothamBold

reconnectButton.ZIndex = 15

reconnectButton.Parent = reconnectContent



local reconnectCorner = Instance.new("UICorner")

reconnectCorner.CornerRadius = UDim.new(0, 5)

reconnectCorner.Parent = reconnectButton



local reconnectDesc = Instance.new("TextLabel")

reconnectDesc.Size = UDim2.new(1, 0, 0, 24)

reconnectDesc.Position = UDim2.new(0, 0, 0, 28)

reconnectDesc.BackgroundTransparency = 1

reconnectDesc.Text = "Reconnexion automatique en cas de déconnexion."

reconnectDesc.TextColor3 = Color3.fromRGB(140, 145, 165)

reconnectDesc.TextSize = 9

reconnectDesc.Font = Enum.Font.Gotham

reconnectDesc.TextWrapped = true

reconnectDesc.ZIndex = 14

reconnectDesc.Parent = reconnectContent



local serverHopButton = Instance.new("TextButton")

serverHopButton.Name = "ServerHopButton"

serverHopButton.Size = UDim2.new(1, 0, 0, 26)

serverHopButton.Position = UDim2.new(0, 0, 0, 56)

serverHopButton.BackgroundColor3 = Color3.fromRGB(142, 68, 173)

serverHopButton.BorderSizePixel = 0

serverHopButton.Text = "🌐 Hop to New Server"

serverHopButton.TextColor3 = Color3.fromRGB(255, 255, 255)

serverHopButton.TextSize = 11

serverHopButton.Font = Enum.Font.GothamBold

serverHopButton.ZIndex = 15

serverHopButton.Parent = reconnectContent



local serverHopCorner = Instance.new("UICorner")

serverHopCorner.CornerRadius = UDim.new(0, 5)

serverHopCorner.Parent = serverHopButton



local serverHopDesc = Instance.new("TextLabel")

serverHopDesc.Size = UDim2.new(1, 0, 0, 28)

serverHopDesc.Position = UDim2.new(0, 0, 0, 84)

serverHopDesc.BackgroundTransparency = 1

serverHopDesc.Text = "Téléporte instantanément vers un autre serveur public actif."

serverHopDesc.TextColor3 = Color3.fromRGB(140, 145, 165)

serverHopDesc.TextSize = 9

serverHopDesc.Font = Enum.Font.Gotham

serverHopDesc.TextWrapped = true

serverHopDesc.ZIndex = 14

serverHopDesc.Parent = reconnectContent



pbToastFrame = Instance.new("Frame")

pbToastFrame.Name = "PBToastFrame"

pbToastFrame.Size = UDim2.new(1, -20, 0, 28)

pbToastFrame.Position = UDim2.new(0, 10, 0, -35)

pbToastFrame.BackgroundColor3 = Color3.fromRGB(241, 196, 15)

pbToastFrame.BorderSizePixel = 0

pbToastFrame.ZIndex = 20

pbToastFrame.Visible = false

pbToastFrame.Parent = mainFrame



local pbToastCorner = Instance.new("UICorner")

pbToastCorner.CornerRadius = UDim.new(0, 6)

pbToastCorner.Parent = pbToastFrame



pbToastLabel = Instance.new("TextLabel")

pbToastLabel.Name = "PBToastLabel"

pbToastLabel.Size = UDim2.new(1, 0, 1, 0)

pbToastLabel.BackgroundTransparency = 1

pbToastLabel.Text = "⭐ NEW PERSONAL BEST!"

pbToastLabel.TextColor3 = Color3.fromRGB(20, 22, 28)

pbToastLabel.TextSize = 11

pbToastLabel.Font = Enum.Font.GothamBold

pbToastLabel.ZIndex = 21

pbToastLabel.Parent = pbToastFrame



local function triggerPBCelebration(newPB, oldPB)

&#x20;   task.spawn(function()

&#x20;       local diffText = (oldPB > 0) and string.format(" (-%.2fs)", oldPB - newPB) or ""

&#x20;       pbToastLabel.Text = string.format("⭐ NEW RECORD: %.2fs!%s", newPB, diffText)

&#x20;       pbToastFrame.Visible = true

&#x20;       pbToastFrame.Position = UDim2.new(0, 10, 0, -35)

&#x20;       

&#x20;       local slideIn = TweenService:Create(pbToastFrame, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {

&#x20;           Position = UDim2.new(0, 10, 0, 4)

&#x20;       })

&#x20;       slideIn:Play()

&#x20;       task.wait(2.8)

&#x20;       

&#x20;       local slideOut = TweenService:Create(pbToastFrame, TweenInfo.new(0.30, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {

&#x20;           Position = UDim2.new(0, 10, 0, -35)

&#x20;       })

&#x20;       slideOut:Play()

&#x20;       slideOut.Completed:Connect(function()

&#x20;           pbToastFrame.Visible = false

&#x20;       end)

&#x20;   end)

end



local statusLabel = Instance.new("TextLabel")

statusLabel.Name = "Status"

statusLabel.Size = UDim2.new(1, -20, 0, 24)

statusLabel.Position = UDim2.new(0, 10, 0, 226)

statusLabel.BackgroundColor3 = Color3.fromRGB(15, 16, 22)

statusLabel.BorderSizePixel = 0

statusLabel.Text = "Status: Ready (Anti-AFK Active)"

statusLabel.TextColor3 = Color3.fromRGB(160, 165, 185)

statusLabel.TextSize = 11

statusLabel.Font = Enum.Font.Gotham

statusLabel.ZIndex = 12

statusLabel.Parent = contentHolder



local statusCorner = Instance.new("UICorner")

statusCorner.CornerRadius = UDim.new(0, 5)

statusCorner.Parent = statusLabel



local function attachInteractiveEffects(btn)

&#x20;   local originalSize = btn.Size

&#x20;   

&#x20;   btn.MouseEnter:Connect(function()

&#x20;       local hoverColor = btn.BackgroundColor3:Lerp(Color3.new(1, 1, 1), 0.16)

&#x20;       TweenService:Create(btn, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {

&#x20;           BackgroundColor3 = hoverColor

&#x20;       }):Play()

&#x20;   end)

&#x20;   

&#x20;   btn.MouseLeave:Connect(function()

&#x20;       TweenService:Create(btn, TweenInfo.new(0.20, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {

&#x20;           BackgroundColor3 = btn.BackgroundColor3

&#x20;       }):Play()

&#x20;   end)

&#x20;   

&#x20;   btn.MouseButton1Down:Connect(function()

&#x20;       TweenService:Create(btn, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {

&#x20;           Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset \* 0.95, originalSize.Y.Scale, originalSize.Y.Offset \* 0.92)

&#x20;       }):Play()

&#x20;   end)

&#x20;   

&#x20;   btn.MouseButton1Up:Connect(function()

&#x20;       TweenService:Create(btn, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {

&#x20;           Size = originalSize

&#x20;       }):Play()

&#x20;   end)

end



attachInteractiveEffects(toggleButton)

attachInteractiveEffects(loopButton)

attachInteractiveEffects(cpuButton)

attachInteractiveEffects(gpuButton)

attachInteractiveEffects(mistakesButton)

attachInteractiveEffects(cameraButton)

attachInteractiveEffects(randomDelayButton)

attachInteractiveEffects(staffEvadeButton)

attachInteractiveEffects(reconnectButton)

attachInteractiveEffects(serverHopButton)

attachInteractiveEffects(minimizeBtn)



local function switchTab(tabName)

&#x20;   local activeColor = Color3.fromRGB(52, 152, 219)

&#x20;   local inactiveColor = Color3.fromRGB(28, 30, 40)

&#x20;   local activeTextColor = Color3.fromRGB(255, 255, 255)

&#x20;   local inactiveTextColor = Color3.fromRGB(150, 155, 175)

&#x20;   

&#x20;   TweenService:Create(runTabBtn, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {

&#x20;       BackgroundColor3 = (tabName == "Run") and activeColor or inactiveColor,

&#x20;       TextColor3 = (tabName == "Run") and activeTextColor or inactiveTextColor

&#x20;   }):Play()

&#x20;   

&#x20;   TweenService:Create(perfTabBtn, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {

&#x20;       BackgroundColor3 = (tabName == "Perf") and activeColor or inactiveColor,

&#x20;       TextColor3 = (tabName == "Perf") and activeTextColor or inactiveTextColor

&#x20;   }):Play()

&#x20;   

&#x20;   TweenService:Create(safetyTabBtn, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {

&#x20;       BackgroundColor3 = (tabName == "Safety") and activeColor or inactiveColor,

&#x20;       TextColor3 = (tabName == "Safety") and activeTextColor or inactiveTextColor

&#x20;   }):Play()

&#x20;   

&#x20;   local targetPage = (tabName == "Run" and runPage) or (tabName == "Perf" and perfPage) or safetyPage

&#x20;   

&#x20;   runPage.Visible = (tabName == "Run")

&#x20;   perfPage.Visible = (tabName == "Perf")

&#x20;   safetyPage.Visible = (tabName == "Safety")

&#x20;   

&#x20;   targetPage.Position = UDim2.new(0, 12, 0, 0)

&#x20;   TweenService:Create(targetPage, TweenInfo.new(0.20, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {

&#x20;       Position = UDim2.new(0, 0, 0, 0)

&#x20;   }):Play()

end



runTabBtn.MouseButton1Click:Connect(function() switchTab("Run") end)

perfTabBtn.MouseButton1Click:Connect(function() switchTab("Perf") end)

safetyTabBtn.MouseButton1Click:Connect(function() switchTab("Safety") end)



local isMinimized = false

local isAnimatingGui = false



minimizeBtn.MouseButton1Click:Connect(function()

&#x20;   if isAnimatingGui or isMinimized then return end

&#x20;   isAnimatingGui = true

&#x20;   isMinimized = true

&#x20;   

&#x20;   contentHolder.Visible = false

&#x20;   minimizeBtn.Visible = false

&#x20;   titleLabel.Visible = false

&#x20;   restoreBarBtn.Visible = true

&#x20;   

&#x20;   local morphShrink = TweenService:Create(mainFrame, TweenInfo.new(0.26, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {

&#x20;       Size = UDim2.new(0, 160, 0, 32)

&#x20;   })

&#x20;   local strokeTween = TweenService:Create(uiStroke, TweenInfo.new(0.26), {

&#x20;       Color = Color3.fromRGB(52, 152, 219)

&#x20;   })

&#x20;   local cornerTween = TweenService:Create(uiCorner, TweenInfo.new(0.26), {

&#x20;       CornerRadius = UDim.new(0, 8)

&#x20;   })

&#x20;   

&#x20;   morphShrink:Play()

&#x20;   strokeTween:Play()

&#x20;   cornerTween:Play()

&#x20;   

&#x20;   morphShrink.Completed:Connect(function()

&#x20;       isAnimatingGui = false

&#x20;   end)

end)



restoreBarBtn.MouseButton1Click:Connect(function()

&#x20;   if isAnimatingGui or not isMinimized then return end

&#x20;   isAnimatingGui = true

&#x20;   isMinimized = false

&#x20;   

&#x20;   restoreBarBtn.Visible = false

&#x20;   

&#x20;   local morphExpand = TweenService:Create(mainFrame, TweenInfo.new(0.30, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {

&#x20;       Size = UDim2.new(0, 290, 0, 260)

&#x20;   })

&#x20;   local strokeTween = TweenService:Create(uiStroke, TweenInfo.new(0.30), {

&#x20;       Color = Color3.fromRGB(48, 52, 70)

&#x20;   })

&#x20;   local cornerTween = TweenService:Create(uiCorner, TweenInfo.new(0.30), {

&#x20;       CornerRadius = UDim.new(0, 10)

&#x20;   })

&#x20;   

&#x20;   morphExpand:Play()

&#x20;   strokeTween:Play()

&#x20;   cornerTween:Play()

&#x20;   

&#x20;   morphExpand.Completed:Connect(function()

&#x20;       titleLabel.Visible = true

&#x20;       minimizeBtn.Visible = true

&#x20;       contentHolder.Visible = true

&#x20;       isAnimatingGui = false

&#x20;   end)

end)



local function updateUIState()

&#x20;   if toggleButton then

&#x20;       if runEnabled then

&#x20;           toggleButton.Text = "⏹ Disable Run"

&#x20;           TweenService:Create(toggleButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(231, 76, 60)}):Play()

&#x20;       else

&#x20;           toggleButton.Text = "▶ Enable Run"

&#x20;           TweenService:Create(toggleButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(46, 204, 113)}):Play()

&#x20;       end

&#x20;   end



&#x20;   if isLooping then

&#x20;       loopButton.Text = "🔁 Loop: ON"

&#x20;       TweenService:Create(loopButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(52, 152, 219)}):Play()

&#x20;   else

&#x20;       loopButton.Text = "⏹ Loop: OFF"

&#x20;       TweenService:Create(loopButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(80, 85, 100)}):Play()

&#x20;   end

&#x20;   

&#x20;   if cpuSaverEnabled then

&#x20;       cpuButton.Text = "💻 CPU Saver (15 FPS): ON"

&#x20;       TweenService:Create(cpuButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(155, 89, 182)}):Play()

&#x20;   else

&#x20;       cpuButton.Text = "💻 CPU Saver (15 FPS): OFF"

&#x20;       TweenService:Create(cpuButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(80, 85, 100)}):Play()

&#x20;   end

&#x20;   

&#x20;   if gpuSaverEnabled then

&#x20;       gpuButton.Text = "🎮 GPU Saver (Black Screen): ON"

&#x20;       TweenService:Create(gpuButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(20, 20, 20), TextColor3 = Color3.fromRGB(46, 204, 113)}):Play()

&#x20;   else

&#x20;       gpuButton.Text = "🎮 GPU Saver (Black Screen): OFF"

&#x20;       TweenService:Create(gpuButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(80, 85, 100), TextColor3 = Color3.fromRGB(230, 230, 235)}):Play()

&#x20;   end

&#x20;   

&#x20;   if humanMistakesEnabled then

&#x20;       mistakesButton.Text = "🎯 Human Mistakes (0.7%): ON"

&#x20;       TweenService:Create(mistakesButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(46, 204, 113)}):Play()

&#x20;   else

&#x20;       mistakesButton.Text = "🎯 Human Mistakes (0.7%): OFF"

&#x20;       TweenService:Create(mistakesButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(80, 85, 100)}):Play()

&#x20;   end

&#x20;   

&#x20;   if cameraToggleEnabled then

&#x20;       cameraButton.Text = "🎥 Smooth Cam Follow: ON"

&#x20;       TweenService:Create(cameraButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(52, 152, 219)}):Play()

&#x20;   else

&#x20;       cameraButton.Text = "🎥 Smooth Cam Follow: OFF"

&#x20;       TweenService:Create(cameraButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(80, 85, 100)}):Play()

&#x20;   end

&#x20;   

&#x20;   if useRandomDelays then

&#x20;       randomDelayButton.Text = "⏱️ Random Lap Delays: ON"

&#x20;       TweenService:Create(randomDelayButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(52, 152, 219)}):Play()

&#x20;   else

&#x20;       randomDelayButton.Text = "⏱️ Random Lap Delays: OFF"

&#x20;       TweenService:Create(randomDelayButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(80, 85, 100)}):Play()

&#x20;   end

&#x20;   

&#x20;   if staffEvadeEnabled then

&#x20;       staffEvadeButton.Text = "🚨 Staff / Mod Evade: ON"

&#x20;       TweenService:Create(staffEvadeButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(231, 76, 60)}):Play()

&#x20;   else

&#x20;       staffEvadeButton.Text = "🚨 Staff / Mod Evade: OFF"

&#x20;       TweenService:Create(staffEvadeButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(80, 85, 100)}):Play()

&#x20;   end

&#x20;   

&#x20;   if autoReconnectEnabled then

&#x20;       reconnectButton.Text = "🔄 Auto-Reconnect: ON"

&#x20;       TweenService:Create(reconnectButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(230, 126, 34)}):Play()

&#x20;   else

&#x20;       reconnectButton.Text = "🔄 Auto-Reconnect: OFF"

&#x20;       TweenService:Create(reconnectButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(80, 85, 100)}):Play()

&#x20;   end

end



\-- ========================================================

\-- TIMELINE OPTIMIZATION: NATURAL DEAD-TIME \& PAUSE COMPRESSION

\-- ========================================================



local function sanitizeTimelineFrames(rawFrames)

&#x20;   if not rawFrames or typeof(rawFrames) \~= "table" or #rawFrames == 0 then

&#x20;       return {}

&#x20;   end

&#x20;   

&#x20;   local cleaned = {}

&#x20;   local timeOffset = 0

&#x20;   local lastValidT = rawFrames\[1].t

&#x20;   local lastPos = rawFrames\[1].c.Position

&#x20;   local staticDuration = 0

&#x20;   

&#x20;   for i = 1, #rawFrames do

&#x20;       local f = rawFrames\[i]

&#x20;       local dt = f.t - lastValidT

&#x20;       local dist = (f.c.Position - lastPos).Magnitude

&#x20;       

&#x20;       if dist < 0.035 and not f.j then

&#x20;           staticDuration = staticDuration + dt

&#x20;           if staticDuration > 0.08 then

&#x20;               timeOffset = timeOffset + (dt \* 0.82)

&#x20;           end

&#x20;       else

&#x20;           staticDuration = 0

&#x20;       end

&#x20;       

&#x20;       lastValidT = f.t

&#x20;       lastPos = f.c.Position

&#x20;       

&#x20;       local adjustedT = math.max(0, f.t - timeOffset)

&#x20;       table.insert(cleaned, {

&#x20;           t = adjustedT,

&#x20;           c = f.c,

&#x20;           j = f.j

&#x20;       })

&#x20;   end

&#x20;   

&#x20;   return cleaned

end



local sourceFrames = (typeof(frames) == "table" and frames) or (typeof(\_G.frames) == "table" and \_G.frames) or ((typeof(getgenv) == "function" and typeof(getgenv().frames) == "table") and getgenv().frames) or {}

local activeTimelineFrames = sanitizeTimelineFrames(sourceFrames)



\-- ========================================================

\-- ADVANCED HUMANIZATION ENGINE \& FRAME METADATA PRE-ANALYZER

\-- ========================================================



local function computeFrameMetadata(framesList)

&#x20;   if not framesList or typeof(framesList) \~= "table" or #framesList == 0 then

&#x20;       return {}

&#x20;   end

&#x20;   

&#x20;   local meta = table.create(#framesList)

&#x20;   

&#x20;   local jumpTimes = {}

&#x20;   for i, f in ipairs(framesList) do

&#x20;       if f.j then

&#x20;           table.insert(jumpTimes, f.t)

&#x20;       end

&#x20;   end

&#x20;   

&#x20;   local totalFrames = #framesList

&#x20;   

&#x20;   for i, f in ipairs(framesList) do

&#x20;       local minJumpDist = 999

&#x20;       for \_, jt in ipairs(jumpTimes) do

&#x20;           local d = math.abs(f.t - jt)

&#x20;           if d < minJumpDist then

&#x20;               minJumpDist = d

&#x20;           end

&#x20;       end

&#x20;       

&#x20;       local prevF = framesList\[math.max(1, i - 5)]

&#x20;       local nextF = framesList\[math.min(totalFrames, i + 5)]

&#x20;       local vertDiff = math.max(math.abs(f.c.Y - prevF.c.Y), math.abs(nextF.c.Y - f.c.Y))

&#x20;       

&#x20;       local safeFactor = 0

&#x20;       if not f.j and minJumpDist > 0.85 and vertDiff < 0.25 then

&#x20;           safeFactor = math.clamp((minJumpDist - 0.85) / 1.15, 0, 1)

&#x20;       end

&#x20;       

&#x20;       local edgeDamp = math.clamp(i / 20, 0, 1) \* math.clamp((totalFrames - i) / 20, 0, 1)

&#x20;       safeFactor = safeFactor \* edgeDamp

&#x20;       

&#x20;       meta\[i] = {

&#x20;           minJumpDist = minJumpDist,

&#x20;           vertDiff = vertDiff,

&#x20;           safeFactor = safeFactor,

&#x20;           isStrictGround = (not f.j and minJumpDist >= 0.40 and vertDiff < 0.20)

&#x20;       }

&#x20;   end

&#x20;   

&#x20;   return meta

end



local frameMetadata = computeFrameMetadata(activeTimelineFrames)



\-- Pre-calculate jump peak indices for each jump event

local jumpPeakData = {}

local jumpCounter = 0

local i = 1

while i <= #activeTimelineFrames do

&#x20;   if activeTimelineFrames\[i].j then

&#x20;       jumpCounter = jumpCounter + 1

&#x20;       -- Find the peak Y within the next 15 frames (or until next jump)

&#x20;       local maxY = -math.huge

&#x20;       local peakIdx = i

&#x20;       local limit = math.min(i + 15, #activeTimelineFrames)

&#x20;       for j = i, limit do

&#x20;           if j > i and activeTimelineFrames\[j].j then break end

&#x20;           local y = activeTimelineFrames\[j].c.Position.Y

&#x20;           if y > maxY then

&#x20;               maxY = y

&#x20;               peakIdx = j

&#x20;           end

&#x20;       end

&#x20;       jumpPeakData\[jumpCounter] = {startIdx = i, peakIdx = peakIdx}

&#x20;   end

&#x20;   i = i + 1

end



local activeIdleTrack = nil

local activeWalkTrack = nil

local activeJumpTrack = nil



local function stopPlayback()

&#x20;   isPlaying = false

&#x20;   pcall(function()

&#x20;       if activeIdleTrack and activeIdleTrack.IsPlaying then activeIdleTrack:Stop(0.2) end

&#x20;       if activeWalkTrack and activeWalkTrack.IsPlaying then activeWalkTrack:Stop(0.2) end

&#x20;       if activeJumpTrack and activeJumpTrack.IsPlaying then activeJumpTrack:Stop(0.2) end

&#x20;       

&#x20;       local char = LocalPlayer.Character

&#x20;       if char then

&#x20;           local humanoid = char:FindFirstChild("Humanoid")

&#x20;           if humanoid then

&#x20;               local animator = humanoid:FindFirstChildOfClass("Animator")

&#x20;               if animator then

&#x20;                   for \_, track in ipairs(animator:GetPlayingAnimationTracks()) do

&#x20;                       track:Stop(0.15)

&#x20;                   end

&#x20;               end

&#x20;           end

&#x20;           local animateScript = char:FindFirstChild("Animate")

&#x20;           if animateScript then

&#x20;               animateScript.Disabled = false

&#x20;           end

&#x20;       end

&#x20;   end)

&#x20;   resetCameraToNative()

&#x20;   if screenGui and screenGui.Parent then

&#x20;       statusLabel.Text = "Status: Inactive (Anti-AFK Active)"

&#x20;       statusLabel.TextColor3 = Color3.fromRGB(160, 165, 185)

&#x20;       toggleButton.Text = "▶ Enable Run"

&#x20;       TweenService:Create(toggleButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(46, 204, 113)}):Play()

&#x20;       restoreBarBtn.Text = "⚡ Auto Obby \[ + ]"

&#x20;   end

end



local function fullScriptCleanup()

&#x20;   stopAfkMovementKeepalive()

&#x20;   isRunningScript = false

&#x20;   isPlaying = false

&#x20;   runEnabled = false

&#x20;   

&#x20;   for \_, conn in ipairs(activeConnections) do

&#x20;       pcall(function() conn:Disconnect() end)

&#x20;   end

&#x20;   table.clear(activeConnections)

&#x20;   

&#x20;   pcall(function()

&#x20;       if playbackThread and coroutine.status(playbackThread) \~= "dead" then

&#x20;           task.cancel(playbackThread)

&#x20;       end

&#x20;   end)

&#x20;   

&#x20;   stopPlayback()

&#x20;   

&#x20;   pcall(function()

&#x20;       RunService:Set3dRenderingEnabled(true)

&#x20;       settings().Rendering.QualityLevel = originalQualityLevel

&#x20;       Lighting.GlobalShadows = originalGlobalShadows

&#x20;   end)

&#x20;   

&#x20;   pcall(function()

&#x20;       if screenGui and screenGui.Parent then

&#x20;           screenGui:Destroy()

&#x20;       end

&#x20;   end)

end



if getgenv then

&#x20;   getgenv().ExpertObbyCleanup = fullScriptCleanup

end

\_G.ExpertObbyCleanup = fullScriptCleanup



\-- ========================================================

\-- INTELLIGENT GROUND-FRAME PATHFINDER \& HYBRID STEPPER

\-- ========================================================



local function executeWaypoints(humanoid, waypoints)

&#x20;   local char = humanoid and humanoid.Parent

&#x20;   local hrp = char and char:FindFirstChild("HumanoidRootPart")

&#x20;   if not humanoid or not hrp or not waypoints or #waypoints < 2 then

&#x20;       return false

&#x20;   end



&#x20;   local animScript = char:FindFirstChild("Animate")

&#x20;   if animScript then animScript.Disabled = false end



&#x20;   for i = 2, #waypoints do

&#x20;       if not isPlaying or not isRunningScript then

&#x20;           return false

&#x20;       end



&#x20;       local wp = waypoints\[i]

&#x20;       local wpPos = wp.Position



&#x20;       if wp.Action == Enum.PathWaypointAction.Jump then

&#x20;           humanoid.Jump = true

&#x20;           task.wait(randomDelay(0.02, 0.08))

&#x20;       end



&#x20;       humanoid:MoveTo(wpPos)



&#x20;       local reached = false

&#x20;       local finished = false

&#x20;       local conn = humanoid.MoveToFinished:Connect(function(didReach)

&#x20;           finished = true

&#x20;           reached = (didReach == true)

&#x20;       end)



&#x20;       local wpStart = os.clock()

&#x20;       local timeout = math.clamp((hrp.Position - wpPos).Magnitude / 8, 1.25, 3.0)



&#x20;       while not finished and isPlaying and isRunningScript do

&#x20;           local dist = (hrp.Position - wpPos).Magnitude

&#x20;           if dist <= 2.75 then

&#x20;               reached = true

&#x20;               break

&#x20;           end

&#x20;           if (os.clock() - wpStart) > timeout then

&#x20;               break

&#x20;           end



&#x20;           statusLabel.Text = "Status: Pathfinding (Native Speed)..."



&#x20;           local moveDir = wpPos - hrp.Position

&#x20;           local horiz = Vector3.new(moveDir.X, 0, moveDir.Z)

&#x20;           if horiz.Magnitude > 0.1 then

&#x20;               local heading = math.atan2(-horiz.X, -horiz.Z)

&#x20;               updateHumanMouseCamera(hrp.Position, heading, 0.03, os.clock(), false)

&#x20;           end



&#x20;           RunService.Heartbeat:Wait()

&#x20;       end



&#x20;       conn:Disconnect()



&#x20;       if not reached then

&#x20;           return false

&#x20;       end

&#x20;   end



&#x20;   humanoid:Move(Vector3.zero, false)

&#x20;   return true

end



local function directWalkToTarget(character, humanoid, hrp, targetPos)

&#x20;   local startT = os.clock()

&#x20;   local animScript = character:FindFirstChild("Animate")

&#x20;   if animScript then animScript.Disabled = false end

&#x20;   

&#x20;   while isPlaying and isRunningScript do

&#x20;       if (hrp.Position - targetPos).Magnitude < 2.5 then

&#x20;           humanoid:Move(Vector3.zero, false)

&#x20;           return true

&#x20;       end

&#x20;       if (os.clock() - startT) > 3.0 then break end

&#x20;       if humanoid.Health <= 0 or hrp.Position.Y < -30 then break end

&#x20;       

&#x20;       local dir = (targetPos - hrp.Position)

&#x20;       local horizDir = Vector3.new(dir.X, 0, dir.Z)

&#x20;       if horizDir.Magnitude > 0.1 then

&#x20;           local moveVec = horizDir.Unit

&#x20;           humanoid:Move(moveVec, false)

&#x20;           

&#x20;           local rayForward = workspace:Raycast(hrp.Position, moveVec \* 3.5, cameraRayParams)

&#x20;           if rayForward and rayForward.Instance and rayForward.Instance.CanCollide then

&#x20;               humanoid.Jump = true

&#x20;           end

&#x20;           

&#x20;           local heading = math.atan2(-moveVec.X, -moveVec.Z)

&#x20;           updateHumanMouseCamera(hrp.Position, heading, 0.04, os.clock(), false)

&#x20;       end

&#x20;       

&#x20;       RunService.Heartbeat:Wait()

&#x20;   end

&#x20;   

&#x20;   humanoid:Move(Vector3.zero, false)

&#x20;   return (hrp.Position - targetPos).Magnitude < 3.5

end



local function findAccessibleGroundFrame(currentPos, framesList, metaList)

&#x20;   local candidates = {}

&#x20;   

&#x20;   for idx, frame in ipairs(framesList) do

&#x20;       local meta = metaList\[idx]

&#x20;       if meta and meta.isStrictGround then

&#x20;           local dist = (frame.c.Position - currentPos).Magnitude

&#x20;           table.insert(candidates, {

&#x20;               idx = idx,

&#x20;               pos = frame.c.Position,

&#x20;               dist = dist

&#x20;           })

&#x20;       end

&#x20;   end

&#x20;   

&#x20;   table.sort(candidates, function(a, b)

&#x20;       return a.dist < b.dist

&#x20;   end)

&#x20;   

&#x20;   local scanStartTime = os.clock()

&#x20;   for \_, cand in ipairs(candidates) do

&#x20;       if not isPlaying or not isRunningScript then break end

&#x20;       if (os.clock() - scanStartTime) >= 2.5 then break end

&#x20;       

&#x20;       local testPath = PathfindingService:CreatePath({

&#x20;           AgentRadius = 1.8,

&#x20;           AgentHeight = 4.5,

&#x20;           AgentCanJump = true,

&#x20;           AgentCanClimb = false,

&#x20;           WaypointSpacing = 3.0

&#x20;       })

&#x20;       

&#x20;       local success = pcall(function()

&#x20;           testPath:ComputeAsync(currentPos, cand.pos)

&#x20;       end)

&#x20;       

&#x20;       if success and testPath.Status == Enum.PathStatus.Success then

&#x20;           local waypoints = testPath:GetWaypoints()

&#x20;           if #waypoints > 1 then

&#x20;               return cand.idx, cand.pos, waypoints

&#x20;           end

&#x20;       end

&#x20;   end

&#x20;   

&#x20;   return nil, nil, nil

end



local function walkToIntelligentTarget(character, humanoid, hrp, targetPosition)

&#x20;   local startPos = hrp.Position

&#x20;   local dist = (targetPosition - startPos).Magnitude

&#x20;   if dist < 2.0 then return true end

&#x20;   

&#x20;   local path = PathfindingService:CreatePath({

&#x20;       AgentRadius = 1.8,

&#x20;       AgentHeight = 4.5,

&#x20;       AgentCanJump = true,

&#x20;       AgentCanClimb = false,

&#x20;       WaypointSpacing = 3.0

&#x20;   })

&#x20;   

&#x20;   local success = pcall(function()

&#x20;       path:ComputeAsync(startPos, targetPosition)

&#x20;   end)

&#x20;   

&#x20;   if success and path.Status == Enum.PathStatus.Success then

&#x20;       local waypoints = path:GetWaypoints()

&#x20;       local ok = executeWaypoints(humanoid, waypoints)



&#x20;       -- Path endpoints can be offset by agent radius / voxelization.

&#x20;       -- Accept the handoff when the player is close enough to the target,

&#x20;       -- even if the final MoveTo reports a conservative failure.

&#x20;       local remaining = (targetPosition - hrp.Position).Magnitude

&#x20;       if remaining <= 8.0 then

&#x20;           humanoid:Move(Vector3.zero, false)

&#x20;           return true

&#x20;       end



&#x20;       return ok and remaining <= 4.5

&#x20;   end

&#x20;   

&#x20;   if dist < 45 then

&#x20;       return directWalkToTarget(character, humanoid, hrp, targetPosition)

&#x20;   end

&#x20;   

&#x20;   return false

end



\-- ========================================================

\-- NEW: REWIND TO JUMP PEAK AND DROP (WITHOUT TP)

\-- ========================================================



local function smoothVoidDrop(character, humanoid, hrp, dropDuration)

&#x20;   dropDuration = dropDuration or 1.5



&#x20;   statusLabel.Text = "Status: Falling to void..."

&#x20;   statusLabel.TextColor3 = Color3.fromRGB(230, 126, 34)



&#x20;   local startPos = hrp.Position

&#x20;   local startVelocity = hrp.AssemblyLinearVelocity

&#x20;   local startYaw = select(2, hrp.CFrame:ToOrientation())

&#x20;   local startTime = os.clock()

&#x20;   local lastPos = startPos



&#x20;   -- Même logique que le playback normal : interpolation à chaque Heartbeat,

&#x20;   -- puis calcul d'une vraie vitesse depuis la position précédente.

&#x20;   humanoid:ChangeState(Enum.HumanoidStateType.Freefall)



&#x20;   while isPlaying and isRunningScript and humanoid.Health > 0 do

&#x20;       local elapsed = os.clock() - startTime

&#x20;       local alpha = math.clamp(elapsed / dropDuration, 0, 1)



&#x20;       -- Courbe douce : départ progressif, puis accélération naturelle vers le vide.

&#x20;       local smoothAlpha = alpha \* alpha \* (3 - 2 \* alpha)

&#x20;       local fallDistance = 4 \* smoothAlpha + 42 \* smoothAlpha \* smoothAlpha



&#x20;       local horizontalFactor = 1 - (0.82 \* smoothAlpha)

&#x20;       local horizontal = Vector3.new(startVelocity.X, 0, startVelocity.Z) \* horizontalFactor

&#x20;       local targetPos = startPos

&#x20;           + Vector3.new(horizontal.X \* elapsed, -fallDistance, horizontal.Z \* elapsed)



&#x20;       -- Petit amortissement pour éviter un mouvement parfaitement mécanique.

&#x20;       local exactPos = lastPos:Lerp(targetPos, 0.72)

&#x20;       -- Vitesse dérivée de la même courbe pour garder un mouvement fluide.

&#x20;       local curveSpeed = -(12 \* smoothAlpha + 84 \* smoothAlpha \* alpha)

&#x20;       local realVelocity = Vector3.new(horizontal.X, curveSpeed, horizontal.Z)



&#x20;       hrp.CFrame = CFrame.new(exactPos) \* CFrame.Angles(0, startYaw, 0)

&#x20;       hrp.AssemblyLinearVelocity = realVelocity

&#x20;       lastPos = exactPos



&#x20;       updateHumanMouseCamera(exactPos, startYaw, 0.03, os.clock(), false)



&#x20;       if humanoid.Health <= 0 or exactPos.Y < -55 or alpha >= 1 then

&#x20;           break

&#x20;       end



&#x20;       RunService.Heartbeat:Wait()

&#x20;   end



&#x20;   -- On laisse exactement 1.5 s avant de reprendre la boucle / attendre le respawn.

&#x20;   task.wait(1.5)

end



local function rewindToJumpPeakAndDrop(character, humanoid, hrp, targetPeakIdx)

&#x20;   statusLabel.Text = "Status: Returning to jump peak..."

&#x20;   statusLabel.TextColor3 = Color3.fromRGB(230, 126, 34)



&#x20;   -- Trouve la frame de la timeline la plus proche de la position actuelle.

&#x20;   local currentIdx = 1

&#x20;   local minDist = math.huge

&#x20;   for idx, frame in ipairs(activeTimelineFrames) do

&#x20;       local d = (frame.c.Position - hrp.Position).Magnitude

&#x20;       if d < minDist then

&#x20;           minDist = d

&#x20;           currentIdx = idx

&#x20;       end

&#x20;   end



&#x20;   if targetPeakIdx > currentIdx then targetPeakIdx = currentIdx end

&#x20;   if targetPeakIdx < 1 then targetPeakIdx = 1 end



&#x20;   local startPos = hrp.Position

&#x20;   local startYaw = select(2, hrp.CFrame:ToOrientation())

&#x20;   local lastPos = startPos

&#x20;   local totalFrames = math.max(currentIdx - targetPeakIdx, 1)



&#x20;   -- Recul fluide vers le sommet du saut, sans téléportation brutale.

&#x20;   for idx = currentIdx, targetPeakIdx, -1 do

&#x20;       if not isPlaying or not isRunningScript then break end



&#x20;       local progress = (currentIdx - idx) / totalFrames

&#x20;       local eased = progress \* progress \* (3 - 2 \* progress)

&#x20;       local targetPos = activeTimelineFrames\[idx].c.Position

&#x20;       local blendedTarget = startPos:Lerp(targetPos, eased)

&#x20;       local newPos = lastPos:Lerp(blendedTarget, 0.55)

&#x20;       local dt = math.max(1 / 60, 0.001)



&#x20;       hrp.CFrame = CFrame.new(newPos) \* CFrame.Angles(0, startYaw, 0)

&#x20;       hrp.AssemblyLinearVelocity = (newPos - lastPos) / dt

&#x20;       lastPos = newPos



&#x20;       updateHumanMouseCamera(newPos, startYaw, 0.03, os.clock(), false)

&#x20;       RunService.Heartbeat:Wait()

&#x20;   end



&#x20;   -- Si un sol est réellement présent sous le personnage, on évite de forcer le vide.

&#x20;   local rayOrigin = hrp.Position + Vector3.new(0, -2, 0)

&#x20;   local rayDirection = Vector3.new(0, -100, 0)

&#x20;   local rayResult = workspace:Raycast(rayOrigin, rayDirection, cameraRayParams)



&#x20;   if rayResult and rayResult.Instance and rayResult.Instance.CanCollide then

&#x20;       statusLabel.Text = "Status: Ground detected below, aborting drop."

&#x20;       statusLabel.TextColor3 = Color3.fromRGB(241, 196, 15)

&#x20;       task.wait(1.5)

&#x20;       return

&#x20;   end



&#x20;   smoothVoidDrop(character, humanoid, hrp, 1.5)

end



\-- ========================================================

\-- PLAYBACK HANDOFF HELPERS

\-- ========================================================



\-- Find the route frame nearest to the player's actual position.

\-- The search is biased toward the expected timeline index so a

\-- pathfinding arrival cannot accidentally jump to an unrelated lap segment.

local function resolvePlaybackStart(hrp, frames, expectedIdx)

&#x20;   if not hrp or not hrp.Parent or not frames or #frames == 0 then

&#x20;       return nil, math.huge

&#x20;   end



&#x20;   local base = math.clamp(tonumber(expectedIdx) or 1, 1, #frames)

&#x20;   local window = math.min(180, math.max(45, math.floor(#frames \* 0.12)))

&#x20;   local first = math.max(1, base - window)

&#x20;   local last = math.min(#frames, base + window)



&#x20;   local pos = hrp.Position

&#x20;   local bestIdx, bestDistSq = nil, math.huge



&#x20;   for i = first, last do

&#x20;       local frame = frames\[i]

&#x20;       local c = frame and frame.c

&#x20;       if c then

&#x20;           local d = c.Position - pos

&#x20;           local distSq = d.X \* d.X + d.Y \* d.Y + d.Z \* d.Z

&#x20;           if distSq < bestDistSq then

&#x20;               bestDistSq = distSq

&#x20;               bestIdx = i

&#x20;           end

&#x20;       end

&#x20;   end



&#x20;   if not bestIdx then

&#x20;       return nil, math.huge

&#x20;   end



&#x20;   return bestIdx, math.sqrt(bestDistSq)

end



\-- Make sure the selected start frame has enough timeline left to play.

\-- This also prevents a stale/last-frame handoff from immediately ending the run.

local function ensurePlaybackAdvance(frames, idx)

&#x20;   if not frames or #frames < 2 then

&#x20;       return nil

&#x20;   end



&#x20;   local i = math.clamp(tonumber(idx) or 1, 1, #frames - 1)

&#x20;   local minRemaining = math.min(90, math.max(12, math.floor(#frames \* 0.03)))



&#x20;   if i > (#frames - minRemaining) then

&#x20;       i = math.max(1, #frames - minRemaining)

&#x20;   end



&#x20;   return i

end



\-- ========================================================

\-- SILKY-SMOOTH HEARTBEAT-INTERPOLATED PLAYBACK ENGINE

\-- ========================================================



local function startPlayback()

&#x20;   if isPlaying or not isRunningScript then return end

&#x20;   if not activeTimelineFrames or #activeTimelineFrames == 0 then

&#x20;       warn("\[AutoObby] No recorded frames found in script or environment!")

&#x20;       statusLabel.Text = "Status: No Frames Found!"

&#x20;       statusLabel.TextColor3 = Color3.fromRGB(231, 76, 60)

&#x20;       return

&#x20;   end



&#x20;   isPlaying = true

&#x20;   statusLabel.Text = "Status: Pre-computing route variants..."

&#x20;   statusLabel.TextColor3 = Color3.fromRGB(52, 152, 219)

&#x20;   toggleButton.Text = "⏹ Disable Run"

&#x20;   TweenService:Create(toggleButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(231, 76, 60)}):Play()

&#x20;   restoreBarBtn.Text = "⚡ Running \[ + ]"



&#x20;   playbackThread = task.spawn(function()

&#x20;       while isPlaying and isRunningScript do

&#x20;           local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

&#x20;           local hrp = character:WaitForChild("HumanoidRootPart")

&#x20;           local humanoid = character:WaitForChild("Humanoid")



&#x20;           local selectedRouteConfig, routeName = selectRandomRoute()

&#x20;           local routeConfig = selectedRouteConfig

&#x20;           -- Nouvelle génération à chaque run : la route et son timing changent légèrement.

&#x20;           local variantFrames = generateRouteVariant(activeTimelineFrames, routeConfig)

&#x20;           local timingProfile = generateTimingProfile(activeTimelineFrames, routeConfig)



&#x20;           local \_, startYaw = hrp.CFrame:ToOrientation()

&#x20;           camYaw = startYaw

&#x20;           camVelocityYaw = 0



&#x20;           local animateScript = character:FindFirstChild("Animate")

&#x20;           if animateScript then animateScript.Disabled = false end



&#x20;           local checkpointTarget = Vector3.new(167.11, 1.81, 87.08)

&#x20;           local defaultStartIdx = 1

&#x20;           for idx, frame in ipairs(variantFrames) do

&#x20;               if frame.t >= 4.645 then

&#x20;                   defaultStartIdx = idx

&#x20;                   break

&#x20;               end

&#x20;           end



&#x20;           local startFrameIdx = defaultStartIdx

&#x20;           local pathResolved = false

&#x20;           while isPlaying and not pathResolved and isRunningScript do

&#x20;               character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

&#x20;               hrp = character:WaitForChild("HumanoidRootPart")

&#x20;               humanoid = character:WaitForChild("Humanoid")



&#x20;               statusLabel.Text = "Status: Pathfinding to Checkpoint..."

&#x20;               statusLabel.TextColor3 = Color3.fromRGB(52, 152, 219)

&#x20;               local pathSuccess = walkToIntelligentTarget(character, humanoid, hrp, checkpointTarget)



&#x20;               if pathSuccess then

&#x20;                   local syncedIdx, syncDist = resolvePlaybackStart(hrp, variantFrames, defaultStartIdx)

&#x20;                   startFrameIdx = syncedIdx or defaultStartIdx

&#x20;                   statusLabel.Text = string.format("Status: Handoff synced (frame %d, %.1f studs)...",

&#x20;                       startFrameIdx, syncDist or 0)

&#x20;                   pathResolved = true

&#x20;                   break

&#x20;               end



&#x20;               if isPlaying and isRunningScript then

&#x20;                   statusLabel.Text = "Status: Scanning Ground Frames..."

&#x20;                   statusLabel.TextColor3 = Color3.fromRGB(241, 196, 15)

&#x20;                   local foundIdx, \_, foundWaypoints = findAccessibleGroundFrame(hrp.Position, variantFrames, frameMetadata)

&#x20;                   if foundIdx and foundWaypoints then

&#x20;                       local waypointOk = executeWaypoints(humanoid, foundWaypoints)

&#x20;                       task.wait()

&#x20;                       local syncedIdx, syncDist = resolvePlaybackStart(hrp, variantFrames, foundIdx)

&#x20;                       local arrived = false

&#x20;                       if syncDist and syncDist <= 14 then

&#x20;                           arrived = true

&#x20;                       elseif waypointOk \~= false then

&#x20;                           arrived = true

&#x20;                       end



&#x20;                       if arrived and syncedIdx then

&#x20;                           startFrameIdx = syncedIdx

&#x20;                           statusLabel.Text = string.format(

&#x20;                               "Status: Handoff synced (frame %d, %.1f studs)...",

&#x20;                               startFrameIdx, syncDist or 0

&#x20;                           )

&#x20;                           pathResolved = true

&#x20;                           break

&#x20;                       end

&#x20;                   end



&#x20;                   local lastJumpPeakIdx = nil

&#x20;                   for jumpNum = jumpCounter, 1, -1 do

&#x20;                       if jumpPeakData\[jumpNum] then

&#x20;                           lastJumpPeakIdx = jumpPeakData\[jumpNum].peakIdx

&#x20;                           break

&#x20;                       end

&#x20;                   end

&#x20;                   if lastJumpPeakIdx then

&#x20;                       rewindToJumpPeakAndDrop(character, humanoid, hrp, lastJumpPeakIdx)

&#x20;                   else

&#x20;                       smoothVoidDrop(character, humanoid, hrp, 1.5)

&#x20;                   end

&#x20;                   break

&#x20;               end

&#x20;           end



&#x20;           if not isPlaying or not isRunningScript then

&#x20;               if animateScript then animateScript.Disabled = false end

&#x20;               resetCameraToNative()

&#x20;               break

&#x20;           end



&#x20;           if animateScript then animateScript.Disabled = true end

&#x20;           local idleTrack, walkTrack, jumpTrack = setupCharacterAnimations(character, humanoid)

&#x20;           activeIdleTrack, activeWalkTrack, activeJumpTrack = idleTrack, walkTrack, jumpTrack



&#x20;           statusLabel.Text = string.format("Status: Running (%s)...", routeConfig.name)

&#x20;           statusLabel.TextColor3 = Color3.fromRGB(46, 204, 113)



&#x20;           startFrameIdx = ensurePlaybackAdvance(variantFrames, startFrameIdx)

&#x20;           if not startFrameIdx then

&#x20;               statusLabel.Text = "Status: Playback timeline invalid"

&#x20;               statusLabel.TextColor3 = Color3.fromRGB(231, 76, 60)

&#x20;               break

&#x20;           end



&#x20;           -- Start timing only after pathfinding and handoff synchronization.

&#x20;           local lapStartTime = os.clock()

&#x20;           local runStartTime = os.clock()

&#x20;           local startOffsetT = variantFrames\[startFrameIdx].t

&#x20;           local endT = variantFrames\[#variantFrames].t

&#x20;           local baselineMultiplier = math.max(0.01, routeConfig.speed\_mult)

&#x20;           local totalDuration = math.max(0.25, (endT - startOffsetT) / baselineMultiplier)



&#x20;           local currentFramePointer = startFrameIdx

&#x20;           local jumpCount = 0

&#x20;           local currentJumpStartTime = -999

&#x20;           local currentJumpEndTime = -999

&#x20;           local \_, currentHrpYaw = hrp.CFrame:ToOrientation()

&#x20;           local smoothedFacingYaw = currentHrpYaw

&#x20;           local lastHeartbeatTime = os.clock()

&#x20;           local lastAppliedPos = hrp.Position

&#x20;           local handoffStartPos = hrp.Position

&#x20;           local handoffStartClock = os.clock()

&#x20;           local HANDOFF\_BLEND\_TIME = 0.35



&#x20;           -- Le facteur caméra est tiré une seule fois pour chaque saut, pas chaque frame.

&#x20;           local jumpCameraFactors = {}

&#x20;           for j = 1, #jumpPeakData do

&#x20;               jumpCameraFactors\[j] = math.rad(45 + math.random(-8, 8))

&#x20;           end



&#x20;           local FAIL\_CHANCE = humanMistakesEnabled and 0.006985 or 0

&#x20;           local willFailThisLoop = math.random() < FAIL\_CHANCE

&#x20;           local failJumpTarget = willFailThisLoop and (#jumpPeakData > 0 and math.random(1, #jumpPeakData) or -1) or -1

&#x20;           local hasFailedThisLoop = false

&#x20;           local mistakePeakTarget = nil



&#x20;           local captchaPauseStarted = nil



&#x20;           while isPlaying and isRunningScript do

&#x20;               local captchaActive = antiCaptchaEnabled and CaptchaManager and CaptchaManager.IsActive()

&#x20;               if captchaActive then

&#x20;                   if not captchaPauseStarted then

&#x20;                       captchaPauseStarted = os.clock()

&#x20;                       statusLabel.Text = "Status: CAPTCHA — Vérification humaine requise..."

&#x20;                       statusLabel.TextColor3 = Color3.fromRGB(241, 196, 15)

&#x20;                   end



&#x20;                   lastHeartbeatTime = os.clock()

&#x20;                   RunService.Heartbeat:Wait()

&#x20;               else

&#x20;                   if captchaPauseStarted then

&#x20;                       local pauseDuration = math.max(0, os.clock() - captchaPauseStarted)

&#x20;                       runStartTime += pauseDuration

&#x20;                       lapStartTime += pauseDuration

&#x20;                       captchaPauseStarted = nil

&#x20;                       lastHeartbeatTime = os.clock()

&#x20;                   end



&#x20;                   local elapsedReal = os.clock() - runStartTime

&#x20;               if elapsedReal >= totalDuration then break end



&#x20;               if humanoid.Health <= 0 or hrp.Position.Y < -40 then

&#x20;                   statusLabel.Text = "Status: Respawning \& Auto-Recovering..."

&#x20;                   statusLabel.TextColor3 = Color3.fromRGB(230, 126, 34)

&#x20;                   task.wait(randomDelay(0.35, 0.65))

&#x20;                   break

&#x20;               end



&#x20;               local nowClock = os.clock()

&#x20;               local dt = math.clamp(nowClock - lastHeartbeatTime, 0.001, 0.05)

&#x20;               lastHeartbeatTime = nowClock



&#x20;               local timingScale = baselineMultiplier

&#x20;               if timingProfile and #timingProfile > 0 then

&#x20;                   local frameIdxForTiming = math.max(1, math.min(math.floor(currentFramePointer), #timingProfile))

&#x20;                   timingScale = tonumber(timingProfile\[frameIdxForTiming]) or baselineMultiplier

&#x20;               end

&#x20;               -- Defensive fallback: never allow a non-positive/invalid time scale.

&#x20;               if timingScale <= 0 then

&#x20;                   timingScale = baselineMultiplier > 0 and baselineMultiplier or 1.0

&#x20;               end

&#x20;               local targetVirtualT = startOffsetT + elapsedReal \* timingScale



&#x20;               while currentFramePointer < #variantFrames and variantFrames\[currentFramePointer + 1].t <= targetVirtualT do

&#x20;                   currentFramePointer += 1

&#x20;                   local curF = variantFrames\[currentFramePointer]

&#x20;                   if curF.j then

&#x20;                       jumpCount += 1

&#x20;                       currentJumpStartTime = curF.t

&#x20;                       currentJumpEndTime = curF.t + 0.52

&#x20;                       if jumpCount == failJumpTarget and not hasFailedThisLoop then

&#x20;                           mistakePeakTarget = jumpPeakData\[jumpCount] and jumpPeakData\[jumpCount].peakIdx or nil

&#x20;                       end

&#x20;                   end

&#x20;               end



&#x20;               if mistakePeakTarget and currentFramePointer >= mistakePeakTarget and not hasFailedThisLoop then

&#x20;                   hasFailedThisLoop = true

&#x20;                   statusLabel.Text = "Status: Human Mistake (Missed Jump)..."

&#x20;                   statusLabel.TextColor3 = Color3.fromRGB(231, 76, 60)

&#x20;                   smoothVoidDrop(character, humanoid, hrp, 1.5)

&#x20;                   break

&#x20;               end



&#x20;               if currentFramePointer >= #variantFrames then

&#x20;                   currentFramePointer = #variantFrames - 1

&#x20;                   if currentFramePointer < 1 then break end

&#x20;               end



&#x20;               local isAirborne = targetVirtualT >= currentJumpStartTime and targetVirtualT <= currentJumpEndTime

&#x20;               local fA = variantFrames\[currentFramePointer]

&#x20;               local fB = variantFrames\[math.min(#variantFrames, currentFramePointer + 1)]

&#x20;               local segDuration = fB.t - fA.t

&#x20;               local alpha = segDuration > 0.0001 and math.clamp((targetVirtualT - fA.t) / segDuration, 0, 1) or 0



&#x20;               local meta = frameMetadata\[currentFramePointer] or {safeFactor = 0}

&#x20;               local rawPos = fA.c.Position:Lerp(fB.c.Position, alpha)



&#x20;               -- One-time smooth handoff from the pathfinder's real final

&#x20;               -- position to the selected playback trajectory.

&#x20;               local handoffT = math.clamp(

&#x20;                   (nowClock - handoffStartClock) / HANDOFF\_BLEND\_TIME, 0, 1

&#x20;               )

&#x20;               handoffT = handoffT \* handoffT \* (3 - 2 \* handoffT)

&#x20;               rawPos = handoffStartPos:Lerp(rawPos, handoffT)



&#x20;               local exactPos = rawPos + getHumanMicroJitter(nowClock, meta.safeFactor)



&#x20;               local lookAheadIdx = math.min(#variantFrames, currentFramePointer + 8)

&#x20;               local lookAheadPos = variantFrames\[lookAheadIdx].c.Position

&#x20;               local moveDir = lookAheadPos - exactPos

&#x20;               local horizDir = Vector3.new(moveDir.X, 0, moveDir.Z)

&#x20;               if horizDir.Magnitude > 0.1 then

&#x20;                   local targetAngle = math.atan2(-horizDir.X, -horizDir.Z)

&#x20;                   local angleDiff = getShortestAngleDiff(targetAngle, smoothedFacingYaw)

&#x20;                   local turnResponsiveness = isAirborne and 7.0 or 10.5

&#x20;                   smoothedFacingYaw = (smoothedFacingYaw + angleDiff \* math.clamp(turnResponsiveness \* dt, 0, 0.40) + math.pi) % (2 \* math.pi) - math.pi

&#x20;               end



&#x20;               local cameraLookLeftAngle = 0

&#x20;               if jumpCount >= 1 and jumpCount <= 3 then

&#x20;                   local elapsedInJump = targetVirtualT - currentJumpStartTime

&#x20;                   if elapsedInJump >= 0 and elapsedInJump <= 0.48 then

&#x20;                       local jumpProgress = math.clamp(elapsedInJump / 0.48, 0, 1)

&#x20;                       cameraLookLeftAngle = math.sin(jumpProgress \* math.pi) \* (jumpCameraFactors\[jumpCount] or math.rad(45))

&#x20;                   end

&#x20;               end



&#x20;               hrp.CFrame = CFrame.new(exactPos) \* CFrame.Angles(0, smoothedFacingYaw, 0)

&#x20;               local realVelocity = (exactPos - lastAppliedPos) / math.max(dt, 0.001)

&#x20;               hrp.AssemblyLinearVelocity = realVelocity

&#x20;               lastAppliedPos = exactPos



&#x20;               local horizontalSpeed = Vector3.new(realVelocity.X, 0, realVelocity.Z).Magnitude



&#x20;               -- Animation controller: keep the gait driven by the route's actual

&#x20;               -- ground speed, not by the tiny frame-to-frame CFrame noise.

&#x20;               -- This avoids the classic “gliding” look when the character is moved

&#x20;               -- by a replay system instead of Humanoid:MoveTo().

&#x20;               local WALK\_START\_SPEED = 1.5

&#x20;               local WALK\_REFERENCE\_SPEED = 16.0

&#x20;               local WALK\_MIN\_PLAYBACK = 0.65

&#x20;               local WALK\_MAX\_PLAYBACK = 1.65



&#x20;               if isAirborne then

&#x20;                   if walkTrack.IsPlaying then

&#x20;                       walkTrack:Stop(0.10)

&#x20;                   end

&#x20;                   if idleTrack.IsPlaying then

&#x20;                       idleTrack:Stop(0.10)

&#x20;                   end

&#x20;                   if not jumpTrack.IsPlaying then

&#x20;                       jumpTrack:Play(0.10, 1.0, 1.0)

&#x20;                   end

&#x20;                   jumpTrack:AdjustWeight(1.0, 0.08)

&#x20;               elseif horizontalSpeed >= WALK\_START\_SPEED then

&#x20;                   if jumpTrack.IsPlaying then

&#x20;                       jumpTrack:Stop(0.12)

&#x20;                   end

&#x20;                   if idleTrack.IsPlaying then

&#x20;                       idleTrack:Stop(0.12)

&#x20;                   end

&#x20;                   if not walkTrack.IsPlaying then

&#x20;                       walkTrack:Play(0.12, 1.0, 1.0)

&#x20;                   end



&#x20;                   local playbackRate = math.clamp(

&#x20;                       horizontalSpeed / WALK\_REFERENCE\_SPEED,

&#x20;                       WALK\_MIN\_PLAYBACK,

&#x20;                       WALK\_MAX\_PLAYBACK

&#x20;                   )

&#x20;                   walkTrack:AdjustWeight(1.0, 0.06)

&#x20;                   walkTrack:AdjustSpeed(playbackRate)

&#x20;               else

&#x20;                   if jumpTrack.IsPlaying then

&#x20;                       jumpTrack:Stop(0.12)

&#x20;                   end

&#x20;                   if walkTrack.IsPlaying then

&#x20;                       walkTrack:Stop(0.16)

&#x20;                   end

&#x20;                   if not idleTrack.IsPlaying then

&#x20;                       idleTrack:Play(0.16, 1.0, 1.0)

&#x20;                   end

&#x20;                   idleTrack:AdjustWeight(1.0, 0.08)

&#x20;               end



&#x20;               updateHumanMouseCamera(exactPos, smoothedFacingYaw + cameraLookLeftAngle, dt, nowClock, isAirborne)

&#x20;               RunService.Heartbeat:Wait()

&#x20;               end -- /CAPTCHA GATE

&#x20;           end



&#x20;           if walkTrack.IsPlaying then walkTrack:Stop(0.2) end

&#x20;           if jumpTrack.IsPlaying then jumpTrack:Stop(0.2) end



&#x20;           local lapDuration = os.clock() - lapStartTime

&#x20;           if lapDuration > 5 then

&#x20;               totalLapsCompleted += 1

&#x20;               lastLapTime = lapDuration

&#x20;               if bestLapTime == 0 or lapDuration < bestLapTime then

&#x20;                   local oldPB = bestLapTime

&#x20;                   bestLapTime = lapDuration

&#x20;                   triggerPBCelebration(bestLapTime, oldPB)

&#x20;               end

&#x20;               if worstLapTime == 0 or lapDuration > worstLapTime then

&#x20;                   worstLapTime = lapDuration

&#x20;               end

&#x20;           end



&#x20;           if not isPlaying or not isLooping or not isRunningScript then break end

&#x20;           task.wait(useRandomDelays and (0.35 + math.random() \* 0.75) or 0.20)

&#x20;       end



&#x20;       stopPlayback()

&#x20;   end)

end



\-- ========================================================

\-- BUTTON EVENT HANDLERS (WITH PERSISTENCE)

\-- ========================================================



toggleButton.MouseButton1Click:Connect(function()

&#x20;   if runEnabled or isPlaying then

&#x20;       runEnabled = false

&#x20;       isPlaying = false

&#x20;       saveSettings()

&#x20;       stopPlayback()

&#x20;       updateUIState()

&#x20;   else

&#x20;       runEnabled = true

&#x20;       saveSettings()

&#x20;       updateUIState()

&#x20;       startPlayback()

&#x20;   end

end)



loopButton.MouseButton1Click:Connect(function()

&#x20;   isLooping = not isLooping

&#x20;   updateUIState()

&#x20;   saveSettings()

end)



cpuButton.MouseButton1Click:Connect(function()

&#x20;   setCpuSaver(not cpuSaverEnabled)

&#x20;   updateUIState()

&#x20;   saveSettings()

end)



gpuButton.MouseButton1Click:Connect(function()

&#x20;   setGpuSaver(not gpuSaverEnabled)

&#x20;   updateUIState()

&#x20;   saveSettings()

end)



mistakesButton.MouseButton1Click:Connect(function()

&#x20;   humanMistakesEnabled = not humanMistakesEnabled

&#x20;   updateUIState()

&#x20;   saveSettings()

end)



cameraButton.MouseButton1Click:Connect(function()

&#x20;   cameraToggleEnabled = not cameraToggleEnabled

&#x20;   if not cameraToggleEnabled then

&#x20;       resetCameraToNative()

&#x20;   end

&#x20;   updateUIState()

&#x20;   saveSettings()

end)



randomDelayButton.MouseButton1Click:Connect(function()

&#x20;   useRandomDelays = not useRandomDelays

&#x20;   updateUIState()

&#x20;   saveSettings()

end)



staffEvadeButton.MouseButton1Click:Connect(function()

&#x20;   staffEvadeEnabled = not staffEvadeEnabled

&#x20;   updateUIState()

&#x20;   saveSettings()

end)



reconnectButton.MouseButton1Click:Connect(function()

&#x20;   autoReconnectEnabled = not autoReconnectEnabled

&#x20;   updateUIState()

&#x20;   saveSettings()

end)



serverHopButton.MouseButton1Click:Connect(function()

&#x20;   serverHopButton.Text = "⏳ Finding Server..."

&#x20;   performServerHop()

&#x20;   task.wait(3.5)

&#x20;   if isRunningScript and serverHopButton then

&#x20;       serverHopButton.Text = "🌐 Hop to New Server"

&#x20;   end

end)



\-- ========================================================

\-- ========================================================

\-- CAPTCHA MANAGER — Intégration dans l'onglet SAFETY

\-- ========================================================



\-- =============================================================================

\-- CaptchaManager

\-- LocalScript module — integrated into the primary client script.

\--

\-- This module does NOT solve, click, hide, destroy, or bypass CAPTCHAs.

\-- It watches the legitimate BindChallenge event, displays a lightweight

\-- instruction overlay, and exposes IsActive()/RequestCaptcha() so the macro

\-- can suspend its own playback timing until the server removes the challenge.

\-- =============================================================================



local CaptchaManager = (function()



&#x20;   -- -------------------------------------------------------------------------

&#x20;   -- Services

&#x20;   -- -------------------------------------------------------------------------

&#x20;   local Players           = game:GetService("Players")

&#x20;   local ReplicatedStorage = game:GetService("ReplicatedStorage")

&#x20;   local TweenService      = game:GetService("TweenService")



&#x20;   local LocalPlayer = Players.LocalPlayer

&#x20;   local PlayerGui   = LocalPlayer:WaitForChild("PlayerGui", 30)



&#x20;   if not PlayerGui then

&#x20;       return nil

&#x20;   end



&#x20;   -- -------------------------------------------------------------------------

&#x20;   -- Remote references

&#x20;   -- -------------------------------------------------------------------------

&#x20;   local ImageCaptchaRemotes = ReplicatedStorage:WaitForChild("ImageCaptchaRemotes", 30)

&#x20;   if not ImageCaptchaRemotes then

&#x20;       return nil

&#x20;   end



&#x20;   local BindChallenge = ImageCaptchaRemotes:WaitForChild("BindChallenge", 10)

&#x20;   local RenderStatus  = ImageCaptchaRemotes:WaitForChild("RenderStatus", 10)



&#x20;   if not BindChallenge or not RenderStatus then

&#x20;       return nil

&#x20;   end



&#x20;   -- -------------------------------------------------------------------------

&#x20;   -- CaptchaState — single source of truth

&#x20;   -- -------------------------------------------------------------------------

&#x20;   local managerEnabled = true



&#x20;   local CaptchaState = {

&#x20;       active          = false,

&#x20;       challengeId     = nil,

&#x20;       overlayGui      = nil,

&#x20;       challengeGui    = nil,

&#x20;       connections     = {},

&#x20;       pendingResume   = nil,

&#x20;       validationTimer = nil,

&#x20;   }



&#x20;   local OVERLAY\_ZINDEX    = 99

&#x20;   local CHALLENGE\_TIMEOUT = 180



&#x20;   local function disconnectAll()

&#x20;       for \_, conn in ipairs(CaptchaState.connections) do

&#x20;           if conn and conn.Connected then

&#x20;               conn:Disconnect()

&#x20;           end

&#x20;       end

&#x20;       table.clear(CaptchaState.connections)

&#x20;   end



&#x20;   local function trackConnection(conn)

&#x20;       table.insert(CaptchaState.connections, conn)

&#x20;   end



&#x20;   local function ShowCaptchaUI()

&#x20;       if CaptchaState.overlayGui then

&#x20;           return

&#x20;       end



&#x20;       local overlay = Instance.new("ScreenGui")

&#x20;       overlay.Name           = "CaptchaManagerOverlay"

&#x20;       overlay.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

&#x20;       overlay.DisplayOrder   = OVERLAY\_ZINDEX

&#x20;       overlay.ResetOnSpawn   = false

&#x20;       overlay.IgnoreGuiInset = true



&#x20;       local backdrop = Instance.new("Frame")

&#x20;       backdrop.Size = UDim2.fromScale(1, 1)

&#x20;       backdrop.BackgroundColor3 = Color3.fromRGB(10, 10, 15)

&#x20;       backdrop.BackgroundTransparency = 1

&#x20;       backdrop.BorderSizePixel = 0

&#x20;       backdrop.ZIndex = 1

&#x20;       backdrop.Parent = overlay



&#x20;       local card = Instance.new("Frame")

&#x20;       card.AnchorPoint = Vector2.new(0.5, 0.5)

&#x20;       card.Position = UDim2.fromScale(0.5, 0.5)

&#x20;       card.Size = UDim2.fromOffset(420, 110)

&#x20;       card.BackgroundColor3 = Color3.fromRGB(22, 22, 30)

&#x20;       card.BackgroundTransparency = 1

&#x20;       card.BorderSizePixel = 0

&#x20;       card.ZIndex = 2

&#x20;       card.Parent = overlay



&#x20;       local corner = Instance.new("UICorner")

&#x20;       corner.CornerRadius = UDim.new(0, 12)

&#x20;       corner.Parent = card



&#x20;       local stroke = Instance.new("UIStroke")

&#x20;       stroke.Color = Color3.fromRGB(90, 90, 140)

&#x20;       stroke.Thickness = 1.2

&#x20;       stroke.Transparency = 1

&#x20;       stroke.Parent = card



&#x20;       local label = Instance.new("TextLabel")

&#x20;       label.Size = UDim2.new(1, -24, 1, 0)

&#x20;       label.Position = UDim2.fromOffset(12, 0)

&#x20;       label.BackgroundTransparency = 1

&#x20;       label.TextColor3 = Color3.fromRGB(220, 220, 240)

&#x20;       label.Font = Enum.Font.GothamMedium

&#x20;       label.TextSize = 15

&#x20;       label.TextWrapped = true

&#x20;       label.TextXAlignment = Enum.TextXAlignment.Center

&#x20;       label.TextYAlignment = Enum.TextYAlignment.Center

&#x20;       label.Text = "🔒  Human verification required\\n\\nPlease complete the image challenge to continue."

&#x20;       label.TextTransparency = 1

&#x20;       label.ZIndex = 3

&#x20;       label.Parent = card



&#x20;       overlay.Parent = PlayerGui

&#x20;       CaptchaState.overlayGui = overlay



&#x20;       local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

&#x20;       TweenService:Create(backdrop, tweenInfo, {BackgroundTransparency = 0.55}):Play()

&#x20;       TweenService:Create(card, tweenInfo, {BackgroundTransparency = 0}):Play()

&#x20;       TweenService:Create(stroke, tweenInfo, {Transparency = 0}):Play()

&#x20;       TweenService:Create(label, tweenInfo, {TextTransparency = 0}):Play()

&#x20;   end



&#x20;   local function HideCaptchaUI()

&#x20;       local overlay = CaptchaState.overlayGui

&#x20;       if not overlay or not overlay.Parent then

&#x20;           return

&#x20;       end



&#x20;       CaptchaState.overlayGui = nil



&#x20;       local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In)

&#x20;       for \_, desc in ipairs(overlay:GetDescendants()) do

&#x20;           if desc:IsA("Frame") then

&#x20;               TweenService:Create(desc, tweenInfo, {BackgroundTransparency = 1}):Play()

&#x20;           elseif desc:IsA("TextLabel") then

&#x20;               TweenService:Create(desc, tweenInfo, {

&#x20;                   BackgroundTransparency = 1,

&#x20;                   TextTransparency = 1,

&#x20;               }):Play()

&#x20;           end

&#x20;       end



&#x20;       task.delay(0.4, function()

&#x20;           if overlay and overlay.Parent then

&#x20;               overlay:Destroy()

&#x20;           end

&#x20;       end)

&#x20;   end



&#x20;   local function ResetActiveChallenge()

&#x20;       -- Keep the BindChallenge subscription alive; only clear the active

&#x20;       -- challenge-specific watcher/timer.

&#x20;       for i = #CaptchaState.connections, 2, -1 do

&#x20;           local conn = CaptchaState.connections\[i]

&#x20;           if conn and conn.Connected then

&#x20;               conn:Disconnect()

&#x20;           end

&#x20;           table.remove(CaptchaState.connections, i)

&#x20;       end



&#x20;       if CaptchaState.validationTimer then

&#x20;           task.cancel(CaptchaState.validationTimer)

&#x20;           CaptchaState.validationTimer = nil

&#x20;       end



&#x20;       HideCaptchaUI()



&#x20;       CaptchaState.active = false

&#x20;       CaptchaState.challengeId = nil

&#x20;       CaptchaState.challengeGui = nil

&#x20;       CaptchaState.pendingResume = nil

&#x20;   end



&#x20;   local function CleanupCaptcha()

&#x20;       disconnectAll()

&#x20;       ResetActiveChallenge()

&#x20;   end



&#x20;   local function OnCaptchaValidated(timedOut)

&#x20;       if not CaptchaState.active then

&#x20;           return

&#x20;       end



&#x20;       local resumeCallback = CaptchaState.pendingResume

&#x20;       CleanupCaptcha()



&#x20;       if resumeCallback then

&#x20;           task.spawn(resumeCallback, not timedOut)

&#x20;       end

&#x20;   end



&#x20;   local function RequestCaptcha()

&#x20;       if not CaptchaState.active then

&#x20;           return true

&#x20;       end



&#x20;       local previousResume = CaptchaState.pendingResume

&#x20;       local thread = coroutine.running()



&#x20;       CaptchaState.pendingResume = function(success)

&#x20;           if previousResume then

&#x20;               previousResume(success)

&#x20;           end

&#x20;           if thread then

&#x20;               task.spawn(thread, success)

&#x20;           end

&#x20;       end



&#x20;       return coroutine.yield()

&#x20;   end



&#x20;   local function DetectCaptcha()

&#x20;       trackConnection(BindChallenge.OnClientEvent:Connect(function(

&#x20;           challengeGui,

&#x20;           imageLabel,

&#x20;           challengeId

&#x20;       )

&#x20;           if not managerEnabled then

&#x20;               return

&#x20;           end



&#x20;           if typeof(challengeGui) \~= "Instance"

&#x20;               or not challengeGui:IsA("ScreenGui")

&#x20;               or not challengeGui:IsDescendantOf(PlayerGui)

&#x20;               or typeof(imageLabel) \~= "Instance"

&#x20;               or not imageLabel:IsA("ImageLabel")

&#x20;               or not imageLabel:IsDescendantOf(challengeGui)

&#x20;               or type(challengeId) \~= "string"

&#x20;           then

&#x20;               return

&#x20;           end



&#x20;           if CaptchaState.active and CaptchaState.challengeGui == challengeGui then

&#x20;               return

&#x20;           end



&#x20;           if CaptchaState.active then

&#x20;               ResetActiveChallenge()

&#x20;           end



&#x20;           CaptchaState.active = true

&#x20;           CaptchaState.challengeId = challengeId

&#x20;           CaptchaState.challengeGui = challengeGui



&#x20;           ShowCaptchaUI()



&#x20;           trackConnection(challengeGui.AncestryChanged:Connect(function(\_, newParent)

&#x20;               if newParent \~= nil and challengeGui:IsDescendantOf(PlayerGui) then

&#x20;                   return

&#x20;               end

&#x20;               OnCaptchaValidated(false)

&#x20;           end))



&#x20;           CaptchaState.validationTimer = task.delay(CHALLENGE\_TIMEOUT, function()

&#x20;               if CaptchaState.active and CaptchaState.challengeId == challengeId then

&#x20;                   OnCaptchaValidated(true)

&#x20;               end

&#x20;           end)

&#x20;       end))

&#x20;   end



&#x20;   DetectCaptcha()



&#x20;   return {

&#x20;       RequestCaptcha = RequestCaptcha,

&#x20;       IsActive = function()

&#x20;           return managerEnabled and CaptchaState.active

&#x20;       end,

&#x20;       IsEnabled = function()

&#x20;           return managerEnabled

&#x20;       end,

&#x20;       SetEnabled = function(value)

&#x20;           managerEnabled = value == true

&#x20;           if not managerEnabled and CaptchaState.active then

&#x20;               ResetActiveChallenge()

&#x20;           end

&#x20;       end,

&#x20;       ForceCleanup = CleanupCaptcha,

&#x20;   }

end)()



if not CaptchaManager then

&#x20;   warn("\[CaptchaManager] Initialization failed; CAPTCHA pause layer is unavailable.")

end



local function createAntiCaptchaSection()

&#x20;   local safetyPage = nil

&#x20;   pcall(function()

&#x20;       safetyPage = pageContainer:FindFirstChild("SafetyPage")

&#x20;   end)

&#x20;   if not safetyPage then return end



&#x20;   local cardFrame = Instance.new("Frame")

&#x20;   cardFrame.Name = "AntiCaptchaCard"

&#x20;   cardFrame.Size = UDim2.new(1, 0, 0, 30)

&#x20;   cardFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 30)

&#x20;   cardFrame.BorderSizePixel = 0

&#x20;   cardFrame.ClipsDescendants = true

&#x20;   cardFrame.LayoutOrder = 10

&#x20;   cardFrame.ZIndex = 12

&#x20;   cardFrame.Parent = safetyPage



&#x20;   local cardCorner = Instance.new("UICorner")

&#x20;   cardCorner.CornerRadius = UDim.new(0, 6)

&#x20;   cardCorner.Parent = cardFrame



&#x20;   local headerBtn = Instance.new("TextButton")

&#x20;   headerBtn.Name = "Header"

&#x20;   headerBtn.Size = UDim2.new(1, 0, 0, 30)

&#x20;   headerBtn.BackgroundColor3 = Color3.fromRGB(28, 30, 42)

&#x20;   headerBtn.BorderSizePixel = 0

&#x20;   headerBtn.Text = ""

&#x20;   headerBtn.ZIndex = 13

&#x20;   headerBtn.Parent = cardFrame



&#x20;   local headerCorner = Instance.new("UICorner")

&#x20;   headerCorner.CornerRadius = UDim.new(0, 6)

&#x20;   headerCorner.Parent = headerBtn



&#x20;   local titleLabel = Instance.new("TextLabel")

&#x20;   titleLabel.Size = UDim2.new(1, -70, 1, 0)

&#x20;   titleLabel.Position = UDim2.new(0, 10, 0, 0)

&#x20;   titleLabel.BackgroundTransparency = 1

&#x20;   titleLabel.Text = "🤖 Anti-Captcha"

&#x20;   titleLabel.TextColor3 = Color3.fromRGB(240, 240, 245)

&#x20;   titleLabel.TextSize = 11

&#x20;   titleLabel.Font = Enum.Font.GothamBold

&#x20;   titleLabel.TextXAlignment = Enum.TextXAlignment.Left

&#x20;   titleLabel.ZIndex = 14

&#x20;   titleLabel.Parent = headerBtn



&#x20;   local arrowLabel = Instance.new("TextLabel")

&#x20;   arrowLabel.Size = UDim2.new(0, 20, 1, 0)

&#x20;   arrowLabel.Position = UDim2.new(1, -24, 0, 0)

&#x20;   arrowLabel.BackgroundTransparency = 1

&#x20;   arrowLabel.Text = "▼"

&#x20;   arrowLabel.TextColor3 = Color3.fromRGB(150, 155, 175)

&#x20;   arrowLabel.TextSize = 10

&#x20;   arrowLabel.Font = Enum.Font.GothamBold

&#x20;   arrowLabel.ZIndex = 14

&#x20;   arrowLabel.Parent = headerBtn



&#x20;   local contentFrame = Instance.new("Frame")

&#x20;   contentFrame.Name = "Content"

&#x20;   contentFrame.Size = UDim2.new(1, -16, 0, 88)

&#x20;   contentFrame.Position = UDim2.new(0, 8, 0, 34)

&#x20;   contentFrame.BackgroundTransparency = 1

&#x20;   contentFrame.ZIndex = 13

&#x20;   contentFrame.Parent = cardFrame



&#x20;   local antiCaptchaButton = Instance.new("TextButton")

&#x20;   antiCaptchaButton.Name = "AntiCaptchaButton"

&#x20;   antiCaptchaButton.Size = UDim2.new(1, 0, 0, 26)

&#x20;   antiCaptchaButton.BackgroundColor3 = antiCaptchaEnabled and Color3.fromRGB(46, 204, 113) or Color3.fromRGB(80, 85, 100)

&#x20;   antiCaptchaButton.BorderSizePixel = 0

&#x20;   antiCaptchaButton.Text = antiCaptchaEnabled and "🤖 Anti-Captcha: ON" or "🤖 Anti-Captcha: OFF"

&#x20;   antiCaptchaButton.TextColor3 = Color3.fromRGB(255, 255, 255)

&#x20;   antiCaptchaButton.TextSize = 11

&#x20;   antiCaptchaButton.Font = Enum.Font.GothamBold

&#x20;   antiCaptchaButton.ZIndex = 15

&#x20;   antiCaptchaButton.Parent = contentFrame



&#x20;   local antiCaptchaCorner = Instance.new("UICorner")

&#x20;   antiCaptchaCorner.CornerRadius = UDim.new(0, 5)

&#x20;   antiCaptchaCorner.Parent = antiCaptchaButton



&#x20;   local antiCaptchaStatus = Instance.new("TextLabel")

&#x20;   antiCaptchaStatus.Name = "Status"

&#x20;   antiCaptchaStatus.Size = UDim2.new(1, 0, 0, 18)

&#x20;   antiCaptchaStatus.Position = UDim2.new(0, 0, 0, 30)

&#x20;   antiCaptchaStatus.BackgroundTransparency = 1

&#x20;   antiCaptchaStatus.Text = "● En attente"

&#x20;   antiCaptchaStatus.TextColor3 = Color3.fromRGB(46, 204, 113)

&#x20;   antiCaptchaStatus.TextSize = 9

&#x20;   antiCaptchaStatus.Font = Enum.Font.GothamMedium

&#x20;   antiCaptchaStatus.TextXAlignment = Enum.TextXAlignment.Left

&#x20;   antiCaptchaStatus.ZIndex = 14

&#x20;   antiCaptchaStatus.Parent = contentFrame



&#x20;   local antiCaptchaDesc = Instance.new("TextLabel")

&#x20;   antiCaptchaDesc.Size = UDim2.new(1, 0, 0, 28)

&#x20;   antiCaptchaDesc.Position = UDim2.new(0, 0, 0, 52)

&#x20;   antiCaptchaDesc.BackgroundTransparency = 1

&#x20;   antiCaptchaDesc.Text = "Pause le playback pendant le challenge et vous demande de le compléter manuellement."

&#x20;   antiCaptchaDesc.TextColor3 = Color3.fromRGB(140, 145, 165)

&#x20;   antiCaptchaDesc.TextSize = 9

&#x20;   antiCaptchaDesc.Font = Enum.Font.Gotham

&#x20;   antiCaptchaDesc.TextWrapped = true

&#x20;   antiCaptchaDesc.ZIndex = 14

&#x20;   antiCaptchaDesc.Parent = contentFrame



&#x20;   local isExpanded = false

&#x20;   local targetTotalHeight = 30 + 88 + 8



&#x20;   headerBtn.MouseButton1Click:Connect(function()

&#x20;       isExpanded = not isExpanded

&#x20;       local newHeight = isExpanded and targetTotalHeight or 30

&#x20;       arrowLabel.Text = isExpanded and "▲" or "▼"

&#x20;       TweenService:Create(cardFrame, TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {

&#x20;           Size = UDim2.new(1, 0, 0, newHeight)

&#x20;       }):Play()

&#x20;   end)



&#x20;   local function updateAntiCaptchaUI()

&#x20;       if antiCaptchaEnabled then

&#x20;           antiCaptchaButton.Text = "🤖 Anti-Captcha: ON"

&#x20;           TweenService:Create(antiCaptchaButton, TweenInfo.new(0.2), {

&#x20;               BackgroundColor3 = Color3.fromRGB(46, 204, 113)

&#x20;           }):Play()

&#x20;       else

&#x20;           antiCaptchaButton.Text = "🤖 Anti-Captcha: OFF"

&#x20;           TweenService:Create(antiCaptchaButton, TweenInfo.new(0.2), {

&#x20;               BackgroundColor3 = Color3.fromRGB(80, 85, 100)

&#x20;           }):Play()

&#x20;       end



&#x20;       if CaptchaManager and CaptchaManager.IsActive() then

&#x20;           antiCaptchaStatus.Text = "⚠ CAPTCHA en cours — validation manuelle requise"

&#x20;           antiCaptchaStatus.TextColor3 = Color3.fromRGB(241, 196, 15)

&#x20;       elseif antiCaptchaEnabled then

&#x20;           antiCaptchaStatus.Text = "● Surveillance active"

&#x20;           antiCaptchaStatus.TextColor3 = Color3.fromRGB(46, 204, 113)

&#x20;       else

&#x20;           antiCaptchaStatus.Text = "● Désactivé"

&#x20;           antiCaptchaStatus.TextColor3 = Color3.fromRGB(140, 145, 165)

&#x20;       end

&#x20;   end



&#x20;   antiCaptchaButton.MouseButton1Click:Connect(function()

&#x20;       antiCaptchaEnabled = not antiCaptchaEnabled

&#x20;       if CaptchaManager and CaptchaManager.SetEnabled then

&#x20;           CaptchaManager.SetEnabled(antiCaptchaEnabled)

&#x20;       end

&#x20;       updateAntiCaptchaUI()

&#x20;       saveSettings()

&#x20;   end)



&#x20;   task.spawn(function()

&#x20;       while isRunningScript and cardFrame.Parent do

&#x20;           updateAntiCaptchaUI()

&#x20;           task.wait(0.25)

&#x20;       end

&#x20;   end)



&#x20;   updateAntiCaptchaUI()

end



task.spawn(function()

&#x20;   task.wait(randomDelay(0.35, 0.65))

&#x20;   createAntiCaptchaSection()

end)



\-- SCRIPT STARTUP \& SETTINGS ACTIVATION

\-- ========================================================



loadSettings()

antiCaptchaEnabled = antiCaptchaEnabled == true

if CaptchaManager and CaptchaManager.SetEnabled then

&#x20;   CaptchaManager.SetEnabled(antiCaptchaEnabled)

end

updateUIState()

if cpuSaverEnabled then setCpuSaver(true) end

if gpuSaverEnabled then setGpuSaver(true) end



if runEnabled then

&#x20;   task.spawn(function()

&#x20;       task.wait(0.6)

&#x20;       if not isRunningScript then return end

&#x20;       pcall(function()

&#x20;           local char = LocalPlayer.Character

&#x20;           if not char or not char.Parent or not char:FindFirstChild("HumanoidRootPart") or not char:FindFirstChild("Humanoid") then

&#x20;               char = LocalPlayer.CharacterAdded:Wait()

&#x20;           end

&#x20;           if char then

&#x20;               char:WaitForChild("HumanoidRootPart", 10)

&#x20;               char:WaitForChild("Humanoid", 10)

&#x20;           end

&#x20;       end)

&#x20;       task.wait(0.4)

&#x20;       

&#x20;       if runEnabled and not isPlaying and isRunningScript then

&#x20;           warn("\[AutoResume] Automatically starting run from saved state...")

&#x20;           startPlayback()

&#x20;       end

&#x20;   end)

end

