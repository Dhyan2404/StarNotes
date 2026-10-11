package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonTimeNodeData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLBehaviorAccumulateType;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLBehaviorAdditiveType;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLBehaviorOverrideType;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLBehaviorTransformType;

/* loaded from: classes14.dex */
public class CTTLCommonBehaviorDataImpl extends XmlComplexContentImpl implements CTTLCommonBehaviorData {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cTn"), new QName(XSSFRelation.NS_PRESENTATIONML, "tgtEl"), new QName(XSSFRelation.NS_PRESENTATIONML, "attrNameLst"), new QName("", XResourceBundle.LANG_ADDITIVE), new QName("", "accumulate"), new QName("", "xfrmType"), new QName("", "from"), new QName("", "to"), new QName("", "by"), new QName("", "rctx"), new QName("", "override")};
    private static final long serialVersionUID = 1;

    public CTTLCommonBehaviorDataImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public CTTLBehaviorAttributeNameList addNewAttrNameLst() {
        CTTLBehaviorAttributeNameList cTTLBehaviorAttributeNameList;
        synchronized (monitor()) {
            check_orphaned();
            cTTLBehaviorAttributeNameList = (CTTLBehaviorAttributeNameList) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTLBehaviorAttributeNameList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public CTTLCommonTimeNodeData addNewCTn() {
        CTTLCommonTimeNodeData cTTLCommonTimeNodeData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonTimeNodeData = (CTTLCommonTimeNodeData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonTimeNodeData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public CTTLTimeTargetElement addNewTgtEl() {
        CTTLTimeTargetElement cTTLTimeTargetElement;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeTargetElement = (CTTLTimeTargetElement) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLTimeTargetElement;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public STTLBehaviorAccumulateType.Enum getAccumulate() {
        STTLBehaviorAccumulateType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            r3 = simpleValue == null ? null : (STTLBehaviorAccumulateType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public STTLBehaviorAdditiveType.Enum getAdditive() {
        STTLBehaviorAdditiveType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            r3 = simpleValue == null ? null : (STTLBehaviorAdditiveType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public CTTLBehaviorAttributeNameList getAttrNameLst() {
        CTTLBehaviorAttributeNameList cTTLBehaviorAttributeNameList;
        synchronized (monitor()) {
            check_orphaned();
            cTTLBehaviorAttributeNameList = (CTTLBehaviorAttributeNameList) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTLBehaviorAttributeNameList == null) {
                cTTLBehaviorAttributeNameList = null;
            }
        }
        return cTTLBehaviorAttributeNameList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public String getBy() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public CTTLCommonTimeNodeData getCTn() {
        CTTLCommonTimeNodeData cTTLCommonTimeNodeData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonTimeNodeData = (CTTLCommonTimeNodeData) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTLCommonTimeNodeData == null) {
                cTTLCommonTimeNodeData = null;
            }
        }
        return cTTLCommonTimeNodeData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public String getFrom() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public STTLBehaviorOverrideType.Enum getOverride() {
        STTLBehaviorOverrideType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[10]);
            r3 = simpleValue == null ? null : (STTLBehaviorOverrideType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public String getRctx() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public CTTLTimeTargetElement getTgtEl() {
        CTTLTimeTargetElement cTTLTimeTargetElement;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeTargetElement = (CTTLTimeTargetElement) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLTimeTargetElement == null) {
                cTTLTimeTargetElement = null;
            }
        }
        return cTTLTimeTargetElement;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public String getTo() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public STTLBehaviorTransformType.Enum getXfrmType() {
        STTLBehaviorTransformType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STTLBehaviorTransformType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public boolean isSetAccumulate() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public boolean isSetAdditive() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public boolean isSetAttrNameLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public boolean isSetBy() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public boolean isSetFrom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public boolean isSetOverride() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public boolean isSetRctx() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public boolean isSetTo() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public boolean isSetXfrmType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setAccumulate(STTLBehaviorAccumulateType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setAdditive(STTLBehaviorAdditiveType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setAttrNameLst(CTTLBehaviorAttributeNameList cTTLBehaviorAttributeNameList) {
        generatedSetterHelperImpl(cTTLBehaviorAttributeNameList, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setBy(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setCTn(CTTLCommonTimeNodeData cTTLCommonTimeNodeData) {
        generatedSetterHelperImpl(cTTLCommonTimeNodeData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setFrom(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setOverride(STTLBehaviorOverrideType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setRctx(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setTgtEl(CTTLTimeTargetElement cTTLTimeTargetElement) {
        generatedSetterHelperImpl(cTTLTimeTargetElement, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setTo(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void setXfrmType(STTLBehaviorTransformType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void unsetAccumulate() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void unsetAdditive() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void unsetAttrNameLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void unsetBy() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void unsetFrom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void unsetOverride() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void unsetRctx() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void unsetTo() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void unsetXfrmType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public STTLBehaviorAccumulateType xgetAccumulate() {
        STTLBehaviorAccumulateType sTTLBehaviorAccumulateType;
        synchronized (monitor()) {
            check_orphaned();
            sTTLBehaviorAccumulateType = (STTLBehaviorAccumulateType) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return sTTLBehaviorAccumulateType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public STTLBehaviorAdditiveType xgetAdditive() {
        STTLBehaviorAdditiveType sTTLBehaviorAdditiveType;
        synchronized (monitor()) {
            check_orphaned();
            sTTLBehaviorAdditiveType = (STTLBehaviorAdditiveType) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTTLBehaviorAdditiveType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public XmlString xgetBy() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public XmlString xgetFrom() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public STTLBehaviorOverrideType xgetOverride() {
        STTLBehaviorOverrideType sTTLBehaviorOverrideType;
        synchronized (monitor()) {
            check_orphaned();
            sTTLBehaviorOverrideType = (STTLBehaviorOverrideType) get_store().find_attribute_user(PROPERTY_QNAME[10]);
        }
        return sTTLBehaviorOverrideType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public XmlString xgetRctx() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public XmlString xgetTo() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public STTLBehaviorTransformType xgetXfrmType() {
        STTLBehaviorTransformType sTTLBehaviorTransformType;
        synchronized (monitor()) {
            check_orphaned();
            sTTLBehaviorTransformType = (STTLBehaviorTransformType) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTTLBehaviorTransformType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void xsetAccumulate(STTLBehaviorAccumulateType sTTLBehaviorAccumulateType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLBehaviorAccumulateType sTTLBehaviorAccumulateType2 = (STTLBehaviorAccumulateType) typeStore.find_attribute_user(qNameArr[4]);
            if (sTTLBehaviorAccumulateType2 == null) {
                sTTLBehaviorAccumulateType2 = (STTLBehaviorAccumulateType) get_store().add_attribute_user(qNameArr[4]);
            }
            sTTLBehaviorAccumulateType2.set(sTTLBehaviorAccumulateType);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void xsetAdditive(STTLBehaviorAdditiveType sTTLBehaviorAdditiveType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLBehaviorAdditiveType sTTLBehaviorAdditiveType2 = (STTLBehaviorAdditiveType) typeStore.find_attribute_user(qNameArr[3]);
            if (sTTLBehaviorAdditiveType2 == null) {
                sTTLBehaviorAdditiveType2 = (STTLBehaviorAdditiveType) get_store().add_attribute_user(qNameArr[3]);
            }
            sTTLBehaviorAdditiveType2.set(sTTLBehaviorAdditiveType);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void xsetBy(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void xsetFrom(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void xsetOverride(STTLBehaviorOverrideType sTTLBehaviorOverrideType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLBehaviorOverrideType sTTLBehaviorOverrideType2 = (STTLBehaviorOverrideType) typeStore.find_attribute_user(qNameArr[10]);
            if (sTTLBehaviorOverrideType2 == null) {
                sTTLBehaviorOverrideType2 = (STTLBehaviorOverrideType) get_store().add_attribute_user(qNameArr[10]);
            }
            sTTLBehaviorOverrideType2.set(sTTLBehaviorOverrideType);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void xsetRctx(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void xsetTo(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData
    public void xsetXfrmType(STTLBehaviorTransformType sTTLBehaviorTransformType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLBehaviorTransformType sTTLBehaviorTransformType2 = (STTLBehaviorTransformType) typeStore.find_attribute_user(qNameArr[5]);
            if (sTTLBehaviorTransformType2 == null) {
                sTTLBehaviorTransformType2 = (STTLBehaviorTransformType) get_store().add_attribute_user(qNameArr[5]);
            }
            sTTLBehaviorTransformType2.set(sTTLBehaviorTransformType);
        }
    }
}
