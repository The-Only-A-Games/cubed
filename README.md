
# Cubed – 2D Shooter Game Plan

## Game Overview
**Cubes** is a 2D side-view shooter game where players control square characters that shoot projectiles at each other. The game is designed to be simple, fast-paced, and engaging. All characters, obstacles, and projectiles are represented as cubes (squares) for a minimalist aesthetic.

## Core Gameplay
- **Player Control**:  
  - Move left/right using arrow keys or `A/D`.
  - Jump using `Space`.
  - Aim with the mouse cursor (or fixed forward direction).
  - Shoot using `Left Mouse Button` or `Ctrl`.
- **Enemies**:  
  - AI-controlled cubes that move, jump, and shoot at the player.
  - Different behaviors: patrol, chase, dodge.
- **Projectiles**:  
  - Straight-line bullets.
  - Independent movement from the shooter.
  - Destroy cubes on impact.

## Game Mechanics
- **Health System**: Each cube has a health value; projectiles reduce health.
- **Damage & Death**:  
  - Cube dies when health reaches zero.
  - Player respawns after a short delay.
- **Physics**:  
  - Gravity affects jumping and falling.
  - Basic collision detection for platforms, walls, and obstacles.
- **Power-ups (Optional)**:  
  - Health packs
  - Faster shooting
  - Extra damage

## Level Design
- **Single Side-Scrolling Level**:
  - Platforms of varying heights.
  - Obstacles and gaps to jump over.
  - Some cover to avoid enemy bullets.
- **Boundaries**:  
  - Prevent player and enemies from leaving the screen.

## Art & Style
- **Visual Style**: Minimalist, all square shapes.
- **Colors**:  
  - Player: Blue cube  
  - Enemies: Red cubes  
  - Projectiles: Yellow  
  - Platforms: Gray  
- **Background**: Simple gradient or solid color to contrast cubes.

## Audio
- **Sound Effects**:  
  - Shooting  
  - Hit / damage  
  - Cube death  
  - Jump
- **Background Music**: Optional looping chiptune or electronic track.

## Controls
| Action      | Keyboard/Mouse |
|------------|----------------|
| Move Left  | A / Left Arrow |
| Move Right | D / Right Arrow|
| Jump       | Space          |
| Shoot      | Left Mouse / Ctrl |
| Aim        | Mouse Pointer  |

## Technical Requirements
- **Engine**: Godot / Unity / Phaser / any 2D engine
- **Language**: GDScript / C# / JavaScript
- **Screen Resolution**: 1920x1080 (scalable)
- **Physics**: 2D collision, rigidbody movement

## Features Roadmap
1. **MVP (Minimum Viable Product)**
   - Player movement and shooting
   - Enemy AI with basic shooting
   - Single level with platforms
   - Health system and death
2. **Enhancements**
   - Multiple enemy types
   - Power-ups
   - Score and leaderboard
   - Particle effects for shooting/hits
3. **Polish**
   - Improved AI behavior
   - Background music
   - UI (health bars, score display)
   - Game over / restart system

## Notes
- Focus on simple, readable code for easier expansion.
- Use object pooling for projectiles to optimize performance.
- Modular design: separate player, enemy, and projectile scripts.
