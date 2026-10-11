package com.sun.java_cup.internal.runtime;

import java.util.Stack;

/* loaded from: classes9.dex */
public class virtual_parse_stack {
    protected int real_next;
    protected Stack real_stack;
    protected Stack vstack;

    public virtual_parse_stack(Stack stack) throws Exception {
        if (stack == null) {
            throw new Exception("Internal parser error: attempt to create null virtual stack");
        }
        this.real_stack = stack;
        this.vstack = new Stack();
        this.real_next = 0;
        get_from_real();
    }

    public boolean empty() {
        return this.vstack.empty();
    }

    public void get_from_real() {
        if (this.real_next >= this.real_stack.size()) {
            return;
        }
        Symbol symbol = (Symbol) this.real_stack.elementAt((r0.size() - 1) - this.real_next);
        this.real_next++;
        this.vstack.push(new Integer(symbol.parse_state));
    }

    public void pop() throws Exception {
        if (this.vstack.empty()) {
            throw new Exception("Internal parser error: pop from empty virtual stack");
        }
        this.vstack.pop();
        if (this.vstack.empty()) {
            get_from_real();
        }
    }

    public void push(int i) {
        this.vstack.push(new Integer(i));
    }

    public int top() throws Exception {
        if (this.vstack.empty()) {
            throw new Exception("Internal parser error: top() called on empty virtual stack");
        }
        return ((Integer) this.vstack.peek()).intValue();
    }
}
