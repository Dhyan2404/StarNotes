package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface CertificateValuesDocument extends XmlObject {
    public static final DocumentFactory<CertificateValuesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CertificateValuesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "certificatevalues2f8bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CertificateValuesType addNewCertificateValues();

    CertificateValuesType getCertificateValues();

    void setCertificateValues(CertificateValuesType certificateValuesType);
}
