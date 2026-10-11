package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonMediaNodeData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo;

/* loaded from: classes14.dex */
public class CTTLMediaNodeVideoImpl extends XmlComplexContentImpl implements CTTLMediaNodeVideo {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cMediaNode"), new QName("", "fullScrn")};
    private static final long serialVersionUID = 1;

    public CTTLMediaNodeVideoImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo
    public CTTLCommonMediaNodeData addNewCMediaNode() {
        CTTLCommonMediaNodeData cTTLCommonMediaNodeData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonMediaNodeData = (CTTLCommonMediaNodeData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonMediaNodeData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo
    public CTTLCommonMediaNodeData getCMediaNode() {
        CTTLCommonMediaNodeData cTTLCommonMediaNodeData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonMediaNodeData = (CTTLCommonMediaNodeData) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTLCommonMediaNodeData == null) {
                cTTLCommonMediaNodeData = null;
            }
        }
        return cTTLCommonMediaNodeData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo
    public boolean getFullScrn() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo
    public boolean isSetFullScrn() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo
    public void setCMediaNode(CTTLCommonMediaNodeData cTTLCommonMediaNodeData) {
        generatedSetterHelperImpl(cTTLCommonMediaNodeData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo
    public void setFullScrn(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo
    public void unsetFullScrn() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo
    public XmlBoolean xgetFullScrn() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[1]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLMediaNodeVideo
    public void xsetFullScrn(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }
}
