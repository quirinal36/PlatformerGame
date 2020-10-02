/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 135C9205
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDInput : 2
/// @DnDApplyTo : {o_player}
/// @DnDArgument : "funcName" "collision"
/// @DnDArgument : "arg" "hspd"
/// @DnDArgument : "arg_1" "vspd"
function collision(hspd, vspd) 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 382A6A1F
	/// @DnDApplyTo : {o_player}
	/// @DnDParent : 135C9205
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "vspd"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_platform"
	/// @DnDSaveInfo : "object" "o_platform"
	with(o_player) {
	var l382A6A1F_0 = instance_place(x + 0, y + vspd, o_platform);
	}
	if ((l382A6A1F_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7719997C
		/// @DnDParent : 382A6A1F
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 0A767D49
		/// @DnDParent : 382A6A1F
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 263810AA
			/// @DnDApplyTo : {o_player}
			/// @DnDParent : 0A767D49
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "sign(vspd)"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_platform"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "o_platform"
			with(o_player) {
			var l263810AA_0 = instance_place(x + 0, y + sign(vspd), o_platform);
			}
			if (!(l263810AA_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 26302C62
				/// @DnDApplyTo : {o_player}
				/// @DnDParent : 263810AA
				/// @DnDArgument : "expr" "sign(vspd)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "o_player.y"
				with(o_player) {
				o_player.y += sign(vspd);
				
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 27773CDE
			/// @DnDParent : 0A767D49
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 264304F7
				/// @DnDParent : 27773CDE
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 431C471B
				/// @DnDParent : 27773CDE
				/// @DnDArgument : "var" "o_player.v_spd"
				o_player.v_spd = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 468D5D1D
	/// @DnDApplyTo : {o_player}
	/// @DnDParent : 135C9205
	/// @DnDArgument : "expr" "vspd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "o_player.y"
	with(o_player) {
	o_player.y += vspd;
	
	}

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
	/// @DnDHash : 3E2F903C
	/// @DnDApplyTo : {o_player}
	/// @DnDParent : 135C9205
	/// @DnDArgument : "expr" "hspd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "o_player.x"
	with(o_player) {
	o_player.x += hspd;
	
	}
}