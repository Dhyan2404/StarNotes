package org.apache.xmlbeans;

import java.util.Calendar;
import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlGYear extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlGYear> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlGYear> xmlObjectFactory = new XmlObjectFactory<>("_BI_gYear");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    Calendar getCalendarValue();

    GDate getGDateValue();

    int getIntValue();

    void setCalendarValue(Calendar calendar);

    void setGDateValue(GDate gDate);

    void setIntValue(int i);
}
