package com.sun.org.apache.bcel.internal.util;

import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import java.io.Serializable;
import java.util.Stack;

/* loaded from: classes10.dex */
public class ClassStack implements Serializable {
    private Stack stack = new Stack();

    public boolean empty() {
        return this.stack.empty();
    }

    public JavaClass pop() {
        return (JavaClass) this.stack.pop();
    }

    public void push(JavaClass javaClass) {
        this.stack.push(javaClass);
    }

    public JavaClass top() {
        return (JavaClass) this.stack.peek();
    }
}
