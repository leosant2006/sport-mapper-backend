const pool = require('../config/database');

const adminAuth = async (req, res, next) => {
  try {
    // Verifica che l'utente sia autenticato
    if (!req.user || !req.user.userId) {
      return res.status(401).json({ message: 'Accesso negato' });
    }

    // Verifica che l'utente sia admin
    const result = await pool.query(
      'SELECT is_admin FROM users WHERE id = $1',
      [req.user.userId]
    );

    if (result.rows.length === 0) {
      return res.status(401).json({ message: 'Utente non trovato' });
    }

    if (!result.rows[0].is_admin) {
      return res.status(403).json({ message: 'Accesso negato: richiesti permessi admin' });
    }

    next();
  } catch (error) {
    console.error('Admin auth error:', error);
    res.status(500).json({ message: 'Errore del server' });
  }
};

module.exports = adminAuth;
