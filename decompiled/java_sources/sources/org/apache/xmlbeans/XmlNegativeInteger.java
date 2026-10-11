package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlNegativeInteger extends XmlNonPositiveInteger {
    public static final XmlObjectFactory<XmlNegativeInteger> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlNegativeInteger> xmlObjectFactory = new XmlObjectFactory<>("_BI_negativeInteger");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }
}
