package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTRad extends XmlObject {
    public static final DocumentFactory<CTRad> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRad> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctradc9a7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewDeg();

    CTOMathArg addNewE();

    CTRadPr addNewRadPr();

    CTOMathArg getDeg();

    CTOMathArg getE();

    CTRadPr getRadPr();

    boolean isSetRadPr();

    void setDeg(CTOMathArg cTOMathArg);

    void setE(CTOMathArg cTOMathArg);

    void setRadPr(CTRadPr cTRadPr);

    void unsetRadPr();
}
