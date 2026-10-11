package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPrChange;

/* loaded from: classes16.dex */
public class CTMathCtrlInsImpl extends CTTrackChangeImpl implements CTMathCtrlIns {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "del"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rPr")};
    private static final long serialVersionUID = 1;

    public CTMathCtrlInsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns
    public CTRPrChange addNewDel() {
        CTRPrChange cTRPrChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRPrChange = (CTRPrChange) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRPrChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns
    public CTRPr addNewRPr() {
        CTRPr cTRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTRPr = (CTRPr) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTRPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns
    public CTRPrChange getDel() {
        CTRPrChange cTRPrChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRPrChange = (CTRPrChange) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRPrChange == null) {
                cTRPrChange = null;
            }
        }
        return cTRPrChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns
    public boolean isSetDel() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns
    public void setDel(CTRPrChange cTRPrChange) {
        generatedSetterHelperImpl(cTRPrChange, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns
    public void setRPr(CTRPr cTRPr) {
        generatedSetterHelperImpl(cTRPr, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns
    public void unsetDel() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMathCtrlIns
    public void unsetRPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
