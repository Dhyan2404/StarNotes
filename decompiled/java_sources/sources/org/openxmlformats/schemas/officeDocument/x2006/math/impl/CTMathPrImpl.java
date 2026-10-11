package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBin;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBinSub;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLoc;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathJc;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTString;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTTwipsMeasure;

/* loaded from: classes14.dex */
public class CTMathPrImpl extends XmlComplexContentImpl implements CTMathPr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "mathFont"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "brkBin"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "brkBinSub"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "smallFrac"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "dispDef"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "lMargin"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "rMargin"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "defJc"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "preSp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "postSp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "interSp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "intraSp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "wrapIndent"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "wrapRight"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "intLim"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "naryLim")};
    private static final long serialVersionUID = 1;

    public CTMathPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTBreakBin addNewBrkBin() {
        CTBreakBin cTBreakBin;
        synchronized (monitor()) {
            check_orphaned();
            cTBreakBin = (CTBreakBin) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTBreakBin;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTBreakBinSub addNewBrkBinSub() {
        CTBreakBinSub cTBreakBinSub;
        synchronized (monitor()) {
            check_orphaned();
            cTBreakBinSub = (CTBreakBinSub) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBreakBinSub;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTOMathJc addNewDefJc() {
        CTOMathJc cTOMathJc;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathJc = (CTOMathJc) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTOMathJc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTOnOff addNewDispDef() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTLimLoc addNewIntLim() {
        CTLimLoc cTLimLoc;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLoc = (CTLimLoc) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTLimLoc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure addNewInterSp() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure addNewIntraSp() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure addNewLMargin() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTString addNewMathFont() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTLimLoc addNewNaryLim() {
        CTLimLoc cTLimLoc;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLoc = (CTLimLoc) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTLimLoc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure addNewPostSp() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure addNewPreSp() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure addNewRMargin() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTOnOff addNewSmallFrac() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure addNewWrapIndent() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTOnOff addNewWrapRight() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTBreakBin getBrkBin() {
        CTBreakBin cTBreakBin;
        synchronized (monitor()) {
            check_orphaned();
            cTBreakBin = (CTBreakBin) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTBreakBin == null) {
                cTBreakBin = null;
            }
        }
        return cTBreakBin;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTBreakBinSub getBrkBinSub() {
        CTBreakBinSub cTBreakBinSub;
        synchronized (monitor()) {
            check_orphaned();
            cTBreakBinSub = (CTBreakBinSub) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTBreakBinSub == null) {
                cTBreakBinSub = null;
            }
        }
        return cTBreakBinSub;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTOMathJc getDefJc() {
        CTOMathJc cTOMathJc;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathJc = (CTOMathJc) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTOMathJc == null) {
                cTOMathJc = null;
            }
        }
        return cTOMathJc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTOnOff getDispDef() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTLimLoc getIntLim() {
        CTLimLoc cTLimLoc;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLoc = (CTLimLoc) get_store().find_element_user(PROPERTY_QNAME[14], 0);
            if (cTLimLoc == null) {
                cTLimLoc = null;
            }
        }
        return cTLimLoc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure getInterSp() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (cTTwipsMeasure == null) {
                cTTwipsMeasure = null;
            }
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure getIntraSp() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[11], 0);
            if (cTTwipsMeasure == null) {
                cTTwipsMeasure = null;
            }
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure getLMargin() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTTwipsMeasure == null) {
                cTTwipsMeasure = null;
            }
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTString getMathFont() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTLimLoc getNaryLim() {
        CTLimLoc cTLimLoc;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLoc = (CTLimLoc) get_store().find_element_user(PROPERTY_QNAME[15], 0);
            if (cTLimLoc == null) {
                cTLimLoc = null;
            }
        }
        return cTLimLoc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure getPostSp() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTTwipsMeasure == null) {
                cTTwipsMeasure = null;
            }
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure getPreSp() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTTwipsMeasure == null) {
                cTTwipsMeasure = null;
            }
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure getRMargin() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTTwipsMeasure == null) {
                cTTwipsMeasure = null;
            }
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTOnOff getSmallFrac() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTTwipsMeasure getWrapIndent() {
        CTTwipsMeasure cTTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTTwipsMeasure = (CTTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[12], 0);
            if (cTTwipsMeasure == null) {
                cTTwipsMeasure = null;
            }
        }
        return cTTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public CTOnOff getWrapRight() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[13], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetBrkBin() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetBrkBinSub() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetDefJc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetDispDef() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetIntLim() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[14]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetInterSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetIntraSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[11]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetLMargin() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetMathFont() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetNaryLim() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[15]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetPostSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetPreSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetRMargin() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetSmallFrac() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetWrapIndent() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[12]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public boolean isSetWrapRight() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[13]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setBrkBin(CTBreakBin cTBreakBin) {
        generatedSetterHelperImpl(cTBreakBin, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setBrkBinSub(CTBreakBinSub cTBreakBinSub) {
        generatedSetterHelperImpl(cTBreakBinSub, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setDefJc(CTOMathJc cTOMathJc) {
        generatedSetterHelperImpl(cTOMathJc, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setDispDef(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setIntLim(CTLimLoc cTLimLoc) {
        generatedSetterHelperImpl(cTLimLoc, PROPERTY_QNAME[14], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setInterSp(CTTwipsMeasure cTTwipsMeasure) {
        generatedSetterHelperImpl(cTTwipsMeasure, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setIntraSp(CTTwipsMeasure cTTwipsMeasure) {
        generatedSetterHelperImpl(cTTwipsMeasure, PROPERTY_QNAME[11], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setLMargin(CTTwipsMeasure cTTwipsMeasure) {
        generatedSetterHelperImpl(cTTwipsMeasure, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setMathFont(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setNaryLim(CTLimLoc cTLimLoc) {
        generatedSetterHelperImpl(cTLimLoc, PROPERTY_QNAME[15], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setPostSp(CTTwipsMeasure cTTwipsMeasure) {
        generatedSetterHelperImpl(cTTwipsMeasure, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setPreSp(CTTwipsMeasure cTTwipsMeasure) {
        generatedSetterHelperImpl(cTTwipsMeasure, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setRMargin(CTTwipsMeasure cTTwipsMeasure) {
        generatedSetterHelperImpl(cTTwipsMeasure, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setSmallFrac(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setWrapIndent(CTTwipsMeasure cTTwipsMeasure) {
        generatedSetterHelperImpl(cTTwipsMeasure, PROPERTY_QNAME[12], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void setWrapRight(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[13], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetBrkBin() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetBrkBinSub() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetDefJc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetDispDef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetIntLim() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetInterSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetIntraSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetLMargin() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetMathFont() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetNaryLim() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetPostSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetPreSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetRMargin() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetSmallFrac() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetWrapIndent() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr
    public void unsetWrapRight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], 0);
        }
    }
}
