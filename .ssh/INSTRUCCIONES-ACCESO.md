# Accesos SSH

## Comando para conectar al VPS (OClaw):

```bash
ssh -N -L 18789:127.0.0.1:18789 -i ".ssh\automatiza_agent_ed25519" root@100.84.8.99
```

## Después de conectar:

En otra terminal (sin cerrar la primera):

```bash
npx -y openclaw@latest
```

Esto abrirá el onboarding. Seguí las instrucciones en pantalla.

## Acceder al Dashboard (después del onboarding):

- **URL:** http://localhost:18789
- **Token:** Lo generarás durante el onboarding

---

## Datos de configuración (tener a mano para el onboarding):

### Telegram
- **Bot Token:** 8766634433:AAGV0uE0wU25jDk2YvsXb8-Ei4N1Pyg8Qw0
- **Chat ID:** 6386902473

### OpenRouter
- **API Key:** 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

---

## VPS info

- **IP:** 100.84.8.99
- **Usuario:** root
- **Key:** automatiza_agent_ed25519