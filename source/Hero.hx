package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ...
 */
class Hero extends FlxSprite 
{
	
	public function new(?X:Float=0, ?Y:Float=0, ?i, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		this.makeGraphic(50, 50);
		this.velocity.set(i*8, i+45);
		
	}
		
	override public function update(elapsed:Float):Void
	{
		this.color = 0x663456 & ((Std.int(this.x)* 512 + Std.int(this.y) *64 + Std.int(this.x +this.y) *16);
		
	    super.update(elapsed);	
	}
	
}