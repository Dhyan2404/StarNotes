package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacingPoint;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextSpacingPoint;

/* loaded from: classes14.dex */
public class CTTextSpacingPointImpl extends XmlComplexContentImpl implements CTTextSpacingPoint {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTTextSpacingPointImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacingPoint
    public int getVal() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            i = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacingPoint
    public void setVal(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacingPoint
    public STTextSpacingPoint xgetVal() {
        STTextSpacingPoint sTTextSpacingPoint;
        synchronized (monitor()) {
            check_orphaned();
            sTTextSpacingPoint = (STTextSpacingPoint) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTextSpacingPoint;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacingPoint
    public void xsetVal(STTextSpacingPoint sTTextSpacingPoint) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTextSpacingPoint sTTextSpacingPoint2 = (STTextSpacingPoint) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTextSpacingPoint2 == null) {
                sTTextSpacingPoint2 = (STTextSpacingPoint) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTextSpacingPoint2.set(sTTextSpacingPoint);
        }
    }
}
