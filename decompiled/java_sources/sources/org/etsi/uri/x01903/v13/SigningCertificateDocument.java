package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SigningCertificateDocument extends XmlObject {
    public static final DocumentFactory<SigningCertificateDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SigningCertificateDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signingcertificate6e56doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CertIDListType addNewSigningCertificate();

    CertIDListType getSigningCertificate();

    void setSigningCertificate(CertIDListType certIDListType);
}
