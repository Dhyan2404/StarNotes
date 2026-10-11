package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTLimUpp extends XmlObject {
    public static final DocumentFactory<CTLimUpp> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLimUpp> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlimuppd44dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewE();

    CTOMathArg addNewLim();

    CTLimUppPr addNewLimUppPr();

    CTOMathArg getE();

    CTOMathArg getLim();

    CTLimUppPr getLimUppPr();

    boolean isSetLimUppPr();

    void setE(CTOMathArg cTOMathArg);

    void setLim(CTOMathArg cTOMathArg);

    void setLimUppPr(CTLimUppPr cTLimUppPr);

    void unsetLimUppPr();
}
