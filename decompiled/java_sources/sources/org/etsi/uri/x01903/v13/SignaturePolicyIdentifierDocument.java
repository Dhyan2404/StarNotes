package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SignaturePolicyIdentifierDocument extends XmlObject {
    public static final DocumentFactory<SignaturePolicyIdentifierDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignaturePolicyIdentifierDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signaturepolicyidentifier90c5doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignaturePolicyIdentifierType addNewSignaturePolicyIdentifier();

    SignaturePolicyIdentifierType getSignaturePolicyIdentifier();

    void setSignaturePolicyIdentifier(SignaturePolicyIdentifierType signaturePolicyIdentifierType);
}
