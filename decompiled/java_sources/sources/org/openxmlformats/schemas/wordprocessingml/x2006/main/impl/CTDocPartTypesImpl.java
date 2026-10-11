package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTDocPartTypesImpl;

/* loaded from: classes16.dex */
public class CTDocPartTypesImpl extends XmlComplexContentImpl implements CTDocPartTypes {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "type"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "all")};
    private static final long serialVersionUID = 1;

    public CTDocPartTypesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public CTDocPartType addNewType() {
        CTDocPartType cTDocPartType;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartType = (CTDocPartType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDocPartType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public Object getAll() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public CTDocPartType[] getTypeArray() {
        return (CTDocPartType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDocPartType[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public List<CTDocPartType> getTypeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sf3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDocPartTypesImpl.this.getTypeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tf3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDocPartTypesImpl.this.setTypeArray(((Integer) obj).intValue(), (CTDocPartType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uf3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDocPartTypesImpl.this.insertNewType(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vf3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDocPartTypesImpl.this.removeType(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wf3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDocPartTypesImpl.this.sizeOfTypeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public CTDocPartType insertNewType(int i) {
        CTDocPartType cTDocPartType;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartType = (CTDocPartType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDocPartType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public boolean isSetAll() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public void removeType(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public void setAll(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public void setTypeArray(CTDocPartType[] cTDocPartTypeArr) {
        check_orphaned();
        arraySetterHelper(cTDocPartTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public int sizeOfTypeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public void unsetAll() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public STOnOff xgetAll() {
        STOnOff sTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            sTOnOff = (STOnOff) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public void xsetAll(STOnOff sTOnOff) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STOnOff sTOnOff2 = (STOnOff) typeStore.find_attribute_user(qNameArr[1]);
            if (sTOnOff2 == null) {
                sTOnOff2 = (STOnOff) get_store().add_attribute_user(qNameArr[1]);
            }
            sTOnOff2.set(sTOnOff);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public CTDocPartType getTypeArray(int i) {
        CTDocPartType cTDocPartType;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartType = (CTDocPartType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDocPartType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDocPartType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes
    public void setTypeArray(int i, CTDocPartType cTDocPartType) {
        generatedSetterHelperImpl(cTDocPartType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
