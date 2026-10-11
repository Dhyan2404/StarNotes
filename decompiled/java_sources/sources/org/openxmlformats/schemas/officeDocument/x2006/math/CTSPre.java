package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSPre extends XmlObject {
    public static final DocumentFactory<CTSPre> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSPre> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctspre2f82type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewE();

    CTSPrePr addNewSPrePr();

    CTOMathArg addNewSub();

    CTOMathArg addNewSup();

    CTOMathArg getE();

    CTSPrePr getSPrePr();

    CTOMathArg getSub();

    CTOMathArg getSup();

    boolean isSetSPrePr();

    void setE(CTOMathArg cTOMathArg);

    void setSPrePr(CTSPrePr cTSPrePr);

    void setSub(CTOMathArg cTOMathArg);

    void setSup(CTOMathArg cTOMathArg);

    void unsetSPrePr();
}
