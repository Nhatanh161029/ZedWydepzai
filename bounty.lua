
if script_key then
return
end
--Put Your Key Between ""
script_key="UJPrXaoRGBikXwyTocmqHaOUgAeWTyrm";
DelayTime = 300
getgenv().Setting = {
        ["Team"] = "Pirates", --Marines
        ["Webh00k"] = {
            ["Enabled"] = true,
            ["Embed"] = true,
            ["StoredFruit"] = true,
            ["ImageEmbed"] = true,
            ["CustomImage"] = false,
            ["CustomImageUrl"] = "", --Your Url
            ["OnServerHop"] = true,
            ["BountyChanged"] = true,
        }, 
        ["Theme"] = {
            ["Name"] = "Raiden",
            ["Custom"] = {
                ["Enable"] = false,
                ['char_size'] = UDim2.new(0.668, 0, 1.158, 0),
                ['char_pos'] = UDim2.new(0.463, 0, -0.105, 0),
                ['title_color'] = Color3.fromRGB(255, 221, 252),
                ['titleback_color'] = Color3.fromRGB(169, 20, 255),
                ['list_color'] = Color3.fromRGB(255, 221, 252),
                ['liststroke_color'] = Color3.fromRGB(151, 123, 207),
                ['button_color'] = Color3.fromRGB(255, 221, 252)
            },
        },
        ["Config"] = {
            ["nameaccount1"] = "nameconfig.txt",
            ["nameaccount2"] = "nameconfig.txt",
        },
        AutoConfigMelee = true,
        AutoConfigSword = true,
        AutoConfigFruit = true,
        ["LimitServerHop"] ={
            Enable = false,
            Time = 600,
        },
        ["Hide Setting Panel"] = {
            Enable = false,
        },
        ["High Position"] = {
            Enable = true,
        },
        ["Panel"] = {
            ["Enabled"] = false,
            ["IgnoreSelfChat"] = false,
        },
        ["NexusEnable"] = true,
        ["ChatKill"] = {
            Enable = true,
            Chat = {"Go Buy W-azure Now","I Got A Gaming Chair","I'm Just Too Good"
            },
        },
        ["Mention"] = {
            ["Enable"] = false,
            ["Id"] = "everyone",
            ["EveryBounty"] = 10000,
        },
        ["FpsLock"] = {
            ["Enable"] = true,
            ["Cap"] = 30,
        },
        ["LockBounty"] = {
            ["Enable"] = true,
            ["Cap"] = 30000000,
        },
        ["Click"] = {
            ["Enable"] = true,
            ["OnLowHealthDisable"] = false,
            ["LowHealth"] = 3000,
        },
        ["Misc"] = {
            ["AutoBuyRandomandStoreFruit"] = true,
            ["AutoBuySurprise"] = true,
        },
        ["Invisible"] = true,
        ["IgnoreFriends"] = true, --Server Hop When Your friends in your server
        ["GunMethod"] = true, --Use Melee,Gun Will automaticly disable invisible for things
        ["SpamSkill"] = false, -- Will use all skills as fast as possbile ignore holding skills
        ["Weapons"] = {
            ["Melee"] = {
                ["Enable"] = true,
                ["Delay"] = 3,
                ["Skills"] = {
                    ["Z"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },
                [ "X"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },

                    ["C"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },
                },
            },
            ["Blox Fruit"] = {
                ["Enable"] = true,
                ["Delay"] = 3,
                ["Skills"] = {
                    ["Z"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },
                    ["X"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },

                    ["C"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },
                    ["V"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },
                    ["F"] = {
                        ["Enable"] = false,
                        ["HoldTime"] = 0,
                    },
                },
            },
            ["Sword"] = {
                ["Enable"] = false,
                ["Delay"] = 2,
                ["Skills"] = {
                    ["Z"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 1,
                    },
                    ["X"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },
                },
            },
            ["Gun"] = {
                ["Enable"] = false,
                ["Delay"] = 0,
                ["Skills"] = {
                    ["Z"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 1,
                    },
                    ["X"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },
                },
            },

        }
    }
repeat wait()
until game:IsLoaded()
delay(DelayTime or 300,function()
    local CG = game:GetService("CoreGui")
    if not CG:FindFirstChild("W-azureHubAutoBounty") then
       game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end
end)
wait(2)
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/1b1251ac006b2af25379657c3943a2ca.lua"))()
