package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlByte extends XmlShort {
    public static final XmlObjectFactory<XmlByte> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlByte> xmlObjectFactory = new XmlObjectFactory<>("_BI_byte");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    byte getByteValue();

    void setByteValue(byte b);
}
