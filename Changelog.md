## [0.8.3] - 2026

#### Added:

**Songs:**

- **You Can't Run *ENCORE***

- **Sunshine**

- **Soulless**

- **Milk**

**Options:**

- **Camera Shake**
  *(Toggles opponent + scripted camera shakes)*

- **Window Movement**
  *(Toggles the new features in **Fatality**)*

- **Song Transitions**
  *(Toggles transitions to other songs from certain songs.)*

- **EXE: BONUS CONTENT**
  
  - **Extra Shaders**
    *(Toggles shaders not typically seen in some songs)*

**Medals:**

- **Faster Than Fear**
  *(Awarded for completing **ROUND 1**)*

- **Faster Than Fate**
  *(Awarded for completing **Final Escape**)*

- **Beyond the Black Sun**
  *(Awarded for completing **Faker** and **Black Sun**)*

- **I Die Hard**
  *(Awarded for completing **Prey** and **Fight or Flight**)*

**General:**

- Added freeplay icons for:
  
  - **Sonic.EXE (Act 1)**
  
  - **Sonic.EXE (Act 2)**
  
  - **Sonic.EXE (Act 3)**

- Added death screens for custom playable characters

- Added the 'Camera Bop' event to all songs

- Added the following freeplay backgrounds:
  
  - Soulless
  
  - Fight or Flight

#### Changes/Fixes:

- Compatibility with version **0.8.3** of the game

**Songs:**

- Fixed haxe logo appearing on song start

- **Too Slow**
  
  - Fixed crashing on song start (mobile)
  
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
* **Cycles**
  
  - Chart more accurately follows the vocals

* **Faker**
  
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

- **Too Slow *ENCORE***
  
  - Increased scroll speed
  
  - Separated song vocals
  
  - Added camera shake at the end of the song

- **Personnel (Serious Mix)**
  
  - Added an effect

- ***ENCORE* Difficulty**
  
  - Songs now display special text in the song intro card
  
  - Added missing rank screen tag

- ***EXTRA* Difficulty**
  
  - Added missing rank screen tag

**Notekinds:**

- **Static Note**
  
  - Note is now selectable through the Chart Editor
  
  - Fixed offset notes on downscroll
  
  - Notes are no longer animated

- **Phantom Note**
  
  - Note is now selectable through the Chart Editor
  
  - Fixed an error when a note kills the player
  
  - Notes no longer add to the player's visible miss count
  
  - Notes take longer to kill the player
  
  - Fixed offset notes on downscroll

**Optimizations:**

- Cleaned the entire file structure of the mod

- Recoded all songs/stages
* Certain events were moved into dedicated systems:
  
  - **EXEScripts**
    
    - Jumpscares
    
    - Static/Glitches
    
    - Cinematics
  
  - **EXEShaders** - shader logic
  
  - **EXEOverlays** - overlay systems
  
  - **EXEStrumlines** - strumline/note events
  
  - **EXEIntros** - song intro cards/other intros
    
    - Song intros now use a semi-automated system.

* Extra character animations are now preloaded through their respective character scripts rather than song scripts

**Improvements:**

- Changed **Sonic.EXE (Fake)**'s health icons *(changes by **@Dibujos Creativos**)*

- **Sonic.EXE (Act 2)**'s screen shaking logic is now located within the character script

- Screen static now has a random set transparency

- 'Custom Song Lyrics' have been replaced with the newly-added subtitiles system

- Custom intro text now adds on to the default intro text, rather than replacing it

- Fixed various crediting issues *(#8, **@ThePootisBird**)*

- Reworked options menu
  
  - Options that seemed pointless and/or bloated the options menu were removed
    
    - Blood Splashes
    
    - Encore Skins
    
    - Song Intro Cards
    
    - Change Aspect Ratio

- The OST text in freeplay now changes when on an EXE song

- Adjusted song order in freeplay

- Changed album cover for all songs

- **VS SONIC.EXE** is now the only week (from this mod) in story mode

- Redid all freeplay backgrounds using the [Freeplay Background Template by ElastedAlorian](https://gamebanana.com/tools/21164)

**Other:**

* Changed the names of all stages for consistency

* Stage directory and script names are now consistent
