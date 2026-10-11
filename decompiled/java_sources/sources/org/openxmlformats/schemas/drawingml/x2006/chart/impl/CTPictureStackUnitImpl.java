package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureStackUnit;
import org.openxmlformats.schemas.drawingml.x2006.chart.STPictureStackUnit;

/* loaded from: classes14.dex */
public class CTPictureStackUnitImpl extends XmlComplexContentImpl implements CTPictureStackUnit {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTPictureStackUnitImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureStackUnit
    public double getVal() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureStackUnit
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureStackUnit
    public STPictureStackUnit xgetVal() {
        STPictureStackUnit sTPictureStackUnit;
        synchronized (monitor()) {
            check_orphaned();
            sTPictureStackUnit = (STPictureStackUnit) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTPictureStackUnit;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureStackUnit
    public void xsetVal(STPictureStackUnit sTPictureStackUnit) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPictureStackUnit sTPictureStackUnit2 = (STPictureStackUnit) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPictureStackUnit2 == null) {
                sTPictureStackUnit2 = (STPictureStackUnit) get_store().add_attribute_user(qNameArr[0]);
            }
            sTPictureStackUnit2.set(sTPictureStackUnit);
        }
    }
}
