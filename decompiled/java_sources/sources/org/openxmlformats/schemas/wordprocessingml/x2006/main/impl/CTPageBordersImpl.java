package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sunia.HTREnginev2.gon;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBottomPageBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTopPageBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STPageBorderDisplay;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STPageBorderOffset;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STPageBorderZOrder;

/* loaded from: classes16.dex */
public class CTPageBordersImpl extends XmlComplexContentImpl implements CTPageBorders {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, OneDriverConstants.TOP), new QName(XSSFRelation.NS_WORDPROCESSINGML, "left"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bottom"), new QName(XSSFRelation.NS_WORDPROCESSINGML, gon.f71288n0), new QName(XSSFRelation.NS_WORDPROCESSINGML, "zOrder"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "display"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "offsetFrom")};
    private static final long serialVersionUID = 1;

    public CTPageBordersImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public CTBottomPageBorder addNewBottom() {
        CTBottomPageBorder cTBottomPageBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBottomPageBorder = (CTBottomPageBorder) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBottomPageBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public CTPageBorder addNewLeft() {
        CTPageBorder cTPageBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTPageBorder = (CTPageBorder) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTPageBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public CTPageBorder addNewRight() {
        CTPageBorder cTPageBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTPageBorder = (CTPageBorder) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTPageBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public CTTopPageBorder addNewTop() {
        CTTopPageBorder cTTopPageBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTTopPageBorder = (CTTopPageBorder) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTopPageBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public CTBottomPageBorder getBottom() {
        CTBottomPageBorder cTBottomPageBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBottomPageBorder = (CTBottomPageBorder) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTBottomPageBorder == null) {
                cTBottomPageBorder = null;
            }
        }
        return cTBottomPageBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public STPageBorderDisplay.Enum getDisplay() {
        STPageBorderDisplay.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STPageBorderDisplay.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public CTPageBorder getLeft() {
        CTPageBorder cTPageBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTPageBorder = (CTPageBorder) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTPageBorder == null) {
                cTPageBorder = null;
            }
        }
        return cTPageBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public STPageBorderOffset.Enum getOffsetFrom() {
        STPageBorderOffset.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[6]);
            }
            r5 = simpleValue == null ? null : (STPageBorderOffset.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public CTPageBorder getRight() {
        CTPageBorder cTPageBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTPageBorder = (CTPageBorder) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTPageBorder == null) {
                cTPageBorder = null;
            }
        }
        return cTPageBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public CTTopPageBorder getTop() {
        CTTopPageBorder cTTopPageBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTTopPageBorder = (CTTopPageBorder) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTopPageBorder == null) {
                cTTopPageBorder = null;
            }
        }
        return cTTopPageBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public STPageBorderZOrder.Enum getZOrder() {
        STPageBorderZOrder.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[4]);
            }
            r5 = simpleValue == null ? null : (STPageBorderZOrder.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public boolean isSetBottom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public boolean isSetDisplay() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public boolean isSetLeft() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public boolean isSetOffsetFrom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public boolean isSetRight() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public boolean isSetTop() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public boolean isSetZOrder() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void setBottom(CTBottomPageBorder cTBottomPageBorder) {
        generatedSetterHelperImpl(cTBottomPageBorder, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void setDisplay(STPageBorderDisplay.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void setLeft(CTPageBorder cTPageBorder) {
        generatedSetterHelperImpl(cTPageBorder, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void setOffsetFrom(STPageBorderOffset.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void setRight(CTPageBorder cTPageBorder) {
        generatedSetterHelperImpl(cTPageBorder, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void setTop(CTTopPageBorder cTTopPageBorder) {
        generatedSetterHelperImpl(cTTopPageBorder, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void setZOrder(STPageBorderZOrder.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void unsetBottom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void unsetDisplay() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void unsetLeft() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void unsetOffsetFrom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void unsetRight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void unsetTop() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void unsetZOrder() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public STPageBorderDisplay xgetDisplay() {
        STPageBorderDisplay sTPageBorderDisplay;
        synchronized (monitor()) {
            check_orphaned();
            sTPageBorderDisplay = (STPageBorderDisplay) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTPageBorderDisplay;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public STPageBorderOffset xgetOffsetFrom() {
        STPageBorderOffset sTPageBorderOffset;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPageBorderOffset = (STPageBorderOffset) typeStore.find_attribute_user(qNameArr[6]);
            if (sTPageBorderOffset == null) {
                sTPageBorderOffset = (STPageBorderOffset) get_default_attribute_value(qNameArr[6]);
            }
        }
        return sTPageBorderOffset;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public STPageBorderZOrder xgetZOrder() {
        STPageBorderZOrder sTPageBorderZOrder;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPageBorderZOrder = (STPageBorderZOrder) typeStore.find_attribute_user(qNameArr[4]);
            if (sTPageBorderZOrder == null) {
                sTPageBorderZOrder = (STPageBorderZOrder) get_default_attribute_value(qNameArr[4]);
            }
        }
        return sTPageBorderZOrder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void xsetDisplay(STPageBorderDisplay sTPageBorderDisplay) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPageBorderDisplay sTPageBorderDisplay2 = (STPageBorderDisplay) typeStore.find_attribute_user(qNameArr[5]);
            if (sTPageBorderDisplay2 == null) {
                sTPageBorderDisplay2 = (STPageBorderDisplay) get_store().add_attribute_user(qNameArr[5]);
            }
            sTPageBorderDisplay2.set(sTPageBorderDisplay);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void xsetOffsetFrom(STPageBorderOffset sTPageBorderOffset) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPageBorderOffset sTPageBorderOffset2 = (STPageBorderOffset) typeStore.find_attribute_user(qNameArr[6]);
            if (sTPageBorderOffset2 == null) {
                sTPageBorderOffset2 = (STPageBorderOffset) get_store().add_attribute_user(qNameArr[6]);
            }
            sTPageBorderOffset2.set(sTPageBorderOffset);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders
    public void xsetZOrder(STPageBorderZOrder sTPageBorderZOrder) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPageBorderZOrder sTPageBorderZOrder2 = (STPageBorderZOrder) typeStore.find_attribute_user(qNameArr[4]);
            if (sTPageBorderZOrder2 == null) {
                sTPageBorderZOrder2 = (STPageBorderZOrder) get_store().add_attribute_user(qNameArr[4]);
            }
            sTPageBorderZOrder2.set(sTPageBorderZOrder);
        }
    }
}
