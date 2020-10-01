/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6A664123
/// @DnDArgument : "key" "vk_right"
var l6A664123_0;
l6A664123_0 = keyboard_check(vk_right);
if (l6A664123_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C07ED5E
	/// @DnDParent : 6A664123
	/// @DnDArgument : "expr" "walk_spd"
	/// @DnDArgument : "var" "h_spd"
	h_spd = walk_spd;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 19675DE2
/// @DnDArgument : "key" "vk_left"
var l19675DE2_0;
l19675DE2_0 = keyboard_check(vk_left);
if (l19675DE2_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EEE6D7C
	/// @DnDParent : 19675DE2
	/// @DnDArgument : "expr" "-walk_spd"
	/// @DnDArgument : "var" "h_spd"
	h_spd = -walk_spd;
}