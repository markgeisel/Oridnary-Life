 var _dungeonWidth = floor(1568 / CELL_SIZE);
var _dungeonHeight = floor(1632 / CELL_SIZE);
w=_dungeonWidth
v=_dungeonHeight
z=0
dungeon = ds_grid_create(_dungeonWidth, _dungeonHeight);

// Keeps track of all room structs
roomList = ds_list_create();
Hallwaylist = ds_list_create();
 n = 1 
 b=0
h=1
t=0
count=0

light = 0 
// Room size ranges
roomWidthMin = 10;
roomWidthMax = 10;
Finished= 0
roomHeightMin = 10;
roomHeightMax = 10;
	
depth=-1000
// Random floor tile z`
R=random_range(1,9)

// Hallway size ranges
hallwayLengthMin = 4;
hallwayLengthMax = 4;
hallwayWidthMin = 2;
hallwayWidthMax = 2;

// Room to create a new room from
currentRoom = noone;
CurrentHallway = noone;

// 1 in n chance of branching from the newly created room
branchOdds = 1;
 
 
// The number of failed iterations to create a new room
iterations = 10;

// The maximum number of failed iterations before quitting generation
iterationMax = 50;

