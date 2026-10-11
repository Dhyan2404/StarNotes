package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface CompleteCertificateRefsDocument extends XmlObject {
    public static final DocumentFactory<CompleteCertificateRefsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CompleteCertificateRefsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "completecertificaterefsa170doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CompleteCertificateRefsType addNewCompleteCertificateRefs();

    CompleteCertificateRefsType getCompleteCertificateRefs();

    void setCompleteCertificateRefs(CompleteCertificateRefsType completeCertificateRefsType);
}
