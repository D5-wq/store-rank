# store-rank

공공데이터(지방행정 인허가 · 공정위 가맹정보) 기반 전국 가게·브랜드 창업/폐업 랭킹 아카이브

> 🚧 0단계: 원본 데이터 적재 및 탐색 중

## 로컬 실행

```bash
docker compose up -d   # PostgreSQL + PostGIS (localhost:5432, postgres/dev, DB: storerank)
```

## 구조

| 경로 | 설명 |
|---|---|
| `sql/` | 스키마·쿼리 (raw → clean → summary) |
| `docs/data-issues.md` | 데이터 이상 기록 |
| `docs/decisions.md` | 설계 결정 로그 |
| `data/` | 원본 CSV (git 제외, 공공데이터포털에서 다운로드) |
