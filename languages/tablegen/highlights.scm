; Comments
((comment) @comment
  (#match? @comment "^//.*$"))
((comment) @comment.block
  (#match? @comment "^/\\*.*\\*/$"))

; Preprocessor directives
((directive) @keyword.control
  (#match? @keyword.control "^#(ifdef|ifndef|else|endif|define|include)"))

; Strings
(string) @string
(string_content) @string

; Integers
((integer) @number
  (#match? @number "^\\b\\d+\\b"))
((integer) @number.hex
  (#match? @number.hex "^\\b0[xX][a-fA-F0-9]+\\b"))
((integer) @number.binary
  (#match? @number.binary "^\\b0b[01]+\\b"))

; Built-in types
((type) @type
  (#match? @type "^\\b(bit|code|dag|int|string|bits|list)\\b"))

; Keywords
((keyword) @keyword
  (#match? @keyword "^\\b(assert|else|foreach|defset|defvar|field|if|in|let|then)\\b"))
((keyword) @keyword
  (#match? @keyword "^\\b(false|true)\\b"))
((keyword) @keyword.operator
  (#eq? @keyword.operator "?"))

; Class and definition keywords
((keyword) @keyword.other
  (#match? @keyword.other "^\\b(multiclass|class|defm|def)\\b"))

; Bang operators
((operator) @function
  (#match? @function "^\\!\\w+"))

; Variables and identifiers
((identifier) @variable
  (#match? @variable "^\\b\\w+\\b"))
((identifier) @variable.special
  (#match? @variable.special "^\\$\\w+"))

; Punctuation
["{" "}" "[" "]" "(" ")" "<" ">"] @punctuation.bracket
[";" ":"] @punctuation.delimiter
("=") @operator
