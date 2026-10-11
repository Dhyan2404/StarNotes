package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleScale;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBubbleScale;

/* loaded from: classes14.dex */
public class CTBubbleScaleImpl extends XmlComplexContentImpl implements CTBubbleScale {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTBubbleScaleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleScale
    public Object getVal() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleScale
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleScale
    public void setVal(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleScale
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleScale
    public STBubbleScale xgetVal() {
        STBubbleScale sTBubbleScale;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTBubbleScale = (STBubbleScale) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBubbleScale == null) {
                sTBubbleScale = (STBubbleScale) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTBubbleScale;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleScale
    public void xsetVal(STBubbleScale sTBubbleScale) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBubbleScale sTBubbleScale2 = (STBubbleScale) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBubbleScale2 == null) {
                sTBubbleScale2 = (STBubbleScale) get_store().add_attribute_user(qNameArr[0]);
            }
            sTBubbleScale2.set(sTBubbleScale);
        }
    }
}
