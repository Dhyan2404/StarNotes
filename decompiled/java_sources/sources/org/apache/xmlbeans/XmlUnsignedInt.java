package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlUnsignedInt extends XmlUnsignedLong {
    public static final XmlObjectFactory<XmlUnsignedInt> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlUnsignedInt> xmlObjectFactory = new XmlObjectFactory<>("_BI_unsignedInt");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    long getLongValue();

    void setLongValue(long j);
}
