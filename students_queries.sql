-- 查看所有学生
SELECT * FROM student_db.students;

-- 计算平均分
SELECT AVG(成绩) AS 平均成绩 FROM student_db.students;

-- 最高分学生
SELECT 姓名, 成绩 FROM student_db.students ORDER BY 成绩 DESC LIMIT 1;

-- 分数分段统计（优秀/良好/及格/不及格）
SELECT 
    CASE 
        WHEN 成绩 >= 90 THEN '优秀'
        WHEN 成绩 >= 80 THEN '良好'
        WHEN 成绩 >= 60 THEN '及格'
        ELSE '不及格'
    END AS 等级,
    COUNT(*) AS 人数
FROM student_db.students
GROUP BY 等级;