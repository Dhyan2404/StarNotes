package com.graphbuilder.struc;

import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class LinkedList {
    protected Node head = null;
    protected Node tail = null;
    protected int size = 0;

    /* loaded from: classes4.dex */
    public static class Node {
        protected LinkedList list;
        protected Node next = null;
        protected Node prev = null;
        protected Object userObject;

        public Node(LinkedList linkedList, Object obj) {
            this.list = linkedList;
            this.userObject = obj;
        }

        public Object getUserObject() {
            return this.userObject;
        }

        public void insertAfter(Object obj) {
            this.list.insertAfter(this, obj);
        }

        public void insertBefore(Object obj) {
            this.list.insertBefore(this, obj);
        }

        public LinkedList list() {
            return this.list;
        }

        public Node next() {
            return this.next;
        }

        public Node prev() {
            return this.prev;
        }

        public void remove() {
            this.list.removeNode(this);
        }

        public void setUserObject(Object obj) {
            this.userObject = obj;
        }
    }

    public void addToHead(Object obj) {
        insertBefore(this.head, obj);
    }

    public void addToTail(Object obj) {
        insertAfter(this.tail, obj);
    }

    public Node createNode(Object obj) {
        return new Node(this, obj);
    }

    public Node getHead() {
        return this.head;
    }

    public Node getTail() {
        return this.tail;
    }

    public void insertAfter(Node node, Object obj) {
        Node createNode = createNode(obj);
        int i = this.size;
        if (i == 0) {
            this.head = createNode;
            this.tail = createNode;
        } else {
            Node node2 = this.tail;
            if (node == node2) {
                createNode.prev = node2;
                node2.next = createNode;
                this.tail = createNode;
            } else {
                Node node3 = node.next;
                node3.prev = createNode;
                createNode.next = node3;
                node.next = createNode;
                createNode.prev = node;
            }
        }
        this.size = i + 1;
    }

    public void insertBefore(Node node, Object obj) {
        Node createNode = createNode(obj);
        int i = this.size;
        if (i == 0) {
            this.head = createNode;
            this.tail = createNode;
        } else {
            Node node2 = this.head;
            if (node == node2) {
                createNode.next = node2;
                node2.prev = createNode;
                this.head = createNode;
            } else {
                Node node3 = node.prev;
                node3.next = createNode;
                createNode.prev = node3;
                node.prev = createNode;
                createNode.next = node;
            }
        }
        this.size = i + 1;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public Object removeHead() {
        return removeNode(this.head);
    }

    public Object removeNode(Node node) {
        int i = this.size;
        if (i == 0) {
            return null;
        }
        Object obj = node.userObject;
        Node node2 = this.head;
        if (node == node2) {
            Node node3 = node2.next;
            this.head = node3;
            if (node3 == null) {
                this.tail = null;
            } else {
                node3.prev = null;
            }
        } else {
            Node node4 = this.tail;
            if (node == node4) {
                Node node5 = node4.prev;
                this.tail = node5;
                node5.next = null;
            } else {
                Node node6 = node.prev;
                node6.next = node.next;
                node.next.prev = node6;
            }
        }
        node.list = null;
        this.size = i - 1;
        return obj;
    }

    public Object removeTail() {
        return removeNode(this.tail);
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(this.size * 6);
        stringBuffer.append(IteratorUtils.f104923a);
        Node node = this.head;
        if (node != null) {
            stringBuffer.append(node.userObject);
            node = node.next;
        }
        while (node != null) {
            stringBuffer.append(", ");
            stringBuffer.append(node.userObject);
            node = node.next;
        }
        stringBuffer.append(IteratorUtils.f104924b);
        return stringBuffer.toString();
    }
}
