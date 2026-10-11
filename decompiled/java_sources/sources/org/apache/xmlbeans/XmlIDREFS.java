package org.apache.xmlbeans;

import java.util.List;
import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlIDREFS extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlIDREFS> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlIDREFS> xmlObjectFactory = new XmlObjectFactory<>("_BI_IDREFS");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    List<?> getListValue();

    void setListValue(List<?> list);

    List<? extends XmlAnySimpleType> xgetListValue();
}
