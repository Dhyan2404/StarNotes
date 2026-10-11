package org.apache.xmlbeans;

import java.util.List;
import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlENTITIES extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlENTITIES> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlENTITIES> xmlObjectFactory = new XmlObjectFactory<>("_BI_ENTITIES");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    List<?> getListValue();

    void setListValue(List<?> list);

    List<? extends XmlAnySimpleType> xgetListValue();
}
