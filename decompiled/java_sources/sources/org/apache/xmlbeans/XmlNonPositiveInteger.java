package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlNonPositiveInteger extends XmlInteger {
    public static final XmlObjectFactory<XmlNonPositiveInteger> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlNonPositiveInteger> xmlObjectFactory = new XmlObjectFactory<>("_BI_nonPositiveInteger");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }
}
