package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStyle;
import org.openxmlformats.schemas.drawingml.x2006.chart.STStyle;

/* loaded from: classes14.dex */
public class CTStyleImpl extends XmlComplexContentImpl implements CTStyle {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTStyleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTStyle
    public short getVal() {
        short s;
        synchronized (monitor()) {
            check_orphaned();
            s = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            if (simpleValue != null) {
                s = simpleValue.getShortValue();
            }
        }
        return s;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTStyle
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTStyle
    public STStyle xgetVal() {
        STStyle sTStyle;
        synchronized (monitor()) {
            check_orphaned();
            sTStyle = (STStyle) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTStyle
    public void xsetVal(STStyle sTStyle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStyle sTStyle2 = (STStyle) typeStore.find_attribute_user(qNameArr[0]);
            if (sTStyle2 == null) {
                sTStyle2 = (STStyle) get_store().add_attribute_user(qNameArr[0]);
            }
            sTStyle2.set(sTStyle);
        }
    }
}
