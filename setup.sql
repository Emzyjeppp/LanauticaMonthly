-- SQL Script untuk Setup Tabel Supabase Lanautica App
-- Jalankan skrip ini di bagian "SQL Editor" di Dashboard Supabase Anda.

-- 1. Buat tabel laporan
CREATE TABLE IF NOT EXISTS public.laporan (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tahun SMALLINT NOT NULL,
    bulan SMALLINT NOT NULL,
    data JSONB NOT NULL,
    is_draft BOOLEAN DEFAULT false NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    CONSTRAINT unique_tahun_bulan_is_draft UNIQUE (tahun, bulan, is_draft)
);

-- 2. Aktifkan Row Level Security (RLS) jika diinginkan,
-- Namun untuk memudahkan setup statis tanpa auth token JWT, Anda dapat mematikan RLS untuk tabel ini.
-- Untuk mematikan RLS agar API Key anon biasa bisa membaca & menulis (kita amankan via PIN di frontend):
ALTER TABLE public.laporan DISABLE ROW LEVEL SECURITY;

-- 3. Tambahkan komentar agar lebih jelas
COMMENT ON TABLE public.laporan IS 'Tabel untuk menyimpan draf dan laporan bulanan Lanautica App';
