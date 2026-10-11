package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTTrendlineType;
import org.openxmlformats.schemas.drawingml.x2006.chart.STTrendlineType;

/* loaded from: classes14.dex */
public class CTTrendlineTypeImpl extends XmlComplexContentImpl implements CTTrendlineType {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTTrendlineTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTTrendlineType
    public STTrendlineType.Enum getVal() {
        STTrendlineType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STTrendlineType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTTrendlineType
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTTrendlineType
    public void setVal(STTrendlineType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTTrendlineType
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTTrendlineType
    public STTrendlineType xgetVal() {
        STTrendlineType sTTrendlineType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTTrendlineType = (STTrendlineType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTrendlineType == null) {
                sTTrendlineType = (STTrendlineType) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTTrendlineType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTTrendlineType
    public void xsetVal(STTrendlineType sTTrendlineType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrendlineType sTTrendlineType2 = (STTrendlineType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTrendlineType2 == null) {
                sTTrendlineType2 = (STTrendlineType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTrendlineType2.set(sTTrendlineType);
        }
    }
}
