package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTClipPath;
import com.microsoft.schemas.office.office.ClippathDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ClippathDocumentImpl extends XmlComplexContentImpl implements ClippathDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "clippath")};
    private static final long serialVersionUID = 1;

    public ClippathDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.ClippathDocument
    public CTClipPath addNewClippath() {
        CTClipPath cTClipPath;
        synchronized (monitor()) {
            check_orphaned();
            cTClipPath = (CTClipPath) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTClipPath;
    }

    @Override // com.microsoft.schemas.office.office.ClippathDocument
    public CTClipPath getClippath() {
        CTClipPath cTClipPath;
        synchronized (monitor()) {
            check_orphaned();
            cTClipPath = (CTClipPath) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTClipPath == null) {
                cTClipPath = null;
            }
        }
        return cTClipPath;
    }

    @Override // com.microsoft.schemas.office.office.ClippathDocument
    public void setClippath(CTClipPath cTClipPath) {
        generatedSetterHelperImpl(cTClipPath, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
