package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerSize;
import org.openxmlformats.schemas.drawingml.x2006.chart.STMarkerSize;

/* loaded from: classes14.dex */
public class CTMarkerSizeImpl extends XmlComplexContentImpl implements CTMarkerSize {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTMarkerSizeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerSize
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerSize
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerSize
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerSize
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerSize
    public STMarkerSize xgetVal() {
        STMarkerSize sTMarkerSize;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTMarkerSize = (STMarkerSize) typeStore.find_attribute_user(qNameArr[0]);
            if (sTMarkerSize == null) {
                sTMarkerSize = (STMarkerSize) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTMarkerSize;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerSize
    public void xsetVal(STMarkerSize sTMarkerSize) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMarkerSize sTMarkerSize2 = (STMarkerSize) typeStore.find_attribute_user(qNameArr[0]);
            if (sTMarkerSize2 == null) {
                sTMarkerSize2 = (STMarkerSize) get_store().add_attribute_user(qNameArr[0]);
            }
            sTMarkerSize2.set(sTMarkerSize);
        }
    }
}
