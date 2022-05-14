# [FTB Presents Direwolf20 1.18](https://www.feed-the-beast.com/modpack/95_ftb_presents_direwolf20_1_18)
<!-- MarkdownTOC autolink="true" indent="  " markdown_preview="github" -->

- [Description](#description)
- [Requirements](#requirements)
- [Options](#options)
- [Adding Minecraft Operators](#adding-minecraft-operators)
- [Source](#source)

<!-- /MarkdownTOC -->

## Description


Docker Container for FTB Presents Direwolf20 1.18 Minecraft Modpack

The docker on first run will download the same version as tagged of FTB Presents Direwolf20 1.18 and install it.  This can take a while as the Forge installer can take a bit to complete.  You can watch the logs and it will eventually finish.

After the first run it will simply start the server.

## Requirements

* /data mounted to a persistent disk
* Make sure that the EULA  is set to `true`

## Options

These environment variables can be set at run time to override their defaults.

* JVM_OPTS "-Xms2048m -Xmx6144m"
* MOTD "A Minecraft (FTB Presents Direwolf20 1.18 1.0.0) Server Powered by Docker"
* LEVEL world
* LEVELTYPE ""

## Adding Minecraft Operators

Set the enviroment variable `OPS` with a comma separated list of players.

example:
`OPS="OpPlayer1,OpPlayer2"`

## Source
Github: https://github.com/Ratomas/direwolf20
Docker: https://hub.docker.com/r/ratomas/direwolf20