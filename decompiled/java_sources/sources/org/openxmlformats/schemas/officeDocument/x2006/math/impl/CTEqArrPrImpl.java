package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSpacingRule;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTUnSignedInteger;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTYAlign;

/* loaded from: classes14.dex */
public class CTEqArrPrImpl extends XmlComplexContentImpl implements CTEqArrPr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "baseJc"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "maxDist"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "objDist"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "rSpRule"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "rSp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "ctrlPr")};
    private static final long serialVersionUID = 1;

    public CTEqArrPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public CTYAlign addNewBaseJc() {
        CTYAlign cTYAlign;
        synchronized (monitor()) {
            check_orphaned();
            cTYAlign = (CTYAlign) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTYAlign;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public CTCtrlPr addNewCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public CTOnOff addNewMaxDist() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public CTOnOff addNewObjDist() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public CTUnSignedInteger addNewRSp() {
        CTUnSignedInteger cTUnSignedInteger;
        synchronized (monitor()) {
            check_orphaned();
            cTUnSignedInteger = (CTUnSignedInteger) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTUnSignedInteger;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public CTSpacingRule addNewRSpRule() {
        CTSpacingRule cTSpacingRule;
        synchronized (monitor()) {
            check_orphaned();
            cTSpacingRule = (CTSpacingRule) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTSpacingRule;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public CTCtrlPr getCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTCtrlPr == null) {
                cTCtrlPr = null;
            }
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public CTOnOff getMaxDist() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public CTOnOff getObjDist() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public CTSpacingRule getRSpRule() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public boolean isSetBaseJc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public boolean isSetCtrlPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public boolean isSetMaxDist() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public boolean isSetObjDist() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public boolean isSetRSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public boolean isSetRSpRule() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void setBaseJc(CTYAlign cTYAlign) {
        generatedSetterHelperImpl(cTYAlign, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void setCtrlPr(CTCtrlPr cTCtrlPr) {
        generatedSetterHelperImpl(cTCtrlPr, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void setMaxDist(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void setObjDist(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void setRSp(CTUnSignedInteger cTUnSignedInteger) {
        generatedSetterHelperImpl(cTUnSignedInteger, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void setRSpRule(CTSpacingRule cTSpacingRule) {
        generatedSetterHelperImpl(cTSpacingRule, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void unsetBaseJc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void unsetCtrlPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void unsetMaxDist() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void unsetObjDist() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void unsetRSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr
    public void unsetRSpRule() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
