package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTThickness;
import org.openxmlformats.schemas.drawingml.x2006.chart.STThickness;

/* loaded from: classes14.dex */
public class CTThicknessImpl extends XmlComplexContentImpl implements CTThickness {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTThicknessImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTThickness
    public Object getVal() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTThickness
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTThickness
    public STThickness xgetVal() {
        STThickness sTThickness;
        synchronized (monitor()) {
            check_orphaned();
            sTThickness = (STThickness) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTThickness;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTThickness
    public void xsetVal(STThickness sTThickness) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STThickness sTThickness2 = (STThickness) typeStore.find_attribute_user(qNameArr[0]);
            if (sTThickness2 == null) {
                sTThickness2 = (STThickness) get_store().add_attribute_user(qNameArr[0]);
            }
            sTThickness2.set(sTThickness);
        }
    }
}
