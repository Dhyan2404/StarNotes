package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCharset;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontFamily;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontRel;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontSig;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPanose;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPitch;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;

/* loaded from: classes16.dex */
public class CTFontImpl extends XmlComplexContentImpl implements CTFont {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "altName"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "panose1"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "charset"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "family"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "notTrueType"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "pitch"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sig"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "embedRegular"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "embedBold"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "embedItalic"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "embedBoldItalic"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "name")};
    private static final long serialVersionUID = 1;

    public CTFontImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTString addNewAltName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTCharset addNewCharset() {
        CTCharset cTCharset;
        synchronized (monitor()) {
            check_orphaned();
            cTCharset = (CTCharset) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTCharset;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontRel addNewEmbedBold() {
        CTFontRel cTFontRel;
        synchronized (monitor()) {
            check_orphaned();
            cTFontRel = (CTFontRel) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTFontRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontRel addNewEmbedBoldItalic() {
        CTFontRel cTFontRel;
        synchronized (monitor()) {
            check_orphaned();
            cTFontRel = (CTFontRel) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTFontRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontRel addNewEmbedItalic() {
        CTFontRel cTFontRel;
        synchronized (monitor()) {
            check_orphaned();
            cTFontRel = (CTFontRel) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTFontRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontRel addNewEmbedRegular() {
        CTFontRel cTFontRel;
        synchronized (monitor()) {
            check_orphaned();
            cTFontRel = (CTFontRel) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTFontRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontFamily addNewFamily() {
        CTFontFamily cTFontFamily;
        synchronized (monitor()) {
            check_orphaned();
            cTFontFamily = (CTFontFamily) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTFontFamily;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTOnOff addNewNotTrueType() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTPanose addNewPanose1() {
        CTPanose cTPanose;
        synchronized (monitor()) {
            check_orphaned();
            cTPanose = (CTPanose) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTPanose;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTPitch addNewPitch() {
        CTPitch cTPitch;
        synchronized (monitor()) {
            check_orphaned();
            cTPitch = (CTPitch) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPitch;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontSig addNewSig() {
        CTFontSig cTFontSig;
        synchronized (monitor()) {
            check_orphaned();
            cTFontSig = (CTFontSig) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTFontSig;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTString getAltName() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTCharset getCharset() {
        CTCharset cTCharset;
        synchronized (monitor()) {
            check_orphaned();
            cTCharset = (CTCharset) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTCharset == null) {
                cTCharset = null;
            }
        }
        return cTCharset;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontRel getEmbedBold() {
        CTFontRel cTFontRel;
        synchronized (monitor()) {
            check_orphaned();
            cTFontRel = (CTFontRel) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTFontRel == null) {
                cTFontRel = null;
            }
        }
        return cTFontRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontRel getEmbedBoldItalic() {
        CTFontRel cTFontRel;
        synchronized (monitor()) {
            check_orphaned();
            cTFontRel = (CTFontRel) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (cTFontRel == null) {
                cTFontRel = null;
            }
        }
        return cTFontRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontRel getEmbedItalic() {
        CTFontRel cTFontRel;
        synchronized (monitor()) {
            check_orphaned();
            cTFontRel = (CTFontRel) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTFontRel == null) {
                cTFontRel = null;
            }
        }
        return cTFontRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontRel getEmbedRegular() {
        CTFontRel cTFontRel;
        synchronized (monitor()) {
            check_orphaned();
            cTFontRel = (CTFontRel) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTFontRel == null) {
                cTFontRel = null;
            }
        }
        return cTFontRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontFamily getFamily() {
        CTFontFamily cTFontFamily;
        synchronized (monitor()) {
            check_orphaned();
            cTFontFamily = (CTFontFamily) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTFontFamily == null) {
                cTFontFamily = null;
            }
        }
        return cTFontFamily;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[11]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTOnOff getNotTrueType() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTPanose getPanose1() {
        CTPanose cTPanose;
        synchronized (monitor()) {
            check_orphaned();
            cTPanose = (CTPanose) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTPanose == null) {
                cTPanose = null;
            }
        }
        return cTPanose;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTPitch getPitch() {
        CTPitch cTPitch;
        synchronized (monitor()) {
            check_orphaned();
            cTPitch = (CTPitch) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTPitch == null) {
                cTPitch = null;
            }
        }
        return cTPitch;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public CTFontSig getSig() {
        CTFontSig cTFontSig;
        synchronized (monitor()) {
            check_orphaned();
            cTFontSig = (CTFontSig) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTFontSig == null) {
                cTFontSig = null;
            }
        }
        return cTFontSig;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetAltName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetCharset() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetEmbedBold() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetEmbedBoldItalic() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetEmbedItalic() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetEmbedRegular() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetFamily() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetNotTrueType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetPanose1() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetPitch() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public boolean isSetSig() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setAltName(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setCharset(CTCharset cTCharset) {
        generatedSetterHelperImpl(cTCharset, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setEmbedBold(CTFontRel cTFontRel) {
        generatedSetterHelperImpl(cTFontRel, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setEmbedBoldItalic(CTFontRel cTFontRel) {
        generatedSetterHelperImpl(cTFontRel, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setEmbedItalic(CTFontRel cTFontRel) {
        generatedSetterHelperImpl(cTFontRel, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setEmbedRegular(CTFontRel cTFontRel) {
        generatedSetterHelperImpl(cTFontRel, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setFamily(CTFontFamily cTFontFamily) {
        generatedSetterHelperImpl(cTFontFamily, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setNotTrueType(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setPanose1(CTPanose cTPanose) {
        generatedSetterHelperImpl(cTPanose, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setPitch(CTPitch cTPitch) {
        generatedSetterHelperImpl(cTPitch, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void setSig(CTFontSig cTFontSig) {
        generatedSetterHelperImpl(cTFontSig, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetAltName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetCharset() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetEmbedBold() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetEmbedBoldItalic() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetEmbedItalic() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetEmbedRegular() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetFamily() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetNotTrueType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetPanose1() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetPitch() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void unsetSig() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public STString xgetName() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_attribute_user(PROPERTY_QNAME[11]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont
    public void xsetName(STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STString sTString2 = (STString) typeStore.find_attribute_user(qNameArr[11]);
            if (sTString2 == null) {
                sTString2 = (STString) get_store().add_attribute_user(qNameArr[11]);
            }
            sTString2.set(sTString);
        }
    }
}
