Extension { #name : 'SequenceableCollection' }

{ #category : '*Regex-Core-GemStone36-' }
SequenceableCollection >> splitOn: splitter [
	"Split a collection of objects based on a splitter. splitter - can be a subsequence, a Block or a Regex (String receiver only). Any other object used as a splitter is treated as an Array containing that object."
	"At this point, only Regex splitting is implemented."

	"(#(1 2 3 3 4 1 2 3 5 4 6) splitOn: 4) >>> #(#(1 2 3 3) #(1 2 3 5) #(6))asOrderedCollection"
	"(#(1 2 3 3 4 1 2 3 3 5 6) splitOn: #(3 3)) >>> #(#(1 2) #(4 1 2) #(5 6)) asOrderedCollection"
	"(#(2 2 3 3 4 1 2 3 3 5) splitOn: [:each | each > 3])>>> #(#(2 2 3 3) #(1 2 3 3) #()) asOrderedCollection"

	^ splitter split: self
]
