package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create();
		var text = new flixel.text.FlxText(0, 0, 0, "My Hero", 64);
		text.screenCenter();
		add(text);
		
		for (i in 0...4)
		{
		var spr = new Hero(50, 50);
		spr.velocity.set(i*50, i+45);
		add(spr);
		}
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
