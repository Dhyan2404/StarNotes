package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface AttrAuthoritiesCertValuesDocument extends XmlObject {
    public static final DocumentFactory<AttrAuthoritiesCertValuesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AttrAuthoritiesCertValuesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "attrauthoritiescertvalues4ca8doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CertificateValuesType addNewAttrAuthoritiesCertValues();

    CertificateValuesType getAttrAuthoritiesCertValues();

    void setAttrAuthoritiesCertValues(CertificateValuesType certificateValuesType);
}
