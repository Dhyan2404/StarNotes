package org.apache.xerces.dom;

import java.util.ArrayList;
import java.util.Vector;
import org.w3c.dom.DOMStringList;

/* loaded from: classes13.dex */
public class DOMStringListImpl implements DOMStringList {

    /* renamed from: a */
    public final ArrayList f111881a;

    public DOMStringListImpl() {
        this.f111881a = new ArrayList();
    }

    public void add(String str) {
        this.f111881a.add(str);
    }

    @Override // org.w3c.dom.DOMStringList
    public boolean contains(String str) {
        return this.f111881a.contains(str);
    }

    @Override // org.w3c.dom.DOMStringList
    public int getLength() {
        return this.f111881a.size();
    }

    @Override // org.w3c.dom.DOMStringList
    public String item(int i) {
        int length = getLength();
        if (i < 0 || i >= length) {
            return null;
        }
        return (String) this.f111881a.get(i);
    }

    public DOMStringListImpl(ArrayList arrayList) {
        this.f111881a = arrayList;
    }

    public DOMStringListImpl(Vector vector) {
        this.f111881a = new ArrayList(vector);
    }
}
