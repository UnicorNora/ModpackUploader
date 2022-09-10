# Settings for the ModpackUploader
# For details/help see: https://github.com/EndangeredNayla/MPTools

# The path to the main modpack folder. (the same folder as the mods folder is in)
# Running the modpack uploader from the main modpack folder: ("$PSScriptRoot" | Resolve-Path)
# Running the modpacker uploader from a subfolder: ("$PSScriptRoot/.." | Resolve-Path)
$INSTANCE_ROOT = ("$PSScriptRoot" | Resolve-Path)

# =====================================================================//
#  CURSEFORGE ACCOUNT SETTINGS
# =====================================================================//

$CURSEFORGE_USER = "MyCurseForgeUsername"

# For details see: https://www.curseforge.com/account/api-tokens
# Defined in secrets.ps1 
# $CURSEFORGE_TOKEN = 

# ProjectID can be found on the modpack's Curseforge Projects page, under "About This Project"
<<<<<<< Updated upstream
$CURSEFORGE_PROJECT_ID = 123456
=======
$CURSEFORGE_PROJECT_ID = 999999


#=====================================================================//
#  DEPENDENCIES URL
#=====================================================================//

# File name of the latest https://github.com/Gaz492/CFExporter/releases
$CFExporterDLWindows = "CFExporter-v2.0.8-windows-amd64.zip"
$CFExporterDLLinux = "CFExporter-v2.0.8-linux-amd64.tar.gz"
$CFExporterDLMacIntel = "CFExporter-v2.0.8-darwin-amd64.tar.gz"

# File name of the latest https://github.com/TheRandomLabs/ChangelogGenerator/releases
$ChangelogGeneratorDL = "ChangelogGenerator-2.0.0-pre10.jar"

# File name of the latest https://github.com/EndangeredNayla/ModpackDownloader-Next/releases
$ModpackDownloaderDLWindows = "ModpackDownloader-win32.zip"
$ModpackDownloaderDLLinux =  "ModpackDownloader-linux.zip"
$ModpackDownloaderDLMac = "ModpackDownloader-macOS.zip"
>>>>>>> Stashed changes

# =====================================================================//
#  MAIN MODPACK SETTINGS
# =====================================================================//

# This is the modpack name as seen in it's CurseForge url: https://www.curseforge.com/minecraft/modpacks/[enigmatica6]
$MODPACK_NAME = "MyModpack"

# Name of the Modpack in the ZIP File
$CLIENT_NAME = "MyModpack"

# Version Of The Modpack
$MODPACK_VERSION = "1.0.1"

# Last Version Of The Modpack
# Needed For Changelog Parsing
# Should be "$null" if this is the first release
$LAST_MODPACK_VERSION = "1.0.0"

# Which modloader the modpack uses
# Can be "forge" or "fabric"
# default: "forge"
$MODLOADER = "forge"

# =====================================================================//
#  CHANGELOG SETTINGS
# =====================================================================//

# Changelog Type
# Can be "markdown", "text" or "html"
$CLIENT_CHANGELOG_TYPE = "markdown"

# Changelog
# Must be a single string.
$CLIENT_CHANGELOG = "The Changelog is currently being written."

# =====================================================================//
#  CURSEFORGE PROJECT SETTINGS
# =====================================================================//

# Modpack's Minecraft Version
# @(6756) - is Minecraft 1.12.2
<<<<<<< Updated upstream
# @(8203) - is Minecraft 1.16.5
=======
# @(7722) - is Minecraft 1.15.2
# @(8134) - is Minecraft 1.16.4
# @(9008) - is Minecraft 1.18.2
>>>>>>> Stashed changes
# More can be found by running GetGameVersions
$GAME_VERSIONS = @(8203)

# Can be "alpha", "beta" or "release"
$CLIENT_RELEASE_TYPE = "beta"

#=====================================================================//
#  DEPENDENCIES
#=====================================================================//

# File name of the latest https://github.com/ModdingX/ModListCreator/releases
$CHANGELOG_GENERATOR_JAR = "ModListCreator-4.0.2-fatjar.jar"

# File name of the latest https://github.com/ModdingX/ModListCreator/releases
$MODLIST_CREATOR_JAR = "ModListCreator-4.0.2-fatjar.jar"

#=====================================================================//
#  CLIENT FILE SETTINGS
#=====================================================================//

$CLIENT_FILE_AUTHOR = "MyName"

$FOLDERS_TO_INCLUDE_IN_CLIENT_FILES = @(
    "config",
    "defaultconfigs",
    "kubejs",
    "local",
    "packmenu")

$CONFIGS_TO_REMOVE_FROM_CLIENT_FILES = @()

$FOLDERS_TO_REMOVE_FROM_CLIENT_FILES = @("local/ftbutilities", "resourcepacks")

