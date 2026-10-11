package com.sun.org.apache.xerces.internal.dom;

import java.util.Vector;
import org.w3c.dom.DOMStringList;

/* loaded from: classes10.dex */
public class DOMStringListImpl implements DOMStringList {
    private Vector fStrings;

    public DOMStringListImpl() {
        this.fStrings = new Vector();
    }

    public void add(String str) {
        this.fStrings.add(str);
    }

    @Override // org.w3c.dom.DOMStringList
    public boolean contains(String str) {
        return this.fStrings.contains(str);
    }

    @Override // org.w3c.dom.DOMStringList
    public int getLength() {
        return this.fStrings.size();
    }

    @Override // org.w3c.dom.DOMStringList
    public String item(int i) {
        try {
            return (String) this.fStrings.elementAt(i);
        } catch (ArrayIndexOutOfBoundsException unused) {
            return null;
        }
    }

    public DOMStringListImpl(Vector vector) {
        this.fStrings = vector;
    }
}
