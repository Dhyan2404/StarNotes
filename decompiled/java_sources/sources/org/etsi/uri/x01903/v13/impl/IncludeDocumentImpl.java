package org.etsi.uri.x01903.v13.impl;

import androidx.constraintlayout.motion.widget.MotionScene;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.IncludeDocument;
import org.etsi.uri.x01903.v13.IncludeType;

/* loaded from: classes13.dex */
public class IncludeDocumentImpl extends XmlComplexContentImpl implements IncludeDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, MotionScene.f3919H)};
    private static final long serialVersionUID = 1;

    public IncludeDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.IncludeDocument
    public IncludeType addNewInclude() {
        IncludeType includeType;
        synchronized (monitor()) {
            check_orphaned();
            includeType = (IncludeType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return includeType;
    }

    @Override // org.etsi.uri.x01903.v13.IncludeDocument
    public IncludeType getInclude() {
        IncludeType includeType;
        synchronized (monitor()) {
            check_orphaned();
            includeType = (IncludeType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (includeType == null) {
                includeType = null;
            }
        }
        return includeType;
    }

    @Override // org.etsi.uri.x01903.v13.IncludeDocument
    public void setInclude(IncludeType includeType) {
        generatedSetterHelperImpl(includeType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
