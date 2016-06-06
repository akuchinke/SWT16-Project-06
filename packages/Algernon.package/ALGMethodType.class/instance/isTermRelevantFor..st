relevance
isTermRelevantFor: aLowercaseString

	^ (ALGItem methodCache find: aLowercaseString ifAbsent: [^ false]) methodSet includes: self typeObject