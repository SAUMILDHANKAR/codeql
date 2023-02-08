import java

from IfStmt ifstmt
where ifstmt.getThen() instanceof EmptyStmt
select ifstmt, "This if statement has an empty then."
