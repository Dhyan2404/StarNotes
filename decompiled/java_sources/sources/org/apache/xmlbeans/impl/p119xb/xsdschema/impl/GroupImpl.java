package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import java.math.BigInteger;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlNCName;
import org.apache.xmlbeans.XmlNonNegativeInteger;
import org.apache.xmlbeans.XmlQName;
import org.apache.xmlbeans.impl.p119xb.xsdschema.All;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AllNNI;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AnyDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ExplicitGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Group;
import org.apache.xmlbeans.impl.p119xb.xsdschema.GroupRef;
import org.apache.xmlbeans.impl.p119xb.xsdschema.LocalElement;
import org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;

/* loaded from: classes13.dex */
public class GroupImpl extends AnnotatedImpl implements Group {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "element"), new QName("http://www.w3.org/2001/XMLSchema", "group"), new QName("http://www.w3.org/2001/XMLSchema", "all"), new QName("http://www.w3.org/2001/XMLSchema", "choice"), new QName("http://www.w3.org/2001/XMLSchema", "sequence"), new QName("http://www.w3.org/2001/XMLSchema", "any"), new QName("", "name"), new QName("", "ref"), new QName("", "minOccurs"), new QName("", "maxOccurs")};
    private static final long serialVersionUID = 1;

    public GroupImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public All addNewAll() {
        All all;
        synchronized (monitor()) {
            check_orphaned();
            all = (All) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return all;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public AnyDocument.Any addNewAny() {
        AnyDocument.Any any;
        synchronized (monitor()) {
            check_orphaned();
            any = (AnyDocument.Any) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return any;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup addNewChoice() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public LocalElement addNewElement() {
        LocalElement localElement;
        synchronized (monitor()) {
            check_orphaned();
            localElement = (LocalElement) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return localElement;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public GroupRef addNewGroup() {
        GroupRef groupRef;
        synchronized (monitor()) {
            check_orphaned();
            groupRef = (GroupRef) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return groupRef;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup addNewSequence() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public All[] getAllArray() {
        return (All[]) getXmlObjectArray(PROPERTY_QNAME[2], new All[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public List<All> getAllList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s5h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.getAllArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.t5h
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    GroupImpl.this.setAllArray(((Integer) obj).intValue(), (All) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.u5h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.insertNewAll(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.v5h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GroupImpl.this.removeAll(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.w5h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(GroupImpl.this.sizeOfAllArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public AnyDocument.Any[] getAnyArray() {
        return (AnyDocument.Any[]) getXmlObjectArray(PROPERTY_QNAME[5], new AnyDocument.Any[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public List<AnyDocument.Any> getAnyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b5h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.getAnyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m5h
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    GroupImpl.this.setAnyArray(((Integer) obj).intValue(), (AnyDocument.Any) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x5h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.insertNewAny(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y5h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GroupImpl.this.removeAny(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z5h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(GroupImpl.this.sizeOfAnyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup[] getChoiceArray() {
        return (ExplicitGroup[]) getXmlObjectArray(PROPERTY_QNAME[3], new ExplicitGroup[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public List<ExplicitGroup> getChoiceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a6h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.getChoiceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b6h
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    GroupImpl.this.setChoiceArray(((Integer) obj).intValue(), (ExplicitGroup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c6h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.insertNewChoice(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d6h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GroupImpl.this.removeChoice(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e6h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(GroupImpl.this.sizeOfChoiceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public LocalElement[] getElementArray() {
        return (LocalElement[]) getXmlObjectArray(PROPERTY_QNAME[0], new LocalElement[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public List<LocalElement> getElementList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h5h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.getElementArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i5h
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    GroupImpl.this.setElementArray(((Integer) obj).intValue(), (LocalElement) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j5h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.insertNewElement(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k5h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GroupImpl.this.removeElement(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l5h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(GroupImpl.this.sizeOfElementArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public GroupRef[] getGroupArray() {
        return (GroupRef[]) getXmlObjectArray(PROPERTY_QNAME[1], new GroupRef[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public List<GroupRef> getGroupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c5h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.getGroupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d5h
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    GroupImpl.this.setGroupArray(((Integer) obj).intValue(), (GroupRef) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e5h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.insertNewGroup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f5h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GroupImpl.this.removeGroup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g5h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(GroupImpl.this.sizeOfGroupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public Object getMaxOccurs() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[9]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public BigInteger getMinOccurs() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[8]);
            }
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public QName getRef() {
        QName qNameValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            qNameValue = simpleValue == null ? null : simpleValue.getQNameValue();
        }
        return qNameValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup[] getSequenceArray() {
        return (ExplicitGroup[]) getXmlObjectArray(PROPERTY_QNAME[4], new ExplicitGroup[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public List<ExplicitGroup> getSequenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n5h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.getSequenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o5h
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    GroupImpl.this.setSequenceArray(((Integer) obj).intValue(), (ExplicitGroup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p5h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GroupImpl.this.insertNewSequence(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q5h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GroupImpl.this.removeSequence(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r5h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(GroupImpl.this.sizeOfSequenceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public All insertNewAll(int i) {
        All all;
        synchronized (monitor()) {
            check_orphaned();
            all = (All) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return all;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public AnyDocument.Any insertNewAny(int i) {
        AnyDocument.Any any;
        synchronized (monitor()) {
            check_orphaned();
            any = (AnyDocument.Any) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return any;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup insertNewChoice(int i) {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public LocalElement insertNewElement(int i) {
        LocalElement localElement;
        synchronized (monitor()) {
            check_orphaned();
            localElement = (LocalElement) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return localElement;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public GroupRef insertNewGroup(int i) {
        GroupRef groupRef;
        synchronized (monitor()) {
            check_orphaned();
            groupRef = (GroupRef) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return groupRef;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup insertNewSequence(int i) {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public boolean isSetMaxOccurs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public boolean isSetMinOccurs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public boolean isSetRef() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void removeAll(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void removeAny(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void removeChoice(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void removeElement(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void removeGroup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void removeSequence(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setAllArray(All[] allArr) {
        check_orphaned();
        arraySetterHelper(allArr, PROPERTY_QNAME[2]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setAnyArray(AnyDocument.Any[] anyArr) {
        check_orphaned();
        arraySetterHelper(anyArr, PROPERTY_QNAME[5]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setChoiceArray(ExplicitGroup[] explicitGroupArr) {
        check_orphaned();
        arraySetterHelper(explicitGroupArr, PROPERTY_QNAME[3]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setElementArray(LocalElement[] localElementArr) {
        check_orphaned();
        arraySetterHelper(localElementArr, PROPERTY_QNAME[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setGroupArray(GroupRef[] groupRefArr) {
        check_orphaned();
        arraySetterHelper(groupRefArr, PROPERTY_QNAME[1]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setMaxOccurs(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setMinOccurs(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setRef(QName qName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setQNameValue(qName);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setSequenceArray(ExplicitGroup[] explicitGroupArr) {
        check_orphaned();
        arraySetterHelper(explicitGroupArr, PROPERTY_QNAME[4]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public int sizeOfAllArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public int sizeOfAnyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public int sizeOfChoiceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public int sizeOfElementArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public int sizeOfGroupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public int sizeOfSequenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void unsetMaxOccurs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void unsetMinOccurs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void unsetRef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public AllNNI xgetMaxOccurs() {
        AllNNI allNNI;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            allNNI = (AllNNI) typeStore.find_attribute_user(qNameArr[9]);
            if (allNNI == null) {
                allNNI = (AllNNI) get_default_attribute_value(qNameArr[9]);
            }
        }
        return allNNI;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public XmlNonNegativeInteger xgetMinOccurs() {
        XmlNonNegativeInteger xmlNonNegativeInteger;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlNonNegativeInteger = (XmlNonNegativeInteger) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlNonNegativeInteger == null) {
                xmlNonNegativeInteger = (XmlNonNegativeInteger) get_default_attribute_value(qNameArr[8]);
            }
        }
        return xmlNonNegativeInteger;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public XmlNCName xgetName() {
        XmlNCName xmlNCName;
        synchronized (monitor()) {
            check_orphaned();
            xmlNCName = (XmlNCName) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlNCName;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public XmlQName xgetRef() {
        XmlQName xmlQName;
        synchronized (monitor()) {
            check_orphaned();
            xmlQName = (XmlQName) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlQName;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void xsetMaxOccurs(AllNNI allNNI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            AllNNI allNNI2 = (AllNNI) typeStore.find_attribute_user(qNameArr[9]);
            if (allNNI2 == null) {
                allNNI2 = (AllNNI) get_store().add_attribute_user(qNameArr[9]);
            }
            allNNI2.set(allNNI);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void xsetMinOccurs(XmlNonNegativeInteger xmlNonNegativeInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlNonNegativeInteger xmlNonNegativeInteger2 = (XmlNonNegativeInteger) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlNonNegativeInteger2 == null) {
                xmlNonNegativeInteger2 = (XmlNonNegativeInteger) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlNonNegativeInteger2.set(xmlNonNegativeInteger);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void xsetName(XmlNCName xmlNCName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlNCName xmlNCName2 = (XmlNCName) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlNCName2 == null) {
                xmlNCName2 = (XmlNCName) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlNCName2.set(xmlNCName);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void xsetRef(XmlQName xmlQName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlQName xmlQName2 = (XmlQName) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlQName2 == null) {
                xmlQName2 = (XmlQName) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlQName2.set(xmlQName);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public All getAllArray(int i) {
        All all;
        synchronized (monitor()) {
            check_orphaned();
            all = (All) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (all == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return all;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public AnyDocument.Any getAnyArray(int i) {
        AnyDocument.Any any;
        synchronized (monitor()) {
            check_orphaned();
            any = (AnyDocument.Any) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (any == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return any;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup getChoiceArray(int i) {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (explicitGroup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public LocalElement getElementArray(int i) {
        LocalElement localElement;
        synchronized (monitor()) {
            check_orphaned();
            localElement = (LocalElement) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (localElement == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return localElement;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public GroupRef getGroupArray(int i) {
        GroupRef groupRef;
        synchronized (monitor()) {
            check_orphaned();
            groupRef = (GroupRef) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (groupRef == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return groupRef;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup getSequenceArray(int i) {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (explicitGroup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setAllArray(int i, All all) {
        generatedSetterHelperImpl(all, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setAnyArray(int i, AnyDocument.Any any) {
        generatedSetterHelperImpl(any, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setChoiceArray(int i, ExplicitGroup explicitGroup) {
        generatedSetterHelperImpl(explicitGroup, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setElementArray(int i, LocalElement localElement) {
        generatedSetterHelperImpl(localElement, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setGroupArray(int i, GroupRef groupRef) {
        generatedSetterHelperImpl(groupRef, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setSequenceArray(int i, ExplicitGroup explicitGroup) {
        generatedSetterHelperImpl(explicitGroup, PROPERTY_QNAME[4], i, (short) 2);
    }
}
