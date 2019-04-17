package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create();
		
		var text = new flixel.text.FlxText(0, 0, 0, "The Hero", 32);
		text.screenCenter();
		add(text);
		
		//for (i in 1...10)
		//{
		var spr = new TopDownHero(25, 25);
		add(spr);
		//};
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
