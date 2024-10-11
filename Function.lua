function CheckRoughSea()
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Rough Sea") then
        return true
    else
        return false
    end
end

if getgenv().AutoEsRoughSea and CheckRoughSea() then
      notify("Rough sea discovery")
else
      notify("escape Rough Sea success")
      stoptweenboat();
end
  
