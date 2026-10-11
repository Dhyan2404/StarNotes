package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScale2D;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties;

/* loaded from: classes14.dex */
public class CTCommonViewPropertiesImpl extends XmlComplexContentImpl implements CTCommonViewProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "scale"), new QName(XSSFRelation.NS_PRESENTATIONML, "origin"), new QName("", "varScale")};
    private static final long serialVersionUID = 1;

    public CTCommonViewPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public CTPoint2D addNewOrigin() {
        CTPoint2D cTPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPoint2D = (CTPoint2D) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTPoint2D;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public CTScale2D addNewScale() {
        CTScale2D cTScale2D;
        synchronized (monitor()) {
            check_orphaned();
            cTScale2D = (CTScale2D) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTScale2D;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public CTPoint2D getOrigin() {
        CTPoint2D cTPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPoint2D = (CTPoint2D) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTPoint2D == null) {
                cTPoint2D = null;
            }
        }
        return cTPoint2D;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public CTScale2D getScale() {
        CTScale2D cTScale2D;
        synchronized (monitor()) {
            check_orphaned();
            cTScale2D = (CTScale2D) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTScale2D == null) {
                cTScale2D = null;
            }
        }
        return cTScale2D;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public boolean getVarScale() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public boolean isSetVarScale() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public void setOrigin(CTPoint2D cTPoint2D) {
        generatedSetterHelperImpl(cTPoint2D, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public void setScale(CTScale2D cTScale2D) {
        generatedSetterHelperImpl(cTScale2D, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public void setVarScale(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public void unsetVarScale() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public XmlBoolean xgetVarScale() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[2]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties
    public void xsetVarScale(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }
}
