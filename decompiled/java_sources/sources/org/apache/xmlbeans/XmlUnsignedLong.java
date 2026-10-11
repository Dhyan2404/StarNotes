package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlUnsignedLong extends XmlNonNegativeInteger {
    public static final XmlObjectFactory<XmlUnsignedLong> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlUnsignedLong> xmlObjectFactory = new XmlObjectFactory<>("_BI_unsignedLong");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }
}
