package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTF extends XmlObject {
    public static final DocumentFactory<CTF> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTF> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfaff6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewDen();

    CTFPr addNewFPr();

    CTOMathArg addNewNum();

    CTOMathArg getDen();

    CTFPr getFPr();

    CTOMathArg getNum();

    boolean isSetFPr();

    void setDen(CTOMathArg cTOMathArg);

    void setFPr(CTFPr cTFPr);

    void setNum(CTOMathArg cTOMathArg);

    void unsetFPr();
}
