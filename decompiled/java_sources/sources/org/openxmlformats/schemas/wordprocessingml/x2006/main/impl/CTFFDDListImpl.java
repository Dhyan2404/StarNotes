package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTFFDDListImpl;

/* loaded from: classes16.dex */
public class CTFFDDListImpl extends XmlComplexContentImpl implements CTFFDDList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING), new QName(XSSFRelation.NS_WORDPROCESSINGML, "default"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "listEntry")};
    private static final long serialVersionUID = 1;

    public CTFFDDListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public CTDecimalNumber addNewDefault() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public CTString addNewListEntry() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public CTDecimalNumber addNewResult() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public CTDecimalNumber getDefault() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public CTString[] getListEntryArray() {
        return (CTString[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTString[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public List<CTString> getListEntryList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fs3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFFDDListImpl.this.getListEntryArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gs3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFFDDListImpl.this.setListEntryArray(((Integer) obj).intValue(), (CTString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hs3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFFDDListImpl.this.insertNewListEntry(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.is3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFFDDListImpl.this.removeListEntry(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.js3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFFDDListImpl.this.sizeOfListEntryArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public CTDecimalNumber getResult() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public CTString insertNewListEntry(int i) {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public boolean isSetDefault() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public boolean isSetResult() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public void removeListEntry(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public void setDefault(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public void setListEntryArray(CTString[] cTStringArr) {
        check_orphaned();
        arraySetterHelper(cTStringArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public void setResult(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public int sizeOfListEntryArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public void unsetDefault() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public void unsetResult() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public CTString getListEntryArray(int i) {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFDDList
    public void setListEntryArray(int i, CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[2], i, (short) 2);
    }
}
