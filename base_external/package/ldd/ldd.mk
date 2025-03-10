
##############################################################
#
# LDD
#
##############################################################

#Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = 'a8c04ed42b59d3a78897420992fd1f1aedab8445'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-mohsinsardar.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
AESD_LDD_LICENSE = Dual BSD/GPL
AESD_LDD_DEPENDENCIES = linux

LDD_MODULE_SUBDIRS = scull
LDD_MODULE_SUBDIRS += misc-modules


define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/*.ko $(TARGET_DIR)/bin/
#	$(INSTALL) -m 0755 $(@D)/aesdchar/*.ko $(TARGET_DIR)/bin/
#	$(INSTALL) -m 0755 $(@D)/aesdchar/aesdchar_load $(TARGET_DIR)/bin
#	$(INSTALL) -m 0755 $(@D)/aesdchar/aesdchar_unload $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
