package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateEffectTransition;

/* loaded from: classes14.dex */
public class CTTLAnimateEffectBehaviorImpl extends XmlComplexContentImpl implements CTTLAnimateEffectBehavior {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cBhvr"), new QName(XSSFRelation.NS_PRESENTATIONML, "progress"), new QName("", AnimatedStateListDrawableCompat.f876Z), new QName("", "filter"), new QName("", "prLst")};
    private static final long serialVersionUID = 1;

    public CTTLAnimateEffectBehaviorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public CTTLCommonBehaviorData addNewCBhvr() {
        CTTLCommonBehaviorData cTTLCommonBehaviorData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonBehaviorData = (CTTLCommonBehaviorData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonBehaviorData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public CTTLAnimVariant addNewProgress() {
        CTTLAnimVariant cTTLAnimVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariant = (CTTLAnimVariant) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLAnimVariant;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public String getFilter() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public String getPrLst() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public CTTLAnimVariant getProgress() {
        CTTLAnimVariant cTTLAnimVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariant = (CTTLAnimVariant) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLAnimVariant == null) {
                cTTLAnimVariant = null;
            }
        }
        return cTTLAnimVariant;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public STTLAnimateEffectTransition.Enum getTransition() {
        STTLAnimateEffectTransition.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            r5 = simpleValue == null ? null : (STTLAnimateEffectTransition.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public boolean isSetFilter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public boolean isSetPrLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public boolean isSetProgress() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public boolean isSetTransition() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData) {
        generatedSetterHelperImpl(cTTLCommonBehaviorData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void setFilter(String str) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void setPrLst(String str) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void setProgress(CTTLAnimVariant cTTLAnimVariant) {
        generatedSetterHelperImpl(cTTLAnimVariant, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void setTransition(STTLAnimateEffectTransition.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void unsetFilter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void unsetPrLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void unsetProgress() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void unsetTransition() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public XmlString xgetFilter() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public XmlString xgetPrLst() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public STTLAnimateEffectTransition xgetTransition() {
        STTLAnimateEffectTransition sTTLAnimateEffectTransition;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTTLAnimateEffectTransition = (STTLAnimateEffectTransition) typeStore.find_attribute_user(qNameArr[2]);
            if (sTTLAnimateEffectTransition == null) {
                sTTLAnimateEffectTransition = (STTLAnimateEffectTransition) get_default_attribute_value(qNameArr[2]);
            }
        }
        return sTTLAnimateEffectTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void xsetFilter(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void xsetPrLst(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateEffectBehavior
    public void xsetTransition(STTLAnimateEffectTransition sTTLAnimateEffectTransition) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLAnimateEffectTransition sTTLAnimateEffectTransition2 = (STTLAnimateEffectTransition) typeStore.find_attribute_user(qNameArr[2]);
            if (sTTLAnimateEffectTransition2 == null) {
                sTTLAnimateEffectTransition2 = (STTLAnimateEffectTransition) get_store().add_attribute_user(qNameArr[2]);
            }
            sTTLAnimateEffectTransition2.set(sTTLAnimateEffectTransition);
        }
    }
}
