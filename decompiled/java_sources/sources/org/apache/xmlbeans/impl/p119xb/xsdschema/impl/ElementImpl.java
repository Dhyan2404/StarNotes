package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import androidx.room.EntityUpsertionAdapterKt;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import java.math.BigInteger;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlNCName;
import org.apache.xmlbeans.XmlNonNegativeInteger;
import org.apache.xmlbeans.XmlQName;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AllNNI;
import org.apache.xmlbeans.impl.p119xb.xsdschema.BlockSet;
import org.apache.xmlbeans.impl.p119xb.xsdschema.DerivationSet;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Element;
import org.apache.xmlbeans.impl.p119xb.xsdschema.FormChoice;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Keybase;
import org.apache.xmlbeans.impl.p119xb.xsdschema.KeyrefDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.LocalComplexType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.LocalSimpleType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.impl.ElementImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;

/* loaded from: classes13.dex */
public class ElementImpl extends AnnotatedImpl implements Element {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "simpleType"), new QName("http://www.w3.org/2001/XMLSchema", "complexType"), new QName("http://www.w3.org/2001/XMLSchema", EntityUpsertionAdapterKt.f10049b), new QName("http://www.w3.org/2001/XMLSchema", "key"), new QName("http://www.w3.org/2001/XMLSchema", "keyref"), new QName("", "name"), new QName("", "ref"), new QName("", "type"), new QName("", "substitutionGroup"), new QName("", "minOccurs"), new QName("", "maxOccurs"), new QName("", "default"), new QName("", "fixed"), new QName("", "nillable"), new QName("", "abstract"), new QName("", "final"), new QName("", BreakpointSQLiteHelper.f39283i), new QName("", "form")};
    private static final long serialVersionUID = 1;

    public ElementImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public LocalComplexType addNewComplexType() {
        LocalComplexType localComplexType;
        synchronized (monitor()) {
            check_orphaned();
            localComplexType = (LocalComplexType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return localComplexType;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Keybase addNewKey() {
        Keybase keybase;
        synchronized (monitor()) {
            check_orphaned();
            keybase = (Keybase) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return keybase;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public KeyrefDocument.Keyref addNewKeyref() {
        KeyrefDocument.Keyref keyref;
        synchronized (monitor()) {
            check_orphaned();
            keyref = (KeyrefDocument.Keyref) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return keyref;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public LocalSimpleType addNewSimpleType() {
        LocalSimpleType localSimpleType;
        synchronized (monitor()) {
            check_orphaned();
            localSimpleType = (LocalSimpleType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return localSimpleType;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Keybase addNewUnique() {
        Keybase keybase;
        synchronized (monitor()) {
            check_orphaned();
            keybase = (Keybase) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return keybase;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean getAbstract() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[14]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[14]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Object getBlock() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[16]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public LocalComplexType getComplexType() {
        LocalComplexType localComplexType;
        synchronized (monitor()) {
            check_orphaned();
            localComplexType = (LocalComplexType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (localComplexType == null) {
                localComplexType = null;
            }
        }
        return localComplexType;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public String getDefault() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[11]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Object getFinal() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[15]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public String getFixed() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[12]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public FormChoice.Enum getForm() {
        FormChoice.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[17]);
            r3 = simpleValue == null ? null : (FormChoice.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Keybase[] getKeyArray() {
        return (Keybase[]) getXmlObjectArray(PROPERTY_QNAME[3], new Keybase[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public List<Keybase> getKeyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tmf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ElementImpl.this.getKeyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.anf
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ElementImpl.this.setKeyArray(((Integer) obj).intValue(), (Keybase) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bnf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ElementImpl.this.insertNewKey(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cnf
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ElementImpl.this.removeKey(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dnf
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ElementImpl.this.sizeOfKeyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public KeyrefDocument.Keyref[] getKeyrefArray() {
        return (KeyrefDocument.Keyref[]) getXmlObjectArray(PROPERTY_QNAME[4], new KeyrefDocument.Keyref[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public List<KeyrefDocument.Keyref> getKeyrefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vmf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ElementImpl.this.getKeyrefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wmf
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ElementImpl.this.setKeyrefArray(((Integer) obj).intValue(), (KeyrefDocument.Keyref) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xmf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ElementImpl.this.insertNewKeyref(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ymf
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ElementImpl.this.removeKeyref(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zmf
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ElementImpl.this.sizeOfKeyrefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Object getMaxOccurs() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[10]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public BigInteger getMinOccurs() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[9]);
            }
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean getNillable() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[13]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public QName getRef() {
        QName qNameValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            qNameValue = simpleValue == null ? null : simpleValue.getQNameValue();
        }
        return qNameValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public LocalSimpleType getSimpleType() {
        LocalSimpleType localSimpleType;
        synchronized (monitor()) {
            check_orphaned();
            localSimpleType = (LocalSimpleType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (localSimpleType == null) {
                localSimpleType = null;
            }
        }
        return localSimpleType;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public QName getSubstitutionGroup() {
        QName qNameValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            qNameValue = simpleValue == null ? null : simpleValue.getQNameValue();
        }
        return qNameValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public QName getType() {
        QName qNameValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            qNameValue = simpleValue == null ? null : simpleValue.getQNameValue();
        }
        return qNameValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Keybase[] getUniqueArray() {
        return (Keybase[]) getXmlObjectArray(PROPERTY_QNAME[2], new Keybase[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public List<Keybase> getUniqueList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.enf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ElementImpl.this.getUniqueArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fnf
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ElementImpl.this.setUniqueArray(((Integer) obj).intValue(), (Keybase) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gnf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ElementImpl.this.insertNewUnique(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hnf
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ElementImpl.this.removeUnique(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.inf
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ElementImpl.this.sizeOfUniqueArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Keybase insertNewKey(int i) {
        Keybase keybase;
        synchronized (monitor()) {
            check_orphaned();
            keybase = (Keybase) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return keybase;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public KeyrefDocument.Keyref insertNewKeyref(int i) {
        KeyrefDocument.Keyref keyref;
        synchronized (monitor()) {
            check_orphaned();
            keyref = (KeyrefDocument.Keyref) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return keyref;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Keybase insertNewUnique(int i) {
        Keybase keybase;
        synchronized (monitor()) {
            check_orphaned();
            keybase = (Keybase) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return keybase;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetAbstract() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[14]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetBlock() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[16]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetComplexType() {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetDefault() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetFinal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[15]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetFixed() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetForm() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[17]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetMaxOccurs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetMinOccurs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetNillable() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetRef() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetSimpleType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetSubstitutionGroup() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void removeKey(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void removeKeyref(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void removeUnique(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setAbstract(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[14]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[14]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setBlock(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[16]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[16]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setComplexType(LocalComplexType localComplexType) {
        generatedSetterHelperImpl(localComplexType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setDefault(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setFinal(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[15]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[15]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setFixed(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[12]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setForm(FormChoice.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[17]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[17]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setKeyArray(Keybase[] keybaseArr) {
        check_orphaned();
        arraySetterHelper(keybaseArr, PROPERTY_QNAME[3]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setKeyrefArray(KeyrefDocument.Keyref[] keyrefArr) {
        check_orphaned();
        arraySetterHelper(keyrefArr, PROPERTY_QNAME[4]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setMaxOccurs(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setMinOccurs(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setNillable(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setRef(QName qName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setQNameValue(qName);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setSimpleType(LocalSimpleType localSimpleType) {
        generatedSetterHelperImpl(localSimpleType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setSubstitutionGroup(QName qName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setQNameValue(qName);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setType(QName qName) {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setUniqueArray(Keybase[] keybaseArr) {
        check_orphaned();
        arraySetterHelper(keybaseArr, PROPERTY_QNAME[2]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public int sizeOfKeyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public int sizeOfKeyrefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public int sizeOfUniqueArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetAbstract() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[14]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetBlock() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[16]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetComplexType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetDefault() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetFinal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[15]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetFixed() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetForm() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[17]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetMaxOccurs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetMinOccurs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetNillable() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetRef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetSimpleType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetSubstitutionGroup() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public XmlBoolean xgetAbstract() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[14]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[14]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public BlockSet xgetBlock() {
        BlockSet blockSet;
        synchronized (monitor()) {
            check_orphaned();
            blockSet = (BlockSet) get_store().find_attribute_user(PROPERTY_QNAME[16]);
        }
        return blockSet;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public XmlString xgetDefault() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[11]);
        }
        return xmlString;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public DerivationSet xgetFinal() {
        DerivationSet derivationSet;
        synchronized (monitor()) {
            check_orphaned();
            derivationSet = (DerivationSet) get_store().find_attribute_user(PROPERTY_QNAME[15]);
        }
        return derivationSet;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public XmlString xgetFixed() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[12]);
        }
        return xmlString;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public FormChoice xgetForm() {
        FormChoice formChoice;
        synchronized (monitor()) {
            check_orphaned();
            formChoice = (FormChoice) get_store().find_attribute_user(PROPERTY_QNAME[17]);
        }
        return formChoice;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public AllNNI xgetMaxOccurs() {
        AllNNI allNNI;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            allNNI = (AllNNI) typeStore.find_attribute_user(qNameArr[10]);
            if (allNNI == null) {
                allNNI = (AllNNI) get_default_attribute_value(qNameArr[10]);
            }
        }
        return allNNI;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public XmlNonNegativeInteger xgetMinOccurs() {
        XmlNonNegativeInteger xmlNonNegativeInteger;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlNonNegativeInteger = (XmlNonNegativeInteger) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlNonNegativeInteger == null) {
                xmlNonNegativeInteger = (XmlNonNegativeInteger) get_default_attribute_value(qNameArr[9]);
            }
        }
        return xmlNonNegativeInteger;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public XmlNCName xgetName() {
        XmlNCName xmlNCName;
        synchronized (monitor()) {
            check_orphaned();
            xmlNCName = (XmlNCName) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlNCName;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public XmlBoolean xgetNillable() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[13]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[13]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public XmlQName xgetRef() {
        XmlQName xmlQName;
        synchronized (monitor()) {
            check_orphaned();
            xmlQName = (XmlQName) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlQName;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public XmlQName xgetSubstitutionGroup() {
        XmlQName xmlQName;
        synchronized (monitor()) {
            check_orphaned();
            xmlQName = (XmlQName) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return xmlQName;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public XmlQName xgetType() {
        XmlQName xmlQName;
        synchronized (monitor()) {
            check_orphaned();
            xmlQName = (XmlQName) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlQName;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetAbstract(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[14]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[14]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetBlock(BlockSet blockSet) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            BlockSet blockSet2 = (BlockSet) typeStore.find_attribute_user(qNameArr[16]);
            if (blockSet2 == null) {
                blockSet2 = (BlockSet) get_store().add_attribute_user(qNameArr[16]);
            }
            blockSet2.set(blockSet);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetDefault(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[11]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[11]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetFinal(DerivationSet derivationSet) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            DerivationSet derivationSet2 = (DerivationSet) typeStore.find_attribute_user(qNameArr[15]);
            if (derivationSet2 == null) {
                derivationSet2 = (DerivationSet) get_store().add_attribute_user(qNameArr[15]);
            }
            derivationSet2.set(derivationSet);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetFixed(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[12]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[12]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetForm(FormChoice formChoice) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            FormChoice formChoice2 = (FormChoice) typeStore.find_attribute_user(qNameArr[17]);
            if (formChoice2 == null) {
                formChoice2 = (FormChoice) get_store().add_attribute_user(qNameArr[17]);
            }
            formChoice2.set(formChoice);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetMaxOccurs(AllNNI allNNI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            AllNNI allNNI2 = (AllNNI) typeStore.find_attribute_user(qNameArr[10]);
            if (allNNI2 == null) {
                allNNI2 = (AllNNI) get_store().add_attribute_user(qNameArr[10]);
            }
            allNNI2.set(allNNI);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetMinOccurs(XmlNonNegativeInteger xmlNonNegativeInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlNonNegativeInteger xmlNonNegativeInteger2 = (XmlNonNegativeInteger) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlNonNegativeInteger2 == null) {
                xmlNonNegativeInteger2 = (XmlNonNegativeInteger) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlNonNegativeInteger2.set(xmlNonNegativeInteger);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetName(XmlNCName xmlNCName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlNCName xmlNCName2 = (XmlNCName) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlNCName2 == null) {
                xmlNCName2 = (XmlNCName) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlNCName2.set(xmlNCName);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetNillable(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[13]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[13]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetRef(XmlQName xmlQName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlQName xmlQName2 = (XmlQName) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlQName2 == null) {
                xmlQName2 = (XmlQName) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlQName2.set(xmlQName);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetSubstitutionGroup(XmlQName xmlQName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlQName xmlQName2 = (XmlQName) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlQName2 == null) {
                xmlQName2 = (XmlQName) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlQName2.set(xmlQName);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void xsetType(XmlQName xmlQName) {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Keybase getKeyArray(int i) {
        Keybase keybase;
        synchronized (monitor()) {
            check_orphaned();
            keybase = (Keybase) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (keybase == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return keybase;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public KeyrefDocument.Keyref getKeyrefArray(int i) {
        KeyrefDocument.Keyref keyref;
        synchronized (monitor()) {
            check_orphaned();
            keyref = (KeyrefDocument.Keyref) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (keyref == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return keyref;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public Keybase getUniqueArray(int i) {
        Keybase keybase;
        synchronized (monitor()) {
            check_orphaned();
            keybase = (Keybase) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (keybase == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return keybase;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setKeyArray(int i, Keybase keybase) {
        generatedSetterHelperImpl(keybase, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setKeyrefArray(int i, KeyrefDocument.Keyref keyref) {
        generatedSetterHelperImpl(keyref, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Element
    public void setUniqueArray(int i, Keybase keybase) {
        generatedSetterHelperImpl(keybase, PROPERTY_QNAME[2], i, (short) 2);
    }
}
