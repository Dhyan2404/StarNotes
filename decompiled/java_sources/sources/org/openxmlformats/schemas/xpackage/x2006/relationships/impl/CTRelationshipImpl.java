package org.openxmlformats.schemas.xpackage.x2006.relationships.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.JavaStringHolderEx;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship;
import org.openxmlformats.schemas.xpackage.x2006.relationships.STTargetMode;

/* loaded from: classes16.dex */
public class CTRelationshipImpl extends JavaStringHolderEx implements CTRelationship {
    private static final QName[] PROPERTY_QNAME = {new QName("", PackageRelationship.TARGET_MODE_ATTRIBUTE_NAME), new QName("", PackageRelationship.TARGET_ATTRIBUTE_NAME), new QName("", "Type"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public CTRelationshipImpl(SchemaType schemaType) {
        super(schemaType, true);
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public String getTarget() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public STTargetMode.Enum getTargetMode() {
        STTargetMode.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STTargetMode.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public String getType() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public boolean isSetTargetMode() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public void setId(String str) {
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

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public void setTarget(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public void setTargetMode(STTargetMode.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public void setType(String str) {
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

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public void unsetTargetMode() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlID;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public XmlAnyURI xgetTarget() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlAnyURI;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public STTargetMode xgetTargetMode() {
        STTargetMode sTTargetMode;
        synchronized (monitor()) {
            check_orphaned();
            sTTargetMode = (STTargetMode) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTargetMode;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public XmlAnyURI xgetType() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlAnyURI;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public void xsetTarget(XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlAnyURI2 == null) {
                xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlAnyURI2.set(xmlAnyURI);
        }
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public void xsetTargetMode(STTargetMode sTTargetMode) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTargetMode sTTargetMode2 = (STTargetMode) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTargetMode2 == null) {
                sTTargetMode2 = (STTargetMode) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTargetMode2.set(sTTargetMode);
        }
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship
    public void xsetType(XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlAnyURI2 == null) {
                xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlAnyURI2.set(xmlAnyURI);
        }
    }

    public CTRelationshipImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
