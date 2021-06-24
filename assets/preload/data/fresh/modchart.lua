function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
end


function update (elapsed)

end

function beatHit (beat)

end

function stepHit (step)
    if curStep == 128 then
        for i=0,7 do
            setActorY(defaultStrum0Y + 10 * math.cos((currentBeat + i*0.25) * math.pi), i)
        end
    end
end
