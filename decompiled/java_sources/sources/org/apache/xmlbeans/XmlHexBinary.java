package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlHexBinary extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlHexBinary> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlHexBinary> xmlObjectFactory = new XmlObjectFactory<>("_BI_hexBinary");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    byte[] getByteArrayValue();

    void setByteArrayValue(byte[] bArr);
}
