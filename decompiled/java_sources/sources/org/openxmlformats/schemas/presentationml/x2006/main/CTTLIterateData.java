package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STIterateType;

/* loaded from: classes14.dex */
public interface CTTLIterateData extends XmlObject {
    public static final DocumentFactory<CTTLIterateData> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLIterateData> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttliteratedatac1c3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLIterateIntervalTime addNewTmAbs();

    CTTLIterateIntervalPercentage addNewTmPct();

    boolean getBackwards();

    CTTLIterateIntervalTime getTmAbs();

    CTTLIterateIntervalPercentage getTmPct();

    STIterateType.Enum getType();

    boolean isSetBackwards();

    boolean isSetTmAbs();

    boolean isSetTmPct();

    boolean isSetType();

    void setBackwards(boolean z);

    void setTmAbs(CTTLIterateIntervalTime cTTLIterateIntervalTime);

    void setTmPct(CTTLIterateIntervalPercentage cTTLIterateIntervalPercentage);

    void setType(STIterateType.Enum r1);

    void unsetBackwards();

    void unsetTmAbs();

    void unsetTmPct();

    void unsetType();

    XmlBoolean xgetBackwards();

    STIterateType xgetType();

    void xsetBackwards(XmlBoolean xmlBoolean);

    void xsetType(STIterateType sTIterateType);
}
