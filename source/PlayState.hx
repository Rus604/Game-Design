package;

import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create();
			
		var spr = new TopDownHero(25, 25);
		add(spr);

	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
