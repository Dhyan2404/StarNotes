package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.impl;

import androidx.core.app.NotificationCompat;
import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPerson;
import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList;
import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.impl.CTPersonListImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;

/* loaded from: classes7.dex */
public class CTPersonListImpl extends XmlComplexContentImpl implements CTPersonList {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/spreadsheetml/2018/threadedcomments", NotificationCompat.MessagingStyle.Message.f5012m), new QName("http://schemas.microsoft.com/office/spreadsheetml/2018/threadedcomments", "extLst")};
    private static final long serialVersionUID = 1;

    public CTPersonListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTExtensionList;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public CTPerson addNewPerson() {
        CTPerson cTPerson;
        synchronized (monitor()) {
            check_orphaned();
            cTPerson = (CTPerson) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPerson;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public CTPerson[] getPersonArray() {
        return (CTPerson[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPerson[0]);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public List<CTPerson> getPersonList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d67
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonListImpl.this.getPersonArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e67
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPersonListImpl.this.setPersonArray(((Integer) obj).intValue(), (CTPerson) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.f67
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonListImpl.this.insertNewPerson(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g67
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPersonListImpl.this.removePerson(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.h67
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPersonListImpl.this.sizeOfPersonArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public CTPerson insertNewPerson(int i) {
        CTPerson cTPerson;
        synchronized (monitor()) {
            check_orphaned();
            cTPerson = (CTPerson) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPerson;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public boolean isSetExtLst() {
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

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public void removePerson(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public void setPersonArray(CTPerson[] cTPersonArr) {
        check_orphaned();
        arraySetterHelper(cTPersonArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public int sizeOfPersonArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public CTPerson getPersonArray(int i) {
        CTPerson cTPerson;
        synchronized (monitor()) {
            check_orphaned();
            cTPerson = (CTPerson) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPerson == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPerson;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList
    public void setPersonArray(int i, CTPerson cTPerson) {
        generatedSetterHelperImpl(cTPerson, PROPERTY_QNAME[0], i, (short) 2);
    }
}
