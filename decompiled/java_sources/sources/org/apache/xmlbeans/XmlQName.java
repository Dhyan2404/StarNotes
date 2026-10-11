package org.apache.xmlbeans;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlQName extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlQName> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlQName> xmlObjectFactory = new XmlObjectFactory<>("_BI_QName");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    QName getQNameValue();

    void setQNameValue(QName qName);
}
