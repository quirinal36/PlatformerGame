/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 135C9205
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "collision"
/// @DnDArgument : "arg" "hspd"
function collision(hspd) 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 0C697BB1
	/// @DnDApplyTo : {o_player}
	/// @DnDParent : 135C9205
	/// @DnDArgument : "x" "hspd"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_platform"
	/// @DnDSaveInfo : "object" "o_platform"
	with(o_player) {
	var l0C697BB1_0 = instance_place(x + hspd, y + 0, o_platform);
	}
	if ((l0C697BB1_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A0A9D26
		/// @DnDParent : 0C697BB1
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 0FE575C4
		/// @DnDParent : 0C697BB1
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 43BAA07B
			/// @DnDApplyTo : {o_player}
			/// @DnDParent : 0FE575C4
			/// @DnDArgument : "x" "sign(hspd)"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_platform"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "o_platform"
			with(o_player) {
			var l43BAA07B_0 = instance_place(x + sign(hspd), y + 0, o_platform);
			}
			if (!(l43BAA07B_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 142B43A4
				/// @DnDApplyTo : {o_player}
				/// @DnDParent : 43BAA07B
				/// @DnDArgument : "expr" "sign(hspd)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "o_player.x"
				with(o_player) {
				o_player.x += sign(hspd);
				
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 7E8B9558
			/// @DnDParent : 0FE575C4
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7E62B701
				/// @DnDParent : 7E8B9558
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1EF1E7DB
				/// @DnDApplyTo : {o_player}
				/// @DnDParent : 7E8B9558
				/// @DnDArgument : "var" "hspd"
				with(o_player) {
				hspd = 0;
				
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 468D5D1D
	/// @DnDApplyTo : {o_player}
	/// @DnDParent : 135C9205
	/// @DnDArgument : "expr" "hspd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "o_player.x"
	with(o_player) {
	o_player.x += hspd;
	
	}
}