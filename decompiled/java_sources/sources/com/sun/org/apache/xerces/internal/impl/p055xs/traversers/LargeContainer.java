package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import java.util.Hashtable;

/* loaded from: classes10.dex */
class LargeContainer extends Container {
    Hashtable items;

    public LargeContainer(int i) {
        this.items = new Hashtable((i * 2) + 1);
        this.values = new OneAttr[i];
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.traversers.Container
    public OneAttr get(String str) {
        return (OneAttr) this.items.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.traversers.Container
    public void put(String str, OneAttr oneAttr) {
        this.items.put(str, oneAttr);
        OneAttr[] oneAttrArr = this.values;
        int i = this.pos;
        this.pos = i + 1;
        oneAttrArr[i] = oneAttr;
    }
}
