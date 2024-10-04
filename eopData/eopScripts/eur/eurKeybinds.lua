function BMapHighlight()
    cameraCoords = M2TWEOP.getBattleCamCoords();
    if not cameraCoords then return end
        M2TWEOP.toggleUnitsBMapHighlight();
end

function tacticalViewUp()
    cameraCoords = M2TWEOP.getBattleCamCoords();
    if not cameraCoords then return end;
        if cameraCoords.zCoord < 500 then
            cameraCoords.zCoord = cameraCoords.zCoord + 50
        end
end

function tacticalViewDown()
    cameraCoords = M2TWEOP.getBattleCamCoords();
    if not cameraCoords then return end;
        if cameraCoords.zCoord > 60 then
            cameraCoords.zCoord = cameraCoords.zCoord - 50
        else
            cameraCoords.zCoord = 10
        end
end
