package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.ErrorDocument;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STError;

/* loaded from: classes14.dex */
public class ErrorDocumentImpl extends XmlComplexContentImpl implements ErrorDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "error")};
    private static final long serialVersionUID = 1;

    public ErrorDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.ErrorDocument
    public String getError() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.ErrorDocument
    public void setError(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.ErrorDocument
    public STError xgetError() {
        STError sTError;
        synchronized (monitor()) {
            check_orphaned();
            sTError = (STError) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return sTError;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.ErrorDocument
    public void xsetError(STError sTError) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STError sTError2 = (STError) typeStore.find_element_user(qNameArr[0], 0);
            if (sTError2 == null) {
                sTError2 = (STError) get_store().add_element_user(qNameArr[0]);
            }
            sTError2.set(sTError);
        }
    }
}
