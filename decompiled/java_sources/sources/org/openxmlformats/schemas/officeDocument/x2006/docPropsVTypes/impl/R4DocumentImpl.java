package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.R4Document;

/* loaded from: classes14.dex */
public class R4DocumentImpl extends XmlComplexContentImpl implements R4Document {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "r4")};
    private static final long serialVersionUID = 1;

    public R4DocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.R4Document
    public float getR4() {
        float floatValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            floatValue = simpleValue == null ? 0.0f : simpleValue.getFloatValue();
        }
        return floatValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.R4Document
    public void setR4(float f) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setFloatValue(f);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.R4Document
    public XmlFloat xgetR4() {
        XmlFloat xmlFloat;
        synchronized (monitor()) {
            check_orphaned();
            xmlFloat = (XmlFloat) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return xmlFloat;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.R4Document
    public void xsetR4(XmlFloat xmlFloat) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlFloat xmlFloat2 = (XmlFloat) typeStore.find_element_user(qNameArr[0], 0);
            if (xmlFloat2 == null) {
                xmlFloat2 = (XmlFloat) get_store().add_element_user(qNameArr[0]);
            }
            xmlFloat2.set(xmlFloat);
        }
    }
}
