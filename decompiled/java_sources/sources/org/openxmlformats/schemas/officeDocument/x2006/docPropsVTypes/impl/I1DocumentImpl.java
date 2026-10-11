package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlByte;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.I1Document;

/* loaded from: classes14.dex */
public class I1DocumentImpl extends XmlComplexContentImpl implements I1Document {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i1")};
    private static final long serialVersionUID = 1;

    public I1DocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.I1Document
    public byte getI1() {
        byte b;
        synchronized (monitor()) {
            check_orphaned();
            b = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (simpleValue != null) {
                b = simpleValue.getByteValue();
            }
        }
        return b;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.I1Document
    public void setI1(byte b) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setByteValue(b);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.I1Document
    public XmlByte xgetI1() {
        XmlByte xmlByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlByte = (XmlByte) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return xmlByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.I1Document
    public void xsetI1(XmlByte xmlByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlByte xmlByte2 = (XmlByte) typeStore.find_element_user(qNameArr[0], 0);
            if (xmlByte2 == null) {
                xmlByte2 = (XmlByte) get_store().add_element_user(qNameArr[0]);
            }
            xmlByte2.set(xmlByte);
        }
    }
}
