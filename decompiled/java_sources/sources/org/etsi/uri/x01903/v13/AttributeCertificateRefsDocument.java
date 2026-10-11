package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface AttributeCertificateRefsDocument extends XmlObject {
    public static final DocumentFactory<AttributeCertificateRefsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AttributeCertificateRefsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "attributecertificaterefsac3fdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CompleteCertificateRefsType addNewAttributeCertificateRefs();

    CompleteCertificateRefsType getAttributeCertificateRefs();

    void setAttributeCertificateRefs(CompleteCertificateRefsType completeCertificateRefsType);
}
