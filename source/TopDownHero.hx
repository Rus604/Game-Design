package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxColor;


/**
 * add player controls to hero
 * @author Rich Russell
 */

 class TopDownHero extends FlxSprite 
{

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		this.makeGraphic(50, 50, FlxColor.RED);
		
		// Set acceleration and max velocity to represent gravity.
		this.acceleration.y = 10;
		this.maxVelocity.y = 200;
		
		// Set max velocity for x to limit speed of character
		this.maxVelocity.x = 200;
	}
	
	
	
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}