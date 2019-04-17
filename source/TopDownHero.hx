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
	public var colorCycle:Int = 0;
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		this.makeGraphic(50, 50, FlxColor.RED);
		
		// Set acceleration and max velocity to represent gravity.
		//this.acceleration.y = 10;
		this.maxVelocity.y = 200;
		
		// Set max velocity for x to limit speed of character
		this.maxVelocity.x = 200;
		
		
		
		
		
		
	}
		
	override public function update(elapsed:Float):Void
	{
		//////////////////////////
		// Basic input handling //
		//////////////////////////

		var leftPressed:Bool = FlxG.keys.pressed.LEFT;
		var rightPressed:Bool = FlxG.keys.pressed.RIGHT;
		var upPressed:Bool = FlxG.keys.pressed.UP;
		var downPressed:Bool = FlxG.keys.pressed.DOWN;
		var spaceJustPressed:Bool = FlxG.keys.justPressed.SPACE;
		
		// Here are some *very* basic examples of how to respond to input.
		//  You can do a lot more here to make the game feel much better.
		if (leftPressed) { 				// Move left
			this.acceleration.x = -50;
		} else if (upPressed) { 		// Move up
			 this.acceleration.y = -50;
		} else if (rightPressed) { 		// Move right
			this.acceleration.x = 50; 	
		} else if (downPressed) { 		// Move down
			this.acceleration.y = 50;
		}else { 						// no action
			this.velocity.set(0, 0);
			this.acceleration.set(0, 0);
		}
		
		if (spaceJustPressed) {
			colorCycle = colorCycle + 1;
			if (colorcycle = 0){
			this.color = 0x663456;
			x = x + 1
			}else if (x = 1){
				this.color = 0x663456;
				x = x + 1	
				}
			}
			
			//this.velocity.y = -100;
		}

		
		super.update(elapsed);
	}
}