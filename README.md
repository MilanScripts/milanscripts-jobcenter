# MilanScripts Job Center | ESX + ox_lib

Welcome to the MilanScripts Job Center! This script is designed for FiveM servers and allows players to interact with an NPC to select their job from a menu. It supports **E-key interaction** or **ox_target**, customizable job titles and descriptions, anti-abuse features, and a configurable map blip.

> [!IMPORTANT]  
> Ensure you have **ox_lib** and **es_extended** installed on your server before using this script. Links to these dependencies are provided below.

## Features ✨

- 🗺️ **NPC Interaction** | Players can interact with an NPC to open the job menu.
- 🔑 **Key or ox_target** | Toggle between **E-key** or **ox_target** for interaction.
- 🛠️ **Customizable Jobs** | Easily configure job titles, descriptions, and more in `config.lua`.
- 🛡️ **Anti-Abuse** | Drop players or trigger a custom ban for exploit attempts.
- 📍 **Map Blip** | Mark the job center on the map with a customizable blip.

## Upcoming Features 🚀

- 🌐 **Multi-Language Support** | Expand localization options for more languages.
- 🖼️ **Custom UI Themes** | Personalize the job menu interface.

## Installation 🛠️

To get started with this project, follow these steps:

1. Clone or download this repository into your server’s `resources` directory.
2. Add the following line to your `server.cfg`:

    ```bash
    start milanscripts-jobcenter
    ```

3. Edit `config.lua` to customize NPC settings, job details, anti-abuse options, and interaction mode.
4. Ensure the following dependencies are installed:
    - [ox_lib](https://github.com/overextended/ox_lib)
    - [es_extended](https://github.com/ESX-Org/es_extended)

## Usage 📖

Once installed, players can interact with the NPC to open the job menu. You can configure the following in `config.lua`:

| Option            | Description                                      |
|-------------------|--------------------------------------------------|
| **NPC Settings**  | Model, coordinates, animations, and more.        |
| **Job List**      | Add or remove jobs, change names and descriptions. |
| **Interaction**   | Choose between **E-key** or **ox_target**.       |
| **Anti-Abuse**    | Drop players or trigger a custom ban.            |
| **Blip Settings** | Enable/disable the map blip and adjust its properties. |

### Example: Customizing Jobs in `config.lua`

```lua
Config.Jobs = {
    {
        name = 'police',
        label = 'Police',
        description = 'Uphold the law.'
    },
    {
        name = 'mechanic',
        label = 'Mechanic',
        description = 'Fix and upgrade vehicles.'
    },
    {
        name = 'taxi',
        label = 'Taxi',
        description = 'Drive people around.'
    },
    {
        name = 'ambulance',
        label = 'Ambulance',
        description = 'Help the injured.'
    }
}
```

## Localization 🌍

The script supports multiple languages via JSON locale files. You can add additional languages by creating new JSON files in the `locales/` folder.

### Example: Localization (`locales/en.json`)

```json
{
  "open_menu": "Talk to Job Center",
  "menu_title": "Job Center"
}
```

## Credits 🙏

This project was created by **MilanScripts**

## License 📜

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact 📬

If you have any questions or feedback, feel free to reach out to me on [Discord](https://discord.gg/TzxdeAzGSe).

Thank you for using MilanScripts Job Center! 🎉