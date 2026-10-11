package org.apache.xerces.dom;

import java.util.ArrayList;
import java.util.Vector;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;

/* loaded from: classes13.dex */
public class DOMImplementationListImpl implements DOMImplementationList {

    /* renamed from: a */
    public final ArrayList f111871a;

    public DOMImplementationListImpl() {
        this.f111871a = new ArrayList();
    }

    @Override // org.w3c.dom.DOMImplementationList
    public int getLength() {
        return this.f111871a.size();
    }

    @Override // org.w3c.dom.DOMImplementationList
    public DOMImplementation item(int i) {
        int length = getLength();
        if (i < 0 || i >= length) {
            return null;
        }
        return (DOMImplementation) this.f111871a.get(i);
    }

    public DOMImplementationListImpl(ArrayList arrayList) {
        this.f111871a = arrayList;
    }

    public DOMImplementationListImpl(Vector vector) {
        this.f111871a = new ArrayList(vector);
    }
}
