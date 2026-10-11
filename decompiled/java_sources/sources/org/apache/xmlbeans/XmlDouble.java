package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlDouble extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlDouble> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlDouble> xmlObjectFactory = new XmlObjectFactory<>("_BI_double");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    double getDoubleValue();

    void setDoubleValue(double d);
}
