package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxColor;


/**
 * ...
 * @author Rich Russell
 */
class Ground extends FlxSprite 
{
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		this.makeGraphic(200, 10, FlxColor.GRAY);
	}
	
}