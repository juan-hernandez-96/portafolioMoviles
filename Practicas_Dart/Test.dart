import 'dart:io';

/*
Equipo: Chilaquil
Grupo: ITIID-4
Integrantes:
Eudaldo Alejandro Ahumada Vizcarra
Sandra Carolina Perales Rodriguez
Abdiel Josue Pacheco Robles
Maria Jose Vazquez Romano
Juan Pablo Hernandez Arciniega
*/

// ============ PILA (STACK) ============

// Verifica si la pila está vacía
bool emptyStack(int top) {
  return top < 0;
}

// Verifica si la pila está llena
bool fullStack(int top, int max) {
  return top == max - 1;
}

// Push: registrar acción del técnico
int push(List<String> stack, int top, int max, String value) {
  if (fullStack(top, max)) {
    print("Stack overflow: no se pueden registrar más acciones.");
    return top;
  } else {
    top++;
    stack[top] = value;
    print("\n Acción registrada: $value \n");
    return top;
  }
}

// Pop: deshacer última acción
int pop(List<String> stack, int top) {
  if (emptyStack(top)) {
    print("\n Stack underflow: no hay acciones para deshacer.\n");
    return top;
  } else {
    print("\n Acción deshecha: ${stack[top]}\n");
    stack[top] = "";
    top--;
    return top;
  }
}

// ============ COLA (QUEUE) ============

class Queue<T> {
  List<T> _items = [];

  // Agregar elemento al final
  void enqueue(T item) {
    _items.add(item);
    print("Ticket $item agregado a la cola.");
  }

  // Atender (quitar el primero)
  T? dequeue() {
    if (_items.isEmpty) {
      print("No hay tickets pendientes.");
      return null;
    }
    T removed = _items.removeAt(0);
    print("Ticket $removed atendido.");
    return removed;
  }

  // Mostrar cola
  void showQueue() {
    if (_items.isEmpty) {
      print("No hay tickets en espera.");
    } else {
      print("Tickets pendientes: $_items");
    }
  }

  bool isEmpty() => _items.isEmpty;
}

// ============ VARIABLES GLOBALES ============

// Cola de tickets (ahora String para IDs como #12A)
Queue<String> colaTickets = Queue<String>();

// Pila de acciones del técnico
int maxAcciones = 10;
List<String> pilaAcciones = List.filled(10, "");
int top = -1;

// ============ FUNCIONES DEL SISTEMA ============

// 1. Agregar ticket (String)
void AgregarTicket() {
  print("Ingrese el ID del ticket (ejemplo: #12A):");
  String ticket = stdin.readLineSync()!.trim();

  if (ticket.isEmpty) {
    print("ID de ticket inválido.");
    return;
  }

  colaTickets.enqueue(ticket);
}

// 2. Atender ticket (FIFO)
void AtenderTicket() {
  colaTickets.dequeue();
}

// 3. Registrar acción del técnico (push)
void RegistrarAccion() {
  print("Ingrese la acción realizada por el técnico:");

  String accion = stdin.readLineSync()!.trim();

  if (accion.isEmpty) {
    print("\n Acción inválida.\n ");
    return;
  }

  top = push(pilaAcciones, top, maxAcciones, accion);
}

// 4. Deshacer última acción (pop)
void DeshacerAccion() {
  top = pop(pilaAcciones, top);
}

// 5. Mostrar estado completo del sistema
void MostrarEstadoDelSistema() {
  print("\n===== ESTADO DEL SISTEMA =====");

  // Mostrar cola3

  colaTickets.showQueue();

  // Mostrar pila de acciones
  if (emptyStack(top)) {
    print("No hay acciones registradas.");
  } else {
    print("Acciones realizadas (última primero):");
    for (int i = top; i >= 0; i--) {
      print("- ${pilaAcciones[i]}");
    }
  }

  print("==============================\n");
}

// 6. Menú interactivo
void MostrarMenu() {
  while (true) {
    print("\n=== SISTEMA DE GESTIÓN DE TICKETS ===");
    print("1. Agregar ticket");
    print("2. Atender ticket");
    print("3. Registrar acción del técnico");
    print("4. Deshacer última acción");
    print("5. Mostrar estado del sistema");
    print("6. Salir");
    print("Seleccione una opción:");

    String entrada = stdin.readLineSync()!.trim();

    switch (entrada) {
      case '1':
        AgregarTicket();
        break;
      case '2':
        AtenderTicket();
        break;
      case '3':
        RegistrarAccion();
        break;
      case '4':
        DeshacerAccion();
        break;
      case '5':
        MostrarEstadoDelSistema();
        break;
      case '6':
        print("Saliendo del sistema. ¡Hasta luego!");
        return;
      default:
        print("Opción inválida, intente nuevamente.");
    }
  }
}

// ============ MAIN ============
void main() {
  MostrarMenu();
}