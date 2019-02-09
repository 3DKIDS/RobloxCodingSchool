-- 변수로 지체시간 2초로 설정
local PATROL_DELAY = 2;

-- 가져온 좀비를 변수 좀비에 담고 좀비의 휴모노이드 속성 담기
local zombie = game.Workspace["Drooling Zombie"]
local humanoid = zombie.Humanoid
 
-- 빨간 깃발 과 녹색깃발 위치 변수 담기
local pointA = game.Workspace.GreenFlagSet
local pointB = game.Workspace.RedFlagSet

-- 위동 하기 위한 변수 설정
local nextDestinationObject = pointA
 
-- 반복 동작 만들기
while wait(PATROL_DELAY) do
	-- 다음위치 변수로 이동하게 하
	humanoid:MoveTo(nextDestinationObject.PrimaryPart.Position)
 
	-- 목적지 도착 후 잠시 기다리기
	humanoid.MoveToFinished:wait()
 
	-- 현재위치를 다음위치로 전환하기
	if nextDestinationObject == pointA then
		nextDestinationObject = pointB
	else
		nextDestinationObject = pointA
	end
	
	print(nextDestinationObject)
end
