function create_creep(){
	show_debug_message("Running create_creep")
	
	var _existing_creeps = [];
	for (var _i = 0; _i < instance_number(obj_creep); ++_i;)
	{
		_existing_creeps[_i] =  instance_find(obj_creep,_i);
		
	}
	
	
	global.last_creep = [];
	
	for (var _i =0; _i < array_length(_existing_creeps); ++_i;)
	{
		
		if (!_existing_creeps[_i].used) {
			where_x = _existing_creeps[_i].x;
			where_y = _existing_creeps[_i].y;
		
			var _positions = [[-obj_creep.sprite_width,-obj_creep.sprite_height], 
							  [0,-obj_creep.sprite_height], 
							  [obj_creep.sprite_width,-obj_creep.sprite_height],
							  [-obj_creep.sprite_width,0],
							  [obj_creep.sprite_width,0],
							  [-obj_creep.sprite_width, obj_creep.sprite_height], 
							  [0, obj_creep.sprite_height], 
							  [obj_creep.sprite_width, obj_creep.sprite_height]
							  ];
		
			for (var _j = 0; _j < array_length(_positions); ++_j)
			{
			
				_position = _positions[_j];
			
				if (instance_position(where_x+_position[0]+1, where_y+_position[1]+1, obj_creep) == noone)
				{
					new_x = where_x +_position[0];
					new_y = where_y +_position[1];
					if (instance_position(new_x, new_y, obj_floor_tile) != noone) {
					   array_push(global.last_creep , instance_create_layer(new_x, new_y, "creep", obj_creep ));
					}
				} 
			}		
			_existing_creeps[_i].used = true;
		}
		
	}	
	
}