package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTFPr extends XmlObject {
    public static final DocumentFactory<CTFPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfpr04d4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCtrlPr addNewCtrlPr();

    CTFType addNewType();

    CTCtrlPr getCtrlPr();

    CTFType getType();

    boolean isSetCtrlPr();

    boolean isSetType();

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void setType(CTFType cTFType);

    void unsetCtrlPr();

    void unsetType();
}
