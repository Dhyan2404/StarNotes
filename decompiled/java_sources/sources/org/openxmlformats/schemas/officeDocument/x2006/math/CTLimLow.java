package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTLimLow extends XmlObject {
    public static final DocumentFactory<CTLimLow> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLimLow> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlimlowd6cetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewE();

    CTOMathArg addNewLim();

    CTLimLowPr addNewLimLowPr();

    CTOMathArg getE();

    CTOMathArg getLim();

    CTLimLowPr getLimLowPr();

    boolean isSetLimLowPr();

    void setE(CTOMathArg cTOMathArg);

    void setLim(CTOMathArg cTOMathArg);

    void setLimLowPr(CTLimLowPr cTLimLowPr);

    void unsetLimLowPr();
}
