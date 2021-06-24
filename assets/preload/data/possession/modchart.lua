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
    w = getScreenWidth()
	w1 = (w / 4) * 2 + (getWindowWidth() / 2) + 100
	w2 = w / -2.5
	w3 = (w / 1000) * 1.45
	setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2),  (getScreenHeight() / 2 - getWindowHeight() / 2))
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
    changeDadCharacter('bs-juki')
    changeDadCharacter('bs-juki2')
    changeDadCharacter('juki')
    changeDadCharacter('bs-juki2')
    changeDadCharacter('bs-juki')
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
    changeDadCharacter('bs-juki')
    changeDadCharacter('bs-juki2')
    changeDadCharacter('juki')
    changeDadCharacter('bs-juki')
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
            resizeWindow(resizeX - 300 * math.sin(currentBeat*2), resizeY - 300 * math.sin(currentBeat*2))
            defaultWindow()
        end
    end
    if curBeat == 95 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            -- changeDadCharacter('bs-juki')
            resizeX = 1280
            resizeY = 720
            resize()
            defaultWindow()
        end
    end
    if curBeat == 96 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            -- changeDadCharacter('bs-juki')
            -- defaultWindow()

            -- setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2),  (getScreenHeight() / 2 - getWindowHeight() / 2))
            for i=0,7 do
                resizeWindow(resizeX + 128 * math.sin(currentBeat*0.125 * math.pi), resizeY + 128 * math.sin(currentBeat*0.25 * math.pi))
                setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2) + 64 * math.sin(currentBeat*0.5 * math.pi), (getScreenHeight() / 2 - getWindowHeight() / 2) + 64 * math.sin(currentBeat * math.pi))
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
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
    if curBeat == 80 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat*2 + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat == 88 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat*2 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat*4 + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat == 128 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            
            for i=0,7 do
                setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2) + 64 * math.sin(currentBeat * math.pi), (getScreenHeight() / 2 - getWindowHeight() / 2) + 64 * math.sin(currentBeat*2 * math.pi))
                -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat*2 + i*0.25) * math.pi), i)
                setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 0 * math.sin((currentBeat*2 + i*0)) + 0, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 0 * math.sin((currentBeat*2 + i*0)) - 0, i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat*2 + i*0)) + 350, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat*2 + i*0)) - 275, i)
            end
        end
    end
    -- if curBeat == 159 then
    --     function update (elapsed)
    --         local currentBeat = (songPos / 1000)*(bpm/60)
    --         -- changeDadCharacter('bs-juki2')
    --     end
    -- end
    if curBeat == 160 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            -- changeDadCharacter('bs-juki2')
            for i=0,7 do
                setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2) + 64 * math.sin(currentBeat*0.5 * math.pi), (getScreenHeight() / 2 - getWindowHeight() / 2) + 64 * math.sin(currentBeat * math.pi))
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
            end
        end
    end
    if curBeat == 184 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2) + 64 * math.sin(currentBeat*1.5 * math.pi), (getScreenHeight() / 2 - getWindowHeight() / 2) + 64 * math.sin(currentBeat*2 * math.pi))
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat*1.5 + i*0.25) * math.pi), i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat*1.5 + i*0)) + 350, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat*1.5 + i*0)) - 275, i)
            end
        end
    end
    -- if curBeat == 191 then
    --     function update (elapsed)
    --         local currentBeat = (songPos / 1000)*(bpm/60)
    --         -- changeDadCharacter('bs-juki')
    --     end
    -- end
    if curBeat == 192 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            -- changeDadCharacter('bs-juki')
            for i=0,7 do
                setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2) + 64 * math.sin(currentBeat*0.5 * math.pi), (getScreenHeight() / 2 - getWindowHeight() / 2) + 64 * math.sin(currentBeat * math.pi))
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
            end
        end
    end
    if curBeat == 208 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                resizeWindow(resizeX + 128 * math.sin(currentBeat*0.25 * math.pi), resizeY + 128 * math.sin(currentBeat*0.5 * math.pi))
                setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2) + 64 * math.sin(currentBeat*0.5 * math.pi), (getScreenHeight() / 2 - getWindowHeight() / 2) + 64 * math.sin(currentBeat * math.pi))
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
            end
        end
    end
    if curBeat == 223 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            resizeX = getScreenWidth()
            resizeY = getScreenHeight()
            resize()
            setWindowPos((getScreenWidth() / 2 - getWindowWidth() / 2),  (getScreenHeight() / 2 - getWindowHeight() / 2))
            -- changeDadCharacter('bs-juki2')
        end
    end
    if curBeat == 224 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            setCamPosition(0, 50000)
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
