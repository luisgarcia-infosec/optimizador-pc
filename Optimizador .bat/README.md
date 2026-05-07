# 🚀 Optimizador de PC - Windows Performance Tool

[![Licencia: MIT](https://img.shields.io/badge/Licencia-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Windows](https://img.shields.io/badge/Plataforma-Windows%207%2F8%2F10%2F11-0078D6?logo=windows)](https://www.microsoft.com/windows)
[![Batch Script](https://img.shields.io/badge/Lenguaje-Batch-green.svg)](https://en.wikipedia.org/wiki/Batch_file)
[![Made in Argentina](https://img.shields.io/badge/Hecho%20en-Argentina%20🇦🇷-blue)](https://github.com/luisgarcia-infosec)

**Herramienta automatizada para optimizar el rendimiento de sistemas Windows mediante limpieza inteligente y optimización de servicios.**

> 💡 **¿Por qué esto?** Muchas personas realizan manualmente tareas de optimización que toman 30+ minutos y olvidan pasos clave. Este script automatiza todo el proceso en 5-10 minutos de forma segura.

---

## 📋 Tabla de Contenidos

- [Características](#-características)
- [Requisitos](#-requisitos)
- [Instalación](#-instalación)
- [Uso](#-uso)
- [¿Qué hace el optimizador?](#-qué-hace-el-optimizador)
- [Capturas de Pantalla](#-capturas-de-pantalla)
- [Preguntas Frecuentes](#-preguntas-frecuentes)
- [Seguridad](#-seguridad)
- [Contribuir](#-contribuir)
- [Licencia](#-licencia)
- [Autor](#-autor)

---

## ✨ Características

- ✅ **Automatización completa** - 10 fases de optimización sin intervención manual
- 🛡️ **100% seguro** - Solo utiliza herramientas nativas de Windows (sin software de terceros)
- 📊 **Reporte detallado** - Genera log completo con métricas del sistema
- 🚫 **No invasivo** - No toca archivos personales (documentos, fotos, videos)
- ⚡ **Rápido** - Proceso completo en 5-10 minutos (dependiendo del estado del sistema)
- 💾 **Detección inteligente** - Identifica discos SSD y omite desfragmentación
- 🔐 **Auto-elevación** - Solicita permisos de administrador automáticamente
- 📖 **Manual incluido** - PDF profesional con instrucciones paso a paso

---

## 💻 Requisitos

| Componente | Requisito |
|------------|-----------|
| **Sistema Operativo** | Windows 7, 8, 10, 11 (32 o 64 bits) |
| **Permisos** | Acceso de Administrador |
| **Espacio en disco** | Mínimo 100 MB libres |
| **RAM** | Mínimo 2 GB |
| **Procesador** | Intel/AMD 1 GHz o superior |

> ⚠️ **Importante:** El script debe ejecutarse con permisos de administrador. Si no se ejecuta como admin, solicitará automáticamente elevación de privilegios.

---

## 📥 Instalación

**No requiere instalación.** Simplemente descarga y ejecuta.

### Método 1: Descarga directa

1. Ve a [Releases](../../releases/latest)
2. Descarga `OptimizadorPC_LuisGarcia.bat`
3. Guarda en una ubicación accesible (ej: Escritorio)
4. ¡Listo para usar!

### Método 2: Clonar repositorio

```bash
git clone https://github.com/luisgarcia-infosec/optimizador-pc.git
cd optimizador-pc
```

---

## 🚀 Uso

### Ejecución Rápida

**Opción 1 (Recomendada):**
1. Click derecho en `OptimizadorPC_LuisGarcia.bat`
2. Seleccionar **"Ejecutar como administrador"**
3. Confirmar en el mensaje de UAC (Control de Cuentas de Usuario)

**Opción 2:**
1. Doble click en `OptimizadorPC_LuisGarcia.bat`
2. El script solicitará permisos automáticamente
3. Confirmar en el mensaje de UAC

### Proceso

Una vez iniciado:

```
[Fase 1] Limpieza de archivos temporales
[Fase 2] Limpieza de Windows Update  
[Fase 3] Optimización del sistema
↓
Generación de reporte en Escritorio
↓
Resumen de resultados en pantalla
```

⏱️ **Tiempo estimado:** 5-20 minutos (dependiendo del estado del equipo)

---

## 🔧 ¿Qué hace el Optimizador?

El script ejecuta **10 operaciones** en secuencia:

| # | Operación | Descripción | Impacto |
|---|-----------|-------------|---------|
| 1 | **Limpieza Temp Usuario** | Elimina archivos temporales de `%TEMP%` | 🟢 Alto |
| 2 | **Limpieza Temp Windows** | Elimina archivos de `C:\Windows\Temp` | 🟢 Alto |
| 3 | **Limpieza Navegadores** | Limpia caché de Chrome, Edge, Firefox | 🟡 Medio |
| 4 | **Limpieza Windows Update** | Elimina archivos temporales de actualizaciones | 🟢 Alto |
| 5 | **Limpieza Prefetch** | Optimiza archivos de precarga | 🟡 Medio |
| 6 | **Vaciar Papelera** | Vacía completamente la papelera de reciclaje | 🟢 Alto |
| 7 | **Limpieza Profunda** | Ejecuta `cleanmgr` (Liberador de espacio) | 🟢 Alto |
| 8 | **Optimización Servicios** | Reinicia servicios clave de Windows | 🟡 Medio |
| 9 | **Desfragmentación** | Optimiza discos (solo HDD, omite SSD) | 🟢 Alto |
| 10 | **Verificación SFC** | Verifica integridad de archivos del sistema | 🔵 Bajo |

### 📊 Resultados Típicos

- **Espacio liberado:** 2-15 GB (promedio: 5-8 GB)
- **Procesos optimizados:** Reinicio de servicios clave
- **Tiempo de arranque:** Mejora de 10-30% (variable)

---

## 📸 Capturas de Pantalla

### Pantalla de Inicio
```
================================================================================

           ███████╗ OPTIMIZADOR DE PC ███████╗

            Analista de Ciberseguridad: Luis Garcia
               GitHub: luisgarcia-infosec

================================================================================
```

### Progreso en Tiempo Real
```
[1/10] Limpiando carpeta Temp del usuario... ✓
[2/10] Limpiando carpeta Temp de Windows... ✓
[3/10] Limpiando cache de navegadores... ✓
```

### Reporte Final
```
✓✓✓ OPTIMIZACION COMPLETADA EXITOSAMENTE ✓✓✓

TAREAS COMPLETADAS:
[✓] Archivos temporales eliminados
[✓] Cache de navegadores limpiado
[✓] Papelera de reciclaje vaciada
[✓] Archivos Windows Update limpiados
[✓] Prefetch optimizado
[✓] Servicios optimizados
[✓] Limpieza profunda ejecutada

REPORTE GUARDADO EN: Desktop\Reporte_Optimizacion_YYYYMMDD.txt
```

---

## ❓ Preguntas Frecuentes

### ¿Es seguro este optimizador?

**Sí, completamente.** El script solo utiliza herramientas nativas de Windows (`cleanmgr`, `defrag`, `sfc`, etc.). No instala software adicional ni modifica configuraciones críticas del sistema.

### ¿Borrará mis archivos personales?

**No.** Solo elimina:
- Archivos temporales del sistema
- Caché de navegadores
- Archivos de actualización temporales
- Papelera de reciclaje

Documentos, fotos, videos y archivos en carpetas de usuario **NO se tocan**.

### ¿Funciona en Windows 11?

**Sí.** Compatible con Windows 7, 8, 10 y 11 (32 y 64 bits).

### ¿Necesito conexión a Internet?

**No.** El optimizador funciona completamente offline.

### ¿Dañará mi disco SSD?

**No.** El script detecta automáticamente si el disco es SSD y **omite la desfragmentación** (que puede reducir la vida útil de SSDs).

### ¿Con qué frecuencia debo ejecutarlo?

**Recomendado:** Una vez al mes para mantenimiento preventivo.

### ¿Qué pasa si interrumpo el proceso?

El proceso puede interrumpirse sin daños críticos, pero algunas operaciones quedarán incompletas. Se recomienda dejar que finalice completamente.

---

## 🛡️ Seguridad

### Análisis de Código

El código es **100% auditable**. Puedes revisar cada línea en [`OptimizadorPC_LuisGarcia.bat`](OptimizadorPC_LuisGarcia.bat).

**Herramientas utilizadas (todas nativas de Windows):**
- `del` - Eliminación de archivos
- `cleanmgr` - Liberador de espacio en disco
- `defrag` - Desfragmentador de disco
- `sfc` - System File Checker
- `net stop/start` - Control de servicios
- `PowerShell Clear-RecycleBin` - Vaciar papelera

### Falsos Positivos de Antivirus

Algunos antivirus pueden marcar scripts `.bat` como sospechosos por precaución. Esto es una **falsa alarma común** con scripts batch.

**Solución:**
1. Revisar el código manualmente
2. Agregar una excepción en tu antivirus
3. Ejecutar desde una carpeta de confianza

### Permisos Requeridos

El script solicita permisos de **Administrador** porque necesita:
- Acceso a carpetas del sistema (`C:\Windows\Temp`)
- Control de servicios de Windows
- Ejecución de herramientas del sistema

---

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Si querés mejorar el script:

1. **Fork** este repositorio
2. Creá una **rama** para tu feature (`git checkout -b feature/MejoraNueva`)
3. **Commit** tus cambios (`git commit -m 'Agrega nueva funcionalidad'`)
4. **Push** a la rama (`git push origin feature/MejoraNueva`)
5. Abrí un **Pull Request**

### Ideas para Contribuir

- 🌐 Traducción a otros idiomas
- 📊 Interfaz gráfica (GUI)
- 🔍 Detección de malware básico
- 📈 Dashboard web para múltiples PCs
- 🐧 Versión para Linux
- 🍎 Versión para macOS

---

## 📜 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

```
Copyright (c) 2024 Luis García

Se permite el uso, copia, modificación y distribución de este software
con fines comerciales y no comerciales, siempre y cuando se incluya
el aviso de copyright y esta licencia.
```

---

## 👨‍💻 Autor

**Luis García**  
*Analista de Ciberseguridad*

- 🐙 GitHub: [@luisgarcia-infosec](https://github.com/luisgarcia-infosec)
- 🐦 Twitter: [@LuisGarcia-InfoSec](https://twitter.com/LuisGarcia-InfoSec)
- 💼 LinkedIn: [Luis García](https://linkedin.com/in/tuprofile)
- 🌐 Portfolio: [lgcybersecurity.netlify.app](https://lgcybersecurity.netlify.app)

---

## 🙏 Agradecimientos

Gracias a todos los que prueban, comparten y contribuyen a este proyecto.

Si este optimizador te sirvió:
- ⭐ Dale una estrella al repo
- 🔄 Compartilo con quien lo necesite
- 🐛 Reportá bugs o sugerencias en [Issues](../../issues)

---

## 📚 Recursos Adicionales

- 📄 **[Manual de Usuario PDF](Manual_OptimizadorPC_LuisGarcia.pdf)** - Guía completa con screenshots
- 🔗 **[Releases](../../releases)** - Descargas y changelog
- 🐛 **[Issues](../../issues)** - Reportar bugs o solicitar features
- 💬 **[Discussions](../../discussions)** - Preguntas y comunidad

---

<div align="center">

**¿Te fue útil? ¡Compartilo! 🚀**

[![GitHub stars](https://img.shields.io/github/stars/luisgarcia-infosec/optimizador-pc?style=social)](https://github.com/luisgarcia-infosec/optimizador-pc/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/luisgarcia-infosec/optimizador-pc?style=social)](https://github.com/luisgarcia-infosec/optimizador-pc/network/members)

**Hecho con ❤️ en Argentina 🇦🇷**

</div>
