package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTChar;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTShp;

/* loaded from: classes14.dex */
public class CTDPrImpl extends XmlComplexContentImpl implements CTDPr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "begChr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sepChr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "endChr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "grow"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "shp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "ctrlPr")};
    private static final long serialVersionUID = 1;

    public CTDPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTChar addNewBegChr() {
        CTChar cTChar;
        synchronized (monitor()) {
            check_orphaned();
            cTChar = (CTChar) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTCtrlPr addNewCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTChar addNewEndChr() {
        CTChar cTChar;
        synchronized (monitor()) {
            check_orphaned();
            cTChar = (CTChar) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTOnOff addNewGrow() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTChar addNewSepChr() {
        CTChar cTChar;
        synchronized (monitor()) {
            check_orphaned();
            cTChar = (CTChar) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTShp addNewShp() {
        CTShp cTShp;
        synchronized (monitor()) {
            check_orphaned();
            cTShp = (CTShp) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTShp;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTChar getBegChr() {
        CTChar cTChar;
        synchronized (monitor()) {
            check_orphaned();
            cTChar = (CTChar) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTChar == null) {
                cTChar = null;
            }
        }
        return cTChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTChar getEndChr() {
        CTChar cTChar;
        synchronized (monitor()) {
            check_orphaned();
            cTChar = (CTChar) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTChar == null) {
                cTChar = null;
            }
        }
        return cTChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTOnOff getGrow() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTChar getSepChr() {
        CTChar cTChar;
        synchronized (monitor()) {
            check_orphaned();
            cTChar = (CTChar) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTChar == null) {
                cTChar = null;
            }
        }
        return cTChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public CTShp getShp() {
        CTShp cTShp;
        synchronized (monitor()) {
            check_orphaned();
            cTShp = (CTShp) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTShp == null) {
                cTShp = null;
            }
        }
        return cTShp;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public boolean isSetBegChr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public boolean isSetCtrlPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public boolean isSetEndChr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public boolean isSetGrow() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public boolean isSetSepChr() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public boolean isSetShp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void setBegChr(CTChar cTChar) {
        generatedSetterHelperImpl(cTChar, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void setCtrlPr(CTCtrlPr cTCtrlPr) {
        generatedSetterHelperImpl(cTCtrlPr, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void setEndChr(CTChar cTChar) {
        generatedSetterHelperImpl(cTChar, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void setGrow(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void setSepChr(CTChar cTChar) {
        generatedSetterHelperImpl(cTChar, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void setShp(CTShp cTShp) {
        generatedSetterHelperImpl(cTShp, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void unsetBegChr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void unsetCtrlPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void unsetEndChr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void unsetGrow() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void unsetSepChr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTDPr
    public void unsetShp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }
}
