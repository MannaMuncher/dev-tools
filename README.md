# dev-tools for GTA5

![version](https://img.shields.io/badge/version-1.0.0-blue)
![game](https://img.shields.io/badge/game-GTA5-green)

dev-tools is a utility module for GTA5 that facilitates development by providing essential logging functions and useful commands for easier game modifications and testing.

## Features

- **Common Logs**: Enable or disable logging of game states like aiming, vehicles, cameras, and more.
- **Give Weapon Command**: Quickly get specified weapons in the game.
- **Configurable**: Modify logging rate and other settings via a shared configuration file.

## Installation

1. Place the `dev-tools` folder in your resources directory.
2. Add `start dev-tools` to your `server.cfg` file.

## Usage

**Logs**:

If `Config.EnableCommonLogs` is set to `true` in `shared.lua`, the script will periodically print game states like:

- Is the aiming cam active?
- Is the player free aiming?
- Is the player in any vehicle?
- Is the player doing a driveby?
- ...and more.

**Commands**:

- `giveweapon`: Gives the player the weapons specified in the `weapons_to_add` array in `client.lua`.

## Configuration

You can modify the logging rate and other settings in the `shared.lua` file.

## Author

MannaMuncher  
📧 Email: admin@bloodshotstudios.com

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
