package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVstream;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.VstreamDocument;

/* loaded from: classes14.dex */
public class VstreamDocumentImpl extends XmlComplexContentImpl implements VstreamDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "vstream")};
    private static final long serialVersionUID = 1;

    public VstreamDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.VstreamDocument
    public CTVstream addNewVstream() {
        CTVstream cTVstream;
        synchronized (monitor()) {
            check_orphaned();
            cTVstream = (CTVstream) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVstream;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.VstreamDocument
    public CTVstream getVstream() {
        CTVstream cTVstream;
        synchronized (monitor()) {
            check_orphaned();
            cTVstream = (CTVstream) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTVstream == null) {
                cTVstream = null;
            }
        }
        return cTVstream;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.VstreamDocument
    public void setVstream(CTVstream cTVstream) {
        generatedSetterHelperImpl(cTVstream, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
