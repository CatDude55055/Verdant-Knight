modGuid = "7aa7c241-3f35-af48-57b3-f1f373c36baa",
subClassGuid = "ddac917c-cff5-4988-b005-e5cf679e285d",

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    CatDude55Verdant = {
      modGuid = modGuid,
      subClassGuid = subClassGuid,
      class = "fighter",
      subClassName = "Verdant"
    }
  }

  local function OnStatsLoaded()
    Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
  end

  Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end