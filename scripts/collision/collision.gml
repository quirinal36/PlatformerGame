/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 135C9205
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "collision"
/// @DnDArgument : "arg" "hspd"
function collision(hspd) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EF1E7DB
	/// @DnDApplyTo : {o_player}
	/// @DnDParent : 135C9205
	/// @DnDArgument : "expr" "hspd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "o_player.x"
	with(o_player) {
	o_player.x += hspd;
	
	}
}