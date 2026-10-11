package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlShort;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.I2Document;

/* loaded from: classes14.dex */
public class I2DocumentImpl extends XmlComplexContentImpl implements I2Document {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i2")};
    private static final long serialVersionUID = 1;

    public I2DocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.I2Document
    public short getI2() {
        short s;
        synchronized (monitor()) {
            check_orphaned();
            s = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (simpleValue != null) {
                s = simpleValue.getShortValue();
            }
        }
        return s;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.I2Document
    public void setI2(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.I2Document
    public XmlShort xgetI2() {
        XmlShort xmlShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlShort = (XmlShort) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return xmlShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.I2Document
    public void xsetI2(XmlShort xmlShort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlShort xmlShort2 = (XmlShort) typeStore.find_element_user(qNameArr[0], 0);
            if (xmlShort2 == null) {
                xmlShort2 = (XmlShort) get_store().add_element_user(qNameArr[0]);
            }
            xmlShort2.set(xmlShort);
        }
    }
}
