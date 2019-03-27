package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create();
		var text = new flixel.text.FlxText(0, 0, 0, "Hello World", 64);
		text.screenCenter();
		add(text);
		
		var spr = new FlxSprite(50, 50);
		spr.velocity.set(25, 55);
		add(spr);
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
