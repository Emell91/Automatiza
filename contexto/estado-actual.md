# estado-actual.md
**Última actualización:** 2026-04-28

---

## Qué se hizo (sesión 2026-05-01)

- **Gestión de Créditos (Completado):**
  - OClaw reconfigurado para usar el modelo gratuito **NVIDIA Nemotron 3 Super (120B)** vía OpenRouter.
  - API Key actualizada en el servidor para asegurar continuidad.
  - Servicio OClaw reiniciado con éxito.
- **Limpieza de Workspace (Antigravity):**
  - Eliminados archivos redundantes/residuales (`ROADMAP.md`, `DISEÑO-ERP.md`, `sitio-web-automatiza.md`).
  - Sincronización con la realidad: Confirmado que OClaw está activo y el ERP en Sheets está funcionando.

## Qué se hizo (sesión 2026-04-28)

- **Reinstalación limpia de OClaw** en el VPS (100.84.8.99)
  - Limpieza completa: eliminados /root/.openclaw, /opt/openclaw
  - Preparado para onboarding desde cero
  - **Usuario SSH:** Emell ejecuta `ssh -N -L 18789:127.0.0.1 -i ".ssh\automatiza_agent_ed25519" root@100.84.8.99` desde su terminal
  - Luego ejecuta `npx -y openclaw@latest` para iniciar el onboarding

- **Manifiesto Operativo creado** en `proyectos/MANIFIESTO-OCLAW.md`
  - Filosofía de trabajo: Radical Honestidad, Eficacia sobre Esfuerzo, Orden Obsesivo
  - Misión: ERP, Gmail/Telegram, Redes sociales, Vigilancia financiera
  - Canales oficiales actualizados

- **Nueva API Key de OpenRouter:** `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`
  - Nombre: "OClaw high model"
  - Límite $10/mes

- **Telegram Bot confirmado:**
  - Bot: OClaw_Automatiza_Bot
  - Token: 8766634433:AAGV0uE0wU25jDk2YvsXb8-Ei4N1Pyg8Qw0
  - Chat ID Emell: 6386902473

---

## Qué se hizo (sesión 2026-04-27)

- **Limpieza del workspace contexto/:** consolidados 5 archivos en 3.
  - `CONTEXTO-OCLAW.md` + `ecosistema-agentes.md` → `ecosistema-agentes.md`
  - `Informacion general de la agencia - Automatiza.md` + `empresa.md` → `empresa.md`
  - Eliminados: `CONTEXTO-OCLAW.md`, `Informacion general de la agencia - Automatiza.md`

---

## Qué sigue (próximas acciones operativas)

1. Emell hace onboarding de OpenClaw desde su terminal
2. Configurar OAuth de OpenAI (Codex) en el panel UI
3. Configurar OpenRouter con la nueva API key
4. Enviar Manifiesto por Telegram al agente
5. Agent construye ERP en Google Sheets

---

## Pendientes de Emell

- [ ] Validar si la respuesta del agente con el nuevo modelo (Nemotron 3 Super) es satisfactoria para las tareas del ERP.

---

## Decisiones clave tomadas

| Fecha | Decisión |
|-------|----------|
| 2026-04-28 | Reinstalación limpia de OClaw - memoria reseteada |
| 2026-04-28 | Nueva API key OpenRouter: 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 |
| 2026-04-28 | Bot Telegram: OClaw_Automatiza_Bot (token actualizado) |
| 2026-04-25 | Modelo principal: OpenAI Codex vía OAuth Plus |
| 2026-04-25 | Fallback: OpenRouter (aún por configurar tras reinstall) |
| 2026-04-24 | Notion deprecado. GW es el único hub documental |
| 2026-04-24 | Agente VPS: OpenClaw en Hetzner CX23 (€5.43/mes) |

---

## Archivos relevantes

- `ROADMAP.md` — Seguimiento de fases y objetivos de la agencia
- `proyectos/DISEÑO-ERP.md` — Arquitectura del hub central en Google Sheets
- `proyectos/MANIFIESTO-OCLAW.md` — Manifiesto operativo actualizado
- `.ssh/INSTRUCCIONES-ACCESO.md` — Comandos SSH actualizados