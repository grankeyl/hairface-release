# Hairface deployment artifact

Ready-to-run Linux application and public browser assets for the Hairface Telegram Mini App.

Runtime secrets are configured in the hosting provider, never in this repository. This package contains no user uploads or source-photo history. The React/Go application source is maintained separately.

The service needs `APP_ENV=production`, `AI_PROVIDER=groq`, `GROQ_API_KEY`, `TELEGRAM_BOT_TOKEN`, `DATABASE_URL`, `CAPTURE_RECEIPT_SECRET`, and `TELEGRAM_WEBHOOK_SECRET`. Render supplies `PORT` and `RENDER_EXTERNAL_URL` automatically. Payments are disabled by default. Liveness: `/healthz`.
