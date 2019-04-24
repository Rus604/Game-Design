package;

import flixel.FlxG;
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
	
	override public function update(elapsed:Float):Void
	{
		var leftPressed:Bool = FlxG.keys.pressed.LEFT;
		var rightPressed:Bool = FlxG.keys.pressed.RIGHT;

		if (leftPressed)
		{ 				                // Move left
			this.acceleration.x = -50;
		} else if (rightPressed)
		{ 		                        // Move right
			this.acceleration.x = 50;
		}
		else
		{ 					         	// no action
			this.velocity.set(0, 0);
			this.acceleration.set(0, 0);
		}
		super.update(elapsed);
	}
	
}



