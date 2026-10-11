package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlFloat extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlFloat> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlFloat> xmlObjectFactory = new XmlObjectFactory<>("_BI_float");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    float getFloatValue();

    void setFloatValue(float f);
}
