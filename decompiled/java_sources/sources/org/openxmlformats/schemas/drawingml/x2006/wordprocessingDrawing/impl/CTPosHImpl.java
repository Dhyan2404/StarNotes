package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.STAlignH;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.STPositionOffset;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.STRelFromH;

/* loaded from: classes14.dex */
public class CTPosHImpl extends XmlComplexContentImpl implements CTPosH {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "align"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "posOffset"), new QName("", "relativeFrom")};
    private static final long serialVersionUID = 1;

    public CTPosHImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public STAlignH.Enum getAlign() {
        STAlignH.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            r3 = simpleValue == null ? null : (STAlignH.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public int getPosOffset() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            i = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public STRelFromH.Enum getRelativeFrom() {
        STRelFromH.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            r3 = simpleValue == null ? null : (STRelFromH.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public boolean isSetAlign() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public boolean isSetPosOffset() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public void setAlign(STAlignH.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public void setPosOffset(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[1], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[1]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public void setRelativeFrom(STRelFromH.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public void unsetAlign() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public void unsetPosOffset() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public STAlignH xgetAlign() {
        STAlignH sTAlignH;
        synchronized (monitor()) {
            check_orphaned();
            sTAlignH = (STAlignH) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return sTAlignH;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public STPositionOffset xgetPosOffset() {
        STPositionOffset sTPositionOffset;
        synchronized (monitor()) {
            check_orphaned();
            sTPositionOffset = (STPositionOffset) get_store().find_element_user(PROPERTY_QNAME[1], 0);
        }
        return sTPositionOffset;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public STRelFromH xgetRelativeFrom() {
        STRelFromH sTRelFromH;
        synchronized (monitor()) {
            check_orphaned();
            sTRelFromH = (STRelFromH) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTRelFromH;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public void xsetAlign(STAlignH sTAlignH) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAlignH sTAlignH2 = (STAlignH) typeStore.find_element_user(qNameArr[0], 0);
            if (sTAlignH2 == null) {
                sTAlignH2 = (STAlignH) get_store().add_element_user(qNameArr[0]);
            }
            sTAlignH2.set(sTAlignH);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public void xsetPosOffset(STPositionOffset sTPositionOffset) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPositionOffset sTPositionOffset2 = (STPositionOffset) typeStore.find_element_user(qNameArr[1], 0);
            if (sTPositionOffset2 == null) {
                sTPositionOffset2 = (STPositionOffset) get_store().add_element_user(qNameArr[1]);
            }
            sTPositionOffset2.set(sTPositionOffset);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH
    public void xsetRelativeFrom(STRelFromH sTRelFromH) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRelFromH sTRelFromH2 = (STRelFromH) typeStore.find_attribute_user(qNameArr[2]);
            if (sTRelFromH2 == null) {
                sTRelFromH2 = (STRelFromH) get_store().add_attribute_user(qNameArr[2]);
            }
            sTRelFromH2.set(sTRelFromH);
        }
    }
}
