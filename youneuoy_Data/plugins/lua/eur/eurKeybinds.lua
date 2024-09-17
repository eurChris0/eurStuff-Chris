function BMapHighlight()
    cameraCoords = M2TWEOP.getBattleCamCoords();
    if not cameraCoords then return end
        M2TWEOP.toggleUnitsBMapHighlight();
end

function tacticalViewUp()
    cameraCoords = M2TWEOP.getBattleCamCoords();
    if not cameraCoords then return end;
        if cameraCoords.zCoord < 400 then
            cameraCoords.zCoord = cameraCoords.zCoord + 50
        end
end

function tacticalViewDown()
    cameraCoords = M2TWEOP.getBattleCamCoords();
    if not cameraCoords then return end;
        if cameraCoords.zCoord > 70 then
            cameraCoords.zCoord = cameraCoords.zCoord - 50
        end
end