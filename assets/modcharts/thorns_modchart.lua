function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
    WhiteFade = makeSprite('WhiteFade','whitefade', false)
    setActorX(200,'whitefade')
	setActorY(500,'whitefade')
	setActorAlpha(0,'whitefade')
	setActorScale(2,'whitefade')
end


function update (elapsed)
    function update (elapsed)
        local currentBeat = (songPos / 1000)*(bpm/60)
        for i=0,7 do
            -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
            setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
        end
    end
end

function beatHit (beat)
    if curBeat == 0 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat == 32 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if curBeat == 64 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
            for i=0,3 do
                setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
            end
            for i=4,7 do
                setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
            end
        end
    end
    -- if curBeat == 94 then
    --     function update (elapsed)
    --         local currentBeat = (songPos / 1000)*(bpm/60)
    --         for i=0,3 do
    --             setActorX(_G['defaultStrum'..i..'X'] + 150 * math.sin((currentBeat + i*0)) + 175, i)
    --         end
    --         for i=4,7 do
    --             setActorX(_G['defaultStrum'..i..'X'] - 150 * math.sin((currentBeat + i*0)) - 137.5, i)
    --         end
    --         for i=0,7 do
    --             -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
    --             setActorY(_G['defaultStrum'..i..'Y'] + 58 * math.cos((currentBeat + i*0.25) * math.pi), i)
    --         end
    --     end
    -- end
    -- if curBeat == 95 then
    --     function update (elapsed)
    --         local currentBeat = (songPos / 1000)*(bpm/60)
    --         for i=0,3 do
    --             setActorX(_G['defaultStrum'..i..'X'] + 75 * math.sin((currentBeat + i*0)) + 87.5, i)
    --         end
    --         for i=4,7 do
    --             setActorX(_G['defaultStrum'..i..'X'] - 75 * math.sin((currentBeat + i*0)) - 68.75, i)
    --         end
    --         for i=0,7 do
    --             -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
    --             setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)
    --         end
    --     end
    -- end
    if curBeat == 96 then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                setActorX(_G['defaultStrum'..i..'X'] + 0 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
            for i=0,7 do
                -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    -- if curBeat > 79 then
    --     function update (elapsed)
    --         local currentBeat = (songPos / 1000)*(bpm/60)
    --         for i=0,7 do
    --             -- setActorX(_G['defaultStrum'..i..'X'] + 16 * math.sin((currentBeat + i*0.25) * math.pi), i)
    --             setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
    --         end
    --     end
    -- end
    -- if curBeat > 111 then
    --     function update (elapsed)
    --         local currentBeat = (songPos / 1000)*(bpm/60)
    --         for i=0,7 do
    --             setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat*2 + i*0.25) * math.pi), i)
    --         end
    --         for i=0,3 do
    --             setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
    --         end
    --         for i=4,7 do
    --             setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
    --         end
    --     end
    -- end
end

function stepHit (step)
    if curStep > 65 then
        
    end
    -- if curStep > 120 then

    -- end
end
