package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLPoint;

/* loaded from: classes14.dex */
public class CTTLAnimateScaleBehaviorImpl extends XmlComplexContentImpl implements CTTLAnimateScaleBehavior {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cBhvr"), new QName(XSSFRelation.NS_PRESENTATIONML, "by"), new QName(XSSFRelation.NS_PRESENTATIONML, "from"), new QName(XSSFRelation.NS_PRESENTATIONML, "to"), new QName("", "zoomContents")};
    private static final long serialVersionUID = 1;

    public CTTLAnimateScaleBehaviorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public CTTLPoint addNewBy() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public CTTLCommonBehaviorData addNewCBhvr() {
        CTTLCommonBehaviorData cTTLCommonBehaviorData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonBehaviorData = (CTTLCommonBehaviorData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonBehaviorData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public CTTLPoint addNewFrom() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public CTTLPoint addNewTo() {
        CTTLPoint cTTLPoint;
        synchronized (monitor()) {
            check_orphaned();
            cTTLPoint = (CTTLPoint) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTTLPoint;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public boolean getZoomContents() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public boolean isSetFrom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public boolean isSetTo() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public boolean isSetZoomContents() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public void setBy(CTTLPoint cTTLPoint) {
        generatedSetterHelperImpl(cTTLPoint, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData) {
        generatedSetterHelperImpl(cTTLCommonBehaviorData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public void setFrom(CTTLPoint cTTLPoint) {
        generatedSetterHelperImpl(cTTLPoint, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public void setTo(CTTLPoint cTTLPoint) {
        generatedSetterHelperImpl(cTTLPoint, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public void setZoomContents(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public void unsetBy() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public void unsetFrom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public void unsetTo() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public void unsetZoomContents() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public XmlBoolean xgetZoomContents() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateScaleBehavior
    public void xsetZoomContents(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }
}
