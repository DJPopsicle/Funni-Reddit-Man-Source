package;
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class GoodEndingState extends MusicBeatState
{

	// public var ending;
	// var _goodEnding:Bool = false;
	
	
	// public function new(goodEnding:Bool = true) 
	// {
	// 	
	// 	_goodEnding = goodEnding;
		
	// }
	// super();

	override public function create():Void 
	{

		super.create();
		// var ending:String;
		var end:FlxSprite = new FlxSprite(0, 0);
		end.loadGraphic(Paths.image('juki/endings/goodEnding'));
		FlxG.sound.playMusic(Paths.sound("juki/endings/goodEnding"),1,false);
		add(end);
		FlxG.camera.fade(FlxColor.BLACK, 0.8, true);
		
		
		new FlxTimer().start(8, endIt);
		
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.ENTER){
			endIt();
		}
		
	}
	
	
	public function endIt(e:FlxTimer=null){
		trace("ENDING");
		FlxG.switchState(new StoryMenuState());
	}
	
}
