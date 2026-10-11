package com.sun.org.apache.xalan.internal.lib.sql;

import java.util.Vector;

/* loaded from: classes10.dex */
public class ObjectArray {
    private _ObjectArray m_currentArray;
    private int m_nextSlot;
    private int m_minArraySize = 10;
    private Vector m_Arrays = new Vector(200);

    /* loaded from: classes10.dex */
    public class _ObjectArray {
        public Object[] objects;

        public _ObjectArray(int i) {
            this.objects = new Object[i];
        }
    }

    public ObjectArray() {
        init(10);
    }

    private void init(int i) {
        this.m_minArraySize = i;
        this.m_currentArray = new _ObjectArray(i);
    }

    public static void main(String[] strArr) {
        String[] strArr2 = {"Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen", "Twenty", "Twenty-One", "Twenty-Two", "Twenty-Three", "Twenty-Four", "Twenty-Five", "Twenty-Six", "Twenty-Seven", "Twenty-Eight", "Twenty-Nine", "Thirty", "Thirty-One", "Thirty-Two", "Thirty-Three", "Thirty-Four", "Thirty-Five", "Thirty-Six", "Thirty-Seven", "Thirty-Eight", "Thirty-Nine"};
        ObjectArray objectArray = new ObjectArray();
        for (int i = 0; i < 40; i++) {
            System.out.print(" - " + objectArray.append(strArr2[i]));
        }
        System.out.println("\n");
        for (int i2 = 0; i2 < 40; i2++) {
            System.out.println((String) objectArray.getAt(i2));
        }
        System.out.println((String) objectArray.getAt(5));
        System.out.println((String) objectArray.getAt(10));
        System.out.println((String) objectArray.getAt(20));
        System.out.println((String) objectArray.getAt(2));
        System.out.println((String) objectArray.getAt(15));
        System.out.println((String) objectArray.getAt(30));
        System.out.println((String) objectArray.getAt(6));
        System.out.println((String) objectArray.getAt(8));
        System.out.println((String) objectArray.getAt(40));
    }

    public int append(Object obj) {
        if (this.m_nextSlot >= this.m_minArraySize) {
            this.m_Arrays.addElement(this.m_currentArray);
            this.m_nextSlot = 0;
            this.m_currentArray = new _ObjectArray(this.m_minArraySize);
        }
        this.m_currentArray.objects[this.m_nextSlot] = obj;
        int size = this.m_Arrays.size() * this.m_minArraySize;
        int i = this.m_nextSlot;
        int i2 = size + i;
        this.m_nextSlot = i + 1;
        return i2;
    }

    public Object getAt(int i) {
        int i2 = this.m_minArraySize;
        int i3 = i / i2;
        int i4 = i - (i2 * i3);
        return i3 < this.m_Arrays.size() ? ((_ObjectArray) this.m_Arrays.elementAt(i3)).objects[i4] : this.m_currentArray.objects[i4];
    }

    public void setAt(int i, Object obj) {
        int i2 = this.m_minArraySize;
        int i3 = i / i2;
        int i4 = i - (i2 * i3);
        if (i3 < this.m_Arrays.size()) {
            ((_ObjectArray) this.m_Arrays.elementAt(i3)).objects[i4] = obj;
        } else {
            this.m_currentArray.objects[i4] = obj;
        }
    }

    public ObjectArray(int i) {
        init(i);
    }
}
