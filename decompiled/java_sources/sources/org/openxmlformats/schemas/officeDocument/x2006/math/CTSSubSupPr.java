package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSSubSupPr extends XmlObject {
    public static final DocumentFactory<CTSSubSupPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSSubSupPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctssubsuppr1919type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewAlnScr();

    CTCtrlPr addNewCtrlPr();

    CTOnOff getAlnScr();

    CTCtrlPr getCtrlPr();

    boolean isSetAlnScr();

    boolean isSetCtrlPr();

    void setAlnScr(CTOnOff cTOnOff);

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void unsetAlnScr();

    void unsetCtrlPr();
}
