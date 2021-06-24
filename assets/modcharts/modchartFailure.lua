local snakeUpNormal = false
local snakeUpFast = false
local snakeDownFast = false
local snakeDownNormal = false
local snakeLeftNormal = false
local snakeLeftFast = false
local snakeRightFast = false
local snakeRightNormal = false
local swayLeftFast = false
local swayLeftNormal = false
local swayRightFast = false
local swayRightNormal = false
local swayUpFast = false
local swayUpNormal = false
local swayDownFast = false
local swayDownNormal = false
local patrolNormal = false
local patrolFast = false
local snakeStop = false

function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
end


function update (elapsed)
local currentBeat = (songPos / 1000)*(bpm/60)
    if patrolNormal then
         for i=0,3 do
            setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
            setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat + i*5) * math.pi),i)
        end
        for i=4,7 do
            setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
            setActorY(_G['defaultStrum'..i..'Y'] - 64 * math.cos((currentBeat + i*5) * math.pi),i)
        end
    end
    if patrolFast then
        for i=0,3 do
            setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat*2 + i*0)) + 350, i)
            setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat*2 + i*5) * math.pi),i)
        end
        for i=4,7 do
            setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat*2 + i*0)) - 275, i)
            setActorY(_G['defaultStrum'..i..'Y'] - 64 * math.cos((currentBeat*2 + i*5) * math.pi),i)
        end
    end
    if swayUpNormal then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos(currentBeat * math.pi),i)
        end
    end
    if swayUpFast then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos(currentBeat*2 * math.pi),i)
        end
    end
    if swayDownNormal then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'] - 32 * math.cos(currentBeat * math.pi),i)
        end
    end
    if swayDownFast then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'] - 64 * math.cos(currentBeat*2 * math.pi),i)
        end
    end
    if swayLeftFast then
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] - 64 * math.sin(currentBeat*2 * math.pi),i)
        end
    end
    if swayLeftNormal then
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] - 32 * math.sin(currentBeat * math.pi),i)
        end
    end
    if swayRightFast then
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin(currentBeat*2 * math.pi),i)
        end
    end
    if swayRightNormal then
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin(currentBeat * math.pi),i)
        end
    end
    if snakeUpFast then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat*2 + i*0.25) * math.pi), i)
        end
    end
    if snakeUpNormal then
        function update (elapsed)
            for i=0,7 do
                setActorY(_G['defaultStrum'..i..'Y'] + 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
            end
        end
    end
    if snakeDownFast then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'] - 32 * math.cos((currentBeat*2 + i*0.25) * math.pi), i)
        end
    end
    if snakeDownNormal then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'] - 16 * math.cos((currentBeat + i*0.25) * math.pi), i)
        end
    end
    if snakeInFast then
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] - 64 * math.sin((currentBeat*2 + i*0.25) * math.pi), i)
        end
    end
    if snakeInNormal then
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] - 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
        end
    end
    if snakeOutFast then
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat*2 + i*0.25) * math.pi), i)
        end
    end
    if snakeOutNormal then
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
        end
    end
    if snakeStop then
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] + 0 * math.sin((currentBeat + i*0.25) * math.pi), i)
            setActorY(_G['defaultStrum'..i..'Y'] - 0 * math.cos((currentBeat + i*0.25) * math.pi), i)
        end
    end
end

function beatHit (beat)
    if curBeat > 15 then
        function update (elapsed)
            snakeUpNormal = true
        end
    end
    if curBeat > 47 then
        function update (elapsed)
            snakeOutNormal = true
        end
    end
    if curBeat > 78 then
        snakeUpNormal = false
        snakeOutNormal = false
        snakeStop = true
    end
    if curBeat > 79 then
        snakeStop = false
        snakeUpNormal = true
    end
    if curBeat > 111 then
        snakeUpFast = true
        patrolFast = true
        swayDownFast = true
    end
end

function stepHit (step)
    if curStep > 65 then
        snakeUpNormal = true
    end
    -- if curStep > 120 then

    -- end
end
