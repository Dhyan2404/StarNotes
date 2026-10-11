package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.ManifestDocument;
import org.p120w3.x2000.x09.xmldsig.ManifestType;

/* loaded from: classes16.dex */
public class ManifestDocumentImpl extends XmlComplexContentImpl implements ManifestDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "Manifest")};
    private static final long serialVersionUID = 1;

    public ManifestDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestDocument
    public ManifestType addNewManifest() {
        ManifestType manifestType;
        synchronized (monitor()) {
            check_orphaned();
            manifestType = (ManifestType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return manifestType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestDocument
    public ManifestType getManifest() {
        ManifestType manifestType;
        synchronized (monitor()) {
            check_orphaned();
            manifestType = (ManifestType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (manifestType == null) {
                manifestType = null;
            }
        }
        return manifestType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestDocument
    public void setManifest(ManifestType manifestType) {
        generatedSetterHelperImpl(manifestType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
