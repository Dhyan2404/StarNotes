package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonTimeNodeData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLNextActionType;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLPreviousActionType;

/* loaded from: classes14.dex */
public class CTTLTimeNodeSequenceImpl extends XmlComplexContentImpl implements CTTLTimeNodeSequence {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cTn"), new QName(XSSFRelation.NS_PRESENTATIONML, "prevCondLst"), new QName(XSSFRelation.NS_PRESENTATIONML, "nextCondLst"), new QName("", "concurrent"), new QName("", "prevAc"), new QName("", "nextAc")};
    private static final long serialVersionUID = 1;

    public CTTLTimeNodeSequenceImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public CTTLCommonTimeNodeData addNewCTn() {
        CTTLCommonTimeNodeData cTTLCommonTimeNodeData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonTimeNodeData = (CTTLCommonTimeNodeData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonTimeNodeData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public CTTLTimeConditionList addNewNextCondLst() {
        CTTLTimeConditionList cTTLTimeConditionList;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeConditionList = (CTTLTimeConditionList) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTLTimeConditionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public CTTLTimeConditionList addNewPrevCondLst() {
        CTTLTimeConditionList cTTLTimeConditionList;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeConditionList = (CTTLTimeConditionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLTimeConditionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public boolean getConcurrent() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public STTLNextActionType.Enum getNextAc() {
        STTLNextActionType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STTLNextActionType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public CTTLTimeConditionList getNextCondLst() {
        CTTLTimeConditionList cTTLTimeConditionList;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeConditionList = (CTTLTimeConditionList) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTLTimeConditionList == null) {
                cTTLTimeConditionList = null;
            }
        }
        return cTTLTimeConditionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public STTLPreviousActionType.Enum getPrevAc() {
        STTLPreviousActionType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            r3 = simpleValue == null ? null : (STTLPreviousActionType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public CTTLTimeConditionList getPrevCondLst() {
        CTTLTimeConditionList cTTLTimeConditionList;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeConditionList = (CTTLTimeConditionList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLTimeConditionList == null) {
                cTTLTimeConditionList = null;
            }
        }
        return cTTLTimeConditionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public boolean isSetConcurrent() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public boolean isSetNextAc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public boolean isSetNextCondLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public boolean isSetPrevAc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public boolean isSetPrevCondLst() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void setCTn(CTTLCommonTimeNodeData cTTLCommonTimeNodeData) {
        generatedSetterHelperImpl(cTTLCommonTimeNodeData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void setConcurrent(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void setNextAc(STTLNextActionType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void setNextCondLst(CTTLTimeConditionList cTTLTimeConditionList) {
        generatedSetterHelperImpl(cTTLTimeConditionList, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void setPrevAc(STTLPreviousActionType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void setPrevCondLst(CTTLTimeConditionList cTTLTimeConditionList) {
        generatedSetterHelperImpl(cTTLTimeConditionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void unsetConcurrent() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void unsetNextAc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void unsetNextCondLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void unsetPrevAc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void unsetPrevCondLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public XmlBoolean xgetConcurrent() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public STTLNextActionType xgetNextAc() {
        STTLNextActionType sTTLNextActionType;
        synchronized (monitor()) {
            check_orphaned();
            sTTLNextActionType = (STTLNextActionType) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTTLNextActionType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public STTLPreviousActionType xgetPrevAc() {
        STTLPreviousActionType sTTLPreviousActionType;
        synchronized (monitor()) {
            check_orphaned();
            sTTLPreviousActionType = (STTLPreviousActionType) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return sTTLPreviousActionType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void xsetConcurrent(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void xsetNextAc(STTLNextActionType sTTLNextActionType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLNextActionType sTTLNextActionType2 = (STTLNextActionType) typeStore.find_attribute_user(qNameArr[5]);
            if (sTTLNextActionType2 == null) {
                sTTLNextActionType2 = (STTLNextActionType) get_store().add_attribute_user(qNameArr[5]);
            }
            sTTLNextActionType2.set(sTTLNextActionType);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeSequence
    public void xsetPrevAc(STTLPreviousActionType sTTLPreviousActionType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLPreviousActionType sTTLPreviousActionType2 = (STTLPreviousActionType) typeStore.find_attribute_user(qNameArr[4]);
            if (sTTLPreviousActionType2 == null) {
                sTTLPreviousActionType2 = (STTLPreviousActionType) get_store().add_attribute_user(qNameArr[4]);
            }
            sTTLPreviousActionType2.set(sTTLPreviousActionType);
        }
    }
}
