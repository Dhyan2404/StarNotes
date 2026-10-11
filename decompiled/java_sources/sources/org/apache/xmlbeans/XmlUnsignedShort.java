package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlUnsignedShort extends XmlUnsignedInt {
    public static final XmlObjectFactory<XmlUnsignedShort> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlUnsignedShort> xmlObjectFactory = new XmlObjectFactory<>("_BI_unsignedShort");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    int getIntValue();

    void setIntValue(int i);
}
