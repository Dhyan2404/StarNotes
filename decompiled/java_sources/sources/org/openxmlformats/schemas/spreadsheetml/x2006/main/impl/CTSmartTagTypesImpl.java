package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagTypes;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTSmartTagTypesImpl;

/* loaded from: classes15.dex */
public class CTSmartTagTypesImpl extends XmlComplexContentImpl implements CTSmartTagTypes {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "smartTagType")};
    private static final long serialVersionUID = 1;

    public CTSmartTagTypesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagTypes
    public CTSmartTagType addNewSmartTagType() {
        CTSmartTagType cTSmartTagType;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagType = (CTSmartTagType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSmartTagType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagTypes
    public CTSmartTagType[] getSmartTagTypeArray() {
        return (CTSmartTagType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSmartTagType[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagTypes
    public List<CTSmartTagType> getSmartTagTypeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rib
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSmartTagTypesImpl.this.getSmartTagTypeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sib
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSmartTagTypesImpl.this.setSmartTagTypeArray(((Integer) obj).intValue(), (CTSmartTagType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tib
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSmartTagTypesImpl.this.insertNewSmartTagType(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.uib
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSmartTagTypesImpl.this.removeSmartTagType(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vib
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSmartTagTypesImpl.this.sizeOfSmartTagTypeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagTypes
    public CTSmartTagType insertNewSmartTagType(int i) {
        CTSmartTagType cTSmartTagType;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagType = (CTSmartTagType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSmartTagType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagTypes
    public void removeSmartTagType(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagTypes
    public void setSmartTagTypeArray(CTSmartTagType[] cTSmartTagTypeArr) {
        check_orphaned();
        arraySetterHelper(cTSmartTagTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagTypes
    public int sizeOfSmartTagTypeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagTypes
    public CTSmartTagType getSmartTagTypeArray(int i) {
        CTSmartTagType cTSmartTagType;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagType = (CTSmartTagType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSmartTagType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSmartTagType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTagTypes
    public void setSmartTagTypeArray(int i, CTSmartTagType cTSmartTagType) {
        generatedSetterHelperImpl(cTSmartTagType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
