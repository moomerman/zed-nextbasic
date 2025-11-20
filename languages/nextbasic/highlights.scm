; Line numbers
(line_number) @number

; Keywords
(keyword) @keyword

; Control flow keywords specifically
((keyword) @keyword.control
 (#match? @keyword.control "^(IF|THEN|GO TO|GOTO)$"))

; Logical operators
(logical_operator) @keyword.operator

; Comparison operators
(condition [">" "<" "=" ">=" "<=" "<>"] @operator)

; Binary expression operators
(binary_expression ["+" "-" "*" "/"] @operator)

; Assignment operators
(assignment "=" @operator)

; Numbers and strings
(number) @number
(string) @string

; Variables
(identifier) @variable

; Function calls
(function_call (identifier) @function)

; Comments
(comment) @comment
