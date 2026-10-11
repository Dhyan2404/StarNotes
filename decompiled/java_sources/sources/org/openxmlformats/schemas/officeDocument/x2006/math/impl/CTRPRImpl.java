package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTManualBreak;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTScript;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTStyle;

/* loaded from: classes14.dex */
public class CTRPRImpl extends XmlComplexContentImpl implements CTRPR {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "lit"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "nor"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "scr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sty"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "brk"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "aln")};
    private static final long serialVersionUID = 1;

    public CTRPRImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTOnOff addNewAln() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTManualBreak addNewBrk() {
        CTManualBreak cTManualBreak;
        synchronized (monitor()) {
            check_orphaned();
            cTManualBreak = (CTManualBreak) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTManualBreak;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTOnOff addNewLit() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTOnOff addNewNor() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTScript addNewScr() {
        CTScript cTScript;
        synchronized (monitor()) {
            check_orphaned();
            cTScript = (CTScript) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTScript;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTStyle addNewSty() {
        CTStyle cTStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTStyle = (CTStyle) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTStyle;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTOnOff getAln() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTManualBreak getBrk() {
        CTManualBreak cTManualBreak;
        synchronized (monitor()) {
            check_orphaned();
            cTManualBreak = (CTManualBreak) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTManualBreak == null) {
                cTManualBreak = null;
            }
        }
        return cTManualBreak;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTOnOff getLit() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTOnOff getNor() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTScript getScr() {
        CTScript cTScript;
        synchronized (monitor()) {
            check_orphaned();
            cTScript = (CTScript) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTScript == null) {
                cTScript = null;
            }
        }
        return cTScript;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public CTStyle getSty() {
        CTStyle cTStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTStyle = (CTStyle) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTStyle == null) {
                cTStyle = null;
            }
        }
        return cTStyle;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public boolean isSetAln() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public boolean isSetBrk() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public boolean isSetLit() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public boolean isSetNor() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public boolean isSetScr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public boolean isSetSty() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void setAln(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void setBrk(CTManualBreak cTManualBreak) {
        generatedSetterHelperImpl(cTManualBreak, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void setLit(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void setNor(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void setScr(CTScript cTScript) {
        generatedSetterHelperImpl(cTScript, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void setSty(CTStyle cTStyle) {
        generatedSetterHelperImpl(cTStyle, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void unsetAln() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void unsetBrk() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void unsetLit() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void unsetNor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void unsetScr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR
    public void unsetSty() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
