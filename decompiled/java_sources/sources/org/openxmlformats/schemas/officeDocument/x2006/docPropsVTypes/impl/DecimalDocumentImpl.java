package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import java.math.BigDecimal;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlDecimal;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.DecimalDocument;

/* loaded from: classes14.dex */
public class DecimalDocumentImpl extends XmlComplexContentImpl implements DecimalDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "decimal")};
    private static final long serialVersionUID = 1;

    public DecimalDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.DecimalDocument
    public BigDecimal getDecimal() {
        BigDecimal bigDecimalValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            bigDecimalValue = simpleValue == null ? null : simpleValue.getBigDecimalValue();
        }
        return bigDecimalValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.DecimalDocument
    public void setDecimal(BigDecimal bigDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setBigDecimalValue(bigDecimal);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.DecimalDocument
    public XmlDecimal xgetDecimal() {
        XmlDecimal xmlDecimal;
        synchronized (monitor()) {
            check_orphaned();
            xmlDecimal = (XmlDecimal) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return xmlDecimal;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.DecimalDocument
    public void xsetDecimal(XmlDecimal xmlDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDecimal xmlDecimal2 = (XmlDecimal) typeStore.find_element_user(qNameArr[0], 0);
            if (xmlDecimal2 == null) {
                xmlDecimal2 = (XmlDecimal) get_store().add_element_user(qNameArr[0]);
            }
            xmlDecimal2.set(xmlDecimal);
        }
    }
}
