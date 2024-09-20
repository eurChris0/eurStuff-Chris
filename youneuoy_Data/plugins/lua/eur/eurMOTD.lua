local beta_title = "Epic Unity Rework V2 Beta"
local beta_intro = "\n"..
[[Test build 9.17.

Welcome to the Epic Unity Rework V2 beta. This is a pre-release build and subject to change, please do not discuss specifics of the beta outside of the beta testing channels.

Feel free to discuss or feedback on the beta in the general-test channel, we have introduced several new EOP scripts and are looking for feedback and testing on these specifically. 

]]
local beta_focus = "\n"..
[[Testing focus:

• Lorien / Woodland Realm

Scripts:

• Passing of the Elves - Population and income loss mechanic, mitigated by winning battles, expanding territory and by increasing faction rank. The mechanic ends when the faction reaches rank 2 and bonuses are given.
• Replenishment - Units now replenish over the end turn when garrisoned, semi random amount based on unit size.
• Spoils of war - Spoils mechanic has been re-done so the chance to get spoils reward loot amount is calculated based on the victory type and upkeep cost of the armies defeated.
• In-battle hotkeys - CTRL+Q to flash units. Z to zoom out. X to zoom in.
• Army sorting - Field armies are sorted for the player, happens over the end turn or if the player selects an army.beta_title.beta_title.
• Militia replacement -Some like for like T1 units are converted during a confederation/union to bring them in line with the player's starting faction.

]]
local beta_changelog = "\n"..
[[Changelog: 

]]

local motd = {}

function motd.campaignLoadedBeta()
    stratmap.game.historicEvent("crusade_succeeded", beta_title, beta_intro .. beta_focus .. beta_changelog)
end

return motd