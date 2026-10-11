package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSSubSup extends XmlObject {
    public static final DocumentFactory<CTSSubSup> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSSubSup> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctssubsup117btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewE();

    CTSSubSupPr addNewSSubSupPr();

    CTOMathArg addNewSub();

    CTOMathArg addNewSup();

    CTOMathArg getE();

    CTSSubSupPr getSSubSupPr();

    CTOMathArg getSub();

    CTOMathArg getSup();

    boolean isSetSSubSupPr();

    void setE(CTOMathArg cTOMathArg);

    void setSSubSupPr(CTSSubSupPr cTSSubSupPr);

    void setSub(CTOMathArg cTOMathArg);

    void setSup(CTOMathArg cTOMathArg);

    void unsetSSubSupPr();
}
