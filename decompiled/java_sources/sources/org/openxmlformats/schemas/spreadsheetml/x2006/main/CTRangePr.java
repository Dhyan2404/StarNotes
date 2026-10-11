package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.Calendar;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STGroupBy;

/* loaded from: classes15.dex */
public interface CTRangePr extends XmlObject {
    public static final DocumentFactory<CTRangePr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRangePr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrangeprc5betype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getAutoEnd();

    boolean getAutoStart();

    Calendar getEndDate();

    double getEndNum();

    STGroupBy.Enum getGroupBy();

    double getGroupInterval();

    Calendar getStartDate();

    double getStartNum();

    boolean isSetAutoEnd();

    boolean isSetAutoStart();

    boolean isSetEndDate();

    boolean isSetEndNum();

    boolean isSetGroupBy();

    boolean isSetGroupInterval();

    boolean isSetStartDate();

    boolean isSetStartNum();

    void setAutoEnd(boolean z);

    void setAutoStart(boolean z);

    void setEndDate(Calendar calendar);

    void setEndNum(double d);

    void setGroupBy(STGroupBy.Enum r1);

    void setGroupInterval(double d);

    void setStartDate(Calendar calendar);

    void setStartNum(double d);

    void unsetAutoEnd();

    void unsetAutoStart();

    void unsetEndDate();

    void unsetEndNum();

    void unsetGroupBy();

    void unsetGroupInterval();

    void unsetStartDate();

    void unsetStartNum();

    XmlBoolean xgetAutoEnd();

    XmlBoolean xgetAutoStart();

    XmlDateTime xgetEndDate();

    XmlDouble xgetEndNum();

    STGroupBy xgetGroupBy();

    XmlDouble xgetGroupInterval();

    XmlDateTime xgetStartDate();

    XmlDouble xgetStartNum();

    void xsetAutoEnd(XmlBoolean xmlBoolean);

    void xsetAutoStart(XmlBoolean xmlBoolean);

    void xsetEndDate(XmlDateTime xmlDateTime);

    void xsetEndNum(XmlDouble xmlDouble);

    void xsetGroupBy(STGroupBy sTGroupBy);

    void xsetGroupInterval(XmlDouble xmlDouble);

    void xsetStartDate(XmlDateTime xmlDateTime);

    void xsetStartNum(XmlDouble xmlDouble);
}
