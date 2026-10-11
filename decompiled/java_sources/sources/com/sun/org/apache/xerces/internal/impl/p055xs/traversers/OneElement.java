package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

/* loaded from: classes10.dex */
class OneElement {
    public boolean allowNonSchemaAttr;
    public Container attrList;

    public OneElement(Container container) {
        this(container, true);
    }

    public OneElement(Container container, boolean z) {
        this.attrList = container;
        this.allowNonSchemaAttr = z;
    }
}
