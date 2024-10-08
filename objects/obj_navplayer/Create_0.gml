/// @description Insert description here
// You can write your code in this editor
acel = 10;
acel_h = 0;
acel_v = 0;

nav_mov = function()
{ 
	var _frente, _costas, _ladoesquedo, _ladodireito;

	_frente			= keyboard_check(ord("W"));
	_costas			= keyboard_check(ord("S"));
	_ladoesquedo	= keyboard_check(ord("A"));
	_ladodireito	= keyboard_check(ord("D"));

	acel_v = (_costas - _frente) * acel;
	acel_h = (_ladodireito - _ladoesquedo) * acel;

	x += acel_h;
	y += acel_v;
	
	x = clamp(x, 57, 1863);
	y = clamp(y, 60, 1020);
}