package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTNary extends XmlObject {
    public static final DocumentFactory<CTNary> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNary> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnarye738type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewE();

    CTNaryPr addNewNaryPr();

    CTOMathArg addNewSub();

    CTOMathArg addNewSup();

    CTOMathArg getE();

    CTNaryPr getNaryPr();

    CTOMathArg getSub();

    CTOMathArg getSup();

    boolean isSetNaryPr();

    void setE(CTOMathArg cTOMathArg);

    void setNaryPr(CTNaryPr cTNaryPr);

    void setSub(CTOMathArg cTOMathArg);

    void setSup(CTOMathArg cTOMathArg);

    void unsetNaryPr();
}
