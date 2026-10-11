package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SignedSignaturePropertiesDocument extends XmlObject {
    public static final DocumentFactory<SignedSignaturePropertiesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignedSignaturePropertiesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signedsignatureproperties74c1doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignedSignaturePropertiesType addNewSignedSignatureProperties();

    SignedSignaturePropertiesType getSignedSignatureProperties();

    void setSignedSignatureProperties(SignedSignaturePropertiesType signedSignaturePropertiesType);
}
