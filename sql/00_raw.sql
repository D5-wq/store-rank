-- =========================================================
-- 00_raw.sql : 원본(raw) 층
-- 원칙
--   1. 모든 컬럼 TEXT. 타입 변환/정제는 다음 층(01_clean)에서.
--   2. 원본은 절대 UPDATE 하지 않는다. 정제가 틀리면 여기서 다시 돌린다.
--   3. 추적용 컬럼: _source_file, _loaded_at
-- =========================================================

CREATE SCHEMA IF NOT EXISTS raw;

-- TODO: 다운받은 CSV 헤더를 보고 컬럼을 직접 채울 것
-- CREATE TABLE raw.general_restaurant (
--     ...,
--     _source_file TEXT NOT NULL,
--     _loaded_at   TIMESTAMPTZ NOT NULL DEFAULT now()
-- );
