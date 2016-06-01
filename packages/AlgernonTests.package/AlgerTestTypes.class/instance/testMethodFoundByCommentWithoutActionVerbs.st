testing
testMethodFoundByCommentWithoutActionVerbs

	| names |
	self ensureMorphic.

	algerstance show.
	algerstance textField contents: 'collect'.
	algerstance updateItemList.
	
	names := algerstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'select:').