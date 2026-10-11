package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STConformanceClass;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1;

/* loaded from: classes16.dex */
public class CTDocument1Impl extends CTDocumentBaseImpl implements CTDocument1 {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "body"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "conformance")};
    private static final long serialVersionUID = 1;

    public CTDocument1Impl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public CTBody addNewBody() {
        CTBody cTBody;
        synchronized (monitor()) {
            check_orphaned();
            cTBody = (CTBody) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBody;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public CTBody getBody() {
        CTBody cTBody;
        synchronized (monitor()) {
            check_orphaned();
            cTBody = (CTBody) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBody == null) {
                cTBody = null;
            }
        }
        return cTBody;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public STConformanceClass.Enum getConformance() {
        STConformanceClass.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STConformanceClass.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public boolean isSetBody() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public boolean isSetConformance() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public void setBody(CTBody cTBody) {
        generatedSetterHelperImpl(cTBody, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public void setConformance(STConformanceClass.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public void unsetBody() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public void unsetConformance() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public STConformanceClass xgetConformance() {
        STConformanceClass sTConformanceClass;
        synchronized (monitor()) {
            check_orphaned();
            sTConformanceClass = (STConformanceClass) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTConformanceClass;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1
    public void xsetConformance(STConformanceClass sTConformanceClass) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STConformanceClass sTConformanceClass2 = (STConformanceClass) typeStore.find_attribute_user(qNameArr[1]);
            if (sTConformanceClass2 == null) {
                sTConformanceClass2 = (STConformanceClass) get_store().add_attribute_user(qNameArr[1]);
            }
            sTConformanceClass2.set(sTConformanceClass);
        }
    }
}
