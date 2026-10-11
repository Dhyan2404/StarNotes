package com.sun.org.apache.bcel.internal.util;

import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import java.io.Serializable;
import java.util.LinkedList;

/* loaded from: classes10.dex */
public class ClassQueue implements Serializable {
    protected LinkedList vec = new LinkedList();

    public JavaClass dequeue() {
        return (JavaClass) this.vec.removeFirst();
    }

    public boolean empty() {
        return this.vec.isEmpty();
    }

    public void enqueue(JavaClass javaClass) {
        this.vec.addLast(javaClass);
    }

    public String toString() {
        return this.vec.toString();
    }
}
