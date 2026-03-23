-- 文件名: 20260323_table_operations.sql
-- 操作日期: 2026-03-23
-- 课程: 数据库应用技术（MySQL第3版，第57-64页创建/修改表）
-- 内容: 课堂任务完整流程 - book表复制、修改、重命名、删除操作

USE bookstore;

-- 1. 复制表结构
CREATE TABLE book_copy1 LIKE book;
CREATE TABLE book_copy2 LIKE book;

-- 2. 修改book_copy1：加浏览次数列
ALTER TABLE book_copy1
ADD COLUMN 浏览次数 TINYINT NULL;

-- 3. 查看结构
DESC book_copy2;

-- 4. 重命名
RENAME TABLE book_copy2 TO book2;
ALTER TABLE book2 RENAME TO book3;

-- 5. 删除
DROP TABLE book_copy1;
DROP TABLE book3;