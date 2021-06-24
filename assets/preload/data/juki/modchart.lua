function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
end


function update (elapsed)

end

function beatHit (beat)
    if curBeat == 96 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat == 160 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat == 224 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat == 256 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 8 * math.sin((currentBeat*0.5 + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 8 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat == 272 then
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
