package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTChar;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTTopBot;

/* loaded from: classes14.dex */
public class CTGroupChrPrImpl extends XmlComplexContentImpl implements CTGroupChrPr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "chr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "pos"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "vertJc"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "ctrlPr")};
    private static final long serialVersionUID = 1;

    public CTGroupChrPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public CTChar addNewChr() {
        CTChar cTChar;
        synchronized (monitor()) {
            check_orphaned();
            cTChar = (CTChar) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public CTCtrlPr addNewCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public CTTopBot addNewPos() {
        CTTopBot cTTopBot;
        synchronized (monitor()) {
            check_orphaned();
            cTTopBot = (CTTopBot) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTopBot;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public CTTopBot addNewVertJc() {
        CTTopBot cTTopBot;
        synchronized (monitor()) {
            check_orphaned();
            cTTopBot = (CTTopBot) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTopBot;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public CTChar getChr() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public CTCtrlPr getCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTCtrlPr == null) {
                cTCtrlPr = null;
            }
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public CTTopBot getPos() {
        CTTopBot cTTopBot;
        synchronized (monitor()) {
            check_orphaned();
            cTTopBot = (CTTopBot) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTopBot == null) {
                cTTopBot = null;
            }
        }
        return cTTopBot;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public CTTopBot getVertJc() {
        CTTopBot cTTopBot;
        synchronized (monitor()) {
            check_orphaned();
            cTTopBot = (CTTopBot) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTopBot == null) {
                cTTopBot = null;
            }
        }
        return cTTopBot;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public boolean isSetChr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public boolean isSetCtrlPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public boolean isSetPos() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public boolean isSetVertJc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public void setChr(CTChar cTChar) {
        generatedSetterHelperImpl(cTChar, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public void setCtrlPr(CTCtrlPr cTCtrlPr) {
        generatedSetterHelperImpl(cTCtrlPr, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public void setPos(CTTopBot cTTopBot) {
        generatedSetterHelperImpl(cTTopBot, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public void setVertJc(CTTopBot cTTopBot) {
        generatedSetterHelperImpl(cTTopBot, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public void unsetChr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public void unsetCtrlPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public void unsetPos() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr
    public void unsetVertJc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
