package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerStyle;
import org.openxmlformats.schemas.drawingml.x2006.chart.STMarkerStyle;

/* loaded from: classes14.dex */
public class CTMarkerStyleImpl extends XmlComplexContentImpl implements CTMarkerStyle {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTMarkerStyleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerStyle
    public STMarkerStyle.Enum getVal() {
        STMarkerStyle.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STMarkerStyle.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerStyle
    public void setVal(STMarkerStyle.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerStyle
    public STMarkerStyle xgetVal() {
        STMarkerStyle sTMarkerStyle;
        synchronized (monitor()) {
            check_orphaned();
            sTMarkerStyle = (STMarkerStyle) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTMarkerStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerStyle
    public void xsetVal(STMarkerStyle sTMarkerStyle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMarkerStyle sTMarkerStyle2 = (STMarkerStyle) typeStore.find_attribute_user(qNameArr[0]);
            if (sTMarkerStyle2 == null) {
                sTMarkerStyle2 = (STMarkerStyle) get_store().add_attribute_user(qNameArr[0]);
            }
            sTMarkerStyle2.set(sTMarkerStyle);
        }
    }
}
