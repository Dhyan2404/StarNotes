package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlAnySimpleType extends XmlObject {
    public static final XmlObjectFactory<XmlAnySimpleType> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlAnySimpleType> xmlObjectFactory = new XmlObjectFactory<>("_BI_anySimpleType");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    String getStringValue();

    void setStringValue(String str);
}
