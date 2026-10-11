package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STDateTimeGrouping;

/* loaded from: classes15.dex */
public interface CTDateGroupItem extends XmlObject {
    public static final DocumentFactory<CTDateGroupItem> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDateGroupItem> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdategroupitem9743type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STDateTimeGrouping.Enum getDateTimeGrouping();

    int getDay();

    int getHour();

    int getMinute();

    int getMonth();

    int getSecond();

    int getYear();

    boolean isSetDay();

    boolean isSetHour();

    boolean isSetMinute();

    boolean isSetMonth();

    boolean isSetSecond();

    void setDateTimeGrouping(STDateTimeGrouping.Enum r1);

    void setDay(int i);

    void setHour(int i);

    void setMinute(int i);

    void setMonth(int i);

    void setSecond(int i);

    void setYear(int i);

    void unsetDay();

    void unsetHour();

    void unsetMinute();

    void unsetMonth();

    void unsetSecond();

    STDateTimeGrouping xgetDateTimeGrouping();

    XmlUnsignedShort xgetDay();

    XmlUnsignedShort xgetHour();

    XmlUnsignedShort xgetMinute();

    XmlUnsignedShort xgetMonth();

    XmlUnsignedShort xgetSecond();

    XmlUnsignedShort xgetYear();

    void xsetDateTimeGrouping(STDateTimeGrouping sTDateTimeGrouping);

    void xsetDay(XmlUnsignedShort xmlUnsignedShort);

    void xsetHour(XmlUnsignedShort xmlUnsignedShort);

    void xsetMinute(XmlUnsignedShort xmlUnsignedShort);

    void xsetMonth(XmlUnsignedShort xmlUnsignedShort);

    void xsetSecond(XmlUnsignedShort xmlUnsignedShort);

    void xsetYear(XmlUnsignedShort xmlUnsignedShort);
}
