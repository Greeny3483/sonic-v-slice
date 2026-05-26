# TODO - EXEHud.hxc Recode

## Task Requirements:
1. Do not use "ps". Refer to PlayState.instance directly instead.
2. Add Constants for the health bar positions, making them easily modifiable
3. Remove logic containing "isWideScreenEnabled"
4. Make this script look clean

## Steps to Complete:
- [ ] 1. Add Constants class with health bar position constants
- [ ] 2. Replace all `var ps = safePlayState()` and `ps.` with `PlayState.instance`
- [ ] 3. Remove `isWideScreenEnabled` variable and related logic
- [ ] 4. Update health bar positioning to use new constants
- [ ] 5. Clean up code and formatting

## Edits Required:
- Read EXEHud.hxc file
- Add Constants at top of class
- Remove safePlayState() function (no longer needed)
- Remove isWideScreenEnabled usage in setupPositioning()
- Update onPlayStateEnter() to use constants and PlayState.instance
- Update updatePixelNumbers() to use PlayState.instance directly
