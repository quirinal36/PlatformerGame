/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5AC0701A
/// @DnDArgument : "var" "o_player.h_spd"
/// @DnDArgument : "not" "1"
if(!(o_player.h_spd == 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 391A8F53
	/// @DnDParent : 5AC0701A
	/// @DnDArgument : "var" "o_player.h_spd"
	/// @DnDArgument : "op" "2"
	if(o_player.h_spd > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57DF649F
		/// @DnDParent : 391A8F53
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "o_player.facing"
		o_player.facing = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 449ECD03
	/// @DnDParent : 5AC0701A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C66CA9B
		/// @DnDParent : 449ECD03
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "o_player.facing"
		o_player.facing = -1;
	}
}