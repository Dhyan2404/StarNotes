package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBorderBoxPr extends XmlObject {
    public static final DocumentFactory<CTBorderBoxPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBorderBoxPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctborderboxpr14dbtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCtrlPr addNewCtrlPr();

    CTOnOff addNewHideBot();

    CTOnOff addNewHideLeft();

    CTOnOff addNewHideRight();

    CTOnOff addNewHideTop();

    CTOnOff addNewStrikeBLTR();

    CTOnOff addNewStrikeH();

    CTOnOff addNewStrikeTLBR();

    CTOnOff addNewStrikeV();

    CTCtrlPr getCtrlPr();

    CTOnOff getHideBot();

    CTOnOff getHideLeft();

    CTOnOff getHideRight();

    CTOnOff getHideTop();

    CTOnOff getStrikeBLTR();

    CTOnOff getStrikeH();

    CTOnOff getStrikeTLBR();

    CTOnOff getStrikeV();

    boolean isSetCtrlPr();

    boolean isSetHideBot();

    boolean isSetHideLeft();

    boolean isSetHideRight();

    boolean isSetHideTop();

    boolean isSetStrikeBLTR();

    boolean isSetStrikeH();

    boolean isSetStrikeTLBR();

    boolean isSetStrikeV();

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void setHideBot(CTOnOff cTOnOff);

    void setHideLeft(CTOnOff cTOnOff);

    void setHideRight(CTOnOff cTOnOff);

    void setHideTop(CTOnOff cTOnOff);

    void setStrikeBLTR(CTOnOff cTOnOff);

    void setStrikeH(CTOnOff cTOnOff);

    void setStrikeTLBR(CTOnOff cTOnOff);

    void setStrikeV(CTOnOff cTOnOff);

    void unsetCtrlPr();

    void unsetHideBot();

    void unsetHideLeft();

    void unsetHideRight();

    void unsetHideTop();

    void unsetStrikeBLTR();

    void unsetStrikeH();

    void unsetStrikeTLBR();

    void unsetStrikeV();
}
