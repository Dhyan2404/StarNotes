package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSkip;
import org.openxmlformats.schemas.drawingml.x2006.chart.STSkip;

/* loaded from: classes14.dex */
public class CTSkipImpl extends XmlComplexContentImpl implements CTSkip {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTSkipImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSkip
    public long getVal() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSkip
    public void setVal(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSkip
    public STSkip xgetVal() {
        STSkip sTSkip;
        synchronized (monitor()) {
            check_orphaned();
            sTSkip = (STSkip) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTSkip;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSkip
    public void xsetVal(STSkip sTSkip) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STSkip sTSkip2 = (STSkip) typeStore.find_attribute_user(qNameArr[0]);
            if (sTSkip2 == null) {
                sTSkip2 = (STSkip) get_store().add_attribute_user(qNameArr[0]);
            }
            sTSkip2.set(sTSkip);
        }
    }
}
