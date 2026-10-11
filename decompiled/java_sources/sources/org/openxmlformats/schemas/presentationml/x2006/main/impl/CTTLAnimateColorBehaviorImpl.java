package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateColorDirection;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateColorSpace;

/* loaded from: classes14.dex */
public class CTTLAnimateColorBehaviorImpl extends XmlComplexContentImpl implements CTTLAnimateColorBehavior {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cBhvr"), new QName(XSSFRelation.NS_PRESENTATIONML, "by"), new QName(XSSFRelation.NS_PRESENTATIONML, "from"), new QName(XSSFRelation.NS_PRESENTATIONML, "to"), new QName("", "clrSpc"), new QName("", CouchFieldKey.KEY_DIR)};
    private static final long serialVersionUID = 1;

    public CTTLAnimateColorBehaviorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public CTTLByAnimateColorTransform addNewBy() {
        CTTLByAnimateColorTransform cTTLByAnimateColorTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTTLByAnimateColorTransform = (CTTLByAnimateColorTransform) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLByAnimateColorTransform;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public CTTLCommonBehaviorData addNewCBhvr() {
        CTTLCommonBehaviorData cTTLCommonBehaviorData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonBehaviorData = (CTTLCommonBehaviorData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonBehaviorData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public CTColor addNewFrom() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public CTColor addNewTo() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public CTTLByAnimateColorTransform getBy() {
        CTTLByAnimateColorTransform cTTLByAnimateColorTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTTLByAnimateColorTransform = (CTTLByAnimateColorTransform) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLByAnimateColorTransform == null) {
                cTTLByAnimateColorTransform = null;
            }
        }
        return cTTLByAnimateColorTransform;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public STTLAnimateColorSpace.Enum getClrSpc() {
        STTLAnimateColorSpace.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            r3 = simpleValue == null ? null : (STTLAnimateColorSpace.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public STTLAnimateColorDirection.Enum getDir() {
        STTLAnimateColorDirection.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STTLAnimateColorDirection.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public CTColor getFrom() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTColor == null) {
                cTColor = null;
            }
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public CTColor getTo() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTColor == null) {
                cTColor = null;
            }
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public boolean isSetClrSpc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public boolean isSetDir() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public boolean isSetFrom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public boolean isSetTo() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void setBy(CTTLByAnimateColorTransform cTTLByAnimateColorTransform) {
        generatedSetterHelperImpl(cTTLByAnimateColorTransform, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData) {
        generatedSetterHelperImpl(cTTLCommonBehaviorData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void setClrSpc(STTLAnimateColorSpace.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void setDir(STTLAnimateColorDirection.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void setFrom(CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void setTo(CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void unsetBy() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void unsetClrSpc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void unsetDir() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void unsetFrom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void unsetTo() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public STTLAnimateColorSpace xgetClrSpc() {
        STTLAnimateColorSpace sTTLAnimateColorSpace;
        synchronized (monitor()) {
            check_orphaned();
            sTTLAnimateColorSpace = (STTLAnimateColorSpace) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return sTTLAnimateColorSpace;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public STTLAnimateColorDirection xgetDir() {
        STTLAnimateColorDirection sTTLAnimateColorDirection;
        synchronized (monitor()) {
            check_orphaned();
            sTTLAnimateColorDirection = (STTLAnimateColorDirection) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTTLAnimateColorDirection;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void xsetClrSpc(STTLAnimateColorSpace sTTLAnimateColorSpace) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLAnimateColorSpace sTTLAnimateColorSpace2 = (STTLAnimateColorSpace) typeStore.find_attribute_user(qNameArr[4]);
            if (sTTLAnimateColorSpace2 == null) {
                sTTLAnimateColorSpace2 = (STTLAnimateColorSpace) get_store().add_attribute_user(qNameArr[4]);
            }
            sTTLAnimateColorSpace2.set(sTTLAnimateColorSpace);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateColorBehavior
    public void xsetDir(STTLAnimateColorDirection sTTLAnimateColorDirection) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLAnimateColorDirection sTTLAnimateColorDirection2 = (STTLAnimateColorDirection) typeStore.find_attribute_user(qNameArr[5]);
            if (sTTLAnimateColorDirection2 == null) {
                sTTLAnimateColorDirection2 = (STTLAnimateColorDirection) get_store().add_attribute_user(qNameArr[5]);
            }
            sTTLAnimateColorDirection2.set(sTTLAnimateColorDirection);
        }
    }
}
