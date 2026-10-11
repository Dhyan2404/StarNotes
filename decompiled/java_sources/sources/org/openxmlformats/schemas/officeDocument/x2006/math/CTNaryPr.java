package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTNaryPr extends XmlObject {
    public static final DocumentFactory<CTNaryPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNaryPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnarypr7396type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTChar addNewChr();

    CTCtrlPr addNewCtrlPr();

    CTOnOff addNewGrow();

    CTLimLoc addNewLimLoc();

    CTOnOff addNewSubHide();

    CTOnOff addNewSupHide();

    CTChar getChr();

    CTCtrlPr getCtrlPr();

    CTOnOff getGrow();

    CTLimLoc getLimLoc();

    CTOnOff getSubHide();

    CTOnOff getSupHide();

    boolean isSetChr();

    boolean isSetCtrlPr();

    boolean isSetGrow();

    boolean isSetLimLoc();

    boolean isSetSubHide();

    boolean isSetSupHide();

    void setChr(CTChar cTChar);

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void setGrow(CTOnOff cTOnOff);

    void setLimLoc(CTLimLoc cTLimLoc);

    void setSubHide(CTOnOff cTOnOff);

    void setSupHide(CTOnOff cTOnOff);

    void unsetChr();

    void unsetCtrlPr();

    void unsetGrow();

    void unsetLimLoc();

    void unsetSubHide();

    void unsetSupHide();
}
