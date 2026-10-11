package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTCallout;
import com.microsoft.schemas.office.office.CTColorMenu;
import com.microsoft.schemas.office.office.CTColorMru;
import com.microsoft.schemas.office.office.CTExtrusion;
import com.microsoft.schemas.office.office.CTLock;
import com.microsoft.schemas.office.office.CTShapeDefaults;
import com.microsoft.schemas.office.office.CTSkew;
import com.microsoft.schemas.vml.CTFill;
import com.microsoft.schemas.vml.CTShadow;
import com.microsoft.schemas.vml.CTStroke;
import com.microsoft.schemas.vml.CTTextbox;
import com.microsoft.schemas.vml.STExt;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.math.BigInteger;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STColorType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public class CTShapeDefaultsImpl extends XmlComplexContentImpl implements CTShapeDefaults {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "fill"), new QName("urn:schemas-microsoft-com:vml", "stroke"), new QName("urn:schemas-microsoft-com:vml", "textbox"), new QName("urn:schemas-microsoft-com:vml", "shadow"), new QName("urn:schemas-microsoft-com:office:office", "skew"), new QName("urn:schemas-microsoft-com:office:office", "extrusion"), new QName("urn:schemas-microsoft-com:office:office", "callout"), new QName("urn:schemas-microsoft-com:office:office", DevicePushAction.LOCK_DEVICE), new QName("urn:schemas-microsoft-com:office:office", "colormru"), new QName("urn:schemas-microsoft-com:office:office", "colormenu"), new QName("urn:schemas-microsoft-com:vml", "ext"), new QName("", "spidmax"), new QName("", "style"), new QName("", "fill"), new QName("", "fillcolor"), new QName("", "stroke"), new QName("", "strokecolor"), new QName("urn:schemas-microsoft-com:office:office", "allowincell")};
    private static final long serialVersionUID = 1;

    public CTShapeDefaultsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTCallout addNewCallout() {
        CTCallout cTCallout;
        synchronized (monitor()) {
            check_orphaned();
            cTCallout = (CTCallout) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTCallout;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTColorMenu addNewColormenu() {
        CTColorMenu cTColorMenu;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMenu = (CTColorMenu) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTColorMenu;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTColorMru addNewColormru() {
        CTColorMru cTColorMru;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMru = (CTColorMru) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTColorMru;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTExtrusion addNewExtrusion() {
        CTExtrusion cTExtrusion;
        synchronized (monitor()) {
            check_orphaned();
            cTExtrusion = (CTExtrusion) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTExtrusion;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTFill addNewFill() {
        CTFill cTFill;
        synchronized (monitor()) {
            check_orphaned();
            cTFill = (CTFill) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFill;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTLock addNewLock() {
        CTLock cTLock;
        synchronized (monitor()) {
            check_orphaned();
            cTLock = (CTLock) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTLock;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTShadow addNewShadow() {
        CTShadow cTShadow;
        synchronized (monitor()) {
            check_orphaned();
            cTShadow = (CTShadow) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTShadow;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTSkew addNewSkew() {
        CTSkew cTSkew;
        synchronized (monitor()) {
            check_orphaned();
            cTSkew = (CTSkew) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTSkew;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTStroke addNewStroke() {
        CTStroke cTStroke;
        synchronized (monitor()) {
            check_orphaned();
            cTStroke = (CTStroke) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTStroke;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTTextbox addNewTextbox() {
        CTTextbox cTTextbox;
        synchronized (monitor()) {
            check_orphaned();
            cTTextbox = (CTTextbox) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTextbox;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public STTrueFalse.Enum getAllowincell() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[17]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTCallout getCallout() {
        CTCallout cTCallout;
        synchronized (monitor()) {
            check_orphaned();
            cTCallout = (CTCallout) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTCallout == null) {
                cTCallout = null;
            }
        }
        return cTCallout;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTColorMenu getColormenu() {
        CTColorMenu cTColorMenu;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMenu = (CTColorMenu) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTColorMenu == null) {
                cTColorMenu = null;
            }
        }
        return cTColorMenu;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTColorMru getColormru() {
        CTColorMru cTColorMru;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMru = (CTColorMru) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTColorMru == null) {
                cTColorMru = null;
            }
        }
        return cTColorMru;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public STExt.Enum getExt() {
        STExt.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[10]);
            r3 = simpleValue == null ? null : (STExt.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTExtrusion getExtrusion() {
        CTExtrusion cTExtrusion;
        synchronized (monitor()) {
            check_orphaned();
            cTExtrusion = (CTExtrusion) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTExtrusion == null) {
                cTExtrusion = null;
            }
        }
        return cTExtrusion;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTFill getFill() {
        CTFill cTFill;
        synchronized (monitor()) {
            check_orphaned();
            cTFill = (CTFill) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTFill == null) {
                cTFill = null;
            }
        }
        return cTFill;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public STTrueFalse.Enum getFill2() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[13]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public String getFillcolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[14]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTLock getLock() {
        CTLock cTLock;
        synchronized (monitor()) {
            check_orphaned();
            cTLock = (CTLock) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTLock == null) {
                cTLock = null;
            }
        }
        return cTLock;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTShadow getShadow() {
        CTShadow cTShadow;
        synchronized (monitor()) {
            check_orphaned();
            cTShadow = (CTShadow) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTShadow == null) {
                cTShadow = null;
            }
        }
        return cTShadow;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTSkew getSkew() {
        CTSkew cTSkew;
        synchronized (monitor()) {
            check_orphaned();
            cTSkew = (CTSkew) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTSkew == null) {
                cTSkew = null;
            }
        }
        return cTSkew;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public BigInteger getSpidmax() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[11]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTStroke getStroke() {
        CTStroke cTStroke;
        synchronized (monitor()) {
            check_orphaned();
            cTStroke = (CTStroke) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTStroke == null) {
                cTStroke = null;
            }
        }
        return cTStroke;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public STTrueFalse.Enum getStroke2() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[15]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public String getStrokecolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[16]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public String getStyle() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[12]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public CTTextbox getTextbox() {
        CTTextbox cTTextbox;
        synchronized (monitor()) {
            check_orphaned();
            cTTextbox = (CTTextbox) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTextbox == null) {
                cTTextbox = null;
            }
        }
        return cTTextbox;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetAllowincell() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[17]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetCallout() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetColormenu() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetColormru() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetExt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetExtrusion() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetFill() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetFill2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetFillcolor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[14]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetLock() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetShadow() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetSkew() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetSpidmax() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetStroke() {
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

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetStroke2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[15]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetStrokecolor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[16]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public boolean isSetTextbox() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setAllowincell(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[17]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[17]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setCallout(CTCallout cTCallout) {
        generatedSetterHelperImpl(cTCallout, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setColormenu(CTColorMenu cTColorMenu) {
        generatedSetterHelperImpl(cTColorMenu, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setColormru(CTColorMru cTColorMru) {
        generatedSetterHelperImpl(cTColorMru, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setExt(STExt.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setExtrusion(CTExtrusion cTExtrusion) {
        generatedSetterHelperImpl(cTExtrusion, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setFill(CTFill cTFill) {
        generatedSetterHelperImpl(cTFill, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setFill2(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setFillcolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[14]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[14]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setLock(CTLock cTLock) {
        generatedSetterHelperImpl(cTLock, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setShadow(CTShadow cTShadow) {
        generatedSetterHelperImpl(cTShadow, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setSkew(CTSkew cTSkew) {
        generatedSetterHelperImpl(cTSkew, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setSpidmax(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setStroke(CTStroke cTStroke) {
        generatedSetterHelperImpl(cTStroke, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setStroke2(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[15]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[15]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setStrokecolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[16]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[16]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setStyle(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[12]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void setTextbox(CTTextbox cTTextbox) {
        generatedSetterHelperImpl(cTTextbox, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetAllowincell() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[17]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetCallout() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetColormenu() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetColormru() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetExt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetExtrusion() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetFill() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetFill2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetFillcolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[14]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetLock() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetShadow() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetSkew() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetSpidmax() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetStroke() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetStroke2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[15]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetStrokecolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[16]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void unsetTextbox() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public STTrueFalse xgetAllowincell() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[17]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public STExt xgetExt() {
        STExt sTExt;
        synchronized (monitor()) {
            check_orphaned();
            sTExt = (STExt) get_store().find_attribute_user(PROPERTY_QNAME[10]);
        }
        return sTExt;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public STTrueFalse xgetFill2() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[13]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public STColorType xgetFillcolor() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[14]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public XmlInteger xgetSpidmax() {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().find_attribute_user(PROPERTY_QNAME[11]);
        }
        return xmlInteger;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public STTrueFalse xgetStroke2() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[15]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public STColorType xgetStrokecolor() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[16]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public XmlString xgetStyle() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[12]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void xsetAllowincell(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[17]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[17]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void xsetExt(STExt sTExt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STExt sTExt2 = (STExt) typeStore.find_attribute_user(qNameArr[10]);
            if (sTExt2 == null) {
                sTExt2 = (STExt) get_store().add_attribute_user(qNameArr[10]);
            }
            sTExt2.set(sTExt);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void xsetFill2(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[13]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[13]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void xsetFillcolor(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[14]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[14]);
            }
            sTColorType2.set(sTColorType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void xsetSpidmax(XmlInteger xmlInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInteger xmlInteger2 = (XmlInteger) typeStore.find_attribute_user(qNameArr[11]);
            if (xmlInteger2 == null) {
                xmlInteger2 = (XmlInteger) get_store().add_attribute_user(qNameArr[11]);
            }
            xmlInteger2.set(xmlInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void xsetStroke2(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[15]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[15]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void xsetStrokecolor(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[16]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[16]);
            }
            sTColorType2.set(sTColorType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeDefaults
    public void xsetStyle(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[12]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[12]);
            }
            xmlString2.set(xmlString);
        }
    }
}
