package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameScrollbar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPixelsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRel;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;

/* loaded from: classes16.dex */
public class CTFrameImpl extends XmlComplexContentImpl implements CTFrame {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "sz"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "name"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "title"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "longDesc"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sourceFileName"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "marW"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "marH"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "scrollbar"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "noResizeAllowed"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "linkedToFile")};
    private static final long serialVersionUID = 1;

    public CTFrameImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTOnOff addNewLinkedToFile() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTRel addNewLongDesc() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTPixelsMeasure addNewMarH() {
        CTPixelsMeasure cTPixelsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTPixelsMeasure = (CTPixelsMeasure) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTPixelsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTPixelsMeasure addNewMarW() {
        CTPixelsMeasure cTPixelsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTPixelsMeasure = (CTPixelsMeasure) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPixelsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTString addNewName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTOnOff addNewNoResizeAllowed() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTFrameScrollbar addNewScrollbar() {
        CTFrameScrollbar cTFrameScrollbar;
        synchronized (monitor()) {
            check_orphaned();
            cTFrameScrollbar = (CTFrameScrollbar) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTFrameScrollbar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTRel addNewSourceFileName() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTString addNewSz() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTString addNewTitle() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTOnOff getLinkedToFile() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTRel getLongDesc() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTRel == null) {
                cTRel = null;
            }
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTPixelsMeasure getMarH() {
        CTPixelsMeasure cTPixelsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTPixelsMeasure = (CTPixelsMeasure) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTPixelsMeasure == null) {
                cTPixelsMeasure = null;
            }
        }
        return cTPixelsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTPixelsMeasure getMarW() {
        CTPixelsMeasure cTPixelsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTPixelsMeasure = (CTPixelsMeasure) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTPixelsMeasure == null) {
                cTPixelsMeasure = null;
            }
        }
        return cTPixelsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTString getName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTOnOff getNoResizeAllowed() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTFrameScrollbar getScrollbar() {
        CTFrameScrollbar cTFrameScrollbar;
        synchronized (monitor()) {
            check_orphaned();
            cTFrameScrollbar = (CTFrameScrollbar) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTFrameScrollbar == null) {
                cTFrameScrollbar = null;
            }
        }
        return cTFrameScrollbar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTRel getSourceFileName() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTRel == null) {
                cTRel = null;
            }
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTString getSz() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public CTString getTitle() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public boolean isSetLinkedToFile() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public boolean isSetLongDesc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public boolean isSetMarH() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public boolean isSetMarW() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public boolean isSetName() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public boolean isSetNoResizeAllowed() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public boolean isSetScrollbar() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public boolean isSetSourceFileName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public boolean isSetSz() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public boolean isSetTitle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void setLinkedToFile(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void setLongDesc(CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void setMarH(CTPixelsMeasure cTPixelsMeasure) {
        generatedSetterHelperImpl(cTPixelsMeasure, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void setMarW(CTPixelsMeasure cTPixelsMeasure) {
        generatedSetterHelperImpl(cTPixelsMeasure, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void setName(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void setNoResizeAllowed(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void setScrollbar(CTFrameScrollbar cTFrameScrollbar) {
        generatedSetterHelperImpl(cTFrameScrollbar, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void setSourceFileName(CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void setSz(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void setTitle(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void unsetLinkedToFile() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void unsetLongDesc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void unsetMarH() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void unsetMarW() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void unsetNoResizeAllowed() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void unsetScrollbar() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void unsetSourceFileName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void unsetSz() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame
    public void unsetTitle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
