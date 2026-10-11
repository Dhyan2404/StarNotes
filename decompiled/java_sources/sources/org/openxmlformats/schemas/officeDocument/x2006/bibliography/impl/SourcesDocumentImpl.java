package org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.SourcesDocument;

/* loaded from: classes14.dex */
public class SourcesDocumentImpl extends XmlComplexContentImpl implements SourcesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Sources")};
    private static final long serialVersionUID = 1;

    public SourcesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.SourcesDocument
    public CTSources addNewSources() {
        CTSources cTSources;
        synchronized (monitor()) {
            check_orphaned();
            cTSources = (CTSources) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSources;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.SourcesDocument
    public CTSources getSources() {
        CTSources cTSources;
        synchronized (monitor()) {
            check_orphaned();
            cTSources = (CTSources) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSources == null) {
                cTSources = null;
            }
        }
        return cTSources;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.SourcesDocument
    public void setSources(CTSources cTSources) {
        generatedSetterHelperImpl(cTSources, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
