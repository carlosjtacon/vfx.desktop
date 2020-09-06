#!/bin/bash
# start here
# ---------------------------------------------
# -------- How to use this script ------------
# ---------------------------------------------


# --The KATANA Specific section shows some examples for howyou can use the KATANA_RESOURCES environment variable--
# -- KATANA_RESOURCES drives what gets loaded at startup for KATANA. This is how you load tools and plug-ins, both custom and non-custom ones like commercial renderer plug-ins--
# --Delete the settings for the renderers that you do not have installed or do not want to use at the same time.--

# --DEFAULT_RENDERER is the environment variable that drives which renderer plug-in is expected by default in a Renderexporttings node.--

# --The different renderer plug-ins' requirements for environment variables may change. Please refer to the installation instructions for each particular render plug-in for the most up to date information--


# --------------------------------------
# -------- KATANA Specific ------------
# --------------------------------------


# --This line is a simple example of how custom shelf scripts can be sourced--
# http://help.thefoundry.co.uk/katana/current/#tg/shelf_item_scripts/shelf_item_scripts.html
# export KATANA_RESOURCES=$KATANA_RESOURCES:/home/Users/Lizzy/Dropbox/katana_shelves
# export KATANA_RESOURCES=$KATANA_RESOURCES:/home/Users/Lizzy/Dropbox/katana_tools

# -This is how you export the default renderer when more than one are used at once (arnold, prman, vray, dl)
# - Change this to match the renderer you want to use by default.
export DEFAULT_RENDERER=arnold
# !!--------------------------------!!

 

 

# !!!!!!!!!!!!! Delete the tools you do not use from the section below !!!!!!!!!!!!!


# ----------------------------------------
# -------- 3Delight Specific ------------
# ----------------------------------------
# -- Source the .3delight_bash or .3delight_csh file from the location where the main 3Delight package is installed--
# -- Please note that 3Delight requires gcc 4.8.3 or higher to run --
# source /opt/3delight-12.0.137/.3delight_bash

# !!--------------------------------!!


# --------------------------------------
# -------- Arnold Specific ------------
# --------------------------------------
# --Where you have installed the KtoA plug-in--
export ARNOLD_INSTALL_PATH=/opt/ktoa/ktoa-3.0.3.0-kat3.5-linux/

# --Without these KtoA will not function--
export ARNOLD_PLUGIN_PATH=$ARNOLD_INSTALL_PATH/Plugins

# --This is how to load the KtoA plug-in--
export KATANA_RESOURCES=$KATANA_RESOURCES:$ARNOLD_INSTALL_PATH

# !!--------------------------------!!

 


# --------------------------------------------
# -------- RenderMan 20 Specific ------------
# --------------------------------------------
# -- You can only load one version of the RfK plug-in at a time so make sure you delete the commands for the version you do not want to use --
# --This is the location of the PRman plugin for KATANA--
# export RFKTREE=/opt/pixar/RenderManForKatana-20.9-katana2.5
# --This is the location of the RenderMan Pro Server installation--
# export RMANTREE=/opt/pixar/RenderManProServer-20.10


# --These make sure that the programs can be found, shaders loaded, and all components used--
# --This is different for PRman 21 so do not try to use the same for both versions.--
# export PATH=$PATH:$RMANTREE/lib:$RMANTREE/bin
# export RISDIR=$RMANTREE/lib/RIS
# export RMAN_RIXPLUGINPATH=$RISDIR/bxdf:$RISDIR/pattern:$RISDIR/integrator:$RISDIR/projection:$RISDIR/light
# export RMAN_SHADERPATH=$RMAN_SHADERPATH:$RFKTREE/Resources/PRMan20/Shaders:$RMANTREE/lib/shaders:$RMANTREE/lib/rsl/shaders


# --This is what is required to load the RfK plugin--
# export KATANA_RESOURCES=$KATANA_RESOURCES:$RFKTREE/Resources/PRMan20
# !!--------------------------------!!

 


# --------------------------------------------
# -------- RenderMan 21 Specific ------------
# --------------------------------------------
# -- You can only load one version of the RfK plug-in at a time so make sure you delete the commands for the version you do not want to use --
# --This is the location of the PRman plugin for KATANA --
# export RFKTREE=/opt/pixar/RenderManForKatana-21.2-katana2.5/plugins
# --This is the location of the RenderMan Pro Server installation--
# export RMANTREE=/opt/pixar/RenderManProServer-21.2

# --These make sure that the programs can be found, shaders loaded, and all components used--
# --This is different for PRman 20 so do not try to use the same for both versions--
# export PATH=$PATH:$RMANTREE/lib:$RMANTREE/bin

# --This is what is required to load the RfK plugin--
# export KATANA_RESOURCES=$KATANA_RESOURCES:$RFKTREE/Resources/PRMan21
# !!--------------------------------!!


# -------------------------------------
# -------- V-Ray Specific ------------
# -------------------------------------
# --Location of the V-Ray for KATANA install directory.--
# export VRAY_INSTALL_PATH=/opt/Foundry/VRay
# --This is how the V-Ray plugin gets loaded--
# export KATANA_RESOURCES=$KATANA_RESOURCES:$VRAY_INSTALL_PATH

# --Specific location to call out the plug-in to itsef--
# export VRAY_FOR_KATANA_PLUGINS_x64=$VRAY_INSTALL_PATH/vrayplugins

# !!--------------------------------!!

# !!!!!!!!!!!!! Stop deleting parts of the script. Leave the rest of this script alone !!!!!!!!!!!!!

 


# -------- Start KATANA ------------
/opt/Katana3.5v4/katana
