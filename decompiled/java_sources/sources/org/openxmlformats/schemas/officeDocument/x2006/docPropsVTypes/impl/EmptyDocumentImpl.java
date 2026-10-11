package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTEmpty;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.EmptyDocument;

/* loaded from: classes14.dex */
public class EmptyDocumentImpl extends XmlComplexContentImpl implements EmptyDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", Constants.ELEMNAME_EMPTY_STRING)};
    private static final long serialVersionUID = 1;

    public EmptyDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.EmptyDocument
    public CTEmpty addNewEmpty() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.EmptyDocument
    public CTEmpty getEmpty() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.EmptyDocument
    public void setEmpty(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
