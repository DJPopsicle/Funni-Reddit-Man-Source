package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
// import Controls.KeyboardScheme;
// import Controls.Control;
import flixel.input.gamepad.FlxGamepad;
import lime.app.Application;

class CautionState extends MusicBeatState
{
	public static var leftState:Bool = false;

	public static var needVer:String = "IDFK LOL";
	public static var currChanges:String = "dk";
	
	private var bgColors:Array<String> = [
		'#314d7f',
		'#4e7093',
		'#70526e',
		'#594465'
	];
	private var colorRotation:Int = 1;

	override function create()
	{
		super.create();
		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuDesat', 'shared'));
		bg.scale.x *= 1.55;
		bg.scale.y *= 1.55;
		bg.screenCenter();
		add(bg);
		
		var kadeLogo:FlxSprite = new FlxSprite(FlxG.width, 0).loadGraphic(Paths.image('KadeEngineLogo'));
		kadeLogo.scale.y = 0.3;
		kadeLogo.scale.x = 0.3;
		kadeLogo.x -= kadeLogo.frameHeight;
		kadeLogo.y -= 180;
		kadeLogo.alpha = 0.8;
		add(kadeLogo);
		kadeLogo.visible = false;
		
		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"This mod uses a new mechanic!\nYou may lag, and don't move or fullscreen the window. "
			+ "\n\nDoing so can mess up the modcharts.\n\n"
			// + currChanges
			// + "\n& more changes and bugfixes in the full changelog"
			// + "\n\nPress Space to go to options\nor ESCAPE to play the mod."
			+ "\n\nPress ENTER to play the mod.",
			32);
		
		txt.setFormat("VCR OSD Mono", 32, FlxColor.fromRGB(200, 200, 200), CENTER);
		txt.borderColor = FlxColor.BLACK;
		txt.borderSize = 3;
		txt.borderStyle = FlxTextBorderStyle.OUTLINE;
		txt.screenCenter();
		add(txt);
		
		FlxTween.color(bg, 2, bg.color, FlxColor.fromString(bgColors[colorRotation]));
		FlxTween.angle(kadeLogo, kadeLogo.angle, -10, 2, {ease: FlxEase.quartInOut});
		
		new FlxTimer().start(2, function(tmr:FlxTimer)
		{
			FlxTween.color(bg, 2, bg.color, FlxColor.fromString(bgColors[colorRotation]));
			if(colorRotation < (bgColors.length - 1)) colorRotation++;
			else colorRotation = 0;
		}, 0);
		
		new FlxTimer().start(2, function(tmr:FlxTimer)
		{
			if(kadeLogo.angle == -10) FlxTween.angle(kadeLogo, kadeLogo.angle, 10, 2, {ease: FlxEase.quartInOut});
			else FlxTween.angle(kadeLogo, kadeLogo.angle, -10, 2, {ease: FlxEase.quartInOut});
		}, 0);
		
		new FlxTimer().start(0.8, function(tmr:FlxTimer)
		{
			if(kadeLogo.alpha == 0.8) FlxTween.tween(kadeLogo, {alpha: 1}, 0.8, {ease: FlxEase.quartInOut});
			else FlxTween.tween(kadeLogo, {alpha: 0.8}, 0.8, {ease: FlxEase.quartInOut});
		}, 0);
	}

	override function update(elapsed:Float)
	{
		// if (controls.ACCEPT)
		// {
		// 	FlxG.switchState(new OptionsMenu());
		// }
		var gamepad:FlxGamepad = FlxG.gamepads.lastActive;
		var pressedEnter:Bool = FlxG.keys.justPressed.ENTER;

		if (gamepad != null)
		{
			if (gamepad.justPressed.START)
				pressedEnter = true;

			#if switch
			if (gamepad.justPressed.B)
				pressedEnter = true;
			#end
		}
		if (pressedEnter)
		{
			leftState = true;
			// FlxG.switchState(new MainMenuState());
			FlxG.camera.fade(FlxColor.BLACK, 1, false);
			FlxTween.tween(camera,{ y: 500},1,{ease: FlxEase.expoIn, onComplete: function(FlxTween:FlxTween) {
				// LoadingState.loadAndSwitchState(new CautionState());
				// FlxG.switchState(new MainMenuState());
				FlxG.switchState(new TitleState());
			}});
			// FlxG.switchState(new TitleState());
		}
		
		super.update(elapsed);
	// 	new FlxTimer().start(2, endIt);
	// }
	// public function endIt(e:FlxTimer=null){
	// 	trace("STARTING GAME");
	// 	FlxG.switchState(new TitleState());
	}
}
