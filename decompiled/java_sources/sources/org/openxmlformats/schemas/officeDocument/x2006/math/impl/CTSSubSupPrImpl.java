package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr;

/* loaded from: classes14.dex */
public class CTSSubSupPrImpl extends XmlComplexContentImpl implements CTSSubSupPr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "alnScr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "ctrlPr")};
    private static final long serialVersionUID = 1;

    public CTSSubSupPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr
    public CTOnOff addNewAlnScr() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr
    public CTCtrlPr addNewCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr
    public CTOnOff getAlnScr() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr
    public CTCtrlPr getCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTCtrlPr == null) {
                cTCtrlPr = null;
            }
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr
    public boolean isSetAlnScr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr
    public boolean isSetCtrlPr() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr
    public void setAlnScr(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr
    public void setCtrlPr(CTCtrlPr cTCtrlPr) {
        generatedSetterHelperImpl(cTCtrlPr, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr
    public void unsetAlnScr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSupPr
    public void unsetCtrlPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
