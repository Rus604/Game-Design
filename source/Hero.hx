package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ...
 */
class Hero extends FlxSprite 
{
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		this.makeGraphic(50, 50);
		
		this.velocity.set(3, 3);
	
	}
		
	override public function update(elapsed:Float):Void
	{

		super.update(elapsed);	
		this.color.setRGB(Std.int(this.x), Std.int(this.y), Std.int(this.x +this.y));
	
	}
	
}