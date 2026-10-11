package org.apache.xerces.impl.dtd;

import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class XMLAttributeDecl {
    public boolean optional;
    public final QName name = new QName();
    public final XMLSimpleType simpleType = new XMLSimpleType();

    public void clear() {
        this.name.clear();
        this.simpleType.clear();
        this.optional = false;
    }

    public void setValues(QName qName, XMLSimpleType xMLSimpleType, boolean z) {
        this.name.setValues(qName);
        this.simpleType.setValues(xMLSimpleType);
        this.optional = z;
    }
}
