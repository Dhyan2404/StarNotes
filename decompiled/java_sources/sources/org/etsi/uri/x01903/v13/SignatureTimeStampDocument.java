package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SignatureTimeStampDocument extends XmlObject {
    public static final DocumentFactory<SignatureTimeStampDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignatureTimeStampDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signaturetimestamp0b22doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    XAdESTimeStampType addNewSignatureTimeStamp();

    XAdESTimeStampType getSignatureTimeStamp();

    void setSignatureTimeStamp(XAdESTimeStampType xAdESTimeStampType);
}
