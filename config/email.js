const { Resend } = require('resend');

// Initialize Resend
const resend = new Resend(process.env.RESEND_API_KEY || 're_123456789');

// Use Resend for email sending
let emailService = null;

// Email template for field reports
const sendFieldReportEmail = async (reportData) => {
  const {
    fieldName,
    fieldAddress,
    reportType,
    description,
    reporterUsername,
    reportDate
  } = reportData;

  const reportTypeLabels = {
    'non_esiste': 'Impianto non esiste',
    'info_errate': 'Informazioni errate',
    'altro': 'Altro'
  };

  try {
    const { data, error } = await resend.emails.send({
      from: 'Calcio Mapper <onboarding@resend.dev>',
      to: ['leonardo.santoro2006@icloud.com'],
      subject: `🚨 Segnalazione Impianto: ${fieldName}`,
      html: `
        <div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;">
          <div style="background: #dc2626; color: white; padding: 20px; border-radius: 8px; margin-bottom: 20px;">
            <h1 style="margin: 0; font-size: 24px;">🚨 Nuova Segnalazione Impianto</h1>
          </div>
          
          <div style="background: #f9fafb; padding: 20px; border-radius: 8px; margin-bottom: 20px;">
            <h2 style="color: #111827; margin-top: 0;">Dettagli Impianto</h2>
            <p><strong>Nome:</strong> ${fieldName}</p>
            <p><strong>Indirizzo:</strong> ${fieldAddress}</p>
          </div>
          
          <div style="background: #fef3c7; padding: 20px; border-radius: 8px; margin-bottom: 20px;">
            <h2 style="color: #d97706; margin-top: 0;">Dettagli Segnalazione</h2>
            <p><strong>Tipo:</strong> ${reportTypeLabels[reportType] || reportType}</p>
            <p><strong>Descrizione:</strong></p>
            <div style="background: white; padding: 15px; border-radius: 6px; border-left: 4px solid #f59e0b;">
              ${description.replace(/\n/g, '<br>')}
            </div>
          </div>
          
          <div style="background: #f0f9ff; padding: 20px; border-radius: 8px; margin-bottom: 20px;">
            <h2 style="color: #0369a1; margin-top: 0;">Informazioni Utente</h2>
            <p><strong>Segnalato da:</strong> ${reporterUsername}</p>
            <p><strong>Data segnalazione:</strong> ${reportDate}</p>
          </div>
          
          <div style="background: #f0fdf4; padding: 20px; border-radius: 8px; text-align: center;">
            <p style="margin: 0; color: #166534; font-weight: 600;">
              Grazie per aver segnalato questo problema! Verificheremo e aggiorneremo le informazioni.
            </p>
          </div>
        </div>
      `
    });

    if (error) {
      console.error('Error sending email:', error);
      return false;
    }

    console.log('Email sent successfully:', data);
    console.log('Email sent to: leonardo.santoro2006@icloud.com');
    
    return true;
  } catch (error) {
    console.error('Error sending email:', error);
    return false;
  }
};

module.exports = {
  sendFieldReportEmail
};
