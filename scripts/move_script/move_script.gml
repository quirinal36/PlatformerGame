/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2CCF9A05
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "move_script"
function move_script() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 464A3EF5
	/// @DnDApplyTo : {o_player}
	/// @DnDParent : 2CCF9A05
	/// @DnDArgument : "expr" "o_player.h_spd * o_player.drag"
	/// @DnDArgument : "var" "o_player.h_spd"
	with(o_player) {
	o_player.h_spd = o_player.h_spd * o_player.drag;
	
	}
}