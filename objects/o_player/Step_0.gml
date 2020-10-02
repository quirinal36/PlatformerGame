/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6002870B
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "jump"
jump = false;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 58612C44
/// @DnDArgument : "x" "h_spd"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_platform"
/// @DnDSaveInfo : "object" "o_platform"
var l58612C44_0 = instance_place(x + h_spd, y + 0, o_platform);
if ((l58612C44_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4EC0F40C
	/// @DnDParent : 58612C44
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	var collide = false;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 2AEB21B6
	/// @DnDParent : 58612C44
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	while ((collide == false)) {
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 4AC62CDA
		/// @DnDParent : 2AEB21B6
		/// @DnDArgument : "x" "sign(h_spd)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_platform"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "o_platform"
		var l4AC62CDA_0 = instance_place(x + sign(h_spd), y + 0, o_platform);
		if (!(l4AC62CDA_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1BD91090
			/// @DnDParent : 4AC62CDA
			/// @DnDArgument : "expr" "sign(h_spd)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += sign(h_spd);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7837F3C6
		/// @DnDParent : 2AEB21B6
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5CD1A9FB
			/// @DnDParent : 7837F3C6
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "collide"
			collide = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E19E5A1
			/// @DnDParent : 7837F3C6
			/// @DnDArgument : "var" "h_spd"
			h_spd = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1B9394F6
/// @DnDArgument : "expr" "h_spd"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += h_spd;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2219C40D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "v_spd"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_platform"
/// @DnDSaveInfo : "object" "o_platform"
var l2219C40D_0 = instance_place(x + 0, y + v_spd, o_platform);
if ((l2219C40D_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2940D65E
	/// @DnDParent : 2219C40D
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	var collide = false;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 477756A3
	/// @DnDParent : 2219C40D
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	while ((collide == false)) {
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 0C8BA465
		/// @DnDParent : 477756A3
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sign(v_spd)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_platform"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "o_platform"
		var l0C8BA465_0 = instance_place(x + 0, y + sign(v_spd), o_platform);
		if (!(l0C8BA465_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 217B5393
			/// @DnDParent : 0C8BA465
			/// @DnDArgument : "expr" "sign(v_spd)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += sign(v_spd);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4C14DAED
		/// @DnDParent : 477756A3
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6434E7F1
			/// @DnDParent : 4C14DAED
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "collide"
			collide = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7FC6B79A
			/// @DnDParent : 4C14DAED
			/// @DnDArgument : "var" "v_spd"
			v_spd = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 197B262B
/// @DnDArgument : "expr" "v_spd"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += v_spd;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 48A7A860
/// @DnDArgument : "script" "get_input"
/// @DnDArgument : "arg" "walk_spd"
/// @DnDSaveInfo : "script" "get_input"
script_execute(get_input, walk_spd);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 02193EA2
/// @DnDArgument : "script" "anim"
/// @DnDArgument : "arg" "h_spd"
/// @DnDSaveInfo : "script" "anim"
script_execute(anim, h_spd);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 589AC476
/// @DnDArgument : "expr" "h_spd * drag"
/// @DnDArgument : "var" "h_spd"
h_spd = h_spd * drag;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D625A42
/// @DnDArgument : "expr" "global.grav"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "v_spd"
v_spd += global.grav;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1628FECA
/// @DnDArgument : "var" "jump"
/// @DnDArgument : "value" "true"
if(jump == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B6BDBE9
	/// @DnDParent : 1628FECA
	/// @DnDArgument : "expr" "-jump_spd"
	/// @DnDArgument : "var" "v_spd"
	v_spd = -jump_spd;
}