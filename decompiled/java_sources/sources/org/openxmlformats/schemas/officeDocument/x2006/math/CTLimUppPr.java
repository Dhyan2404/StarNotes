package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTLimUppPr extends XmlObject {
    public static final DocumentFactory<CTLimUppPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLimUppPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlimupppr6f6btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCtrlPr addNewCtrlPr();

    CTCtrlPr getCtrlPr();

    boolean isSetCtrlPr();

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void unsetCtrlPr();
}
