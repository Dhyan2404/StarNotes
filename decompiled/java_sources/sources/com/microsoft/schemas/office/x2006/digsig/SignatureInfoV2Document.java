package com.microsoft.schemas.office.x2006.digsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface SignatureInfoV2Document extends XmlObject {
    public static final DocumentFactory<SignatureInfoV2Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignatureInfoV2Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signatureinfov2e46cdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSignatureInfoV2 addNewSignatureInfoV2();

    CTSignatureInfoV2 getSignatureInfoV2();

    void setSignatureInfoV2(CTSignatureInfoV2 cTSignatureInfoV2);
}
