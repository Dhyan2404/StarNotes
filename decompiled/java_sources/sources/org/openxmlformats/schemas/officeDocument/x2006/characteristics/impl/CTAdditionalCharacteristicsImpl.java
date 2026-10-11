package org.openxmlformats.schemas.officeDocument.x2006.characteristics.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics;
import org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTCharacteristic;
import org.openxmlformats.schemas.officeDocument.x2006.characteristics.impl.CTAdditionalCharacteristicsImpl;

/* loaded from: classes14.dex */
public class CTAdditionalCharacteristicsImpl extends XmlComplexContentImpl implements CTAdditionalCharacteristics {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/characteristics", "characteristic")};
    private static final long serialVersionUID = 1;

    public CTAdditionalCharacteristicsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics
    public CTCharacteristic addNewCharacteristic() {
        CTCharacteristic cTCharacteristic;
        synchronized (monitor()) {
            check_orphaned();
            cTCharacteristic = (CTCharacteristic) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCharacteristic;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics
    public CTCharacteristic[] getCharacteristicArray() {
        return (CTCharacteristic[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCharacteristic[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics
    public List<CTCharacteristic> getCharacteristicList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i30
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAdditionalCharacteristicsImpl.this.getCharacteristicArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j30
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAdditionalCharacteristicsImpl.this.setCharacteristicArray(((Integer) obj).intValue(), (CTCharacteristic) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k30
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAdditionalCharacteristicsImpl.this.insertNewCharacteristic(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l30
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAdditionalCharacteristicsImpl.this.removeCharacteristic(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m30
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAdditionalCharacteristicsImpl.this.sizeOfCharacteristicArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics
    public CTCharacteristic insertNewCharacteristic(int i) {
        CTCharacteristic cTCharacteristic;
        synchronized (monitor()) {
            check_orphaned();
            cTCharacteristic = (CTCharacteristic) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCharacteristic;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics
    public void removeCharacteristic(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics
    public void setCharacteristicArray(CTCharacteristic[] cTCharacteristicArr) {
        check_orphaned();
        arraySetterHelper(cTCharacteristicArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics
    public int sizeOfCharacteristicArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics
    public CTCharacteristic getCharacteristicArray(int i) {
        CTCharacteristic cTCharacteristic;
        synchronized (monitor()) {
            check_orphaned();
            cTCharacteristic = (CTCharacteristic) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCharacteristic == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCharacteristic;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics
    public void setCharacteristicArray(int i, CTCharacteristic cTCharacteristic) {
        generatedSetterHelperImpl(cTCharacteristic, PROPERTY_QNAME[0], i, (short) 2);
    }
}
