package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxColor;

/**
 * ...
 * @author Rich Russell
 */
class PlatformerHero extends FlxSprite 
{
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		this.makeGraphic(25, 25, FlxColor.WHITE);
		
		// Set acceleration and max velocity to represent gravity.
		this.acceleration.y = 10;
		this.maxVelocity.y = 50;	
		
		// Set max velocity for x to limit speed of character
		this.maxVelocity.x = 200;	
	}
}