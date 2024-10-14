local TweenService = game:GetService("TweenService")

local function TPB(targetPosition, boat, boatSpeed)
    local distance = (boat.CFrame.Position - targetPosition.Position).Magnitude
    local tweenInfo = TweenInfo.new(distance / boatSpeed, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(boat, tweenInfo, { CFrame = targetPosition })
    if distance <= 25 then
        tween:Cancel() 
    else
        tween:Play()
    end

    local function stopBoat()
        tween:Cancel()
    end
    return { Stop = stopBoat }
end