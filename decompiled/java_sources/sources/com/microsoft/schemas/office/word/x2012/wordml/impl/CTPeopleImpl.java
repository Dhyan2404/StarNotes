package com.microsoft.schemas.office.word.x2012.wordml.impl;

import androidx.core.app.NotificationCompat;
import com.microsoft.schemas.office.word.x2012.wordml.CTPeople;
import com.microsoft.schemas.office.word.x2012.wordml.CTPerson;
import com.microsoft.schemas.office.word.x2012.wordml.impl.CTPeopleImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTPeopleImpl extends XmlComplexContentImpl implements CTPeople {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", NotificationCompat.MessagingStyle.Message.f5012m)};
    private static final long serialVersionUID = 1;

    public CTPeopleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPeople
    public CTPerson addNewPerson() {
        CTPerson cTPerson;
        synchronized (monitor()) {
            check_orphaned();
            cTPerson = (CTPerson) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPerson;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPeople
    public CTPerson[] getPersonArray() {
        return (CTPerson[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPerson[0]);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPeople
    public List<CTPerson> getPersonList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y57
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPeopleImpl.this.getPersonArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z57
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPeopleImpl.this.setPersonArray(((Integer) obj).intValue(), (CTPerson) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a67
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPeopleImpl.this.insertNewPerson(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b67
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPeopleImpl.this.removePerson(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c67
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPeopleImpl.this.sizeOfPersonArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPeople
    public CTPerson insertNewPerson(int i) {
        CTPerson cTPerson;
        synchronized (monitor()) {
            check_orphaned();
            cTPerson = (CTPerson) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPerson;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPeople
    public void removePerson(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPeople
    public void setPersonArray(CTPerson[] cTPersonArr) {
        check_orphaned();
        arraySetterHelper(cTPersonArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPeople
    public int sizeOfPersonArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPeople
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

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTPeople
    public void setPersonArray(int i, CTPerson cTPerson) {
        generatedSetterHelperImpl(cTPerson, PROPERTY_QNAME[0], i, (short) 2);
    }
}
