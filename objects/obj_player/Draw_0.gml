if (self.dead) {
	self.image_index  = 2;	
} else {
	if (self.animate)
	{
		self.image_index = 0;	
	} else {
		self.image_index = 1;
	}
	self.animate = !self.animate;
}


if (self.image_orientation == "west")
{
  self.image_angle = 90;	
}

if (self.image_orientation == "east")
{
  self.image_angle = 270;	
}

if (self.image_orientation == "north")
{
  self.image_angle = 0;	
}

if (self.image_orientation == "south")
{
  self.image_angle = 180;	
}

draw_self();

