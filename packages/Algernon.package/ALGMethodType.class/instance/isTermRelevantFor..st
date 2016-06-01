relevance
isTermRelevantFor: aLowercaseString

	^ (ALGItem methodCache at: aLowercaseString ifAbsent: [^ false]) includes: self typeObject