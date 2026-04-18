## [0.4.0] - 2026-04-18

#### Added:

- **Songs:**
  
  - **Substantial**
  
  - **Milk (OG)**

#### Changes:

- **Furnace** is no longer visible during **Prey**'s starting cutscene **[MOBILE]**

- **Sonic.EXE (GENESIS - ENCORE)** now always is in the proper position in **You Can't Run *ENCORE*** **[MOBILE]**

- The video in **You Can't Run *ENCORE*** now pauses when the game is paused

- The position of the video in **You Can't Run *ENCORE*** now dynamically matches the screen width

## [0.3.2] - 2026-04-17

#### Changes:

- **Milk**'s stage ground expansion no longer applies to PC

- The size of the red vignette in **You Can't Run** and **You Can't Run ENCORE** is now dynamic

- 'Fatal Error' popups can now be pressed **[MOBILE]**

- The healthbar in **Fatality** now is in the proper position when on downscroll or mobile

## [0.3.1] - 2026-04-15

#### Changes:

- The size of the red vignette in **You Can't Run** and **You Can't Run ENCORE** is now dynamic

- **Static Notes** no longer cause an error

- The **'EXTRAS'** difficulty graphic is now visible **[MOBILE]**

- **Sunshine**'s strumline now properly reappears **[MOBILE]**

- Expanded the stage ground in **Milk** **[MOBILE]**

- The normal stage background in **Triple Trouble** is no longer animated to save memory

- **Fleetway Super Sonic** no longer teleports into position during the cutscene

- **Fatality** no longer shows errors

- The medal for completing **Vs. Needlemouse** now displays the proper name

## [0.3.0] - 2026-04-14

#### Added:

- **Songs:**
  
  - **Milk**
  
  - **Sunshine**
  
  - **Soulless**
  
  - **You Can't Run *ENCORE***
  
  - **Endless *ENCORE***

- **Options:**
  
  - **Camera Shake**
    *(Toggles opponent + scripted camera shakes)*
  
  - **Window Movement**
    *(Allows movement of the game window on PC)*
  
  - **Freeplay Cutscenes**
    *(Allows story cutscenes to appear in freeplay)*
  
  - **Song Transitions**
    *(Toggles transitions to other songs in freeplay)*
  
  - **GENESIS Mode**

- **Medals:**
  
  - **Faster Than Fear**
  
  - **Beyond the Black Sun**
  
  - **I Die Hard**
  
  - **Silent Night**

- **General:**
  
  - Added pixel (freeplay) icons for:
    
    - **Sonic.EXE (Act 1)**
    
    - **Sonic.EXE (Act 2)**
    
    - **Sonic.EXE (Act 3)**
  
  - Added custom death screens for the following characters:
    
    - **Sonic the Hedgehog**
    
    - **Tails (Fight or Flight)**
    
    - Other playable characters (**Sonic.EXE (Christmas)**, BF variants) will use the default death screen
  
  - Added the following song transitions:
    
    - **Faker** to **Black Sun**
    - **Prey** to **Fight or Flight**
    - **Relax** to **Round-A-Bout**
    - **Round-A-Bout** to **Spike Trap**
  
  - Added use of the 'Camera Bop' event to all songs
  
  - Added an in-game credits listing
  
  - Added the following freeplay backgrounds:
    
    - **Soulless**
    
    - **Fight or Flight**

#### Changes/Fixes:

- **General**
  
  - Compatibility with version **0.8.4** of the game
  
  - Removed **ENCORE** difficulty/variation, moved songs to the **ERECT** difficulty/variation
  
  - Changed the names of all stages for consistency
  
  - Stage directory and script names are now consistent
  
  - All songs (from this mod) now are all under the same album. Depending on the song, the 'OFFICIAL OST' text will change

