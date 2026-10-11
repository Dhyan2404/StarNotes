package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBoxPr extends XmlObject {
    public static final DocumentFactory<CTBoxPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBoxPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctboxpr2c4ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewAln();

    CTManualBreak addNewBrk();

    CTCtrlPr addNewCtrlPr();

    CTOnOff addNewDiff();

    CTOnOff addNewNoBreak();

    CTOnOff addNewOpEmu();

    CTOnOff getAln();

    CTManualBreak getBrk();

    CTCtrlPr getCtrlPr();

    CTOnOff getDiff();

    CTOnOff getNoBreak();

    CTOnOff getOpEmu();

    boolean isSetAln();

    boolean isSetBrk();

    boolean isSetCtrlPr();

    boolean isSetDiff();

    boolean isSetNoBreak();

    boolean isSetOpEmu();

    void setAln(CTOnOff cTOnOff);

    void setBrk(CTManualBreak cTManualBreak);

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void setDiff(CTOnOff cTOnOff);

    void setNoBreak(CTOnOff cTOnOff);

    void setOpEmu(CTOnOff cTOnOff);

    void unsetAln();

    void unsetBrk();

    void unsetCtrlPr();

    void unsetDiff();

    void unsetNoBreak();

    void unsetOpEmu();
}
