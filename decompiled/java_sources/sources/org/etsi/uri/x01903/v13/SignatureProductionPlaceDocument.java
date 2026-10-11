package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SignatureProductionPlaceDocument extends XmlObject {
    public static final DocumentFactory<SignatureProductionPlaceDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignatureProductionPlaceDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signatureproductionplace2b3adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignatureProductionPlaceType addNewSignatureProductionPlace();

    SignatureProductionPlaceType getSignatureProductionPlace();

    void setSignatureProductionPlace(SignatureProductionPlaceType signatureProductionPlaceType);
}
