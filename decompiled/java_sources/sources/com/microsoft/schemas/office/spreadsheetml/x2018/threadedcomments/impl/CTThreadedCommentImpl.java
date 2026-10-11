package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.impl;

import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment;
import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.Calendar;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRef;

/* loaded from: classes7.dex */
public class CTThreadedCommentImpl extends XmlComplexContentImpl implements CTThreadedComment {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/spreadsheetml/2018/threadedcomments", "text"), new QName("http://schemas.microsoft.com/office/spreadsheetml/2018/threadedcomments", "mentions"), new QName("http://schemas.microsoft.com/office/spreadsheetml/2018/threadedcomments", "extLst"), new QName("", "ref"), new QName("", "dT"), new QName("", "personId"), new QName("", "id"), new QName("", CouchFieldKey.KEY_PARENT_ID), new QName("", "done")};
    private static final long serialVersionUID = 1;

    public CTThreadedCommentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public XmlObject addNewExtLst() {
        XmlObject xmlObject;
        synchronized (monitor()) {
            check_orphaned();
            xmlObject = (XmlObject) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return xmlObject;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public CTThreadedCommentMentions addNewMentions() {
        CTThreadedCommentMentions cTThreadedCommentMentions;
        synchronized (monitor()) {
            check_orphaned();
            cTThreadedCommentMentions = (CTThreadedCommentMentions) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTThreadedCommentMentions;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public Calendar getDT() {
        Calendar calendarValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            calendarValue = simpleValue == null ? null : simpleValue.getCalendarValue();
        }
        return calendarValue;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public boolean getDone() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public XmlObject getExtLst() {
        XmlObject xmlObject;
        synchronized (monitor()) {
            check_orphaned();
            xmlObject = (XmlObject) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (xmlObject == null) {
                xmlObject = null;
            }
        }
        return xmlObject;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public CTThreadedCommentMentions getMentions() {
        CTThreadedCommentMentions cTThreadedCommentMentions;
        synchronized (monitor()) {
            check_orphaned();
            cTThreadedCommentMentions = (CTThreadedCommentMentions) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTThreadedCommentMentions == null) {
                cTThreadedCommentMentions = null;
            }
        }
        return cTThreadedCommentMentions;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public String getParentId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public String getPersonId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public String getRef() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public String getText() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public boolean isSetDT() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public boolean isSetDone() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public boolean isSetMentions() {
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

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public boolean isSetParentId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public boolean isSetRef() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public boolean isSetText() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void setDT(Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setCalendarValue(calendar);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void setDone(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void setExtLst(XmlObject xmlObject) {
        generatedSetterHelperImpl(xmlObject, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void setId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void setMentions(CTThreadedCommentMentions cTThreadedCommentMentions) {
        generatedSetterHelperImpl(cTThreadedCommentMentions, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void setParentId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void setPersonId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void setRef(String str) {
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

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void setText(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void unsetDT() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void unsetDone() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void unsetMentions() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void unsetParentId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void unsetRef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void unsetText() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public XmlDateTime xgetDT() {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlDateTime;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public XmlBoolean xgetDone() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return xmlBoolean;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public STGuid xgetId() {
        STGuid sTGuid;
        synchronized (monitor()) {
            check_orphaned();
            sTGuid = (STGuid) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return sTGuid;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public STGuid xgetParentId() {
        STGuid sTGuid;
        synchronized (monitor()) {
            check_orphaned();
            sTGuid = (STGuid) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return sTGuid;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public STGuid xgetPersonId() {
        STGuid sTGuid;
        synchronized (monitor()) {
            check_orphaned();
            sTGuid = (STGuid) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTGuid;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public STRef xgetRef() {
        STRef sTRef;
        synchronized (monitor()) {
            check_orphaned();
            sTRef = (STRef) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTRef;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public STXstring xgetText() {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return sTXstring;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void xsetDT(XmlDateTime xmlDateTime) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDateTime xmlDateTime2 = (XmlDateTime) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlDateTime2 == null) {
                xmlDateTime2 = (XmlDateTime) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlDateTime2.set(xmlDateTime);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void xsetDone(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void xsetId(STGuid sTGuid) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STGuid sTGuid2 = (STGuid) typeStore.find_attribute_user(qNameArr[6]);
            if (sTGuid2 == null) {
                sTGuid2 = (STGuid) get_store().add_attribute_user(qNameArr[6]);
            }
            sTGuid2.set(sTGuid);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void xsetParentId(STGuid sTGuid) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STGuid sTGuid2 = (STGuid) typeStore.find_attribute_user(qNameArr[7]);
            if (sTGuid2 == null) {
                sTGuid2 = (STGuid) get_store().add_attribute_user(qNameArr[7]);
            }
            sTGuid2.set(sTGuid);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void xsetPersonId(STGuid sTGuid) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STGuid sTGuid2 = (STGuid) typeStore.find_attribute_user(qNameArr[5]);
            if (sTGuid2 == null) {
                sTGuid2 = (STGuid) get_store().add_attribute_user(qNameArr[5]);
            }
            sTGuid2.set(sTGuid);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void xsetRef(STRef sTRef) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRef sTRef2 = (STRef) typeStore.find_attribute_user(qNameArr[3]);
            if (sTRef2 == null) {
                sTRef2 = (STRef) get_store().add_attribute_user(qNameArr[3]);
            }
            sTRef2.set(sTRef);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment
    public void xsetText(STXstring sTXstring) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STXstring sTXstring2 = (STXstring) typeStore.find_element_user(qNameArr[0], 0);
            if (sTXstring2 == null) {
                sTXstring2 = (STXstring) get_store().add_element_user(qNameArr[0]);
            }
            sTXstring2.set(sTXstring);
        }
    }
}
