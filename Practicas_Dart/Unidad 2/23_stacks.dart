int emptyStack(int top) {
  if (top < 0) {
    return 1;
  } else {
    return 0;
  }
}

int fullStack(int top, int max) {
  if (top == max - 1) {
    return 1;
  } else {
    return 0;
  }
}

int push(List<int> s, int top, int max, int value) {
  int flag = fullStack(top, max);

  if (flag == 1) {
    print("Overflow");
    return top;
  } else {
    top = top + 1;
    s[top] = value;
    return top;
  }
}

int pop(List<int> s, int top) {
  int flag = emptyStack(top);

  if (flag == 1) {
    print("Underflow");
    return -1;
  } else {
    int value = s[top];
    s[top] = 0;
    return value;
  }
}

void main() {
  int max = 5;
  List<int> stack = List.filled(max, 0);
  int top = -1;

  top = push(stack, top, max, 10);
  top = push(stack, top, max, 20);
  top = push(stack, top, max, 30);
  top = push(stack, top, max, 40);
  top = push(stack, top, max, 50);

  int removed = pop(stack, top);
  if (removed != -1) {
    top = top - 1;
  }

  top = push(stack, top, max, 60);

  for (int i = 0; i <= top; i++) {
    print(stack[i]);
  }
}
