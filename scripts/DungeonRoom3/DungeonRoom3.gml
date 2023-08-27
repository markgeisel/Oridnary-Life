function DungeonRoom(_x1, _y1, _x2, _y2,C) constructor {
	
	// Top left corner coordinates
	x1 = _x1;
	y1 = _y1;
	// Bottom right corner coordinates
	x2 = _x2;
	y2 = _y2;
	c= C
	// Calculate room's width and height
	width = x2 - x1 + 1;
	height = y2 - y1 + 1;
}


function Hallwayarea(_hallwayX1, _hallwayY1, _hallwayX2, _hallwayY2) constructor {
	x1 = _hallwayX1;
	y1 = _hallwayY1;
	// Bottom right corner coordinates
	x2 = _hallwayX2;
	y2 = _hallwayY2;
}
 