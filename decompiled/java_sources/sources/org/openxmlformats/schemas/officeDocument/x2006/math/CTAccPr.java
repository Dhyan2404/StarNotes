package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAccPr extends XmlObject {
    public static final DocumentFactory<CTAccPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAccPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctaccprcd59type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTChar addNewChr();

    CTCtrlPr addNewCtrlPr();

    CTChar getChr();

    CTCtrlPr getCtrlPr();

    boolean isSetChr();

    boolean isSetCtrlPr();

    void setChr(CTChar cTChar);

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void unsetChr();

    void unsetCtrlPr();
}
