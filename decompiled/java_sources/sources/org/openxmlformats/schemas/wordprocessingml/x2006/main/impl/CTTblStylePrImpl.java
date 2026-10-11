package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrGeneral;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblStyleOverrideType;

/* loaded from: classes16.dex */
public class CTTblStylePrImpl extends XmlComplexContentImpl implements CTTblStylePr {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "pPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "tblPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "trPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "tcPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "type")};
    private static final long serialVersionUID = 1;

    public CTTblStylePrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public CTPPrGeneral addNewPPr() {
        CTPPrGeneral cTPPrGeneral;
        synchronized (monitor()) {
            check_orphaned();
            cTPPrGeneral = (CTPPrGeneral) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPPrGeneral;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public CTRPr addNewRPr() {
        CTRPr cTRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTRPr = (CTRPr) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTRPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public CTTblPrBase addNewTblPr() {
        CTTblPrBase cTTblPrBase;
        synchronized (monitor()) {
            check_orphaned();
            cTTblPrBase = (CTTblPrBase) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTblPrBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public CTTcPr addNewTcPr() {
        CTTcPr cTTcPr;
        synchronized (monitor()) {
            check_orphaned();
            cTTcPr = (CTTcPr) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTTcPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public CTTrPr addNewTrPr() {
        CTTrPr cTTrPr;
        synchronized (monitor()) {
            check_orphaned();
            cTTrPr = (CTTrPr) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTTrPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public CTPPrGeneral getPPr() {
        CTPPrGeneral cTPPrGeneral;
        synchronized (monitor()) {
            check_orphaned();
            cTPPrGeneral = (CTPPrGeneral) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPPrGeneral == null) {
                cTPPrGeneral = null;
            }
        }
        return cTPPrGeneral;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public CTRPr getRPr() {
        CTRPr cTRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTRPr = (CTRPr) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTRPr == null) {
                cTRPr = null;
            }
        }
        return cTRPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public CTTblPrBase getTblPr() {
        CTTblPrBase cTTblPrBase;
        synchronized (monitor()) {
            check_orphaned();
            cTTblPrBase = (CTTblPrBase) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTblPrBase == null) {
                cTTblPrBase = null;
            }
        }
        return cTTblPrBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public CTTcPr getTcPr() {
        CTTcPr cTTcPr;
        synchronized (monitor()) {
            check_orphaned();
            cTTcPr = (CTTcPr) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTTcPr == null) {
                cTTcPr = null;
            }
        }
        return cTTcPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public CTTrPr getTrPr() {
        CTTrPr cTTrPr;
        synchronized (monitor()) {
            check_orphaned();
            cTTrPr = (CTTrPr) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTTrPr == null) {
                cTTrPr = null;
            }
        }
        return cTTrPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public STTblStyleOverrideType.Enum getType() {
        STTblStyleOverrideType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STTblStyleOverrideType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public boolean isSetPPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public boolean isSetRPr() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public boolean isSetTblPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public boolean isSetTcPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public boolean isSetTrPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void setPPr(CTPPrGeneral cTPPrGeneral) {
        generatedSetterHelperImpl(cTPPrGeneral, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void setRPr(CTRPr cTRPr) {
        generatedSetterHelperImpl(cTRPr, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void setTblPr(CTTblPrBase cTTblPrBase) {
        generatedSetterHelperImpl(cTTblPrBase, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void setTcPr(CTTcPr cTTcPr) {
        generatedSetterHelperImpl(cTTcPr, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void setTrPr(CTTrPr cTTrPr) {
        generatedSetterHelperImpl(cTTrPr, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void setType(STTblStyleOverrideType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void unsetPPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void unsetRPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void unsetTblPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void unsetTcPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void unsetTrPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public STTblStyleOverrideType xgetType() {
        STTblStyleOverrideType sTTblStyleOverrideType;
        synchronized (monitor()) {
            check_orphaned();
            sTTblStyleOverrideType = (STTblStyleOverrideType) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTTblStyleOverrideType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblStylePr
    public void xsetType(STTblStyleOverrideType sTTblStyleOverrideType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTblStyleOverrideType sTTblStyleOverrideType2 = (STTblStyleOverrideType) typeStore.find_attribute_user(qNameArr[5]);
            if (sTTblStyleOverrideType2 == null) {
                sTTblStyleOverrideType2 = (STTblStyleOverrideType) get_store().add_attribute_user(qNameArr[5]);
            }
            sTTblStyleOverrideType2.set(sTTblStyleOverrideType);
        }
    }
}
