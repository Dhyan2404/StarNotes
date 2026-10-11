package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxPos;
import org.openxmlformats.schemas.drawingml.x2006.chart.STAxPos;

/* loaded from: classes14.dex */
public class CTAxPosImpl extends XmlComplexContentImpl implements CTAxPos {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTAxPosImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTAxPos
    public STAxPos.Enum getVal() {
        STAxPos.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STAxPos.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTAxPos
    public void setVal(STAxPos.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTAxPos
    public STAxPos xgetVal() {
        STAxPos sTAxPos;
        synchronized (monitor()) {
            check_orphaned();
            sTAxPos = (STAxPos) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTAxPos;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTAxPos
    public void xsetVal(STAxPos sTAxPos) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAxPos sTAxPos2 = (STAxPos) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAxPos2 == null) {
                sTAxPos2 = (STAxPos) get_store().add_attribute_user(qNameArr[0]);
            }
            sTAxPos2.set(sTAxPos);
        }
    }
}
