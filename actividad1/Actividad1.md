## Tipos de Kernel

Un tipo de kernel ya se ha descrito en este artículo: si varios procesos se ejecutan en un kernel al mismo tiempo, existen los llamados multitasking kernel. Con la incorporación de la gestión de accesos, se convierte en un sistema multiusuario en el que varios usuarios pueden trabajar simultáneamente. La autenticación la realiza el kernel, que puede asignar o desvincular los procesos llamados.

¿Qué es el kernel de código abierto?
Linux mantiene un extenso registro sobre sus kernels. Apple ha publicado como código abierto los tipos de kernel que usa para todos sus sistemas operativos. A su vez, Microsoft también utiliza un kernel Linux para el Windows Subsystem for Linux.

Los tres tipos de kernel
Existen diferentes tipos de kernel para diferentes sistemas operativos y dispositivos finales. Conforme a sus características, pueden dividirse en tres grupos:

1. Kernel monolítico. Un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.
2. Microkernel. El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.
3. Kernel híbrido. La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X.

## User vs Kernel Mode

Un procesador de un equipo que ejecuta Windows tiene dos modos diferentes: el modo de usuario y el modo kernel.

El procesador cambia entre los dos modos en función del tipo de código que se ejecuta en el procesador. Las aplicaciones se ejecutan en modo de usuario y los componentes principales del sistema operativo se ejecutan en modo kernel. Aunque muchos controladores se ejecutan en modo kernel, algunos controladores pueden ejecutarse en modo de usuario.

# Modo de usuario:

Al iniciar una aplicación en modo de usuario, Windows crea un proceso para la aplicación. El proceso proporciona a la aplicación un espacio de direcciones virtuales privado y una tabla de identificadores privados. Dado que el espacio de direcciones virtuales de una aplicación es privado, una aplicación no puede modificar los datos que pertenecen a otra aplicación. Cada aplicación se ejecuta de forma aislada y, si una aplicación se bloquea, el bloqueo se limita a esa aplicación. Otras aplicaciones y el sistema operativo no se ven afectados por el bloqueo.

Además de ser privado, el espacio de direcciones virtuales de una aplicación en modo de usuario es limitado. Un proceso que se ejecuta en modo de usuario no puede acceder a direcciones virtuales reservadas para el sistema operativo. Limitar el espacio de direcciones virtuales de una aplicación en modo de usuario impide que la aplicación modifique los datos críticos del sistema operativo, y posiblemente perjudiciales.

# Modo kernel:

Todo el código que se ejecuta en modo kernel comparte un único espacio de direcciones virtuales. Por lo tanto, un controlador en modo kernel no está aislado de otros controladores y del propio sistema operativo. Si un controlador en modo kernel escribe accidentalmente en la dirección virtual incorrecta, los datos que pertenecen al sistema operativo u otro controlador podrían verse comprometidos. Si se bloquea un controlador en modo kernel, todo el sistema operativo se bloquea.