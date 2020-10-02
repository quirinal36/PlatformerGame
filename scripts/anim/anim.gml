/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 069EE7E9
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "anim"
/// @DnDArgument : "arg" "hspd"
function anim(hspd) 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5AC0701A
	/// @DnDApplyTo : {o_player}
	/// @DnDParent : 069EE7E9
	/// @DnDArgument : "var" "hspd"
	/// @DnDArgument : "not" "1"
	with(o_player) var l5AC0701A_0 = hspd == 0;
	if(!l5AC0701A_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 391A8F53
		/// @DnDApplyTo : {o_player}
		/// @DnDParent : 5AC0701A
		/// @DnDArgument : "var" "hspd"
		/// @DnDArgument : "op" "2"
		with(o_player) var l391A8F53_0 = hspd > 0;
		if(l391A8F53_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57DF649F
			/// @DnDApplyTo : {o_player}
			/// @DnDParent : 391A8F53
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "o_player.facing"
			with(o_player) {
			o_player.facing = 1;
			
			}
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
			/// @DnDApplyTo : {o_player}
			/// @DnDParent : 449ECD03
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "o_player.facing"
			with(o_player) {
			o_player.facing = -1;
			
			}
		}
	}
}