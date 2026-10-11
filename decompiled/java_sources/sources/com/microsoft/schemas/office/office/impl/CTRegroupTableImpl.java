package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTEntry;
import com.microsoft.schemas.office.office.CTRegroupTable;
import com.microsoft.schemas.office.office.impl.CTRegroupTableImpl;
import com.microsoft.schemas.vml.STExt;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTRegroupTableImpl extends XmlComplexContentImpl implements CTRegroupTable {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "entry"), new QName("urn:schemas-microsoft-com:vml", "ext")};
    private static final long serialVersionUID = 1;

    public CTRegroupTableImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public CTEntry addNewEntry() {
        CTEntry cTEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTEntry = (CTEntry) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEntry;
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public CTEntry[] getEntryArray() {
        return (CTEntry[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTEntry[0]);
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public List<CTEntry> getEntryList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gr8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRegroupTableImpl.this.getEntryArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hr8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRegroupTableImpl.this.setEntryArray(((Integer) obj).intValue(), (CTEntry) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ir8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRegroupTableImpl.this.insertNewEntry(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jr8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRegroupTableImpl.this.removeEntry(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kr8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRegroupTableImpl.this.sizeOfEntryArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public STExt.Enum getExt() {
        STExt.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STExt.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public CTEntry insertNewEntry(int i) {
        CTEntry cTEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTEntry = (CTEntry) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTEntry;
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public boolean isSetExt() {
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

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public void removeEntry(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public void setEntryArray(CTEntry[] cTEntryArr) {
        check_orphaned();
        arraySetterHelper(cTEntryArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public void setExt(STExt.Enum r6) {
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

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public int sizeOfEntryArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public void unsetExt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public STExt xgetExt() {
        STExt sTExt;
        synchronized (monitor()) {
            check_orphaned();
            sTExt = (STExt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTExt;
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public void xsetExt(STExt sTExt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STExt sTExt2 = (STExt) typeStore.find_attribute_user(qNameArr[1]);
            if (sTExt2 == null) {
                sTExt2 = (STExt) get_store().add_attribute_user(qNameArr[1]);
            }
            sTExt2.set(sTExt);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public CTEntry getEntryArray(int i) {
        CTEntry cTEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTEntry = (CTEntry) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTEntry == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEntry;
    }

    @Override // com.microsoft.schemas.office.office.CTRegroupTable
    public void setEntryArray(int i, CTEntry cTEntry) {
        generatedSetterHelperImpl(cTEntry, PROPERTY_QNAME[0], i, (short) 2);
    }
}
