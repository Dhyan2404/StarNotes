package com.microsoft.schemas.office.word.x2012.wordml.impl;

import androidx.core.app.NotificationCompat;
import com.microsoft.schemas.office.word.x2012.wordml.CTPerson;
import com.microsoft.schemas.office.word.x2012.wordml.CTPresenceInfo;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes7.dex */
public class CTPersonImpl extends XmlComplexContentImpl implements CTPerson {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "presenceInfo"), new QName("http://schemas.microsoft.com/office/word/2012/wordml", NotificationCompat.CarExtender.f4973i)};
    private static final long serialVersionUID = 1;

    public CTPersonImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPerson
    public CTPresenceInfo addNewPresenceInfo() {
        CTPresenceInfo cTPresenceInfo;
        synchronized (monitor()) {
            check_orphaned();
            cTPresenceInfo = (CTPresenceInfo) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPresenceInfo;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPerson
    public String getAuthor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPerson
    public CTPresenceInfo getPresenceInfo() {
        CTPresenceInfo cTPresenceInfo;
        synchronized (monitor()) {
            check_orphaned();
            cTPresenceInfo = (CTPresenceInfo) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPresenceInfo == null) {
                cTPresenceInfo = null;
            }
        }
        return cTPresenceInfo;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPerson
    public boolean isSetPresenceInfo() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPerson
    public void setAuthor(String str) {
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

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPerson
    public void setPresenceInfo(CTPresenceInfo cTPresenceInfo) {
        generatedSetterHelperImpl(cTPresenceInfo, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPerson
    public void unsetPresenceInfo() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPerson
    public STString xgetAuthor() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTString;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPerson
    public void xsetAuthor(STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STString sTString2 = (STString) typeStore.find_attribute_user(qNameArr[1]);
            if (sTString2 == null) {
                sTString2 = (STString) get_store().add_attribute_user(qNameArr[1]);
            }
            sTString2.set(sTString);
        }
    }
}
