package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTRotX;
import org.openxmlformats.schemas.drawingml.x2006.chart.STRotX;

/* loaded from: classes14.dex */
public class CTRotXImpl extends XmlComplexContentImpl implements CTRotX {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTRotXImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRotX
    public byte getVal() {
        byte b;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            b = 0;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            if (simpleValue != null) {
                b = simpleValue.getByteValue();
            }
        }
        return b;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRotX
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRotX
    public void setVal(byte b) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setByteValue(b);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRotX
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRotX
    public STRotX xgetVal() {
        STRotX sTRotX;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTRotX = (STRotX) typeStore.find_attribute_user(qNameArr[0]);
            if (sTRotX == null) {
                sTRotX = (STRotX) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTRotX;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRotX
    public void xsetVal(STRotX sTRotX) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRotX sTRotX2 = (STRotX) typeStore.find_attribute_user(qNameArr[0]);
            if (sTRotX2 == null) {
                sTRotX2 = (STRotX) get_store().add_attribute_user(qNameArr[0]);
            }
            sTRotX2.set(sTRotX);
        }
    }
}
