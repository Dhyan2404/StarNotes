package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTRadarStyle;
import org.openxmlformats.schemas.drawingml.x2006.chart.STRadarStyle;

/* loaded from: classes14.dex */
public class CTRadarStyleImpl extends XmlComplexContentImpl implements CTRadarStyle {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTRadarStyleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRadarStyle
    public STRadarStyle.Enum getVal() {
        STRadarStyle.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STRadarStyle.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRadarStyle
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRadarStyle
    public void setVal(STRadarStyle.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRadarStyle
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRadarStyle
    public STRadarStyle xgetVal() {
        STRadarStyle sTRadarStyle;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTRadarStyle = (STRadarStyle) typeStore.find_attribute_user(qNameArr[0]);
            if (sTRadarStyle == null) {
                sTRadarStyle = (STRadarStyle) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTRadarStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTRadarStyle
    public void xsetVal(STRadarStyle sTRadarStyle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRadarStyle sTRadarStyle2 = (STRadarStyle) typeStore.find_attribute_user(qNameArr[0]);
            if (sTRadarStyle2 == null) {
                sTRadarStyle2 = (STRadarStyle) get_store().add_attribute_user(qNameArr[0]);
            }
            sTRadarStyle2.set(sTRadarStyle);
        }
    }
}
