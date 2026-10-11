package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.AuthorEntryType;
import com.microsoft.schemas.office.visio.x2012.main.AuthorListType;
import com.microsoft.schemas.office.visio.x2012.main.impl.AuthorListTypeImpl;
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
public class AuthorListTypeImpl extends XmlComplexContentImpl implements AuthorListType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "AuthorEntry")};
    private static final long serialVersionUID = 1;

    public AuthorListTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.AuthorListType
    public AuthorEntryType addNewAuthorEntry() {
        AuthorEntryType authorEntryType;
        synchronized (monitor()) {
            check_orphaned();
            authorEntryType = (AuthorEntryType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return authorEntryType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.AuthorListType
    public AuthorEntryType[] getAuthorEntryArray() {
        return (AuthorEntryType[]) getXmlObjectArray(PROPERTY_QNAME[0], new AuthorEntryType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.AuthorListType
    public List<AuthorEntryType> getAuthorEntryList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yi
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return AuthorListTypeImpl.this.getAuthorEntryArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zi
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    AuthorListTypeImpl.this.setAuthorEntryArray(((Integer) obj).intValue(), (AuthorEntryType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.aj
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return AuthorListTypeImpl.this.insertNewAuthorEntry(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bj
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AuthorListTypeImpl.this.removeAuthorEntry(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cj
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(AuthorListTypeImpl.this.sizeOfAuthorEntryArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.AuthorListType
    public AuthorEntryType insertNewAuthorEntry(int i) {
        AuthorEntryType authorEntryType;
        synchronized (monitor()) {
            check_orphaned();
            authorEntryType = (AuthorEntryType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return authorEntryType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.AuthorListType
    public void removeAuthorEntry(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.AuthorListType
    public void setAuthorEntryArray(AuthorEntryType[] authorEntryTypeArr) {
        check_orphaned();
        arraySetterHelper(authorEntryTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.AuthorListType
    public int sizeOfAuthorEntryArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.AuthorListType
    public AuthorEntryType getAuthorEntryArray(int i) {
        AuthorEntryType authorEntryType;
        synchronized (monitor()) {
            check_orphaned();
            authorEntryType = (AuthorEntryType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (authorEntryType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return authorEntryType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.AuthorListType
    public void setAuthorEntryArray(int i, AuthorEntryType authorEntryType) {
        generatedSetterHelperImpl(authorEntryType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
