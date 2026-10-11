package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxisUnit;
import org.openxmlformats.schemas.drawingml.x2006.chart.STAxisUnit;

/* loaded from: classes14.dex */
public class CTAxisUnitImpl extends XmlComplexContentImpl implements CTAxisUnit {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTAxisUnitImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTAxisUnit
    public double getVal() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTAxisUnit
    public void setVal(double d) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTAxisUnit
    public STAxisUnit xgetVal() {
        STAxisUnit sTAxisUnit;
        synchronized (monitor()) {
            check_orphaned();
            sTAxisUnit = (STAxisUnit) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTAxisUnit;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTAxisUnit
    public void xsetVal(STAxisUnit sTAxisUnit) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAxisUnit sTAxisUnit2 = (STAxisUnit) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAxisUnit2 == null) {
                sTAxisUnit2 = (STAxisUnit) get_store().add_attribute_user(qNameArr[0]);
            }
            sTAxisUnit2.set(sTAxisUnit);
        }
    }
}
