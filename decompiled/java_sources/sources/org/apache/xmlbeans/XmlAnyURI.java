package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlAnyURI extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlAnyURI> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlAnyURI> xmlObjectFactory = new XmlObjectFactory<>("_BI_anyURI");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }
}
