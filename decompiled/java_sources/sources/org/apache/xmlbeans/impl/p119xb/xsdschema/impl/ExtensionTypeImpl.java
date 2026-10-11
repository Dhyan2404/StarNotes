package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import com.sunia.HTREnginev2.gon;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlQName;
import org.apache.xmlbeans.impl.p119xb.xsdschema.All;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Attribute;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroupRef;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ExplicitGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.GroupRef;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard;
import org.apache.xmlbeans.impl.p119xb.xsdschema.impl.ExtensionTypeImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;

/* loaded from: classes13.dex */
public class ExtensionTypeImpl extends AnnotatedImpl implements ExtensionType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "group"), new QName("http://www.w3.org/2001/XMLSchema", "all"), new QName("http://www.w3.org/2001/XMLSchema", "choice"), new QName("http://www.w3.org/2001/XMLSchema", "sequence"), new QName("http://www.w3.org/2001/XMLSchema", "attribute"), new QName("http://www.w3.org/2001/XMLSchema", "attributeGroup"), new QName("http://www.w3.org/2001/XMLSchema", "anyAttribute"), new QName("", gon.f71271X)};
    private static final long serialVersionUID = 1;

    public ExtensionTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public All addNewAll() {
        All all;
        synchronized (monitor()) {
            check_orphaned();
            all = (All) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return all;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public Wildcard addNewAnyAttribute() {
        Wildcard wildcard;
        synchronized (monitor()) {
            check_orphaned();
            wildcard = (Wildcard) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return wildcard;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public Attribute addNewAttribute() {
        Attribute attribute;
        synchronized (monitor()) {
            check_orphaned();
            attribute = (Attribute) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return attribute;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public AttributeGroupRef addNewAttributeGroup() {
        AttributeGroupRef attributeGroupRef;
        synchronized (monitor()) {
            check_orphaned();
            attributeGroupRef = (AttributeGroupRef) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return attributeGroupRef;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public ExplicitGroup addNewChoice() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public GroupRef addNewGroup() {
        GroupRef groupRef;
        synchronized (monitor()) {
            check_orphaned();
            groupRef = (GroupRef) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return groupRef;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public ExplicitGroup addNewSequence() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public All getAll() {
        All all;
        synchronized (monitor()) {
            check_orphaned();
            all = (All) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (all == null) {
                all = null;
            }
        }
        return all;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public Wildcard getAnyAttribute() {
        Wildcard wildcard;
        synchronized (monitor()) {
            check_orphaned();
            wildcard = (Wildcard) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (wildcard == null) {
                wildcard = null;
            }
        }
        return wildcard;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public Attribute[] getAttributeArray() {
        return (Attribute[]) getXmlObjectArray(PROPERTY_QNAME[4], new Attribute[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public AttributeGroupRef[] getAttributeGroupArray() {
        return (AttributeGroupRef[]) getXmlObjectArray(PROPERTY_QNAME[5], new AttributeGroupRef[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public List<AttributeGroupRef> getAttributeGroupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n5g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ExtensionTypeImpl.this.getAttributeGroupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o5g
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ExtensionTypeImpl.this.setAttributeGroupArray(((Integer) obj).intValue(), (AttributeGroupRef) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p5g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ExtensionTypeImpl.this.insertNewAttributeGroup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q5g
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ExtensionTypeImpl.this.removeAttributeGroup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r5g
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ExtensionTypeImpl.this.sizeOfAttributeGroupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public List<Attribute> getAttributeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s5g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ExtensionTypeImpl.this.getAttributeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.t5g
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ExtensionTypeImpl.this.setAttributeArray(((Integer) obj).intValue(), (Attribute) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.u5g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ExtensionTypeImpl.this.insertNewAttribute(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.v5g
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ExtensionTypeImpl.this.removeAttribute(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.w5g
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ExtensionTypeImpl.this.sizeOfAttributeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public QName getBase() {
        QName qNameValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            qNameValue = simpleValue == null ? null : simpleValue.getQNameValue();
        }
        return qNameValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public ExplicitGroup getChoice() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (explicitGroup == null) {
                explicitGroup = null;
            }
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public GroupRef getGroup() {
        GroupRef groupRef;
        synchronized (monitor()) {
            check_orphaned();
            groupRef = (GroupRef) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (groupRef == null) {
                groupRef = null;
            }
        }
        return groupRef;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public ExplicitGroup getSequence() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (explicitGroup == null) {
                explicitGroup = null;
            }
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public Attribute insertNewAttribute(int i) {
        Attribute attribute;
        synchronized (monitor()) {
            check_orphaned();
            attribute = (Attribute) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return attribute;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public AttributeGroupRef insertNewAttributeGroup(int i) {
        AttributeGroupRef attributeGroupRef;
        synchronized (monitor()) {
            check_orphaned();
            attributeGroupRef = (AttributeGroupRef) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return attributeGroupRef;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public boolean isSetAll() {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public boolean isSetAnyAttribute() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public boolean isSetChoice() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public boolean isSetGroup() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public boolean isSetSequence() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void removeAttribute(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void removeAttributeGroup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void setAll(All all) {
        generatedSetterHelperImpl(all, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void setAnyAttribute(Wildcard wildcard) {
        generatedSetterHelperImpl(wildcard, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void setAttributeArray(Attribute[] attributeArr) {
        check_orphaned();
        arraySetterHelper(attributeArr, PROPERTY_QNAME[4]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void setAttributeGroupArray(AttributeGroupRef[] attributeGroupRefArr) {
        check_orphaned();
        arraySetterHelper(attributeGroupRefArr, PROPERTY_QNAME[5]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void setBase(QName qName) {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void setChoice(ExplicitGroup explicitGroup) {
        generatedSetterHelperImpl(explicitGroup, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void setGroup(GroupRef groupRef) {
        generatedSetterHelperImpl(groupRef, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void setSequence(ExplicitGroup explicitGroup) {
        generatedSetterHelperImpl(explicitGroup, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public int sizeOfAttributeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public int sizeOfAttributeGroupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void unsetAll() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void unsetAnyAttribute() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void unsetChoice() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void unsetGroup() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void unsetSequence() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public XmlQName xgetBase() {
        XmlQName xmlQName;
        synchronized (monitor()) {
            check_orphaned();
            xmlQName = (XmlQName) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlQName;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void xsetBase(XmlQName xmlQName) {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public Attribute getAttributeArray(int i) {
        Attribute attribute;
        synchronized (monitor()) {
            check_orphaned();
            attribute = (Attribute) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (attribute == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return attribute;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public AttributeGroupRef getAttributeGroupArray(int i) {
        AttributeGroupRef attributeGroupRef;
        synchronized (monitor()) {
            check_orphaned();
            attributeGroupRef = (AttributeGroupRef) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (attributeGroupRef == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return attributeGroupRef;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void setAttributeArray(int i, Attribute attribute) {
        generatedSetterHelperImpl(attribute, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType
    public void setAttributeGroupArray(int i, AttributeGroupRef attributeGroupRef) {
        generatedSetterHelperImpl(attributeGroupRef, PROPERTY_QNAME[5], i, (short) 2);
    }
}
