filtering
filter: anItemCollection classesByCommentContaining: aKeyword
	aKeyword ifEmpty: [ ^ OrderedCollection new ].
	 ^ anItemCollection select: [ :each | each matchesComment: aKeyword ]