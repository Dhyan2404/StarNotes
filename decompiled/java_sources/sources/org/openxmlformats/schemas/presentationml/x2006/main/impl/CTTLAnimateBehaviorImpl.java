package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateBehaviorCalcMode;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateBehaviorValueType;

/* loaded from: classes14.dex */
public class CTTLAnimateBehaviorImpl extends XmlComplexContentImpl implements CTTLAnimateBehavior {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cBhvr"), new QName(XSSFRelation.NS_PRESENTATIONML, "tavLst"), new QName("", "by"), new QName("", "from"), new QName("", "to"), new QName("", "calcmode"), new QName("", "valueType")};
    private static final long serialVersionUID = 1;

    public CTTLAnimateBehaviorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public CTTLCommonBehaviorData addNewCBhvr() {
        CTTLCommonBehaviorData cTTLCommonBehaviorData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonBehaviorData = (CTTLCommonBehaviorData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonBehaviorData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public CTTLTimeAnimateValueList addNewTavLst() {
        CTTLTimeAnimateValueList cTTLTimeAnimateValueList;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeAnimateValueList = (CTTLTimeAnimateValueList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLTimeAnimateValueList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public String getBy() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public CTTLCommonBehaviorData getCBhvr() {
        CTTLCommonBehaviorData cTTLCommonBehaviorData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonBehaviorData = (CTTLCommonBehaviorData) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTLCommonBehaviorData == null) {
                cTTLCommonBehaviorData = null;
            }
        }
        return cTTLCommonBehaviorData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public STTLAnimateBehaviorCalcMode.Enum getCalcmode() {
        STTLAnimateBehaviorCalcMode.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STTLAnimateBehaviorCalcMode.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public String getFrom() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public CTTLTimeAnimateValueList getTavLst() {
        CTTLTimeAnimateValueList cTTLTimeAnimateValueList;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeAnimateValueList = (CTTLTimeAnimateValueList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLTimeAnimateValueList == null) {
                cTTLTimeAnimateValueList = null;
            }
        }
        return cTTLTimeAnimateValueList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public String getTo() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public STTLAnimateBehaviorValueType.Enum getValueType() {
        STTLAnimateBehaviorValueType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            r3 = simpleValue == null ? null : (STTLAnimateBehaviorValueType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public boolean isSetBy() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public boolean isSetCalcmode() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public boolean isSetFrom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public boolean isSetTavLst() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public boolean isSetTo() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public boolean isSetValueType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void setBy(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData) {
        generatedSetterHelperImpl(cTTLCommonBehaviorData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void setCalcmode(STTLAnimateBehaviorCalcMode.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void setFrom(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void setTavLst(CTTLTimeAnimateValueList cTTLTimeAnimateValueList) {
        generatedSetterHelperImpl(cTTLTimeAnimateValueList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void setTo(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void setValueType(STTLAnimateBehaviorValueType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void unsetBy() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void unsetCalcmode() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void unsetFrom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void unsetTavLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void unsetTo() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void unsetValueType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public XmlString xgetBy() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public STTLAnimateBehaviorCalcMode xgetCalcmode() {
        STTLAnimateBehaviorCalcMode sTTLAnimateBehaviorCalcMode;
        synchronized (monitor()) {
            check_orphaned();
            sTTLAnimateBehaviorCalcMode = (STTLAnimateBehaviorCalcMode) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTTLAnimateBehaviorCalcMode;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public XmlString xgetFrom() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public XmlString xgetTo() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public STTLAnimateBehaviorValueType xgetValueType() {
        STTLAnimateBehaviorValueType sTTLAnimateBehaviorValueType;
        synchronized (monitor()) {
            check_orphaned();
            sTTLAnimateBehaviorValueType = (STTLAnimateBehaviorValueType) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return sTTLAnimateBehaviorValueType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void xsetBy(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void xsetCalcmode(STTLAnimateBehaviorCalcMode sTTLAnimateBehaviorCalcMode) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLAnimateBehaviorCalcMode sTTLAnimateBehaviorCalcMode2 = (STTLAnimateBehaviorCalcMode) typeStore.find_attribute_user(qNameArr[5]);
            if (sTTLAnimateBehaviorCalcMode2 == null) {
                sTTLAnimateBehaviorCalcMode2 = (STTLAnimateBehaviorCalcMode) get_store().add_attribute_user(qNameArr[5]);
            }
            sTTLAnimateBehaviorCalcMode2.set(sTTLAnimateBehaviorCalcMode);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void xsetFrom(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void xsetTo(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateBehavior
    public void xsetValueType(STTLAnimateBehaviorValueType sTTLAnimateBehaviorValueType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLAnimateBehaviorValueType sTTLAnimateBehaviorValueType2 = (STTLAnimateBehaviorValueType) typeStore.find_attribute_user(qNameArr[6]);
            if (sTTLAnimateBehaviorValueType2 == null) {
                sTTLAnimateBehaviorValueType2 = (STTLAnimateBehaviorValueType) get_store().add_attribute_user(qNameArr[6]);
            }
            sTTLAnimateBehaviorValueType2.set(sTTLAnimateBehaviorValueType);
        }
    }
}
