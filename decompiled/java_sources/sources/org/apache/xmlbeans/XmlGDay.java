package org.apache.xmlbeans;

import java.util.Calendar;
import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlGDay extends XmlAnySimpleType {
    public static final XmlObjectFactory<XmlGDay> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlGDay> xmlObjectFactory = new XmlObjectFactory<>("_BI_gDay");
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
