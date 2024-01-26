if script_key then
return
end
--Put Your Key Between ""
script_key="LLoVJnKozTqOHLZzHZzTeLjWnsAuCdMs";
DelayTime = 300
getgenv().FpsBoost = false
getgenv().Setting = {
        ["Team"] = "Pirates", --Marines
        ["Webh00k"] = {
            ["Enabled"] = true,
            ["Embed"] = true,
            ["Url"] = "",
            ["StoredFruit"] = true,
            ["ImageEmbed"] = true,
            ["CustomImage"] = false,
            ["CustomImageUrl"] = "", --Your Url
            ["OnServerHop"] = true,
            ["BountyChanged"] = true,
        }, 
        ["Theme"] = {
            ["Name"] = "theme",--"Old", "Raiden","Ayaka","Hutao","Yelan","Miko","Nahida","Ganyu","Keqing","Nilou","Barbara","Zhongli","Layla"
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
        AutoConfigSword = false,
        AutoConfigFruit = true,
        ["LimitServerHop"] ={
            Enable = false,
            Time = 600,
        },
        ["Hide Setting Panel"] = {
            Enable = false,
        },
        ["High Position"] = {
            Enable = false,
        },
        ["Panel"] = {
            ["Enabled"] = false,
            ["IgnoreSelfChat"] = false,
        },
        ["NexusEnable"] = true,
        ["ChatKill"] = {
            Enable = false,
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
            ["Cap"] = 120,
        },
        ["LockBounty"] = {
            ["Enable"] = true,
            ["Cap"] = 30000000,
        },
        ["Click"] = {
            ["Enable"] = true,
            ["OnLowHealthDisable"] = false,
            ["LowHealth"] = 2500,
        },
        ["Misc"] = {
            ["AutoBuyRandomandStoreFruit"] = true,
            ["AutoBuySurprise"] = true,
        },
        ["Invisible"] = true,
        ["IgnoreFriends"] = true, --Server Hop When Your friends in your server
        ["GunMethod"] = false, --Use Melee,Gun Will automaticly disable invisible for things
        ["SpamSkill"] = false, -- Will use all skills as fast as possbile ignore holding skills
        ["Weapons"] = {
            ["Melee"] = {
                ["Enable"] = true,
                ["Delay"] = 3,
                ["Skills"] = {
                    ["C"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },
                [ "Z"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 1.8,
                    },

                    ["X"] = {
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
                        ["HoldTime"] = 1.8,
                    },
                    ["X"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0.5,
                    },

                    ["C"] = {
                        ["Enable"] = true,
                        ["HoldTime"] = 0,
                    },
                    ["V"] = {
                        ["Enable"] = false,
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
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ef12e2cf26dbe1e9c5225df9477e8612.lua"))()
