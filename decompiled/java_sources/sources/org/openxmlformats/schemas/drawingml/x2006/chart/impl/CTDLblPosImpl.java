package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLblPos;
import org.openxmlformats.schemas.drawingml.x2006.chart.STDLblPos;

/* loaded from: classes14.dex */
public class CTDLblPosImpl extends XmlComplexContentImpl implements CTDLblPos {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTDLblPosImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDLblPos
    public STDLblPos.Enum getVal() {
        STDLblPos.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STDLblPos.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDLblPos
    public void setVal(STDLblPos.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDLblPos
    public STDLblPos xgetVal() {
        STDLblPos sTDLblPos;
        synchronized (monitor()) {
            check_orphaned();
            sTDLblPos = (STDLblPos) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTDLblPos;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDLblPos
    public void xsetVal(STDLblPos sTDLblPos) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDLblPos sTDLblPos2 = (STDLblPos) typeStore.find_attribute_user(qNameArr[0]);
            if (sTDLblPos2 == null) {
                sTDLblPos2 = (STDLblPos) get_store().add_attribute_user(qNameArr[0]);
            }
            sTDLblPos2.set(sTDLblPos);
        }
    }
}
