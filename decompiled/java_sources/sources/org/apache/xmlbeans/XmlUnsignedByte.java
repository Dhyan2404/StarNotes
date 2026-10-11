package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlUnsignedByte extends XmlUnsignedShort {
    public static final XmlObjectFactory<XmlUnsignedByte> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlUnsignedByte> xmlObjectFactory = new XmlObjectFactory<>("_BI_unsignedByte");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    short getShortValue();

    void setShortValue(short s);
}
