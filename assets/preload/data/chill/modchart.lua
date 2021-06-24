local w = 0.0
local w1 = 0.0
local w2 = 0.0
local w3 = 0.0


local resizeX = 1280
local resizeY = 720
local defaultWindowX = 0
local defaultWindowY = 0

function resize()
    resizeWindow(resizeX,resizeY)
end

function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
    w = getScreenWidth()
	w1 = (w / 4) * 2 + (getWindowWidth() / 2) + 100
	w2 = w / -2.5
	w3 = (w / 1000) * 1.45
	setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2),  (getScreenHeight() / 2 - getWindowHeight() / 2))
    resizeX = getScreenWidth()
    resizeY = getScreenHeight()
    resize()
    setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2),  (getScreenHeight() / 2 - getWindowHeight() / 2))
    setHudAngle(0)
    defaultWindowX = (getScreenWidth() / 2 - getWindowWidth() / 2)
    defaultWindowY = (getScreenHeight() / 2 - getWindowHeight() / 2)
end

function defaultWindow()
    setHudPosition(defaultHudX,defaultHudY)
    setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2),  (getScreenHeight() / 2 - getWindowHeight() / 2))
    setHudAngle(0)
end

function update (elapsed)
    defaultWindow()
end

function beatHit (beat)
    if curBeat == 32 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat == 92 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            -- changeDadCharacter('bs-juki')
            defaultWindow()
            resizeWindow(resizeX - 600 * math.sin(currentBeat), resizeY - 600 * math.sin(currentBeat))
            defaultWindow()
        end
    end
    if curBeat == 95 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            resizeX = 1280
            resizeY = 720
            resize()
            defaultWindow()
        end
    end
    if curBeat == 96 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2) + 300 * math.sin(currentBeat*0.25 * math.pi), (getScreenHeight() / 2 - getWindowHeight() / 2) + 150 * math.sin(currentBeat*0.125 * math.pi))
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat*0.5 + i*0)) + 350, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat*0.5 + i*0)) - 275, i)
            end
        end
    end
    if curBeat == 64 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat == 124 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            -- changeDadCharacter('bs-juki')
            defaultWindow()
            resizeWindow(resizeX + 700 * math.sin(currentBeat), resizeY + 700 * math.sin(currentBeat))
            defaultWindow()
        end
    end
    
    if curBeat == 127 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            resizeX = getScreenWidth()
            resizeY = getScreenHeight()
            resize()
            setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2),  (getScreenHeight() / 2 - getWindowHeight() / 2))
        end
    end

    if curBeat == 128 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)

            for i=0,7 do
                -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
                setActorX(_G['defaultStrum'..i..'X'] + 0 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 0 * math.sin((currentBeat*0.5 + i*0)) + 0, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 0 * math.sin((currentBeat*0.5 + i*0)) - 0, i)
            end
        end
    end
    if curBeat == 192 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 8 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 8 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end

        end
    end
    if curBeat == 256 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 0 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 0 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
end

function stepHit (step)
    -- if curStep == 128 then
    --     for i=0,7 do
    --         setActorY(defaultStrum0Y + 10 * math.cos((currentBeat + i*0.25) * math.pi), i)
    --     end
    -- end
end
