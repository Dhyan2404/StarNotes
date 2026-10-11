package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLegendPos;
import org.openxmlformats.schemas.drawingml.x2006.chart.STLegendPos;

/* loaded from: classes14.dex */
public class CTLegendPosImpl extends XmlComplexContentImpl implements CTLegendPos {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTLegendPosImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLegendPos
    public STLegendPos.Enum getVal() {
        STLegendPos.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STLegendPos.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLegendPos
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLegendPos
    public void setVal(STLegendPos.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLegendPos
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLegendPos
    public STLegendPos xgetVal() {
        STLegendPos sTLegendPos;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTLegendPos = (STLegendPos) typeStore.find_attribute_user(qNameArr[0]);
            if (sTLegendPos == null) {
                sTLegendPos = (STLegendPos) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTLegendPos;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLegendPos
    public void xsetVal(STLegendPos sTLegendPos) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLegendPos sTLegendPos2 = (STLegendPos) typeStore.find_attribute_user(qNameArr[0]);
            if (sTLegendPos2 == null) {
                sTLegendPos2 = (STLegendPos) get_store().add_attribute_user(qNameArr[0]);
            }
            sTLegendPos2.set(sTLegendPos);
        }
    }
}
