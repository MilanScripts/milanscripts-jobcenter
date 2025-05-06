
# **MilanScripts Job Center (ESX + ox_lib)**

A FiveM job center system that allows players to interact with an NPC to choose their job from a menu. The script supports both **E-key interaction** and **ox_target**, configurable job titles and descriptions, anti-abuse features, and a customizable map blip.

## **Preview Screenshots**

### NPC Interaction
![NPC Preview](https://milanscripts.vercel.app/uwv-1.png)

### Job Menu UI
![UI Preview](https://milanscripts.vercel.app/uwv-2.png)

## **Features**

- **NPC Interaction**: The NPC will appear on the map and players can interact with it to open the job menu.
- **Key or ox_target**: You can toggle between using the **E key** or **ox_target** to interact with the NPC.
- **Customizable Jobs**: Easily configure job titles and descriptions directly in `config.lua`.
- **Anti-Abuse**: Choose between **dropping** a player or triggering a custom **ban** if they try to exploit the system.
- **Map Blip**: The job center is marked on the map with a configurable blip.

## **Installation**

1. Download or clone this repository into your server’s resources directory.
2. Add the following to your `server.cfg`:

    ```bash
    start your-resource-name
    ```

3. Edit `config.lua` to customize the NPC coordinates, job details, anti-abuse settings, and the use of **ox_target** or the **E key**.

4. Make sure **ox_lib** and **es_extended** are installed on your server. If you don't have them, you can get them here:
    - [ox_lib](https://github.com/overextended/ox_lib)
    - [es_extended](https://github.com/ESX-Org/es_extended)

## **Configuration**

You can configure the following in the `config.lua`:

- **NPC Settings**: Model, coordinates, scenario (animations), and more.
- **Job List**: Add or remove jobs, change job names, titles, and descriptions.
- **Interaction Mode**: Choose between E-key or ox_target.
- **Anti-Abuse**: Select between dropping players or using a custom ban trigger for any suspicious behavior.
- **Blip Settings**: Enable or disable the map blip, and adjust its properties (color, scale, label).

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

## **Localization**

The script supports multiple languages via JSON locale files:

- **English** (`locales/en.json`)
- **Dutch** (`locales/nl.json`)

You can add additional languages by creating new JSON files in the `locales/` folder.

### Example: Localization (`locales/en.json`)
```json
{
  "open_menu": "Talk to Job Center",
  "menu_title": "Job Center"
}
```

### Example: Localization (`locales/nl.json`)
```json
{
  "open_menu": "Praat met het Jobcenter",
  "menu_title": "Banen Centrum"
}
```

## **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
