package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.ArrayDocument;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray;

/* loaded from: classes14.dex */
public class ArrayDocumentImpl extends XmlComplexContentImpl implements ArrayDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "array")};
    private static final long serialVersionUID = 1;

    public ArrayDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.ArrayDocument
    public CTArray addNewArray() {
        CTArray cTArray;
        synchronized (monitor()) {
            check_orphaned();
            cTArray = (CTArray) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTArray;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.ArrayDocument
    public CTArray getArray() {
        CTArray cTArray;
        synchronized (monitor()) {
            check_orphaned();
            cTArray = (CTArray) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTArray == null) {
                cTArray = null;
            }
        }
        return cTArray;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.ArrayDocument
    public void setArray(CTArray cTArray) {
        generatedSetterHelperImpl(cTArray, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
