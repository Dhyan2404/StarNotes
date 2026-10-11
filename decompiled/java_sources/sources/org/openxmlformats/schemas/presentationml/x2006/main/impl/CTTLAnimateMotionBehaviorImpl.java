package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.STAngle;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLPoint;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateMotionBehaviorOrigin;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateMotionPathEditMode;

/* loaded from: classes14.dex */
public class CTTLAnimateMotionBehaviorImpl extends XmlComplexContentImpl implements CTTLAnimateMotionBehavior {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cBhvr"), new QName(XSSFRelation.NS_PRESENTATIONML, "by"), new QName(XSSFRelation.NS_PRESENTATIONML, "from"), new QName(XSSFRelation.NS_PRESENTATIONML, "to"), new QName(XSSFRelation.NS_PRESENTATIONML, "rCtr"), new QName("", "origin"), new QName("", "path"), new QName("", "pathEditMode"), new QName("", "rAng"), new QName("", "ptsTypes")};
    private static final long serialVersionUID = 1;

    public CTTLAnimateMotionBehaviorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public CTTLPoint addNewBy() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public CTTLCommonBehaviorData addNewCBhvr() {
        CTTLCommonBehaviorData cTTLCommonBehaviorData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonBehaviorData = (CTTLCommonBehaviorData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonBehaviorData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public CTTLPoint addNewFrom() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public CTTLPoint addNewRCtr() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public CTTLPoint addNewTo() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public CTTLPoint getBy() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLPoint == null) {
                cTTLPoint = null;
            }
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public CTTLPoint getFrom() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTLPoint == null) {
                cTTLPoint = null;
            }
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public STTLAnimateMotionBehaviorOrigin.Enum getOrigin() {
        STTLAnimateMotionBehaviorOrigin.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STTLAnimateMotionBehaviorOrigin.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public String getPath() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public STTLAnimateMotionPathEditMode.Enum getPathEditMode() {
        STTLAnimateMotionPathEditMode.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            r3 = simpleValue == null ? null : (STTLAnimateMotionPathEditMode.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public String getPtsTypes() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public int getRAng() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public CTTLPoint getRCtr() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTTLPoint == null) {
                cTTLPoint = null;
            }
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public CTTLPoint getTo() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTTLPoint == null) {
                cTTLPoint = null;
            }
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public boolean isSetBy() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public boolean isSetFrom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public boolean isSetOrigin() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public boolean isSetPath() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public boolean isSetPathEditMode() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public boolean isSetPtsTypes() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public boolean isSetRAng() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public boolean isSetRCtr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public boolean isSetTo() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void setBy(CTTLPoint cTTLPoint) {
        generatedSetterHelperImpl(cTTLPoint, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData) {
        generatedSetterHelperImpl(cTTLCommonBehaviorData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void setFrom(CTTLPoint cTTLPoint) {
        generatedSetterHelperImpl(cTTLPoint, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void setOrigin(STTLAnimateMotionBehaviorOrigin.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void setPath(String str) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void setPathEditMode(STTLAnimateMotionPathEditMode.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void setPtsTypes(String str) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void setRAng(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void setRCtr(CTTLPoint cTTLPoint) {
        generatedSetterHelperImpl(cTTLPoint, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void setTo(CTTLPoint cTTLPoint) {
        generatedSetterHelperImpl(cTTLPoint, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void unsetBy() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void unsetFrom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void unsetOrigin() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void unsetPath() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void unsetPathEditMode() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void unsetPtsTypes() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void unsetRAng() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void unsetRCtr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void unsetTo() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public STTLAnimateMotionBehaviorOrigin xgetOrigin() {
        STTLAnimateMotionBehaviorOrigin sTTLAnimateMotionBehaviorOrigin;
        synchronized (monitor()) {
            check_orphaned();
            sTTLAnimateMotionBehaviorOrigin = (STTLAnimateMotionBehaviorOrigin) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTTLAnimateMotionBehaviorOrigin;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public XmlString xgetPath() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public STTLAnimateMotionPathEditMode xgetPathEditMode() {
        STTLAnimateMotionPathEditMode sTTLAnimateMotionPathEditMode;
        synchronized (monitor()) {
            check_orphaned();
            sTTLAnimateMotionPathEditMode = (STTLAnimateMotionPathEditMode) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return sTTLAnimateMotionPathEditMode;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public XmlString xgetPtsTypes() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public STAngle xgetRAng() {
        STAngle sTAngle;
        synchronized (monitor()) {
            check_orphaned();
            sTAngle = (STAngle) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return sTAngle;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void xsetOrigin(STTLAnimateMotionBehaviorOrigin sTTLAnimateMotionBehaviorOrigin) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLAnimateMotionBehaviorOrigin sTTLAnimateMotionBehaviorOrigin2 = (STTLAnimateMotionBehaviorOrigin) typeStore.find_attribute_user(qNameArr[5]);
            if (sTTLAnimateMotionBehaviorOrigin2 == null) {
                sTTLAnimateMotionBehaviorOrigin2 = (STTLAnimateMotionBehaviorOrigin) get_store().add_attribute_user(qNameArr[5]);
            }
            sTTLAnimateMotionBehaviorOrigin2.set(sTTLAnimateMotionBehaviorOrigin);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void xsetPath(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void xsetPathEditMode(STTLAnimateMotionPathEditMode sTTLAnimateMotionPathEditMode) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLAnimateMotionPathEditMode sTTLAnimateMotionPathEditMode2 = (STTLAnimateMotionPathEditMode) typeStore.find_attribute_user(qNameArr[7]);
            if (sTTLAnimateMotionPathEditMode2 == null) {
                sTTLAnimateMotionPathEditMode2 = (STTLAnimateMotionPathEditMode) get_store().add_attribute_user(qNameArr[7]);
            }
            sTTLAnimateMotionPathEditMode2.set(sTTLAnimateMotionPathEditMode);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void xsetPtsTypes(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateMotionBehavior
    public void xsetRAng(STAngle sTAngle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAngle sTAngle2 = (STAngle) typeStore.find_attribute_user(qNameArr[8]);
            if (sTAngle2 == null) {
                sTAngle2 = (STAngle) get_store().add_attribute_user(qNameArr[8]);
            }
            sTAngle2.set(sTAngle);
        }
    }
}
