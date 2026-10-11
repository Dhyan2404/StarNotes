package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTFunc extends XmlObject {
    public static final DocumentFactory<CTFunc> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFunc> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfunc816etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewE();

    CTOMathArg addNewFName();

    CTFuncPr addNewFuncPr();

    CTOMathArg getE();

    CTOMathArg getFName();

    CTFuncPr getFuncPr();

    boolean isSetFuncPr();

    void setE(CTOMathArg cTOMathArg);

    void setFName(CTOMathArg cTOMathArg);

    void setFuncPr(CTFuncPr cTFuncPr);

    void unsetFuncPr();
}
