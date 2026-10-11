package com.graphbuilder.struc;

import com.graphbuilder.struc.LinkedList;

/* loaded from: classes4.dex */
public class Stack extends LinkedList {
    public Object peek() {
        LinkedList.Node node = this.head;
        if (node == null) {
            return null;
        }
        return node.userObject;
    }

    public Object pop() {
        return removeHead();
    }

    public void push(Object obj) {
        addToHead(obj);
    }
}