- **Songs:**
  
  - Fixed haxe logo appearing on song start
  
  - **Too Slow**
    
    - Fixed crashing on song start **[MOBILE]**
    
    - Fixed modchart not stopping properly after restarting or quitting the song
    
    - Added camera shake at the end of the song
  
  - **You Can't Run**
    
    - Fixed Screen Static not disabling when the option is turned off
    
    - Fixed the vignette + camera shake not pausing during the GENESIS area
    
    - Added 'Strumline Spin' events
    
    - Vignette now covers HUD elements as well
    
    - Vignette now appears more rapidly
    
    - Added jumpscare at the beginning of the song
    
    - Added camera flashes & zooms
    
    - Smoothed transitions between sections of gameplay
    
    - The player now uses the proper icon
  
  - **Cycles**
    
    - Chart more accurately follows the vocals
  
  - **Faker**
    
    - Improved screen static at the end of the song
    
    - Fixed errors
  
  - **Chaos**
    
    - Improved loading times
    
    - Fixed quick time input on mobile
  
  - **Prey**
    
    - Adjusted background scrolling logic
  
  - **Final Escape (KIRB0 Mix)**
    
    - Separated song vocals
    
    - Changed song's name on the freeplay menu
  
  - **Fatality**
    *(Changes by Comedy Lost)*
    
    - Reworked 'Fatal Error' popups
    
    - Added custom window mechanics
    
    - Fixed healthbar being improperly positioned
  
  - **Slaybells**
    
    - Fixed opponent animations
    
    - Removed the **Requital** stage prop
    
    - Removed the **Luther** stage prop
    
    - Song moved to the **EXTRAS** variation
  
  - **Too Slow *ENCORE***
    
    - Increased scroll speed
    
    - Separated song vocals
    
    - Added camera shake at the end of the song
  
  - **Personnel (Serious Mix)**
    
    - Added an effect
  
  - ***EXTRA* Difficulty**
    
    - Added missing rank screen tag

- **Notekinds:**
  
  - **Static Note**
    
    - Note is now selectable through the Chart Editor
    
    - Fixed offset notes on downscroll
    
    - Optimized sprites
  
  - **Phantom Note**
    
    - Note is now selectable through the Chart Editor
    
    - Fixed an error when a note kills the player
    
    - Missing a note no longer adds to the player's visible miss count
    
    - Notes take longer to kill the player
    
    - Fixed offset notes on downscroll

- **Optimizations:**
  
  - Cleaned the entire file structure of the mod
  
  - Recoded all songs/stages
  
  - Certain events were moved into dedicated systems:
    
    - **EXEScripts**
      
      - Jumpscares
      
      - Static/Glitches
      
      - Cinematics
    
    - **EXEShaders** - shader logic
    
    - **EXEOverlays** - overlay systems
    
    - **EXEStrumlines** - strumline/note events
    
    - **EXEIntros** - song intro cards/other intros
      
      - Song intros now use a semi-automated system.
  
  - Extra character animations are now preloaded through their respective character scripts rather than song scripts

- **Improvements:**
  
  - The cinematic script functions have been revamped
  
  - Changed **Sonic.EXE (Fake)**'s health icons *(changes by **@Dibujos Creativos**)*
  
  - **Sonic.EXE (Act 2)**'s screen shaking logic is now located within the character script
  
  - Screen static now has a random set transparency
  
  - The 'Custom Song Lyrics' event has been replaced with the newly-added subtitiles system
  
  - Custom intro text now adds on to the default intro text, rather than replacing it
  
  - Fixed various crediting issues *(#8, **@ThePootisBird**)*
  
  - Song intro cards now only appear after cutscenes
  
  - Reworked options menu
    
    - Options that seemed pointless and/or bloated the options menu were removed:
      
      - **Blood Splashes**
      
      - **Encore Skins**
      
      - **Song Intro Cards**
      
      - **Change Aspect Ratio**
  
  - Adjusted song order in freeplay
  
  - **VS SONIC.EXE** is now the only week (from this mod) in story mode
  
  - Redid all freeplay backgrounds using the [Freeplay Background Template by ElastedAlorian](https://gamebanana.com/tools/21164)
