package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.Calendar;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STDynamicFilterType;

/* loaded from: classes15.dex */
public interface CTDynamicFilter extends XmlObject {
    public static final DocumentFactory<CTDynamicFilter> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDynamicFilter> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdynamicfilter3bf6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    double getMaxVal();

    Calendar getMaxValIso();

    STDynamicFilterType.Enum getType();

    double getVal();

    Calendar getValIso();

    boolean isSetMaxVal();

    boolean isSetMaxValIso();

    boolean isSetVal();

    boolean isSetValIso();

    void setMaxVal(double d);

    void setMaxValIso(Calendar calendar);

    void setType(STDynamicFilterType.Enum r1);

    void setVal(double d);

    void setValIso(Calendar calendar);

    void unsetMaxVal();

    void unsetMaxValIso();

    void unsetVal();

    void unsetValIso();

    XmlDouble xgetMaxVal();

    XmlDateTime xgetMaxValIso();

    STDynamicFilterType xgetType();

    XmlDouble xgetVal();

    XmlDateTime xgetValIso();

    void xsetMaxVal(XmlDouble xmlDouble);

    void xsetMaxValIso(XmlDateTime xmlDateTime);

    void xsetType(STDynamicFilterType sTDynamicFilterType);

    void xsetVal(XmlDouble xmlDouble);

    void xsetValIso(XmlDateTime xmlDateTime);
}
