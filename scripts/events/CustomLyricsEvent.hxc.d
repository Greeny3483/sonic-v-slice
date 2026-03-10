import funkin.play.PlayState;
import funkin.play.event.SongEvent;
import funkin.data.event.SongEventSchema;
import flixel.text.FlxText;
import flixel.text.FlxTextBorderStyle;
import funkin.Preferences;
import funkin.Paths;
import funkin.modding.module.ModuleHandler;

class CustomLyricsEvent extends SongEvent
{
    private var lyrics:FlxText;

    public function new()
    {
        super( 'Lyrics' );
    }
    
    public override function handleEvent( data:SongEventData ):Void
    {
        var enableLyrics = ModuleHandler.getModule("EXEOptions").scriptGet("dolyrics");
        if (!enableLyrics) return;

		var state = PlayState.instance;
		if ( state == null ) return;

        var lyric:String = data.value.lyric != null ? data.value.lyric : "";
        var font:String = data.value.font != null ? data.value.font : "VCR_OSD_MONO.ttf";
        var size:Int = data.value.size != null ? data.value.size : 32;
        var color:String = data.value.color != null ? data.value.color : "#FFFFFF";
        var outlineColor:String = data.value.outlineColor != null ? data.value.outlineColor : "#000000";
        var borderSize:Float = data.value.borderSize != null ? data.value.borderSize : 1.5;
        var alignment:String = data.value.alignment != null ? data.value.alignment : "center";
        var width:Int = data.value.width != null ? data.value.width : 1200;
        var cameraType:String = data.value.camera != null ? data.value.camera : "hud";
        var customX:Float = data.value.x != null ? data.value.x : 0;
        var customY:Float = data.value.y != null ? data.value.y : 0;
        var useHealthBarPosition:Bool = data.value.useHealthBarPosition != null ? data.value.useHealthBarPosition : true;
        var letterSpacing:Float = data.value.letterSpacing != null ? data.value.letterSpacing : -1.0;

        if ( lyrics != null )
        {
            lyrics.destroy();
        }

        lyrics = new FlxText( 0, 0, width, "", size );
        
        var textColor:Int = parseColor(color);
        var borderColor:Int = parseColor(outlineColor);
        
        lyrics.setFormat( Paths.font(font), size, textColor, alignment, FlxTextBorderStyle.OUTLINE, borderColor );
        lyrics.borderSize = borderSize;
        lyrics.letterSpacing = letterSpacing;
        
        switch(cameraType.toLowerCase()) {
            case "cutscene":
                lyrics.cameras = [state.camCutscene];
            case "hud":
                lyrics.cameras = [state.camHUD];
            case "game":
                lyrics.cameras = [state.camGame];
            default:
                lyrics.cameras = [state.camHUD];
        }
        
        lyrics.alpha = 0;
        lyrics.zIndex = state.playerStrumline.zIndex + 20;
        
        if (useHealthBarPosition) {
            if (ModuleHandler.getModule('EXEOptions').scriptGet('exehud')) {
                lyrics.x = state.healthBar.x - 400;
            } else {
                lyrics.x = state.healthBar.x - 306;
            }
            if ( Preferences.downscroll )
            {
                lyrics.y = state.healthBar.y + 60;
            }
            else
            {
                lyrics.y = state.healthBar.y - 110;
            }
        } else {
            lyrics.x = customX;
            lyrics.y = customY;
        }

        lyrics.text = lyric;
        lyrics.alpha = 1;
        state.add( lyrics );

        if ( lyric == "" )
        {
            lyrics.text = "";
            lyrics.alpha = 0;
        }

        state.refresh();
    }

    private function parseColor(colorStr:String):Int
    {
        if (colorStr.charAt(0) == '#') {
            colorStr = colorStr.substring(1);
        }
        
        if (colorStr.length == 3) {
            var r = colorStr.charAt(0);
            var g = colorStr.charAt(1);
            var b = colorStr.charAt(2);
            colorStr = r + r + g + g + b + b;
        }
        
        if (colorStr.length == 6) {
            colorStr = "FF" + colorStr;
        }
        
        return Std.parseInt("0x" + colorStr);
    }

    public function getTitle():String
    {
        return "Lyrics";
    }

    public function getEventSchema():SongEventSchema
    {
        return [
            {
                name: 'lyric',
                title: 'Lyric Text',
                type: 'string',
                defaultValue: ""
            },
            {
                name: 'font',
                title: 'Font File',
                type: 'string',
                defaultValue: "VCR_OSD_MONO.ttf"
            },
            {
                name: 'size',
                title: 'Font Size',
                type: 'integer',
                defaultValue: 32
            },
            {
                name: 'color',
                title: 'Text Color (Hex)',
                type: 'string',
                defaultValue: "#FFFFFF"
            },
            {
                name: 'outlineColor',
                title: 'Outline Color (Hex)',
                type: 'string',
                defaultValue: "#000000"
            },
            {
                name: 'borderSize',
                title: 'Border Size',
                type: 'float',
                defaultValue: 1.5
            },
            {
                name: 'alignment',
                title: 'Text Alignment',
                type: 'string',
                defaultValue: "center"
            },
            {
                name: 'width',
                title: 'Text Width',
                type: 'integer',
                defaultValue: 1200
            },
            {
                name: 'camera',
                title: 'Camera Layer',
                type: 'enum',
                defaultValue: "hud",
                keys: [
                    "HUD Camera" => "hud",
                    "Cutscene Camera" => "cutscene"
                ]
            },
            {
                name: 'x',
                title: 'Custom X Position',
                type: 'float',
                defaultValue: 0
            },
            {
                name: 'y',
                title: 'Custom Y Position',
                type: 'float',
                defaultValue: 0
            },
            {
                name: 'useHealthBarPosition',
                title: 'Use Health Bar Position',
                type: 'bool',
                defaultValue: true
            },
            {
                name: 'letterSpacing',
                title: 'Letter Spacing',
                type: 'float',
                defaultValue: -1.0
            }
        ];
    }
}