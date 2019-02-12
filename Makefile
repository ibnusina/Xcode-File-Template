XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates

#array of templates name, currently there is only one tempate, so the array contains 2 element with same value for testing multiple folder copy
TEMPLATES=	View\ With\ XIB.xctemplate \
			View\ With\ XIB.xctemplate

install:
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	for template in $(TEMPLATES); do \
		rm -fR $(XCODE_USER_TEMPLATES_DIR)/"$$template"; \
		cp -R "$$template" $(XCODE_USER_TEMPLATES_DIR); \
	done;

uninstall:
	for template in $(TEMPLATES); do \
		rm -fR $(XCODE_USER_TEMPLATES_DIR)/"$$template"; \
		echo $(XCODE_USER_TEMPLATES_DIR)/"$$template"; \
	done;
