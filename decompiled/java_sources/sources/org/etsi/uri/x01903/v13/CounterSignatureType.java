package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.p120w3.x2000.x09.xmldsig.SignatureType;

/* loaded from: classes13.dex */
public interface CounterSignatureType extends XmlObject {
    public static final DocumentFactory<CounterSignatureType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CounterSignatureType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "countersignaturetypee52atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignatureType addNewSignature();

    SignatureType getSignature();

    void setSignature(SignatureType signatureType);
}
