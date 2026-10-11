package org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl;

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
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSourceType;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl.CTSourcesImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes14.dex */
public class CTSourcesImpl extends XmlComplexContentImpl implements CTSources {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Source"), new QName("", "SelectedStyle"), new QName("", "StyleName"), new QName("", "URI")};
    private static final long serialVersionUID = 1;

    public CTSourcesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public CTSourceType addNewSource() {
        CTSourceType cTSourceType;
        synchronized (monitor()) {
            check_orphaned();
            cTSourceType = (CTSourceType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSourceType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public String getSelectedStyle() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public CTSourceType[] getSourceArray() {
        return (CTSourceType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSourceType[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public List<CTSourceType> getSourceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b3c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSourcesImpl.this.getSourceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c3c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSourcesImpl.this.setSourceArray(((Integer) obj).intValue(), (CTSourceType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d3c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSourcesImpl.this.insertNewSource(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e3c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSourcesImpl.this.removeSource(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.f3c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSourcesImpl.this.sizeOfSourceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public String getStyleName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public String getURI() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public CTSourceType insertNewSource(int i) {
        CTSourceType cTSourceType;
        synchronized (monitor()) {
            check_orphaned();
            cTSourceType = (CTSourceType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSourceType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public boolean isSetSelectedStyle() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public boolean isSetStyleName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public boolean isSetURI() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void removeSource(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void setSelectedStyle(String str) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void setSourceArray(CTSourceType[] cTSourceTypeArr) {
        check_orphaned();
        arraySetterHelper(cTSourceTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void setStyleName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void setURI(String str) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public int sizeOfSourceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void unsetSelectedStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void unsetStyleName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void unsetURI() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public STString xgetSelectedStyle() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public STString xgetStyleName() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public STString xgetURI() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void xsetSelectedStyle(STString sTString) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void xsetStyleName(STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STString sTString2 = (STString) typeStore.find_attribute_user(qNameArr[2]);
            if (sTString2 == null) {
                sTString2 = (STString) get_store().add_attribute_user(qNameArr[2]);
            }
            sTString2.set(sTString);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void xsetURI(STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STString sTString2 = (STString) typeStore.find_attribute_user(qNameArr[3]);
            if (sTString2 == null) {
                sTString2 = (STString) get_store().add_attribute_user(qNameArr[3]);
            }
            sTString2.set(sTString);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public CTSourceType getSourceArray(int i) {
        CTSourceType cTSourceType;
        synchronized (monitor()) {
            check_orphaned();
            cTSourceType = (CTSourceType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSourceType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSourceType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTSources
    public void setSourceArray(int i, CTSourceType cTSourceType) {
        generatedSetterHelperImpl(cTSourceType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
