function onCreate()
	-- background shit

	setProperty('skipCountdown', true);

	-- credits stuff lol
	makeLuaText('credits', 'CREDITS\n\n\nCODING\nPhillDraws\n\nARTWORK\nPhillDraws\n\nMUSIC\nNikoTheFurry\n\nCHARTING\nHarryLTS', 400, 435, -850);
	setObjectCamera('credits', 'other');
	setTextSize('credits', 38);
	-- this too
	makeLuaSprite('creditsbox', 'box', 352, -2000);
	setScrollFactor('creditsbox', 0, 0);
	setProperty('creditsbox.alpha', 1);
	scaleObject('creditsbox', 1.385, 2)
	setObjectCamera('creditsbox', 'other');
		
	makeLuaSprite('bar', '', -700, -600);
	makeGraphic('bar', 1200, 100, '000000');
	scaleObject('bar', 6, 4);

	makeLuaSprite('bar1', '', -700, 900);
	makeGraphic('bar1', 1200, 100, '000000');
	scaleObject('bar1', 6, 4);

	makeLuaSprite('blankscreen', '', 0, 0);
	makeGraphic('blankscreen', 1280, 720, '000000');
	scaleObject('blankscreen', 6, 4);
	setObjectCamera('blankscreen', 'other');
	setProperty('blankscreen.alpha', 0);

	makeLuaSprite('bs', '', 0, 0);
	makeGraphic('bs', 1200, 100, '000000');
	scaleObject('bs', 10, 20)
	setObjectCamera('bs', 'other')
	
	makeLuaSprite('stageback', 'stageback', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);

	makeLuaSprite('circle', 'Start Screen Stuff/Circle-doomsday', 900, 0);
	setScrollFactor('circle', 0, 0);
	setObjectCamera('circle', 'other');

	makeLuaSprite('text', 'Start Screen Stuff/Text-doomsday', -900, 0);
	setScrollFactor('text', 0, 0);
	setObjectCamera('text', 'other');

	makeLuaSprite('stageback', 'stageback', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	makeLuaSprite('Grass', 'SonicP2-5 BG/GrassFG', -1948.15, 438.75);
	setScrollFactor('Grass', 0.9, 0.9);

	makeLuaSprite('TreesFront', 'SonicP2-5 BG/FG Trees', -1788.45, -1372.2);
	setScrollFactor('TreesFront', 0.9, 0.9);

	makeLuaSprite('Hill', 'SonicP2-5 BG/HillBack', -1201.95, 335.45);
	setScrollFactor('Hill', 0.9, 0.9);

	makeLuaSprite('treesback', 'SonicP2-5 BG/TreesFarBack', -1223.7, -362.15);
	setScrollFactor('TreesFront', 0.9, 0.9);

	makeLuaSprite('treesfar', 'SonicP2-5 BG/TreesFarthestBG', -191.9, 19.5);
	setScrollFactor('treesfar', 0.9, 0.9);

	makeLuaSprite('maintrees', 'SonicP2-5 BG/BG Trees Front', -1110.4, -334.65);
	setScrollFactor('TreesFront', 0.9, 0.9);

	makeLuaSprite('mainbgtrees', 'SonicP2-5 BG/BG Trees Back', -1240.75, -284.3);
	setScrollFactor('mainbgtrees', 0.9, 0.9);

	makeAnimatedLuaSprite('static', 'SonicP2-5 BG/NewTitleMenuBG', -500, 120);
	addAnimationByPrefix('static', 'idle', 'TitleMenuSSBG instance 1', 24, true);
	objectPlayAnimation('static', 'idle',true);
	setScrollFactor('static', 0.9, 0.9);
	scaleObject('static', 7, 1.6);

	makeLuaSprite('red', 'RedVG', -320, -180);
	setScrollFactor('red', 0, 0);
	scaleObject('red', 1.5, 1.5);
	setProperty("red.alpha", 0);
	setObjectCamera('red', 'game');
	
	precacheImage('white');
	precacheImage('RedVG');

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('static', false);
	addLuaSprite('treesfar', false);
	addLuaSprite('treesback', false);
	addLuaSprite('Hill', false);
	addLuaSprite('mainbgtrees', false);
	addLuaSprite('maintrees', false);
	addLuaSprite('Grass', false);
	addLuaSprite('red', true);
	addLuaSprite('TreesFront', true);
	addLuaSprite('bar', true);
	addLuaSprite('bar1', true);
	addLuaSprite('creditsbox', true);
	addLuaText('credits');
	addLuaSprite('bs', true);
	addLuaSprite('circle', true);
	addLuaSprite('text', true);
	addLuaSprite('blankscreen', true);
end

function onCreatePost()

	setProperty('timeBar.color', getColorFromHex('FF0000'))
end

function onSongStart()
	doTweenX('circleTween', 'circle', -100, 1, 'quintOut')
	doTweenX('textTween', 'text', 100, 1, 'quintOut')
	runTimer('introlol',2)
end

function onUpdate()
	setProperty("gf.visible", false);
end

function onStepHit()
	if curStep == 28 then
		doTweenY('boxslide', 'creditsbox', -20, 1, 'cubeOut');
		doTweenY('textslide', 'credits', 115, 1, 'cubeOut');
		runTimer('on-screen-time', 2.8);
	end
	if curStep == 58 then
		doTweenY('boxslide', 'creditsbox', -2000, 1, 'cubeOut');
		doTweenY('textslide', 'credits', -850, 1, 'cubeOut');
	end
	if curStep == 448 or curStep == 1239 then
		doTweenZoom('zoomlmao', 'camGame', 0.68, 1, 'cubeOut');
		doTweenY('barmovetop', 'bar', -400, 1, 'cubeOut');
		doTweenY('barmovebottom', 'bar1', 720, 1, 'cubeOut');
	end
	if curStep == 560 then
		doTweenZoom('zoomlmao', 'camGame', 0.87, 1, 'cubeOut');
		doTweenY('barmovetop', 'bar', -260, 1, 'cubeOut');
		doTweenY('barmovebottom', 'bar1', 650, 1, 'cubeOut');
	end
	if curStep == 959 then
		setProperty('blankscreen.alpha', 1);
		runTimer('blackscreen', 1.66);
	end
	if curStep == 576 or curStep == 1503 then
		doTweenZoom('zoomlmao', 'camGame', 0.55, 0.5, 'cubeOut');
		doTweenY('barmovetop', 'bar', -600, 2, 'cubeOut');
		doTweenY('barmovebottom', 'bar1', 900, 2, 'cubeOut');
		setProperty('red.alpha', 0);
	end
	if curStep == 448 or curStep == 464 or curStep == 479 or curStep == 496 or curStep == 512 or curStep == 528 or curStep == 544 or curStep == 568 or curStep == 1239 or curStep == 1263 or curStep == 1279 or curStep == 1295 or curStep == 1311 or curStep == 1327 or curStep == 1343 or curStep == 1360 or curStep == 1376 or curStep == 1392 or curStep == 1408 or curStep == 1424 or curStep == 1440 or curStep == 1456 or curStep == 1472 or curStep == 1487 then 
		doTweenAlpha('show', 'red', 1, 0.83, 'quadIn');
	end
end

function onTweenCompleted(name) -- camera tomfoolery and also more optimization yippee
	
if name == 'zoomlmao' then
	setProperty("defaultCamZoom",getProperty('camGame.zoom'))
	end

if name == 'show' then
	doTweenAlpha('hide', 'red', 0, 0.83, 'quadIn');
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'introlol' and songName == 'doomsday' then
		doTweenAlpha('graphicAlpha', 'bs', 0, 0.4, 'linear');
		doTweenAlpha('circleAlpha', 'circle', 0, 0.4, 'linear');
		doTweenAlpha('textAlpha', 'text', 0, 0.4, 'linear');
		runTimer('remove',3)
	end
	if tag == 'remove' and songName == 'doomsday' then
		removeLuaSprite('circle');
		removeLuaSprite('text');
		removeLuaSprite('bs');
	end
	if tag == 'on-screen-time' and songName == 'doomsday' then
		doTweenY('boxslide', 'creditsbox', -2000, 1, 'cubeOut');
		doTweenY('textslide', 'credits', -850, 1, 'cubeOut');
		runTimer('remove2', 1.5)
	end
	if tag == 'remove2' and songName == 'doomsday' then
		removeLuaSprite('credits');
		removeLuaSprite('creditsbox');
	end
	if tag == 'blackscreen' and songName == 'doomsday' then
		removeLuaSprite('blankscreen');
	end
end




