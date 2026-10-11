package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLayoutMode;
import org.openxmlformats.schemas.drawingml.x2006.chart.STLayoutMode;

/* loaded from: classes14.dex */
public class CTLayoutModeImpl extends XmlComplexContentImpl implements CTLayoutMode {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTLayoutModeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLayoutMode
    public STLayoutMode.Enum getVal() {
        STLayoutMode.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STLayoutMode.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLayoutMode
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLayoutMode
    public void setVal(STLayoutMode.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLayoutMode
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLayoutMode
    public STLayoutMode xgetVal() {
        STLayoutMode sTLayoutMode;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTLayoutMode = (STLayoutMode) typeStore.find_attribute_user(qNameArr[0]);
            if (sTLayoutMode == null) {
                sTLayoutMode = (STLayoutMode) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTLayoutMode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLayoutMode
    public void xsetVal(STLayoutMode sTLayoutMode) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLayoutMode sTLayoutMode2 = (STLayoutMode) typeStore.find_attribute_user(qNameArr[0]);
            if (sTLayoutMode2 == null) {
                sTLayoutMode2 = (STLayoutMode) get_store().add_attribute_user(qNameArr[0]);
            }
            sTLayoutMode2.set(sTLayoutMode);
        }
    }
}
