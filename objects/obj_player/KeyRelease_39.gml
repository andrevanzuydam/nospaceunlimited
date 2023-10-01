var _obj_player = instance_find(obj_player, 0);

if (_obj_player.image_orientation == "east")
{
	if (place_empty(_obj_player.x + _obj_player.sprite_width, _obj_player.y, [obj_creep, obj_wall, obj_start])) {
		_obj_player.x = _obj_player.x + _obj_player.sprite_width;
	}
}

_obj_player.image_orientation = "east";