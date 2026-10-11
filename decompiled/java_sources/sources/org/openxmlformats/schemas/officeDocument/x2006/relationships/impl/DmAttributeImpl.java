package org.openxmlformats.schemas.officeDocument.x2006.relationships.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.DmAttribute;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public class DmAttributeImpl extends XmlComplexContentImpl implements DmAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "dm")};
    private static final long serialVersionUID = 1;

    public DmAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.DmAttribute
    public String getDm() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.DmAttribute
    public boolean isSetDm() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.DmAttribute
    public void setDm(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.DmAttribute
    public void unsetDm() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.DmAttribute
    public STRelationshipId xgetDm() {
        STRelationshipId sTRelationshipId;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTRelationshipId = (STRelationshipId) typeStore.find_attribute_user(qNameArr[0]);
            if (sTRelationshipId == null) {
                sTRelationshipId = (STRelationshipId) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTRelationshipId;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.DmAttribute
    public void xsetDm(STRelationshipId sTRelationshipId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRelationshipId sTRelationshipId2 = (STRelationshipId) typeStore.find_attribute_user(qNameArr[0]);
            if (sTRelationshipId2 == null) {
                sTRelationshipId2 = (STRelationshipId) get_store().add_attribute_user(qNameArr[0]);
            }
            sTRelationshipId2.set(sTRelationshipId);
        }
    }
}
