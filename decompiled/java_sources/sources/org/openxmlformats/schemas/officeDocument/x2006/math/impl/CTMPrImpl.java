package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTMCS;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSpacingRule;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTUnSignedInteger;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTYAlign;

/* loaded from: classes14.dex */
public class CTMPrImpl extends XmlComplexContentImpl implements CTMPr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "baseJc"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "plcHide"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "rSpRule"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "cGpRule"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "rSp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "cSp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "cGp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "mcs"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "ctrlPr")};
    private static final long serialVersionUID = 1;

    public CTMPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTYAlign addNewBaseJc() {
        CTYAlign cTYAlign;
        synchronized (monitor()) {
            check_orphaned();
            cTYAlign = (CTYAlign) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTYAlign;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTUnSignedInteger addNewCGp() {
        CTUnSignedInteger cTUnSignedInteger;
        synchronized (monitor()) {
            check_orphaned();
            cTUnSignedInteger = (CTUnSignedInteger) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTUnSignedInteger;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTSpacingRule addNewCGpRule() {
        CTSpacingRule cTSpacingRule;
        synchronized (monitor()) {
            check_orphaned();
            cTSpacingRule = (CTSpacingRule) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTSpacingRule;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTUnSignedInteger addNewCSp() {
        CTUnSignedInteger cTUnSignedInteger;
        synchronized (monitor()) {
            check_orphaned();
            cTUnSignedInteger = (CTUnSignedInteger) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTUnSignedInteger;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTCtrlPr addNewCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTMCS addNewMcs() {
        CTMCS ctmcs;
        synchronized (monitor()) {
            check_orphaned();
            ctmcs = (CTMCS) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return ctmcs;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTOnOff addNewPlcHide() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTUnSignedInteger addNewRSp() {
        CTUnSignedInteger cTUnSignedInteger;
        synchronized (monitor()) {
            check_orphaned();
            cTUnSignedInteger = (CTUnSignedInteger) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTUnSignedInteger;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTSpacingRule addNewRSpRule() {
        CTSpacingRule cTSpacingRule;
        synchronized (monitor()) {
            check_orphaned();
            cTSpacingRule = (CTSpacingRule) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSpacingRule;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTYAlign getBaseJc() {
        CTYAlign cTYAlign;
        synchronized (monitor()) {
            check_orphaned();
            cTYAlign = (CTYAlign) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTYAlign == null) {
                cTYAlign = null;
            }
        }
        return cTYAlign;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTUnSignedInteger getCGp() {
        CTUnSignedInteger cTUnSignedInteger;
        synchronized (monitor()) {
            check_orphaned();
            cTUnSignedInteger = (CTUnSignedInteger) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTUnSignedInteger == null) {
                cTUnSignedInteger = null;
            }
        }
        return cTUnSignedInteger;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTSpacingRule getCGpRule() {
        CTSpacingRule cTSpacingRule;
        synchronized (monitor()) {
            check_orphaned();
            cTSpacingRule = (CTSpacingRule) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTSpacingRule == null) {
                cTSpacingRule = null;
            }
        }
        return cTSpacingRule;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTUnSignedInteger getCSp() {
        CTUnSignedInteger cTUnSignedInteger;
        synchronized (monitor()) {
            check_orphaned();
            cTUnSignedInteger = (CTUnSignedInteger) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTUnSignedInteger == null) {
                cTUnSignedInteger = null;
            }
        }
        return cTUnSignedInteger;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTCtrlPr getCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTCtrlPr == null) {
                cTCtrlPr = null;
            }
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTMCS getMcs() {
        CTMCS ctmcs;
        synchronized (monitor()) {
            check_orphaned();
            ctmcs = (CTMCS) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (ctmcs == null) {
                ctmcs = null;
            }
        }
        return ctmcs;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTOnOff getPlcHide() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTUnSignedInteger getRSp() {
        CTUnSignedInteger cTUnSignedInteger;
        synchronized (monitor()) {
            check_orphaned();
            cTUnSignedInteger = (CTUnSignedInteger) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTUnSignedInteger == null) {
                cTUnSignedInteger = null;
            }
        }
        return cTUnSignedInteger;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public CTSpacingRule getRSpRule() {
        CTSpacingRule cTSpacingRule;
        synchronized (monitor()) {
            check_orphaned();
            cTSpacingRule = (CTSpacingRule) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTSpacingRule == null) {
                cTSpacingRule = null;
            }
        }
        return cTSpacingRule;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public boolean isSetBaseJc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public boolean isSetCGp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public boolean isSetCGpRule() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public boolean isSetCSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public boolean isSetCtrlPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public boolean isSetMcs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public boolean isSetPlcHide() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public boolean isSetRSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public boolean isSetRSpRule() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void setBaseJc(CTYAlign cTYAlign) {
        generatedSetterHelperImpl(cTYAlign, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void setCGp(CTUnSignedInteger cTUnSignedInteger) {
        generatedSetterHelperImpl(cTUnSignedInteger, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void setCGpRule(CTSpacingRule cTSpacingRule) {
        generatedSetterHelperImpl(cTSpacingRule, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void setCSp(CTUnSignedInteger cTUnSignedInteger) {
        generatedSetterHelperImpl(cTUnSignedInteger, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void setCtrlPr(CTCtrlPr cTCtrlPr) {
        generatedSetterHelperImpl(cTCtrlPr, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void setMcs(CTMCS ctmcs) {
        generatedSetterHelperImpl(ctmcs, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void setPlcHide(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void setRSp(CTUnSignedInteger cTUnSignedInteger) {
        generatedSetterHelperImpl(cTUnSignedInteger, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void setRSpRule(CTSpacingRule cTSpacingRule) {
        generatedSetterHelperImpl(cTSpacingRule, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void unsetBaseJc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void unsetCGp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void unsetCGpRule() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void unsetCSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void unsetCtrlPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void unsetMcs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void unsetPlcHide() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void unsetRSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMPr
    public void unsetRSpRule() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
