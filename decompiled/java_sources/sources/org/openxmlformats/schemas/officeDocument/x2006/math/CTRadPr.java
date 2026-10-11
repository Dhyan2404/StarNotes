package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTRadPr extends XmlObject {
    public static final DocumentFactory<CTRadPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRadPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctradpr7645type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCtrlPr addNewCtrlPr();

    CTOnOff addNewDegHide();

    CTCtrlPr getCtrlPr();

    CTOnOff getDegHide();

    boolean isSetCtrlPr();

    boolean isSetDegHide();

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void setDegHide(CTOnOff cTOnOff);

    void unsetCtrlPr();

    void unsetDegHide();
}
