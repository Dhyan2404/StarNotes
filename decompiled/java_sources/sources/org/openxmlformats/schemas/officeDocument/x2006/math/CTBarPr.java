package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBarPr extends XmlObject {
    public static final DocumentFactory<CTBarPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBarPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbarpr5307type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCtrlPr addNewCtrlPr();

    CTTopBot addNewPos();

    CTCtrlPr getCtrlPr();

    CTTopBot getPos();

    boolean isSetCtrlPr();

    boolean isSetPos();

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void setPos(CTTopBot cTTopBot);

    void unsetCtrlPr();

    void unsetPos();
}
