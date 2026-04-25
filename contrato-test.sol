// La licencia SPDX-License-Identifier es una forma de especificar la licencia bajo la cual se distribuye el código fuente del contrato inteligente. En este caso, se está utilizando la licencia LGPL-3.0-only, que es una licencia de software libre que permite a los usuarios modificar y redistribuir el código fuente del contrato inteligente, siempre y cuando se cumplan ciertas condiciones. Es importante incluir esta línea al principio del archivo para cumplir con las mejores prácticas de desarrollo de contratos inteligentes y para garantizar que el código sea utilizado de manera legal y ética.
// Licencia SPDX-License-Identifier: LGPL-3.0-only

// La version para decirle al compilador que version de solidity se va a usar, para que el compilador lo reconozca y lo pueda transformar en bytes
pragma solidity ^0.8.24;

// Contratos en solidity, es como una clase en otros lenguajes de programacion, es una plantilla para crear objetos, en este caso contratos inteligentes, que pueden tener variables, funciones y eventos. Es la unidad basica de la programacion en solidity, y se utiliza para crear aplicaciones descentralizadas (dapps) en la blockchain de Ethereum.
contract ContratoTest {

    //Las estructura de los smart contracts en solidity es similar a la de las clases en otros lenguajes de programacion orientados a objetos, pero con algunas diferencias importantes. En un contrato inteligente, se pueden definir variables de estado, funciones y eventos, pero no se pueden crear instancias del contrato como se haria con una clase en otros lenguajes. En cambio, se despliega el contrato inteligente en la blockchain de Ethereum, y luego se interactua con él a través de sus funciones y eventos. Es importante entender esta estructura para diseñar y desarrollar contratos inteligentes efectivos y seguros.
    // La estructura de un contrato inteligente en Solidity se compone de varias partes, incluyendo:
    // - Declaración de la versión de Solidity: se especifica al principio del archivo para indicar qué versión del compilador se debe utilizar.
    // - Declaración del contrato: se define el nombre del contrato y se abre un bloque de código que contiene todas las variables, funciones y eventos del contrato.
    // - Variables de estado: son variables que se almacenan en la blockchain y que representan
    // Modificadores de estado: son funciones especiales que se utilizan para modificar el comportamiento de otras funciones, como restringir el acceso a ciertas funciones solo al propietario del contrato inteligente.
    // Eventos: son una forma de registrar información en la blockchain cuando se producen ciertas acciones en el contrato inteligente, como la transferencia de tokens o la actualización de un estado.
    // Funciones: son bloques de código que se pueden llamar para realizar una tarea específica,
    // Dentro de las funciones tambien tiene un orden:
    // External
    // Internal
    
    // Tipos de variables

    //* Numeros enteros sin signo (uint) y con signo (int)
    // En los numeros hay rangos de numeros para cada tipo de variable, por ejemplo uint8 tiene un rango de 0 a 255, mientras que int8 tiene un rango de -128 a 127. Es importante elegir el tipo de variable adecuado para cada caso, para evitar errores y optimizar el uso de gas en la blockchain.
    uint public numero;
    // Este es el numero mas grande que se puede almacenar en un uint256, que es el tipo de variable mas grande para numeros enteros sin signo en solidity. Es importante tener en cuenta este limite al trabajar con numeros grandes en contratos inteligentes, para evitar errores de desbordamiento (overflow) y garantizar la seguridad del contrato.
    uint256 public numero2 = 115792089237316195423570985008687907853269984665640564039457584007913129639935;
    // Con los int se pueden almacenar numeros negativos, por lo que el rango es diferente al de los uint. Por ejemplo, int256 tiene un rango de -2^255 a 2^255-1. Es importante elegir el tipo de variable adecuado para cada caso, para evitar errores y optimizar el uso de gas en la blockchain.
    int public numeroNegativo;
    int8 public numero7 = 127;
    int256 public numero9 = 57896044618658097711785492504343953926634992332820282019728792003956564819967;
    int public result = numero9 * numero7;

    //* bytes es un tipo de variable que se utiliza para almacenar datos binarios, como cadenas de texto o archivos. En este caso, se está utilizando bytes32, que es un tipo de variable que puede almacenar hasta 32 bytes de datos. Es importante tener en cuenta el tamaño de los datos que se van a almacenar en una variable de tipo bytes, para evitar errores y optimizar el uso de gas en la blockchain.
    // Un bayte es una cadena hexadecimal32.
    bytes32 public data;

    //* String es un tipo de variable que se utiliza para almacenar cadenas de texto. En este caso, se está utilizando string, que es un tipo de variable que puede almacenar una cadena de texto de cualquier longitud. Es importante tener en cuenta el tamaño de las cadenas de texto que se van a almacenar en una variable de tipo string, para evitar errores y optimizar el uso de gas en la blockchain.
    string public texto;

    //* Boolean es un tipo de variable que se utiliza para almacenar valores de verdadero o falso. En este caso, se está utilizando bool, que es un tipo de variable que puede almacenar un valor de verdadero (true) o falso (false). Es importante utilizar variables de tipo bool para representar estados o condiciones en el contrato inteligente, para mejorar la legibilidad y la eficiencia del código.
    bool public esVerdadero;

    //* Address es un tipo de variable que se utiliza para almacenar direcciones de Ethereum. En este caso, se está utilizando address, que es un tipo de variable que puede almacenar una dirección de Ethereum de 20 bytes. Es importante utilizar variables de tipo address para representar direcciones de Ethereum en el contrato inteligente, para garantizar la seguridad y la funcionalidad del contrato.
    // La direccion es la direccion del contrato inteligente en la blockchain de Ethereum. Es importante tener en cuenta que la direccion de un contrato inteligente se genera a partir de la direccion del creador del contrato y el numero de transacciones que ha realizado, por lo que no se puede predecir con certeza la direccion de un contrato inteligente antes de su despliegue. Es importante utilizar la direccion del contrato inteligente para interactuar con él desde otras aplicaciones o contratos inteligentes, para garantizar la seguridad y la funcionalidad del contrato.
    address public direccion;

    //* Array es un tipo de variable que se utiliza para almacenar una lista de elementos del mismo tipo. En este caso, se está utilizando un array de uint, que es un tipo de variable que puede almacenar una lista de números enteros sin signo. Es importante tener en cuenta el tamaño del array y el tipo de datos que se van a almacenar en él, para evitar errores y optimizar el uso de gas en la blockchain.
    uint[5] public numeros;
    string[] public textos;
    bool[] public booleanos;
    address[] public direcciones;

    //* Mapping es un tipo de variable que se utiliza para almacenar una relación entre una clave y un valor. En este caso, se está utilizando un mapping de address a uint, que es un tipo de variable que puede almacenar una relación entre una dirección de Ethereum y un número entero sin signo. Es importante utilizar mappings para representar relaciones entre datos en el contrato inteligente, para mejorar la eficiencia y la funcionalidad del contrato.
    // Sirve para relacionar una direccion con un numero, por ejemplo, para llevar un registro de los saldos de los usuarios en un contrato inteligente. Es importante tener en cuenta que los mappings no se pueden iterar, por lo que es necesario utilizar otras estructuras de datos para almacenar las claves y los valores si se necesita iterar sobre ellos.
    mapping(address => uint) public balances;

    //* Enum es un tipo de variable que se utiliza para definir un conjunto de valores posibles para una variable. En este caso, se está utilizando un enum llamado Estado, que tiene tres valores posibles: Activo, Inactivo y Pendiente. Es importante utilizar enums para representar estados o condiciones en el contrato inteligente, para mejorar la legibilidad y la eficiencia del código.
    enum Estado { Activo, Inactivo, Pendiente }
    Estado public estado;

    //* Struct es un tipo de variable que se utiliza para definir una estructura de datos personalizada. En este caso, se está utilizando un struct llamado Persona, que tiene tres campos: nombre, edad y direccion. Es importante utilizar structs para representar entidades o conceptos complejos en el contrato inteligente, para mejorar la legibilidad and la eficiencia del código.
    struct Persona {
        string nombre;
        uint edad;
        address direccion;
    }

    //* Funciones son bloques de código que se pueden llamar para realizar una tarea específica. En este caso, se están definiendo varias funciones para establecer los valores de las variables del contrato inteligente y para realizar una operación de multiplicación. Es importante utilizar funciones para organizar el código del contrato inteligente y para permitir la interacción con él desde otras aplicaciones o contratos inteligentes.
    // function + argumentos (si los hay) + visibility (public, private, internal, external) + modificadores + returns (si la función devuelve un valor)
    // Las ejecuciones de las funsciones son atomicas, lo que significa que si una función falla en algún punto, toda la ejecución de la función se revertirá y no se realizarán cambios en el estado del contrato inteligente. Es importante tener en cuenta esta característica de las funciones al diseñar el contrato inteligente, para garantizar la seguridad y la funcionalidad del contrato.
    // Visibilidad de las funciones:
    // - public: la función puede ser llamada desde cualquier lugar, tanto dentro como fuera del contrato inteligente. Es la visibilidad más común para las funciones que se utilizan para interactuar con el contrato inteligente desde otras aplicaciones o contratos inteligentes.
    // - private: la función solo puede ser llamada desde dentro del contrato inteligente. Es útil para funciones que se utilizan para realizar tareas internas del contrato inteligente y que no necesitan ser expuestas a otras aplicaciones o contratos inteligentes.
    // - internal: la función solo puede ser llamada desde dentro del contrato inteligente o desde contratos inteligentes que heredan de él. Es útil para funciones que se utilizan para realizar tareas internas del contrato inteligente y que pueden ser reutilizadas por contratos inteligentes que heredan de él.
    // - external: la función solo puede ser llamada desde fuera del contrato inteligente. Es útil para funciones que se utilizan para interactuar con el contrato inteligente desde otras aplicaciones o contratos inteligentes, pero que no necesitan ser llamadas desde dentro del contrato inteligente. Es importante elegir la visibilidad adecuada para cada función, para garantizar la seguridad y la funcionalidad del contrato inteligente.
    function setData(int _num19, int _num27) public pure returns (int resultado) {
        resultado = _num19 * _num27;
        return resultado;
    } 
    function setData2(int _num19, int _num27) public pure returns (int) {
        int resultado = _num19 * _num27;
        return resultado;
    }

    function setTexto(string memory _texto) public {
        texto = _texto;
    }

    function setNumero(uint _numero) public {
        numero = _numero;
    }

    function setNumeroNegativo(int _numeroNegativo) public {
        numeroNegativo = _numeroNegativo;
    }

    function setEsVerdadero(bool _esVerdadero) public {
        esVerdadero = _esVerdadero;
    }

    function multiplicar() public view returns (int) {
        return numero9 * numero7;
    }

    //* Modificadores son funciones especiales que se utilizan para modificar el comportamiento de otras funciones. En este caso, se está utilizando un modificador llamado "soloPropietario", que restringe el acceso a ciertas funciones solo al propietario del contrato inteligente. Es importante utilizar modificadores para garantizar la seguridad y la funcionalidad del contrato inteligente, y para evitar errores o ataques malintencionados.
    modifier soloPropietarioModifier() {
        require(msg.sender == direccion, "Solo el propietario del contrato puede ejecutar esta funcion");
        _;
    }

    modifier modificadorEjemplo() {
        if (5 + 2 != 7) {
            // El _ es un marcador de posición que indica dónde se ejecutará el código de la función a la que se aplica el modificador. En este caso, si la condición no se cumple, se revertirá la ejecución de la función y no se realizará ningún cambio en el estado del contrato inteligente. Es importante utilizar el marcador de posición _ para garantizar que el código de la función se ejecute correctamente dentro del modificador.
            _;
        } else {
            revert("La condicion no se cumple");
        }
    }

    // Donde se implementa el modificador, se coloca el nombre del modificador antes de la declaración de la función, seguido de los argumentos (si los hay) y la visibilidad de la función. Es importante implementar los modificadores correctamente para garantizar la seguridad y la funcionalidad del contrato inteligente.
    // Primero va a comprobar la condicion del modificador, y si se cumple, se ejecuta el codigo de la funcion, pero si no se cumple, se revierte la ejecucion de la funcion y no se realiza ningun cambio en el estado del contrato inteligente. Es importante tener en cuenta esta secuencia de ejecucion al diseñar el contrato inteligente, para garantizar la seguridad y la funcionalidad del contrato.
    function funcionConModificador() public soloPropietarioModifier returns (string memory) {
        // Codigo de la funcion que solo el propietario del contrato puede ejecutar
    }

    //* Eventos son una forma de registrar información en la blockchain cuando se producen ciertas acciones en el contrato inteligente. En este caso, se está utilizando un evento llamado "EventoEjemplo", que se emite cuando se llama a la función "emitirEvento". Es importante utilizar eventos para registrar información relevante sobre las acciones que se producen en el contrato inteligente, para mejorar la transparencia y la trazabilidad del contrato.
    event EventoEjemplo(string mensaje, uint numero);

    function emitirEvento(string memory _mensaje, uint _numero) public {
        emit EventoEjemplo(_mensaje, _numero);
    }

}