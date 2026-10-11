package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTFirstSliceAng;
import org.openxmlformats.schemas.drawingml.x2006.chart.STFirstSliceAng;

/* loaded from: classes14.dex */
public class CTFirstSliceAngImpl extends XmlComplexContentImpl implements CTFirstSliceAng {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTFirstSliceAngImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTFirstSliceAng
    public int getVal() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            i = 0;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTFirstSliceAng
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTFirstSliceAng
    public void setVal(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTFirstSliceAng
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTFirstSliceAng
    public STFirstSliceAng xgetVal() {
        STFirstSliceAng sTFirstSliceAng;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTFirstSliceAng = (STFirstSliceAng) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFirstSliceAng == null) {
                sTFirstSliceAng = (STFirstSliceAng) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTFirstSliceAng;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTFirstSliceAng
    public void xsetVal(STFirstSliceAng sTFirstSliceAng) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFirstSliceAng sTFirstSliceAng2 = (STFirstSliceAng) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFirstSliceAng2 == null) {
                sTFirstSliceAng2 = (STFirstSliceAng) get_store().add_attribute_user(qNameArr[0]);
            }
            sTFirstSliceAng2.set(sTFirstSliceAng);
        }
    }
}
