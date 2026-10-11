package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariantBooleanVal;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariantFloatVal;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariantIntegerVal;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariantStringVal;

/* loaded from: classes14.dex */
public class CTTLAnimVariantImpl extends XmlComplexContentImpl implements CTTLAnimVariant {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "boolVal"), new QName(XSSFRelation.NS_PRESENTATIONML, "intVal"), new QName(XSSFRelation.NS_PRESENTATIONML, "fltVal"), new QName(XSSFRelation.NS_PRESENTATIONML, "strVal"), new QName(XSSFRelation.NS_PRESENTATIONML, "clrVal")};
    private static final long serialVersionUID = 1;

    public CTTLAnimVariantImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public CTTLAnimVariantBooleanVal addNewBoolVal() {
        CTTLAnimVariantBooleanVal cTTLAnimVariantBooleanVal;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariantBooleanVal = (CTTLAnimVariantBooleanVal) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLAnimVariantBooleanVal;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public CTColor addNewClrVal() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public CTTLAnimVariantFloatVal addNewFltVal() {
        CTTLAnimVariantFloatVal cTTLAnimVariantFloatVal;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariantFloatVal = (CTTLAnimVariantFloatVal) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTLAnimVariantFloatVal;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public CTTLAnimVariantIntegerVal addNewIntVal() {
        CTTLAnimVariantIntegerVal cTTLAnimVariantIntegerVal;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariantIntegerVal = (CTTLAnimVariantIntegerVal) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLAnimVariantIntegerVal;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public CTTLAnimVariantStringVal addNewStrVal() {
        CTTLAnimVariantStringVal cTTLAnimVariantStringVal;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariantStringVal = (CTTLAnimVariantStringVal) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTTLAnimVariantStringVal;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public CTTLAnimVariantBooleanVal getBoolVal() {
        CTTLAnimVariantBooleanVal cTTLAnimVariantBooleanVal;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariantBooleanVal = (CTTLAnimVariantBooleanVal) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTLAnimVariantBooleanVal == null) {
                cTTLAnimVariantBooleanVal = null;
            }
        }
        return cTTLAnimVariantBooleanVal;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public CTColor getClrVal() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTColor == null) {
                cTColor = null;
            }
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public CTTLAnimVariantFloatVal getFltVal() {
        CTTLAnimVariantFloatVal cTTLAnimVariantFloatVal;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariantFloatVal = (CTTLAnimVariantFloatVal) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTLAnimVariantFloatVal == null) {
                cTTLAnimVariantFloatVal = null;
            }
        }
        return cTTLAnimVariantFloatVal;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public CTTLAnimVariantIntegerVal getIntVal() {
        CTTLAnimVariantIntegerVal cTTLAnimVariantIntegerVal;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariantIntegerVal = (CTTLAnimVariantIntegerVal) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLAnimVariantIntegerVal == null) {
                cTTLAnimVariantIntegerVal = null;
            }
        }
        return cTTLAnimVariantIntegerVal;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public CTTLAnimVariantStringVal getStrVal() {
        CTTLAnimVariantStringVal cTTLAnimVariantStringVal;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariantStringVal = (CTTLAnimVariantStringVal) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTTLAnimVariantStringVal == null) {
                cTTLAnimVariantStringVal = null;
            }
        }
        return cTTLAnimVariantStringVal;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public boolean isSetBoolVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public boolean isSetClrVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public boolean isSetFltVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public boolean isSetIntVal() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public boolean isSetStrVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public void setBoolVal(CTTLAnimVariantBooleanVal cTTLAnimVariantBooleanVal) {
        generatedSetterHelperImpl(cTTLAnimVariantBooleanVal, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public void setClrVal(CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public void setFltVal(CTTLAnimVariantFloatVal cTTLAnimVariantFloatVal) {
        generatedSetterHelperImpl(cTTLAnimVariantFloatVal, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public void setIntVal(CTTLAnimVariantIntegerVal cTTLAnimVariantIntegerVal) {
        generatedSetterHelperImpl(cTTLAnimVariantIntegerVal, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public void setStrVal(CTTLAnimVariantStringVal cTTLAnimVariantStringVal) {
        generatedSetterHelperImpl(cTTLAnimVariantStringVal, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public void unsetBoolVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public void unsetClrVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public void unsetFltVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public void unsetIntVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant
    public void unsetStrVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
