package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTCrosses;
import org.openxmlformats.schemas.drawingml.x2006.chart.STCrosses;

/* loaded from: classes14.dex */
public class CTCrossesImpl extends XmlComplexContentImpl implements CTCrosses {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTCrossesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTCrosses
    public STCrosses.Enum getVal() {
        STCrosses.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STCrosses.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTCrosses
    public void setVal(STCrosses.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTCrosses
    public STCrosses xgetVal() {
        STCrosses sTCrosses;
        synchronized (monitor()) {
            check_orphaned();
            sTCrosses = (STCrosses) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTCrosses;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTCrosses
    public void xsetVal(STCrosses sTCrosses) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STCrosses sTCrosses2 = (STCrosses) typeStore.find_attribute_user(qNameArr[0]);
            if (sTCrosses2 == null) {
                sTCrosses2 = (STCrosses) get_store().add_attribute_user(qNameArr[0]);
            }
            sTCrosses2.set(sTCrosses);
        }
    }
}
