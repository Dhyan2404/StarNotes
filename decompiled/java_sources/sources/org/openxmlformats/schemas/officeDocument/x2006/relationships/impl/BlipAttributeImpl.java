package org.openxmlformats.schemas.officeDocument.x2006.relationships.impl;

import com.couchbase.lite.internal.core.C4Replicator;
import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.BlipAttribute;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public class BlipAttributeImpl extends XmlComplexContentImpl implements BlipAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, C4Replicator.C4_REPLICATOR_SCHEME_2)};
    private static final long serialVersionUID = 1;

    public BlipAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.BlipAttribute
    public String getBlip() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.BlipAttribute
    public boolean isSetBlip() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.BlipAttribute
    public void setBlip(String str) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.BlipAttribute
    public void unsetBlip() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.BlipAttribute
    public STRelationshipId xgetBlip() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.relationships.BlipAttribute
    public void xsetBlip(STRelationshipId sTRelationshipId) {
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
