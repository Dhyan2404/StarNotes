package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.RefByType;
import com.microsoft.schemas.office.visio.x2012.main.TriggerType;
import com.microsoft.schemas.office.visio.x2012.main.impl.TriggerTypeImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class TriggerTypeImpl extends XmlComplexContentImpl implements TriggerType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "RefBy"), new QName("", "N")};
    private static final long serialVersionUID = 1;

    public TriggerTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public RefByType addNewRefBy() {
        RefByType refByType;
        synchronized (monitor()) {
            check_orphaned();
            refByType = (RefByType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return refByType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public String getN() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public RefByType[] getRefByArray() {
        return (RefByType[]) getXmlObjectArray(PROPERTY_QNAME[0], new RefByType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public List<RefByType> getRefByList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wnn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TriggerTypeImpl.this.getRefByArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xnn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    TriggerTypeImpl.this.setRefByArray(((Integer) obj).intValue(), (RefByType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ynn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TriggerTypeImpl.this.insertNewRefBy(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.znn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TriggerTypeImpl.this.removeRefBy(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.aon
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(TriggerTypeImpl.this.sizeOfRefByArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public RefByType insertNewRefBy(int i) {
        RefByType refByType;
        synchronized (monitor()) {
            check_orphaned();
            refByType = (RefByType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return refByType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public void removeRefBy(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public void setN(String str) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public void setRefByArray(RefByType[] refByTypeArr) {
        check_orphaned();
        arraySetterHelper(refByTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public int sizeOfRefByArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public XmlString xgetN() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public void xsetN(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public RefByType getRefByArray(int i) {
        RefByType refByType;
        synchronized (monitor()) {
            check_orphaned();
            refByType = (RefByType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (refByType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return refByType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TriggerType
    public void setRefByArray(int i, RefByType refByType) {
        generatedSetterHelperImpl(refByType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
