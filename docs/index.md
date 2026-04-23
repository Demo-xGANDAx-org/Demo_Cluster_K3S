## Introducción

Este proyecto tiene como objetivo proporcionar un entorno de demostración basado en un clúster de Raspberry Pi, diseñado para desplegar y probar servicios de manera ágil en un contexto controlado. La infraestructura permite simular escenarios reales de despliegue, facilitando la validación de configuraciones, herramientas y flujos de trabajo antes de su uso en entornos productivos.

El clúster está dividido en dos componentes principales:

- **Ansible** se utiliza para la configuración y aprovisionamiento de las Raspberry Pi, automatizando la instalación de dependencias, la preparación del sistema y la configuración base necesaria para formar parte del clúster.

- **GitHub Actions** se emplea para gestionar el despliegue de servicios, permitiendo ejecutar procesos de integración y entrega continua directamente sobre la infraestructura.

Esta separación de responsabilidades permite mantener un enfoque claro entre la gestión de la infraestructura y el ciclo de vida de las aplicaciones, facilitando la mantenibilidad, la reproducibilidad y la escalabilidad del entorno de demostración.