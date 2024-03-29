-- 코드를 입력하세요
SELECT A_OUT.ANIMAL_ID, A_OUT.ANIMAL_TYPE, A_OUT.NAME
FROM ANIMAL_OUTS as A_OUT
INNER JOIN ANIMAL_INS as A_IN
ON A_IN.ANIMAL_ID = A_OUT.ANIMAL_ID
WHERE A_IN.SEX_UPON_INTAKE LIKE '%Intact%' AND A_OUT.SEX_UPON_OUTCOME REGEXP 'Spayed|Neutered'
ORDER BY A_OUT.ANIMAL_ID
