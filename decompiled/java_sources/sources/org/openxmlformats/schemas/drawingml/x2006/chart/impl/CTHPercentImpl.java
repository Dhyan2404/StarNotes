package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTHPercent;
import org.openxmlformats.schemas.drawingml.x2006.chart.STHPercent;

/* loaded from: classes14.dex */
public class CTHPercentImpl extends XmlComplexContentImpl implements CTHPercent {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTHPercentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTHPercent
    public Object getVal() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTHPercent
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTHPercent
    public void setVal(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTHPercent
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTHPercent
    public STHPercent xgetVal() {
        STHPercent sTHPercent;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTHPercent = (STHPercent) typeStore.find_attribute_user(qNameArr[0]);
            if (sTHPercent == null) {
                sTHPercent = (STHPercent) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTHPercent;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTHPercent
    public void xsetVal(STHPercent sTHPercent) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STHPercent sTHPercent2 = (STHPercent) typeStore.find_attribute_user(qNameArr[0]);
            if (sTHPercent2 == null) {
                sTHPercent2 = (STHPercent) get_store().add_attribute_user(qNameArr[0]);
            }
            sTHPercent2.set(sTHPercent);
        }
    }
}
