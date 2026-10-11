package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTRPR extends XmlObject {
    public static final DocumentFactory<CTRPR> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRPR> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrprd468type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewAln();

    CTManualBreak addNewBrk();

    CTOnOff addNewLit();

    CTOnOff addNewNor();

    CTScript addNewScr();

    CTStyle addNewSty();

    CTOnOff getAln();

    CTManualBreak getBrk();

    CTOnOff getLit();

    CTOnOff getNor();

    CTScript getScr();

    CTStyle getSty();

    boolean isSetAln();

    boolean isSetBrk();

    boolean isSetLit();

    boolean isSetNor();

    boolean isSetScr();

    boolean isSetSty();

    void setAln(CTOnOff cTOnOff);

    void setBrk(CTManualBreak cTManualBreak);

    void setLit(CTOnOff cTOnOff);

    void setNor(CTOnOff cTOnOff);

    void setScr(CTScript cTScript);

    void setSty(CTStyle cTStyle);

    void unsetAln();

    void unsetBrk();

    void unsetLit();

    void unsetNor();

    void unsetScr();

    void unsetSty();
}