#=====================================================================//
#  SERVER FILE SETTINGS
#=====================================================================//

$SERVER_FILES_FOLDER = "$INSTANCE_ROOT/server_files"

$SERVER_SETUP_CONFIG_PATH = "$SERVER_FILES_FOLDER/server-setup-config.yaml"

# =====================================================================//
#  MODULES
# =====================================================================//

<<<<<<< Updated upstream
# Toggle automatic building of the manifest zip on/off
=======
# Toggles CurseForge CLIENT Files Generation
>>>>>>> Stashed changes
# Default: $true
$ENABLE_CLIENT_FILE_MODULE = $true

# Toggle the modpack uploader on/off
# Setting this to $false will also disable the Server File and Changelog Generator Modules.
# Default: $true
$ENABLE_MODPACK_UPLOADER_CURSE_MODULE = $true

# Toggle server file feature on/off
# Default: $true
$ENABLE_SERVER_FILE_MODULE = $true

# Toggle serverstarter compatibility on/off
# This will update the "modpackUrl" in the file found at $SERVER_SETUP_CONFIG_PATH
# to point to your newly created client files on the CurseForge CDN.
# Default: $false
$ENABLE_SERVERSTARTER_MODULE = $false

<<<<<<< Updated upstream
# Toggle automatic changelog generator on/off
# This module requires an older modpack manifest zip to be present, 
# $LAST_MODPACK_VERSION must be set, and the manifest naming must be consistent.
# Default: $false
$ENABLE_CHANGELOG_GENERATOR_MODULE = $false
# Path to the ChangelogGenerator's output file
$CHANGELOG_PATH = "$INSTANCE_ROOT/changelogs/changelog_mods_$MODPACK_VERSION.md"

# Toggle creation of a modlist file on/off
# Default: $true
$ENABLE_MODLIST_CREATOR_MODULE = $true
# Path to the ModListCreator's output file
$MODLIST_PATH = "$INSTANCE_ROOT/changelogs/modlist_$MODPACK_VERSION.md"

# Toggle removal and re-download of jars on/off.
# Setting this to true will ensure that you always have the latest 
# Twitch Export Builder and ChangelogGenerator, but increases the
# amount of time this script takes to execute.
=======
# Toggles the Redownloadment or Thrid Party Dependencies Every Time you Conpile the Pack
>>>>>>> Stashed changes
# Default: $false
$ENABLE_ALWAYS_UPDATE_APPS = $false

<<<<<<< Updated upstream
# Toggles github release integration on/off.
# This will create a new release on your issue-tracker when using the modpack uploader.
=======
# Toggles Extra Logging on/off.
# Default: $false
$ENABLE_EXTRA_LOGGING = $true

# Toggles GitHub Changelog Generator integration on/off.
# Requires extensive setup, this is an advanced step.
>>>>>>> Stashed changes
# See below link for info:
# Default: $false
<<<<<<< Updated upstream
$ENABLE_GITHUB_RELEASE_MODULE = $false	

=======
$ENABLE_GITHUB_CHANGELOG_GENERATOR_MODULE = $false
$GITHUB_NAME = "MyName"
$GITHUB_REPOSITORY = "MyRepo"
$CHANGES_SINCE_VERSION = "1.0.0"
>>>>>>> Stashed changes

# =====================================================================//
#  ADVANCED
#  Do not change anything unless you
#  know what you are doing!
# =====================================================================//

# Syntax of the CLIENT ZIP File
$CLIENT_ZIP_NAME = "$CLIENT_NAME-$MODPACK_VERSION"

# Syntax of the Previous Versions CLIENT ZIP File
$LAST_MODPACK_ZIP_NAME = "$CLIENT_NAME-$LAST_MODPACK_VERSION"

# Default: "$CLIENT_NAME $MODPACK_VERSION"
$CLIENT_FILE_DISPLAY_NAME = "MyModpack $MODPACK_VERSION"

# Can be "markdown", "text" or "html"
# Default: $CLIENT_CHANGELOG_TYPE
$SERVER_CHANGELOG_TYPE = $CLIENT_CHANGELOG_TYPE

# Must be a single string. Use Powershell escaping for new lines etc. New line is `n and indent is `t
# Default: $CLIENT_CHANGELOG
$SERVER_CHANGELOG = $CLIENT_CHANGELOG

# Can be "alpha", "beta" or "release"
# Default: $CLIENT_RELEASE_TYPE
$SERVER_RELEASE_TYPE = $CLIENT_RELEASE_TYPE

# Default: "$CLIENT_NAME Server $MODPACK_VERSION"
$SERVER_ZIP_NAME = "$CLIENT_NAME`Server-$MODPACK_VERSION"

# Default: $SERVER_FILENAME
$SERVER_FILE_DISPLAY_NAME = "MyModpack Server $MODPACK_VERSION"