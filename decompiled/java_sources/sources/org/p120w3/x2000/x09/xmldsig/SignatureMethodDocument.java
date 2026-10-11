package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SignatureMethodDocument extends XmlObject {
    public static final DocumentFactory<SignatureMethodDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignatureMethodDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signaturemethode108doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignatureMethodType addNewSignatureMethod();

    SignatureMethodType getSignatureMethod();

    void setSignatureMethod(SignatureMethodType signatureMethodType);
}
