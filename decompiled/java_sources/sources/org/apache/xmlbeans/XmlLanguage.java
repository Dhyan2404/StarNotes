package org.apache.xmlbeans;

import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlLanguage extends XmlToken {
    public static final XmlObjectFactory<XmlLanguage> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlLanguage> xmlObjectFactory = new XmlObjectFactory<>("_BI_language");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }
}
