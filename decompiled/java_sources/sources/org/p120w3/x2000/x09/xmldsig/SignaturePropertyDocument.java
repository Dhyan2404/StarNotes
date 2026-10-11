package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SignaturePropertyDocument extends XmlObject {
    public static final DocumentFactory<SignaturePropertyDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignaturePropertyDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signatureproperty7354doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignaturePropertyType addNewSignatureProperty();

    SignaturePropertyType getSignatureProperty();

    void setSignatureProperty(SignaturePropertyType signaturePropertyType);
}
