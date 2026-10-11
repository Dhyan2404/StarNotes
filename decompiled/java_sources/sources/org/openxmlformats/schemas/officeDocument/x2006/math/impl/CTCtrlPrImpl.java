package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlDel;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;

/* loaded from: classes14.dex */
public class CTCtrlPrImpl extends XmlComplexContentImpl implements CTCtrlPr {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "rPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "ins"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "del")};
    private static final long serialVersionUID = 1;

    public CTCtrlPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public CTMathCtrlDel addNewDel() {
        CTMathCtrlDel cTMathCtrlDel;
        synchronized (monitor()) {
            check_orphaned();
            cTMathCtrlDel = (CTMathCtrlDel) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTMathCtrlDel;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public CTMathCtrlIns addNewIns() {
        CTMathCtrlIns cTMathCtrlIns;
        synchronized (monitor()) {
            check_orphaned();
            cTMathCtrlIns = (CTMathCtrlIns) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTMathCtrlIns;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public CTRPr addNewRPr() {
        CTRPr cTRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTRPr = (CTRPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public CTMathCtrlDel getDel() {
        CTMathCtrlDel cTMathCtrlDel;
        synchronized (monitor()) {
            check_orphaned();
            cTMathCtrlDel = (CTMathCtrlDel) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTMathCtrlDel == null) {
                cTMathCtrlDel = null;
            }
        }
        return cTMathCtrlDel;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public CTMathCtrlIns getIns() {
        CTMathCtrlIns cTMathCtrlIns;
        synchronized (monitor()) {
            check_orphaned();
            cTMathCtrlIns = (CTMathCtrlIns) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTMathCtrlIns == null) {
                cTMathCtrlIns = null;
            }
        }
        return cTMathCtrlIns;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public CTRPr getRPr() {
        CTRPr cTRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTRPr = (CTRPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRPr == null) {
                cTRPr = null;
            }
        }
        return cTRPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public boolean isSetDel() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public boolean isSetIns() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public boolean isSetRPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public void setDel(CTMathCtrlDel cTMathCtrlDel) {
        generatedSetterHelperImpl(cTMathCtrlDel, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public void setIns(CTMathCtrlIns cTMathCtrlIns) {
        generatedSetterHelperImpl(cTMathCtrlIns, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public void setRPr(CTRPr cTRPr) {
        generatedSetterHelperImpl(cTRPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public void unsetDel() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public void unsetIns() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr
    public void unsetRPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
