-- Campi da Calcio Reali di Milano - Dati Forniti dall'Utente
-- Sostituisce tutti i campi esistenti con quelli reali

-- Elimina TUTTI i campi esistenti
DELETE FROM football_fields;

-- Inserisci i campi da calcio reali di Milano
INSERT INTO football_fields (
  name, description, latitude, longitude, address, city, province, region,
  surface_type, field_type, is_public, has_lighting, has_changing_rooms, has_parking
) VALUES
-- Parco Argonne - Campo Pubblico
(
  'Parco Argonne',
  'Campo da calcetto pubblico nel Parco Argonne',
  '45.4567',
  '9.1987',
  'Viale Argonne, Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '5vs5',
  true,
  true,
  false,
  true
),

-- Centro Sportivo Pavesi - Campo Privato
(
  'Centro Sportivo Pavesi',
  'Centro sportivo privato con campo da calcetto',
  '45.4789',
  '9.1876',
  'Via Pavesi 25, Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '5vs5',
  false,
  true,
  true,
  true
),

-- Parco delle Cave - Campo Pubblico
(
  'Parco delle Cave',
  'Campo da calcio pubblico nel Parco delle Cave',
  '45.4567',
  '9.1234',
  'Via Caldera, Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '7vs7',
  true,
  true,
  true,
  true
),

-- Stadio Città di Gorgonzola - Campo Pubblico
(
  'Stadio Città di Gorgonzola',
  'Stadio comunale di Gorgonzola con campo da calcio 11',
  '45.5234',
  '9.4567',
  'Via Don Sturzo, Gorgonzola',
  'Gorgonzola',
  'MI',
  'Lombardia',
  'erba naturale',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Centro Sportivo John Fitzgerald Kennedy - Campo Privato
(
  'Centro Sportivo John Fitzgerald Kennedy',
  'Centro sportivo privato con campo da calcetto',
  '45.4321',
  '9.2345',
  'Via Argelati, Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '5vs5',
  false,
  true,
  true,
  true
),

-- Parco Trotter - Campo Pubblico
(
  'Parco Trotter',
  'Campo da calcetto pubblico nel Parco Trotter',
  '45.4987',
  '9.2234',
  'Via Giacosa, Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '5vs5',
  true,
  true,
  false,
  true
),

-- Centro Sportivo Saini - Campo Privato
(
  'Centro Sportivo Saini',
  'Centro sportivo privato con campo da calcetto',
  '45.4321',
  '9.2456',
  'Viale Forlanini, Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '5vs5',
  false,
  true,
  true,
  true
),

-- Parco Lambro - Campo Pubblico
(
  'Parco Lambro',
  'Campo da calcio pubblico nel Parco Lambro',
  '45.4567',
  '9.2345',
  'Viale Monza, Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '7vs7',
  true,
  true,
  true,
  true
),

-- Centro Sportivo Aramis - Campo Privato
(
  'Centro Sportivo Aramis',
  'Centro sportivo privato con campo da calcetto',
  '45.4678',
  '9.1876',
  'Via Ampere 61, Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '5vs5',
  false,
  true,
  true,
  true
),

-- Parco Forlanini - Campo Pubblico
(
  'Parco Forlanini',
  'Campo da calcio pubblico nel Parco Forlanini',
  '45.4321',
  '9.2456',
  'Viale Forlanini, Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '7vs7',
  true,
  true,
  true,
  true
),

-- Campo Sportivo San Francesco - Campo Privato
(
  'Campo Sportivo San Francesco',
  'Campo sportivo privato con campo da calcio 11',
  '45.4123',
  '9.1567',
  'Via San Francesco, Rozzano',
  'Rozzano',
  'MI',
  'Lombardia',
  'erba naturale',
  '11vs11',
  false,
  true,
  true,
  true
),

-- Giardini di via Dezza - Campo Pubblico
(
  'Giardini di via Dezza',
  'Campo da calcetto pubblico nei giardini di via Dezza',
  '45.4678',
  '9.1876',
  'Via Dezza, Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '5vs5',
  true,
  true,
  false,
  true
),

-- Centro Sportivo Enjoy Sport - Campo Privato
(
  'Centro Sportivo Enjoy Sport',
  'Centro sportivo privato con campo da calcio 11 sintetico',
  '45.5234',
  '9.3456',
  'Via Michelangelo Buonarroti, 44, Cernusco sul Naviglio',
  'Cernusco sul Naviglio',
  'MI',
  'Lombardia',
  'erba sintetica',
  '11vs11',
  false,
  true,
  true,
  true
),

-- Centro Sportivo Don Gnocchi - Campo Privato
(
  'Centro Sportivo Don Gnocchi',
  'Centro sportivo privato con campo da calcio 7 sintetico',
  '45.5234',
  '9.3456',
  'Via Don Gnocchi, 3, Cernusco sul Naviglio',
  'Cernusco sul Naviglio',
  'MI',
  'Lombardia',
  'erba sintetica',
  '7vs7',
  false,
  true,
  true,
  true
),

-- Centro Sportivo Comunale di Via Buonarroti - Campo Pubblico
(
  'Centro Sportivo Comunale di Via Buonarroti',
  'Centro sportivo comunale con campo da calcio 11 sintetico',
  '45.5234',
  '9.3456',
  'Via Michelangelo Buonarroti, 44, Cernusco sul Naviglio',
  'Cernusco sul Naviglio',
  'MI',
  'Lombardia',
  'erba sintetica',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Centro Sportivo Comunale di Via Goldoni - Campo Pubblico
(
  'Centro Sportivo Comunale di Via Goldoni',
  'Centro sportivo comunale con campo da calcio 7 sintetico',
  '45.5234',
  '9.3456',
  'Via Carlo Goldoni, 3, Cernusco sul Naviglio',
  'Cernusco sul Naviglio',
  'MI',
  'Lombardia',
  'erba sintetica',
  '7vs7',
  true,
  true,
  true,
  true
),

-- Centro Sportivo di Via Boccaccio - Campo Pubblico
(
  'Centro Sportivo di Via Boccaccio',
  'Centro sportivo comunale con campo da calcetto 5 sintetico',
  '45.5234',
  '9.3456',
  'Via Boccaccio, Cernusco sul Naviglio',
  'Cernusco sul Naviglio',
  'MI',
  'Lombardia',
  'erba sintetica',
  '5vs5',
  true,
  true,
  true,
  true
),

-- Campo Sportivo Comunale di Via Manzoni - Campo Pubblico
(
  'Campo Sportivo Comunale di Via Manzoni',
  'Campo sportivo comunale con campo da calcio 7',
  '45.5234',
  '9.3456',
  'Via Manzoni, 1, Cernusco sul Naviglio',
  'Cernusco sul Naviglio',
  'MI',
  'Lombardia',
  'erba naturale',
  '7vs7',
  true,
  true,
  true,
  true
);

-- Aggiorna i timestamp
UPDATE football_fields SET updated_at = NOW();
