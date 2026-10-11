package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTManualBreak;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOnOff;

/* loaded from: classes14.dex */
public class CTBoxPrImpl extends XmlComplexContentImpl implements CTBoxPr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "opEmu"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "noBreak"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "diff"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "brk"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "aln"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "ctrlPr")};
    private static final long serialVersionUID = 1;

    public CTBoxPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTOnOff addNewAln() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTManualBreak addNewBrk() {
        CTManualBreak cTManualBreak;
        synchronized (monitor()) {
            check_orphaned();
            cTManualBreak = (CTManualBreak) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTManualBreak;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTCtrlPr addNewCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTOnOff addNewDiff() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTOnOff addNewNoBreak() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTOnOff addNewOpEmu() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTOnOff getAln() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTManualBreak getBrk() {
        CTManualBreak cTManualBreak;
        synchronized (monitor()) {
            check_orphaned();
            cTManualBreak = (CTManualBreak) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTManualBreak == null) {
                cTManualBreak = null;
            }
        }
        return cTManualBreak;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTOnOff getDiff() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTOnOff getNoBreak() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public CTOnOff getOpEmu() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public boolean isSetAln() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public boolean isSetBrk() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public boolean isSetCtrlPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public boolean isSetDiff() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public boolean isSetNoBreak() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public boolean isSetOpEmu() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void setAln(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void setBrk(CTManualBreak cTManualBreak) {
        generatedSetterHelperImpl(cTManualBreak, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void setCtrlPr(CTCtrlPr cTCtrlPr) {
        generatedSetterHelperImpl(cTCtrlPr, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void setDiff(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void setNoBreak(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void setOpEmu(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void unsetAln() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void unsetBrk() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void unsetCtrlPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void unsetDiff() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void unsetNoBreak() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBoxPr
    public void unsetOpEmu() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
