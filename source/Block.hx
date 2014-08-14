package;

import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Block extends FlxSprite {

	public function new(xt:Int = 0, yt:Int = 0) {
		super(xt * 16, yt * 16);
		makeGraphic(16, 16, FlxColor.BLUE);
		acceleration.y = 400;
	}
	
	public override function update():Void {
		//Uncomment it, to fix it. But I think it's just a hack. And the main problem in the flixel collision.
		/*
		if (isTouching(FlxObject.FLOOR)) {
			acceleration.y = 0;
		} else {
			acceleration.y = 400;
		}
		*/
		super.update();
	}
	
}