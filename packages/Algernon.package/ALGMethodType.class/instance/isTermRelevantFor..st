relevance
isTermRelevantFor: aLowercaseString

	^ (ALGItem methodCache at: aLowercaseString ifAbsent: [^ false]) includesSubstring: aLowercaseString