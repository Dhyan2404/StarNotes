package org.openxmlformats.schemas.presentationml.x2006.main.impl;

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
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTTLTimeAnimateValueListImpl;

/* loaded from: classes14.dex */
public class CTTLTimeAnimateValueListImpl extends XmlComplexContentImpl implements CTTLTimeAnimateValueList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "tav")};
    private static final long serialVersionUID = 1;

    public CTTLTimeAnimateValueListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList
    public CTTLTimeAnimateValue addNewTav() {
        CTTLTimeAnimateValue cTTLTimeAnimateValue;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeAnimateValue = (CTTLTimeAnimateValue) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLTimeAnimateValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList
    public CTTLTimeAnimateValue[] getTavArray() {
        return (CTTLTimeAnimateValue[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTLTimeAnimateValue[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList
    public List<CTTLTimeAnimateValue> getTavList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rcc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTLTimeAnimateValueListImpl.this.getTavArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.scc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTLTimeAnimateValueListImpl.this.setTavArray(((Integer) obj).intValue(), (CTTLTimeAnimateValue) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tcc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTLTimeAnimateValueListImpl.this.insertNewTav(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ucc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTLTimeAnimateValueListImpl.this.removeTav(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vcc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTLTimeAnimateValueListImpl.this.sizeOfTavArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList
    public CTTLTimeAnimateValue insertNewTav(int i) {
        CTTLTimeAnimateValue cTTLTimeAnimateValue;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeAnimateValue = (CTTLTimeAnimateValue) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTLTimeAnimateValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList
    public void removeTav(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList
    public void setTavArray(CTTLTimeAnimateValue[] cTTLTimeAnimateValueArr) {
        check_orphaned();
        arraySetterHelper(cTTLTimeAnimateValueArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList
    public int sizeOfTavArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList
    public CTTLTimeAnimateValue getTavArray(int i) {
        CTTLTimeAnimateValue cTTLTimeAnimateValue;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeAnimateValue = (CTTLTimeAnimateValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTLTimeAnimateValue == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLTimeAnimateValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValueList
    public void setTavArray(int i, CTTLTimeAnimateValue cTTLTimeAnimateValue) {
        generatedSetterHelperImpl(cTTLTimeAnimateValue, PROPERTY_QNAME[0], i, (short) 2);
    }
}
