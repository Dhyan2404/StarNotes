package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlInt extends XmlLong {
    public static final XmlObjectFactory<XmlInt> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlInt> xmlObjectFactory = new XmlObjectFactory<>("_BI_int");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    int getIntValue();

    void setIntValue(int i);
}
