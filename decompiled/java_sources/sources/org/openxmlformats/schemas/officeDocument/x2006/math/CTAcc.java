package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAcc extends XmlObject {
    public static final DocumentFactory<CTAcc> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAcc> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctaccd5bbtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAccPr addNewAccPr();

    CTOMathArg addNewE();

    CTAccPr getAccPr();

    CTOMathArg getE();

    boolean isSetAccPr();

    void setAccPr(CTAccPr cTAccPr);

    void setE(CTOMathArg cTOMathArg);

    void unsetAccPr();
}
