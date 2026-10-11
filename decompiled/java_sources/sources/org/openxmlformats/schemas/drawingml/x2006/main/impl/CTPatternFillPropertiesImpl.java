package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.STPresetPatternVal;

/* loaded from: classes14.dex */
public class CTPatternFillPropertiesImpl extends XmlComplexContentImpl implements CTPatternFillProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "fgClr"), new QName(XSSFRelation.NS_DRAWINGML, "bgClr"), new QName("", "prst")};
    private static final long serialVersionUID = 1;

    public CTPatternFillPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public CTColor addNewBgClr() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public CTColor addNewFgClr() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public CTColor getBgClr() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTColor == null) {
                cTColor = null;
            }
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public CTColor getFgClr() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTColor == null) {
                cTColor = null;
            }
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public STPresetPatternVal.Enum getPrst() {
        STPresetPatternVal.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            r3 = simpleValue == null ? null : (STPresetPatternVal.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public boolean isSetBgClr() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public boolean isSetFgClr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public boolean isSetPrst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public void setBgClr(CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public void setFgClr(CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public void setPrst(STPresetPatternVal.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public void unsetBgClr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public void unsetFgClr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public void unsetPrst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public STPresetPatternVal xgetPrst() {
        STPresetPatternVal sTPresetPatternVal;
        synchronized (monitor()) {
            check_orphaned();
            sTPresetPatternVal = (STPresetPatternVal) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTPresetPatternVal;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties
    public void xsetPrst(STPresetPatternVal sTPresetPatternVal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPresetPatternVal sTPresetPatternVal2 = (STPresetPatternVal) typeStore.find_attribute_user(qNameArr[2]);
            if (sTPresetPatternVal2 == null) {
                sTPresetPatternVal2 = (STPresetPatternVal) get_store().add_attribute_user(qNameArr[2]);
            }
            sTPresetPatternVal2.set(sTPresetPatternVal);
        }
    }
}
