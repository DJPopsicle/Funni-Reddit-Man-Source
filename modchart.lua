function start (song)
    --loading chars i guess
    changeDadCharacter('yourChar')
    changeDadCharacter('yourChar2')
end



function defaultWindow()
end

function update (elapsed)
    --loading chars again
    changeDadCharacter('yourChar')
    changeDadCharacter('yourChar2')
end

function beatHit (beat)
    --you can copy and paste everything below this until you see a "stop"
    if curBeat == yourBeat then
        function update (elapsed)
            local currentBeat = (songPos / 1000)*(bpm/60)
            for i=0,7 do
                --swaps the char
                changeDadCharacter('yourChar')
            end
        end
    end
    --stop
end

function stepHit (step)
    if curStep == 512 then
        changeDadCharacter('angrysketchy')
    end
    if curstep == 1083 then
        shakeCam = true
    end
    if curstep == 1092 then
        shakeCam = false
    end
end
