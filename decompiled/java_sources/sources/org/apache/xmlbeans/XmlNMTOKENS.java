package org.apache.xmlbeans;

import java.util.List;
import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlNMTOKENS extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlNMTOKENS> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlNMTOKENS> xmlObjectFactory = new XmlObjectFactory<>("_BI_NMTOKENS");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    List<?> getListValue();

    void setListValue(List<?> list);

    List<? extends XmlAnySimpleType> xgetListValue();
}
