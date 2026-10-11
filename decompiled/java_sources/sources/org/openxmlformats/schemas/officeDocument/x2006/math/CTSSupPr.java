package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSSupPr extends XmlObject {
    public static final DocumentFactory<CTSSupPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSSupPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctssuppr3595type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCtrlPr addNewCtrlPr();

    CTCtrlPr getCtrlPr();

    boolean isSetCtrlPr();

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void unsetCtrlPr();
}
