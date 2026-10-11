package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariantFloatVal;

/* loaded from: classes14.dex */
public class CTTLAnimVariantFloatValImpl extends XmlComplexContentImpl implements CTTLAnimVariantFloatVal {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTTLAnimVariantFloatValImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariantFloatVal
    public float getVal() {
        float floatValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            floatValue = simpleValue == null ? 0.0f : simpleValue.getFloatValue();
        }
        return floatValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariantFloatVal
    public void setVal(float f) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setFloatValue(f);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariantFloatVal
    public XmlFloat xgetVal() {
        XmlFloat xmlFloat;
        synchronized (monitor()) {
            check_orphaned();
            xmlFloat = (XmlFloat) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlFloat;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariantFloatVal
    public void xsetVal(XmlFloat xmlFloat) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlFloat xmlFloat2 = (XmlFloat) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlFloat2 == null) {
                xmlFloat2 = (XmlFloat) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlFloat2.set(xmlFloat);
        }
    }
}
