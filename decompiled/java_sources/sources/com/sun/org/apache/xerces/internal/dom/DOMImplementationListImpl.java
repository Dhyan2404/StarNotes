package com.sun.org.apache.xerces.internal.dom;

import java.util.Vector;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;

/* loaded from: classes10.dex */
public class DOMImplementationListImpl implements DOMImplementationList {
    private Vector fImplementations;

    public DOMImplementationListImpl() {
        this.fImplementations = new Vector();
    }

    @Override // org.w3c.dom.DOMImplementationList
    public int getLength() {
        return this.fImplementations.size();
    }

    @Override // org.w3c.dom.DOMImplementationList
    public DOMImplementation item(int i) {
        try {
            return (DOMImplementation) this.fImplementations.elementAt(i);
        } catch (ArrayIndexOutOfBoundsException unused) {
            return null;
        }
    }

    public DOMImplementationListImpl(Vector vector) {
        this.fImplementations = vector;
    }
}
