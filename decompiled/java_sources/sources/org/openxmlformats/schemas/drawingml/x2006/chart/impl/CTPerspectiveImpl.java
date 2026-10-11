package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPerspective;
import org.openxmlformats.schemas.drawingml.x2006.chart.STPerspective;

/* loaded from: classes14.dex */
public class CTPerspectiveImpl extends XmlComplexContentImpl implements CTPerspective {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTPerspectiveImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPerspective
    public short getVal() {
        short s;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            s = 0;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            if (simpleValue != null) {
                s = simpleValue.getShortValue();
            }
        }
        return s;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPerspective
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPerspective
    public void setVal(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPerspective
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPerspective
    public STPerspective xgetVal() {
        STPerspective sTPerspective;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPerspective = (STPerspective) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPerspective == null) {
                sTPerspective = (STPerspective) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTPerspective;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPerspective
    public void xsetVal(STPerspective sTPerspective) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPerspective sTPerspective2 = (STPerspective) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPerspective2 == null) {
                sTPerspective2 = (STPerspective) get_store().add_attribute_user(qNameArr[0]);
            }
            sTPerspective2.set(sTPerspective);
        }
    }
}
