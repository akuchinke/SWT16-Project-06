testing
testAlgernonChangeShortcut: shortcut

	ALGCore activationString: shortcut clone.
	self deny: Algernon currentInstance isNil.

	Algernon currentInstance handleListenEvent: (AlgerTestKeyboardEventFake new 
																	keyString: shortcut clone;
																	isKeyUp: false).
	self assert: Algernon currentInstance active.
	
	Algernon currentInstance handleListenEvent: (AlgerTestKeyboardEventFake new 
																	keyString: shortcut clone;
																	isKeyUp: true).
	Algernon close
		