package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlShort extends XmlInt {
    public static final XmlObjectFactory<XmlShort> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlShort> xmlObjectFactory = new XmlObjectFactory<>("_BI_short");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    short getShortValue();

    void setShortValue(short s);
}
