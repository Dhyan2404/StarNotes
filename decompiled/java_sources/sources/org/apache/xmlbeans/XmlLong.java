package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlLong extends XmlInteger {
    public static final XmlObjectFactory<XmlLong> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlLong> xmlObjectFactory = new XmlObjectFactory<>("_BI_long");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    long getLongValue();

    void setLongValue(long j);
}
