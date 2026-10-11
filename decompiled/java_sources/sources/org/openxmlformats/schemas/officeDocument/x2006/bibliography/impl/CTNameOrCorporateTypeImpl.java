package org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes14.dex */
public class CTNameOrCorporateTypeImpl extends XmlComplexContentImpl implements CTNameOrCorporateType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "NameList"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Corporate")};
    private static final long serialVersionUID = 1;

    public CTNameOrCorporateTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public CTNameListType addNewNameList() {
        CTNameListType cTNameListType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameListType = (CTNameListType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNameListType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public String getCorporate() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public CTNameListType getNameList() {
        CTNameListType cTNameListType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameListType = (CTNameListType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTNameListType == null) {
                cTNameListType = null;
            }
        }
        return cTNameListType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public boolean isSetCorporate() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public boolean isSetNameList() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public void setCorporate(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[1], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public void setNameList(CTNameListType cTNameListType) {
        generatedSetterHelperImpl(cTNameListType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public void unsetCorporate() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public void unsetNameList() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public STString xgetCorporate() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_element_user(PROPERTY_QNAME[1], 0);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameOrCorporateType
    public void xsetCorporate(STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STString sTString2 = (STString) typeStore.find_element_user(qNameArr[1], 0);
            if (sTString2 == null) {
                sTString2 = (STString) get_store().add_element_user(qNameArr[1]);
            }
            sTString2.set(sTString);
        }
    }
}
