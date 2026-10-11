package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTNull;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.NullDocument;

/* loaded from: classes14.dex */
public class NullDocumentImpl extends XmlComplexContentImpl implements NullDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "null")};
    private static final long serialVersionUID = 1;

    public NullDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.NullDocument
    public CTNull addNewNull() {
        CTNull cTNull;
        synchronized (monitor()) {
            check_orphaned();
            cTNull = (CTNull) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNull;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.NullDocument
    public CTNull getNull() {
        CTNull cTNull;
        synchronized (monitor()) {
            check_orphaned();
            cTNull = (CTNull) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTNull == null) {
                cTNull = null;
            }
        }
        return cTNull;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.NullDocument
    public void setNull(CTNull cTNull) {
        generatedSetterHelperImpl(cTNull, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
