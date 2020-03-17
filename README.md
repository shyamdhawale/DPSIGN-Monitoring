# Screenly OSE Monitoring

![Manage Monitoring](http://www.atworkz.de/_git/monitor/manage2.png)

- [Intro](#what-is-this)
- [Features](#Features)
- [Bugs](#Bugs)
- [Requirements](#requirements)
- [Installation](#installation)
- [Update](#update)
- [Login](#login)
- [Bash Controll](#bash-controll)


## What is this?
Screenly OSE Monitoring is a web-based application that is simultaneously installed on a Screenly OSE Player. With this tool, you can manage multiple OSE players via one interface.

In addition to its current display status, you can also manage the assets of a player. It is possible to activate or deactivate assets, add new ones, edit or simply delete them.

By installing an add-on on each player, it is also possible to display a "live feed" of the player's output. This will then be displayed in the overview, as well.


![Screenshot show](http://www.atworkz.de/_git/monitor/manage.png)

## Features

<img align="right" src="http://www.atworkz.de/_git/monitor/monitoring.png">

+ Easy administration
+ Simple overview of all players
+ Quick overview if the player is online or not
+ Add-on for displaying the player’s output remotely
+ [NEW] Managing Assets
+ [NEW] Add Assets
+ [NEW] Edit Assets
+ [NEW] New Design
+ [NEW] Monitoring Token
+ [NEW] Bash Tool
+ [NEW] Screenshots are stored in the RAM
+ [UPDATE] Performance
+ [UPDATE] Control Assets
+ [UPDATE] screenshot add-on

## Bugs
None

---

## Requirements
+ RaspberryPi 3B+
+ PHP 7.x
+ SQLite 3.x
+ Ansible

## Installation
Very simple installation:

1. Connect to the player via SSH or terminal (ctrl+alt+F1)
2. Copy this line and execute it
```bash
bash <(curl -sL http://screenly-monitor.atworkz.de)
```
3. Answer the questions and installation will be start (This may take a while - Don't worry)
4. Done

---

## Update
For the update you only have to run the installer again.
The installer checks if there is an old installation and saves it if necessary.
From version 2.0 there are changes to the database structure which is prepared for future updates and no longer needs to be saved.

But please note that the Add-on may have to be reinstalled on the players. (Current for all older versions before version 2.0)

### Monitoring
```bash
bash <(curl -sL http://screenly-monitor.atworkz.de)
```

### Add-on
Link over Webfrontend or this:
```bash
bash <(curl -sL https://raw.https://github.com/shyamdhawale/DPSIGN-Monitoring/master/assets/tools/addon.sh)
```

## Login
After the installation is the default login:

http://[screenly-ip-address]:9000

Username: demo

Password: demo


![Monitoring Overview](http://www.atworkz.de/_git/monitor/screens.png)

## Bash Controll
Since version 2.0 there is a small possibility to update or check ose-monitoring via bash.
For more info check:
```bash
ose-monitoring --help
```
