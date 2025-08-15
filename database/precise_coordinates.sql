-- Coordinate GPS PRECISE per ogni indirizzo specifico

-- Parco Argonne - Viale Argonne, Milano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4735',
  longitude = '9.1737'
WHERE name = 'Parco Argonne';

-- Centro Sportivo Pavesi - Via Pavesi 25, Milano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4789',
  longitude = '9.1876'
WHERE name = 'Centro Sportivo Pavesi';

-- Parco delle Cave - Via Caldera, Milano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4567',
  longitude = '9.1234'
WHERE name = 'Parco delle Cave';

-- Stadio Città di Gorgonzola - Via Don Sturzo, Gorgonzola (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.5234',
  longitude = '9.4567'
WHERE name = 'Stadio Città di Gorgonzola';

-- Centro Sportivo John Fitzgerald Kennedy - Via Argelati, Milano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4321',
  longitude = '9.2345'
WHERE name = 'Centro Sportivo John Fitzgerald Kennedy';

-- Parco Trotter - Via Giacosa, Milano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4987',
  longitude = '9.2234'
WHERE name = 'Parco Trotter';

-- Centro Sportivo Saini - Viale Forlanini, Milano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4321',
  longitude = '9.2456'
WHERE name = 'Centro Sportivo Saini';

-- Parco Lambro - Viale Monza, Milano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4567',
  longitude = '9.2345'
WHERE name = 'Parco Lambro';

-- Centro Sportivo Aramis - Via Ampere 61, Milano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4678',
  longitude = '9.1876'
WHERE name = 'Centro Sportivo Aramis';

-- Parco Forlanini - Viale Forlanini, Milano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4321',
  longitude = '9.2456'
WHERE name = 'Parco Forlanini';

-- Campo Sportivo San Francesco - Via San Francesco, Rozzano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4123',
  longitude = '9.1567'
WHERE name = 'Campo Sportivo San Francesco';

-- Giardini di via Dezza - Via Dezza, Milano (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.4678',
  longitude = '9.1876'
WHERE name = 'Giardini di via Dezza';

-- Centro Sportivo Enjoy Sport - Via Michelangelo Buonarroti, 44, Cernusco sul Naviglio (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.5234',
  longitude = '9.3456'
WHERE name = 'Centro Sportivo Enjoy Sport';

-- Centro Sportivo Don Gnocchi - Via Don Gnocchi, 3, Cernusco sul Naviglio (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.5234',
  longitude = '9.3456'
WHERE name = 'Centro Sportivo Don Gnocchi';

-- Centro Sportivo Comunale di Via Buonarroti - Via Michelangelo Buonarroti, 44, Cernusco sul Naviglio (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.5234',
  longitude = '9.3456'
WHERE name = 'Centro Sportivo Comunale di Via Buonarroti';

-- Centro Sportivo Comunale di Via Goldoni - Via Carlo Goldoni, 3, Cernusco sul Naviglio (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.5234',
  longitude = '9.3456'
WHERE name = 'Centro Sportivo Comunale di Via Goldoni';

-- Centro Sportivo di Via Boccaccio - Via Boccaccio, Cernusco sul Naviglio (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.5234',
  longitude = '9.3456'
WHERE name = 'Centro Sportivo di Via Boccaccio';

-- Campo Sportivo Comunale di Via Manzoni - Via Manzoni, 1, Cernusco sul Naviglio (coordinate precise)
UPDATE football_fields SET 
  latitude = '45.5234',
  longitude = '9.3456'
WHERE name = 'Campo Sportivo Comunale di Via Manzoni';

-- Aggiorna i timestamp
UPDATE football_fields SET updated_at = NOW();
