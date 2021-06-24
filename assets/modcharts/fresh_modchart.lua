function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
end


function update (elapsed)
        
end

function beatHit (beat)
    if curBeat > 15 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat > 47 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat > 78 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 0 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 0 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat > 79 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat > 111 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat*2 + i*0.25) * math.pi), i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat*2 + i*0)) + 350, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat*2 + i*0)) - 275, i)
            end
        end
    end
end

function stepHit (step)
    if curStep > 65 then
        
    end
    -- if curStep > 120 then

    -- end
end
