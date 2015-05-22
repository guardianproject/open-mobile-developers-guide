# Iniciarse en el desarrollo para Android 

Título original -  *I Want to Write Android Apps. Where Do I Start?* (quiero escribir aplicaciones para Android, ¿por dónde empiezo?)
Fuente [lifehacker](http://lifehacker.com/i-want-to-write-android-apps-where-do-i-start-1643818268)

> Querido Lifehacker,
> Tengo algunos conocimientos de programación, pero nunca he tocado el desarrollo para Android anteriormente. Me gustaría iniciarme, pero no tengo la completa seguridad de lo que lo necesito. No necesito "aprender a programar" per se, pero me vendría bien cierta orientación sobre por dónde comenzar con Android. ¿Pueden ayudarme?

> Atentamente,
> Soñando con ovejas eléctricas

Querido Sr. K. Dick,
Como probablemente ya conoce, escribir aplicaciones para Android es algo más que simplemente aprender la sintaxis del código. Si nunca aprendió a programar, puede echar un vistazo a un montón de recursos aquí. Sin embargo, todavía hay una buena cantidad de herramientas y recursos, con los que podría no estar familiarizado, que puede que necesite para desarrollar aplicaciones para Android.


Nota: Esto no pretende ser una guía exhaustiva sobre cada detalle de estas aplicaciones y recursos. De hecho, una guía así podría describirse con mayor precisión como un libro. Aunque le daremos una visión general de las diferentes herramientas que puede usar, y dónde encontrar más información. **Estas herramientas requieren distintos niveles de experiencia y si nunca ha tocado código con anterioridad, puede que quiera revisar nuestras guías enlazadas [aquí](http://lifehacker.com/the-best-resources-to-learn-to-code-1517844722).** Sin embargo, si ya está listo para trasladarse de la teoría y la sintaxis al desarrollo real, esto es lo que necesitará.

## El Android Software Development Kit (o SDK)

El Android Software Development Kit (SDK) (kit de desarrollo de software de Android) es de hecho una colección de herramientas que le ayudarán a desarrollar aplicaciones para Android. Hay más cosas que discutiremos aparte del SDK, pero aquí están algunas de las herramientas más útiles del SDK:

### Eclipse/Android Studio



Hay dos entornos de desarrollo integrado (IDE) primarios para Android. Un IDE es el programa principal donde escribirá código y ensamblará su aplicación. Puede ayudarle a organizar y editar los distintos ficheros de su aplicación, administrar los paquetes y librerías de soporte que su aplicación necesitará, y ponerla a prueba en dispositivos reales o emuladores.

El IDE por defecto para Android es Eclipse. Eclipse le permite modificar ficheros Java y XML, y organizar los distintos componentes de su aplicación, entre otras muchas tareas. La versión que obtiene de Google también incluye un administrador de paquetes que le permite actualizar a la última versión de las herramientas de Android tan pronto como Google las publica.

La principal alternativa es Android Studio, que en la actualidad está siendo desarrollado directamente por Google. Como muchos proyectos de Google, Android Studio es parte de una beta prolongada. La intención a largo plazo es que Android Studio reemplace a Eclipse como el IDE primario para el desarrollo para Android. Eso no significa necesariamente que sea para todos. Por ejemplo, si necesita hacer uso del Native Development Kit (kit de desarrollo nativo) para aplicaciones como juegos (consejo: si lo necesita, probablemente ya sabe que lo necesita), Eclipse es obligatorio. Sin embargo, Android Studio es una buena opción si quiere iniciarse con fuerza en el IDE venidero, y si está dispuesto a tolerar algunos posibles fallos.

No importa qué IDE elija, usarlo es un poco como Photoshop: puede hacer un montón de cosas chulas, pero probablemente sólo aprenderá a usar las herramientas individuales según las necesite. Sin embargo, este también es un buen lugar para comenzar sobre algunos de los fundamentos del desarrollo sobre Android. Aquí hay algunos tutoriales y recursos magníficos para que se inicie:

* [Udacity - Desarrollar aplicaciones para Android](https://www.udacity.com/course/ud853): Este curso en línea de 8 semanas tiene una buena cantidad de elementos libres, impartidos directamente por ingenieros de Google. El curso no sólo consiste en copiar y pegar código, sino que le ayudará a aprender algunos de los conceptos y características principales que necesitará.
* [Android Developer Training](https://developer.android.com/training/index.html) (instrucción del desarrollador para Android): Parte de la documentación de Google incluye tutoriales para la instrucción sobre cómo usar estas herramientas. Estos documentos le guiarán a través de las características básicas del IDE. Si no tiene mucha experiencia desarrollando aplicaciones, esto podría no convertirle en un maestro desarrollador, pero le ayudará a conocer las aplicaciones.
* [Vogella](http://www.vogella.com/tutorials/Android/article.html): Vale la pena mencionar los tutoriales Vogella en casi cualquier sección aquí. Este grupo masivo de tutoriales cubre casi todo lo que podría cubrir. Si tiene una pregunta básica no cubierta arriba, revise Vogella.

### ADB

Hemos hablado anteriormente acerca de ADB desde [una perspectiva de usuario regular](http://lifehacker.com/the-easiest-way-to-install-androids-adb-and-fastboot-to-1586992378), pero el propósito primario de la herramienta es en realidad ayudar en el desarrollo. Como tal, está incluido en el SDK de Android. Puede usar esto para cargar software o realizar cambios en sus dispositivos cuando estén enchufados a su computadora. Aquí están algunas de [las herramientas básicas](http://lifehacker.com/the-most-useful-things-you-can-do-with-adb-and-fastboot-1590337225) que puede usar con ADB, pero si quiere profundizar en su aprendizaje como desarrollador, eche un vistazo a estas:

* [Documentación de ADB](http://developer.android.com/tools/help/adb.html): Este es el recurso primario procedente de Google acerca de lo que es ADB y cómo funciona. Puede encontrar la mayoría de lo que ADB es capaz de hacer aquí:
* [Vogella - Using the Android Debug Bridge](http://www.vogella.com/tutorials/AndroidCommandLine/article.html) (usar el ADB): Otro tutorial de Vogella, este cubre los fundamentos de la forma de funcionamiento de ADB (puente para la depuración de Android) y algunas de las cosas comunes que puede hacer con él. Si no quiere bucear a través de la documentación de Google en busca del único comando que necesita, este podría ser un buen lugar para comenzar.

## Android Developer Guidelines

De momento ya hemos enlazado a un par de recursos de las oficiales [Android Developer Guidelines](https://developer.android.com/develop/index.html) (directrices de desarrollador de Android), lo que únicamente prueba cuán útiles son. Google mantiene una vasta y extensa colección de documentación y recursos sobre cómo programar sus aplicaciones, que puede citar o sobre los que puede realizar búsquedas.

Si usted se acaba de estrenar en el desarrollo para Android, no puede hacerle daño navegar a través de algunos de los tutoriales y guías de aquí. Están dispuestas de tal forma que se prestán conceptos unas a otras (vea arriba el Android Developer Training). Ahí tiene algunas secciones que vale la pena que repase si está comenzando:

* [**Google Services**](https://developer.android.com/google/index.html) (servicios de Google): Anteriormente hemos hablado acerca de [Google Play Services](http://lifehacker.com/why-google-play-services-are-now-more-important-than-an-975970197), pero aquí es donde va a ver lo que está ocurriendo por debajo. Google ofrece una amplia variedad de características que de otro modo podría tener que elaborar usted mismo, como características de mapas y localización, copias de seguridad en la nube, servicios mediante registro, y más. Puede examinarlos todos aquí.
* [**Guías de la API**](https://developer.android.com/guide/index.html): Los servicios de Google se establecen aparte de la APIs (interfaces de programación de aplicaciones) regulares, sobre las que también pueden leer aquí. Esto va desde código para crear animaciones básicas, hasta sensores de lectura y establecimiento de conexiones a Internet. Hay montones de información aquí para añadir funcionalidad a su aplicación.
* [**Código de Ejemplo**](https://developer.android.com/samples/index.html): Algunas veces ayuda ver cómo alguien más lo hizo antes que usted. Esta sección le muestra ejemplos de código para varias funciones. Esto puede ayudarle a ver cómo funciona algo, o simplemente usarlas en su aplicación de forma que no tenga que reinventar la rueda.
Android Design Guidelines

La contrapartida a las directrices de desarrollador son las Directrices de Diseño. Crecientemente Google se está enfocando en enseñar a los desarrolladores para sus plataformas cómo desarrollar aplicaciones que no sólo funcionan bien sino que también tienen buen aspecto. De tal forma, eso significa que un montón del trabajo ha sido realizado para que usted cubra lo fundamental como botones, animaciones simples, y demás.

El lugar al que ir para obtener más información acerca de esto son las [Android Design Guidelines](https://developer.android.com/design/index.html) (directrices de diseño de Android), que son la segunda subsección principal de la documentación oficial de Google. Tenga en cuenta que están aquí para la gente que posiblemente no tenga una gran dominio sobre diseño visual en lo que respecta a crear interfaces de aplicación. En otras palabras, si ya sabe qué aspecto va a tener su aplicación, podría no necesitar esto. Si ya sabe qué aspecto tiene su aplicación pero no es bueno haciendo que las aplicaciones tengan buen aspecto, eche un vistazo a esto.

Aquí tiene una lista de algunas de las áreas útiles a iniciar:

* [**Dispositivos**](https://developer.android.com/design/devices.html): Android apunta a objetivos más amplios que sólo teléfonos. Esta sección le ayudará a aprender cómo teléfonos, tabletas, TVs, y relojes, están todos relacionados, y cómo puede diseñar una interfaz que se adapte a todos ellos.
* [**Patrones**](https://developer.android.com/design/patterns/index.html): Android está construido sobre interfaces estructuradas. Esta sección le enseña los fundamentos de cómo funcionan las aplicaciones de forma que usted pueda diseñar el armazón sobre el cual va a erigir su diseño.
* [**Documentación de Material Design**](https://www.google.com/design/spec/material-design/introduction.html): Técnicamente esto es una sección aparte por ahora, pero la versión más reciente de Android de Google presentará un nuevo tipo de lenguaje de diseño llamado Material Design. Aquí puede estudiar con detenimiento lo que esto significa y cómo plantear diseños de aplicaciones que se ajusten a estas directrices. También es útil si no tiene experiencia planteándose cómo los usuarios interactúan con aplicaciones, incluso si no sigue las recomendaciones específicas.

## GitHub/Bitbucket

Mientras está desarrollando una aplicación, hay un montón de ficheros que administrar, y necesitará una forma de rastrear los cambios. Git es uno de los protocolos usados más comúnmente para administrar nuevas versiones o cambios en el software existente. Necesariamente, es un poco más complicado que una simple herramienta básica de copia de seguridad. Es suficientemente flexible para permitirle administrar múltiples ramales (branches) distintos de su aplicación, así como recoger (pull) de versiones anteriores si algo va mal.

Dos de los servicios más comunes para administrar proyectos con Git son GitHub y Bitbucket. Ambos usan el mismo protocolo subyacente y pueden integrarse directamente tanto en Eclipse como en Android Studio. Bitbucket le permite tener algunos repositorios (léase: almacenamiento para proyectos) privados sin pagar dinero, mientras que las ofertas gratuitas de GitHub requieren que estos sean listados públicamente a menos que pague un pequeño extra. Aquí tiene algunos recursos que pueden ayudarle a iniciarse con Git:

* [**Tutoriales de Bitbucket**](https://www.atlassian.com/git/tutorials/): Atlassian, la desarrolladora de Bitbucket tiene una serie de guías sobre cómo iniciarse con Bitbucket e importar sus proyectos ahí. En mi experiencia personal configurando ambos Bitbucket y Github, el servicio de Bitbucket y estas guías resultaron mucho más fáciles para la iniciación de los no iniciados.
* [**Guías de GitHub**](https://guides.github.com/): De forma similar GitHub tiene algunos tutoriales sobre cómo configurar el servicio, que puede encontrar aquí. Algunas de las guías se refieren a versiones anteriores del software en algunos casos, pero generalmente debe poder levantarlo y llevarlo con estas.
* [**Tutorial de Git de Vogella**](http://www.vogella.com/tutorials/Git/article.html): Incluso Vogella tiene otro gran tutorial aquí que explica lo que es el propio Git y cómo puede ayudarle a administrar por completo su proyecto. Aunque la administración de versiones es la función principal de Git, hay un muchas más por las que Vogella puede guiarle.

Desarrollar para Android es mucho más que tan sólo añadir Java en un editor de texto. Si tiene un poco de experiencia con la escritura de código pero aún no se ha zambullido en el desarrollo real de aplicaciones, hay muchas cosas de las que puede que no esté al tanto, y que necesita conocer cuanto antes. Las buenas noticias son, que usted no es la primera persona en transitar por esta senda. Estas son sólo algunas de las herramientas que necesita y es de esperar que estas guías le pongan en el camino correcto.

Atentamente,
Lifehacker