package org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl.CTNameListTypeImpl;

/* loaded from: classes14.dex */
public class CTNameListTypeImpl extends XmlComplexContentImpl implements CTNameListType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Person")};
    private static final long serialVersionUID = 1;

    public CTNameListTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType
    public CTPersonType addNewPerson() {
        CTPersonType cTPersonType;
        synchronized (monitor()) {
            check_orphaned();
            cTPersonType = (CTPersonType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPersonType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType
    public CTPersonType[] getPersonArray() {
        return (CTPersonType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPersonType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType
    public List<CTPersonType> getPersonList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xn5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNameListTypeImpl.this.getPersonArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yn5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTNameListTypeImpl.this.setPersonArray(((Integer) obj).intValue(), (CTPersonType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zn5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNameListTypeImpl.this.insertNewPerson(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ao5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTNameListTypeImpl.this.removePerson(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bo5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTNameListTypeImpl.this.sizeOfPersonArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType
    public CTPersonType insertNewPerson(int i) {
        CTPersonType cTPersonType;
        synchronized (monitor()) {
            check_orphaned();
            cTPersonType = (CTPersonType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPersonType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType
    public void removePerson(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType
    public void setPersonArray(CTPersonType[] cTPersonTypeArr) {
        check_orphaned();
        arraySetterHelper(cTPersonTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType
    public int sizeOfPersonArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType
    public CTPersonType getPersonArray(int i) {
        CTPersonType cTPersonType;
        synchronized (monitor()) {
            check_orphaned();
            cTPersonType = (CTPersonType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPersonType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPersonType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType
    public void setPersonArray(int i, CTPersonType cTPersonType) {
        generatedSetterHelperImpl(cTPersonType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
