# Decision Log

"왜 이렇게 했지?"에 답하기 위한 기록. 버린 대안까지 적는다.

## 템플릿

```md
## YYYY-MM-DD 결정 제목
- 결정:
- 이유:
- 버린 대안:
```

---

## 2026-09-29 원본 층은 모든 컬럼 TEXT
- 결정: raw 스키마의 모든 컬럼을 TEXT로 적재
- 이유: 날짜·좌표·코드 형식이 제각각이라 타입을 걸면 적재가 실패하거나 행이 조용히 누락될 수 있음. 정제는 다음 층에서 명시적으로
- 버린 대안: 적재 시점 타입 변환

## 2026-09-29 DB는 PostgreSQL + PostGIS
- 결정: PostgreSQL 16 + PostGIS
- 이유: 윈도우 함수, GROUPING SETS, materialized view, daterange + GiST, 좌표계 변환(ST_Transform)을 한 DB에서 다룰 수 있음
- 버린 대안: MySQL (공간·기간 타입 지원이 상대적으로 약함)
