package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SignaturePropertiesDocument extends XmlObject {
    public static final DocumentFactory<SignaturePropertiesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignaturePropertiesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signatureproperties8af6doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignaturePropertiesType addNewSignatureProperties();

    SignaturePropertiesType getSignatureProperties();

    void setSignatureProperties(SignaturePropertiesType signaturePropertiesType);
}
