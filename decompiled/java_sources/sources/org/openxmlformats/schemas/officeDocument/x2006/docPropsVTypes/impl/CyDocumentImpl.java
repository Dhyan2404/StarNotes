package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CyDocument;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STCy;

/* loaded from: classes14.dex */
public class CyDocumentImpl extends XmlComplexContentImpl implements CyDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "cy")};
    private static final long serialVersionUID = 1;

    public CyDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CyDocument
    public String getCy() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CyDocument
    public void setCy(String str) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CyDocument
    public STCy xgetCy() {
        STCy sTCy;
        synchronized (monitor()) {
            check_orphaned();
            sTCy = (STCy) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return sTCy;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CyDocument
    public void xsetCy(STCy sTCy) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STCy sTCy2 = (STCy) typeStore.find_element_user(qNameArr[0], 0);
            if (sTCy2 == null) {
                sTCy2 = (STCy) get_store().add_element_user(qNameArr[0]);
            }
            sTCy2.set(sTCy);
        }
    }
}
