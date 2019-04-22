package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create();
		
		var text = new flixel.text.FlxText(0, 0, 0, "top hero", 32);
		text.screenCenter();
		add(text);
		
<<<<<<< HEAD
		var spr = new TopDownHero(25, 25);
		add(spr);
=======
		//for (i in 1...10)
		//{
		var spr = new TopDownHero(25, 25);
		add(spr);
		//};
		
>>>>>>> origin/tutorial
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
