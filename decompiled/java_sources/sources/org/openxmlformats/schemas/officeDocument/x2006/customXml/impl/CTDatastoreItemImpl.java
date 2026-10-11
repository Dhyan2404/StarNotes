package org.openxmlformats.schemas.officeDocument.x2006.customXml.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem;
import org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;

/* loaded from: classes14.dex */
public class CTDatastoreItemImpl extends XmlComplexContentImpl implements CTDatastoreItem {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/customXml", "schemaRefs"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/customXml", "itemID")};
    private static final long serialVersionUID = 1;

    public CTDatastoreItemImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem
    public CTDatastoreSchemaRefs addNewSchemaRefs() {
        CTDatastoreSchemaRefs cTDatastoreSchemaRefs;
        synchronized (monitor()) {
            check_orphaned();
            cTDatastoreSchemaRefs = (CTDatastoreSchemaRefs) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDatastoreSchemaRefs;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem
    public String getItemID() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem
    public CTDatastoreSchemaRefs getSchemaRefs() {
        CTDatastoreSchemaRefs cTDatastoreSchemaRefs;
        synchronized (monitor()) {
            check_orphaned();
            cTDatastoreSchemaRefs = (CTDatastoreSchemaRefs) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDatastoreSchemaRefs == null) {
                cTDatastoreSchemaRefs = null;
            }
        }
        return cTDatastoreSchemaRefs;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem
    public boolean isSetSchemaRefs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem
    public void setItemID(String str) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem
    public void setSchemaRefs(CTDatastoreSchemaRefs cTDatastoreSchemaRefs) {
        generatedSetterHelperImpl(cTDatastoreSchemaRefs, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem
    public void unsetSchemaRefs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem
    public STGuid xgetItemID() {
        STGuid sTGuid;
        synchronized (monitor()) {
            check_orphaned();
            sTGuid = (STGuid) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTGuid;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem
    public void xsetItemID(STGuid sTGuid) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STGuid sTGuid2 = (STGuid) typeStore.find_attribute_user(qNameArr[1]);
            if (sTGuid2 == null) {
                sTGuid2 = (STGuid) get_store().add_attribute_user(qNameArr[1]);
            }
            sTGuid2.set(sTGuid);
        }
    }
}
