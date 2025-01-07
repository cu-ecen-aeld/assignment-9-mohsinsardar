
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESDCHAR_VERSION = 'f1c903501b8047be328eb039de44b879c1bd19b3'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-mohsinsardar.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES
AESDCHAR_LICENSE = GPL-2.0-only
AESDCHAR_LICENSE_FILES = COPYING

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

#define AESDCHAR_INSTALL_TARGET_CMDS
#	$(INSTALL) -d 0755 $(@D)/aesd-char-driver/ $(TARGET_DIR)/etc/aesd-char-driver/
#	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/* $(TARGET_DIR)/etc/aesd-char-driver/

define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/aesd-char-driver/ $(TARGET_DIR)/etc/aesd-char-driver/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/* $(TARGET_DIR)/etc/aesd-char-driver/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
