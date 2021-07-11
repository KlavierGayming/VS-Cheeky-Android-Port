--[[local defaultCamZoom,defaultHudZoom

local bg = "galaxy"--"assets/shared/images/mugenstuff/cheekyhouse/galaxy.png"
local white = "White"--"assets/data/bedrock/White.png"
local gradient = "gradient"--"assets/data/bedrock/gradient.png"
local effectnum = 0 -- idk what to call this

function start()
	defaultCamZoom,defaultHudZoom = cameraZoom,hudZoom
	bg = makeSprite(bg,"bg",true)
	white = makeSprite(white,"white",false)
	gradient = makeSprite(gradient,"gradient",false)
	setActorX(0,"bg")
	setActorY(660,"bg")
	setActorX(0,"white")
	setActorY(200,"white")
	setActorScale(3.25,"white")
	setActorScale(2.45,"bg")
	setActorAlpha(0,"white")
	setActorAlpha(0,"bg")
	setActorAlpha(0,"gradient")
end

local still = false
function unpop()
	effectnum = 3
	still = false
	setCamZoom(defaultCamZoom)
	setHudZoom(defaultHudZoom)
	setActorAlpha(1,"bg")
	setActorAlpha(1,"gradient")
	tweenFadeOut(gradient,.1,60)
	tweenFadeOut(white,0,7)
	changeDadCharacter("housecheeky")
	changeBoyfriendCharacter("bf-housecool")
end

function fixcamzoom()
	if effectnum == 3 then
		setCamZoom(defaultCamZoom)
		setHudZoom(defaultHudZoom)
	else
		still = true
	end
end

function update()
	setActorX(getCameraX(),"gradient")
	setActorY(getCameraY()+250,"gradient")
	setActorScale(3+cameraZoom*-.9,"gradient")
	if still then
		setCamZoom(1.25)
		setHudZoom(1.07)
	end
end

function stepHit(step)
	if still then
		setCamZoom(1.25)
		setHudZoom(1.07)
	end
	if step >= 928 and effectnum == 0 then
		effectnum = 1
		tweenCameraZoomOut(1.25,.63,"fixcamzoom")
		tweenHudZoomOut(1.07,.63,"fixcamzoom")
	elseif step >= 933 and effectnum == 1 then
		effectnum = 2
		tweenFadeIn(white,1,.03,"unpop")
	end
end]]
