import funkin.play.PlayState;
import funkin.play.event.ScriptedSongEvent;
import funkin.modding.module.Module;
import funkin.modding.module.ModuleHandler;
import funkin.util.ReflectUtil;

/* Script by Greeny3483
    * Allows the girlfriend to sing instead of the opponent.
    * Like in the song Slaybells.
    * Some code used is from Indie Cross V-Slice Port by @jarekboho
*/

class GirlfriendSingEvent extends ScriptedSongEvent {

	public function new() {
		super('Girlfriend Sing');
	}

	override function getEventSchema() {
		return [
			{
				name: "action",
				title: "Action",
				type: "enum",
				defaultValue: "swap",
				keys: [
					"Switch to GF" => "swap",
					"Return to Opponent" => "normal"
				],
			}
		];
	}

	override function handleEvent(data) {
		if (PlayState.instance == null || PlayState.instance.currentStage == null) return;
		if (PlayState.instance.isMinimalMode) return;

		GirlfriendSingHandler.handleGirlfriendSing();
	}

	override function getTitle() {
		return "Girlfriend Sing";
	}

	function getValue(dataValue:Dynamic, field:String, def:Dynamic) {
		if (dataValue == null) return def;
		var value = ReflectUtil.getAnonymousField(dataValue, field);
		if (value == null)
			return def;
		else
			return value;
	}
}
class GirlfriendSingHandler extends Module {

    var singANIM = ['singLEFT', 'singDOWN', 'singUP', 'singRIGHT']; 
	var isGirlfriendSinging:Bool = false;

	public function new() {
		super("girlfriend-sing-handler");
	}

	public static function handleGirlfriendSing(action:String) {
		switch (action) {
			case "swap":
				isGirlfriendSinging = true;
			case "normal":
				isGirlfriendSinging = false;
			default:
				return;
		}
	}

	override function onNoteHit(event:HitNoteScriptEvent):Void {
		super.onNoteHit(event);

		if (isGirlfriendSinging) {
		    if (!event.note.noteData.getMustHitNote()) {
				PlayState.instance.currentStage.getGirlfriend().playSingAnimation(event.note.noteData.getDirection(), true);
		    }
		}
	}
}