package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface SignaturelineDocument extends XmlObject {
    public static final DocumentFactory<SignaturelineDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignaturelineDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signaturelineb791doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSignatureLine addNewSignatureline();

    CTSignatureLine getSignatureline();

    void setSignatureline(CTSignatureLine cTSignatureLine);
}
