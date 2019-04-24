package;

import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create();
			
		var topHero = new TopDownHero(25, 25);
		add(topHero);
		var pHero = new PlatformerHero(100, 100);
		add(pHero);
		var ground = new Ground(150, 350);
		add(ground);

	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
