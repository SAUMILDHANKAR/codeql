/**
 * @name Liquid syntax comment
 * @description A comment that contains Liquid syntax ```{{ }}``` may indicate code that is incomplete or
 *              broken, or it may highlight an ambiguity in the software's specification.
 * @kind problem
 * @problem.severity recommendation
 * @id js/liquid-comment
 * @tags maintainability
 *       external/cwe/cwe-546
 * @precision medium
 */


import javascript
import semmle.javascript.YAML

from HTML::CommentNode c
where c.getText().regexpMatch("(?s).*FIXME.*|.*FUTURE\\{\\{\\D*\\}\\}BUG.*|.*(?<!=)\\s*XXX.*")
select c, "HTML code comments should be addressed."
