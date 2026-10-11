package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlDuration extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlDuration> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlDuration> xmlObjectFactory = new XmlObjectFactory<>("_BI_duration");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    GDuration getGDurationValue();

    void setGDurationValue(GDuration gDuration);
}
