package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tile.FlxTilemap;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.util.FlxStringUtil;

//Sorry for the code formating. I am a java programmer.
class PlayState extends FlxState {
	
	private var level:FlxTilemap;
	private var blocks:FlxTypedGroup<Block>;
	
	override public function create():Void {
		super.create();
		level = new FlxTilemap();
		level.loadMap(FlxStringUtil.imageToCSV("assets/map.png", false, 1), "assets/tiles.png", 16, 16);
		level.follow();
		add(level);
		
		blocks = new FlxTypedGroup<Block>();
		add(blocks);
		
		add(new FlxText(30, 10, 0, "Press SPACE to spawn a new block"));
	}

	override public function update():Void {
		super.update();
		
		if (FlxG.keys.anyJustPressed(["SPACE"])) {
			blocks.add(new Block(7, 0));
		}
		
		FlxG.collide();
	}	
		
	override public function destroy():Void {
		super.destroy();
	}
}