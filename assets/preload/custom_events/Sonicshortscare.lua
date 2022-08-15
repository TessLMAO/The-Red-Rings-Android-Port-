function onCreate()
	makeLuaSprite('jumps', 'simplejump', -125, -50);
	setScrollFactor('jumps', 0, 0);
	setObjectCamera('jumps', 'other');
	scaleObject('jumps',0.8,0.8)
	addLuaSprite('jumps',true)
	setProperty('jumps.alpha', 0)
	precacheImage('simplejump');
	precacheSound('short-scare');
end

function onCreatePost()
	setObjectOrder('jumps', getObjectOrder('creep') - 1)
end

function onEvent(name, value1, value2)
    if name == "Sonicshortscare" then

		if value2 == "1" then
			playSound('short-scare', 1)
			setProperty('jumps.alpha', 1)
			runTimer('scare', value1);
		end

	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'scare' then
		setProperty('jumps.alpha', 0)
	end
end