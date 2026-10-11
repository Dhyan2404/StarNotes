package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBuiltInUnit;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBuiltInUnit;

/* loaded from: classes14.dex */
public class CTBuiltInUnitImpl extends XmlComplexContentImpl implements CTBuiltInUnit {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTBuiltInUnitImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBuiltInUnit
    public STBuiltInUnit.Enum getVal() {
        STBuiltInUnit.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STBuiltInUnit.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBuiltInUnit
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBuiltInUnit
    public void setVal(STBuiltInUnit.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBuiltInUnit
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBuiltInUnit
    public STBuiltInUnit xgetVal() {
        STBuiltInUnit sTBuiltInUnit;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTBuiltInUnit = (STBuiltInUnit) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBuiltInUnit == null) {
                sTBuiltInUnit = (STBuiltInUnit) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTBuiltInUnit;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBuiltInUnit
    public void xsetVal(STBuiltInUnit sTBuiltInUnit) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBuiltInUnit sTBuiltInUnit2 = (STBuiltInUnit) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBuiltInUnit2 == null) {
                sTBuiltInUnit2 = (STBuiltInUnit) get_store().add_attribute_user(qNameArr[0]);
            }
            sTBuiltInUnit2.set(sTBuiltInUnit);
        }
    }
}
