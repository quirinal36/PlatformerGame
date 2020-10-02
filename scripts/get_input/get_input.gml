/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0EC79205
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "get_input"
/// @DnDArgument : "arg" "wspd"
function get_input(wspd) 
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6A664123
	/// @DnDParent : 0EC79205
	/// @DnDArgument : "key" "vk_right"
	var l6A664123_0;
	l6A664123_0 = keyboard_check(vk_right);
	if (l6A664123_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C07ED5E
		/// @DnDApplyTo : {o_player}
		/// @DnDParent : 6A664123
		/// @DnDArgument : "expr" "wspd"
		/// @DnDArgument : "var" "o_player.h_spd"
		with(o_player) {
		o_player.h_spd = wspd;
		
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 19675DE2
	/// @DnDParent : 0EC79205
	/// @DnDArgument : "key" "vk_left"
	var l19675DE2_0;
	l19675DE2_0 = keyboard_check(vk_left);
	if (l19675DE2_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6EEE6D7C
		/// @DnDApplyTo : {o_player}
		/// @DnDParent : 19675DE2
		/// @DnDArgument : "expr" "-wspd"
		/// @DnDArgument : "var" "o_player.h_spd"
		with(o_player) {
		o_player.h_spd = -wspd;
		
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 35E56992
	/// @DnDParent : 0EC79205
	var l35E56992_0;
	l35E56992_0 = keyboard_check_pressed(vk_space);
	if (l35E56992_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C92CD72
		/// @DnDApplyTo : {o_player}
		/// @DnDParent : 35E56992
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "o_player.jump"
		with(o_player) {
		o_player.jump = true;
		
		}
	}
}