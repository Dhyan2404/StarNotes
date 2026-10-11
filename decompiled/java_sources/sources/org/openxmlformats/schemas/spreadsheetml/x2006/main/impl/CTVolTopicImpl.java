package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.sunia.HTREnginev2.ahd;
import com.sunia.HTREnginev2.ld1;
import com.sunia.HTREnginev2.zgd;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopicRef;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STVolValueType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTVolTopicImpl;

/* loaded from: classes15.dex */
public class CTVolTopicImpl extends XmlComplexContentImpl implements CTVolTopic {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "v"), new QName(XSSFRelation.NS_SPREADSHEETML, "stp"), new QName(XSSFRelation.NS_SPREADSHEETML, "tr"), new QName("", "t")};
    private static final long serialVersionUID = 1;

    public CTVolTopicImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getStpArray$0(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ STXstring[] lambda$xgetStpArray$1(int i) {
        return new STXstring[i];
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public STXstring addNewStp() {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public CTVolTopicRef addNewTr() {
        CTVolTopicRef cTVolTopicRef;
        synchronized (monitor()) {
            check_orphaned();
            cTVolTopicRef = (CTVolTopicRef) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTVolTopicRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void addStp(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[1])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public String[] getStpArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[1], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.chd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getStpArray$0;
                lambda$getStpArray$0 = CTVolTopicImpl.lambda$getStpArray$0(i);
                return lambda$getStpArray$0;
            }
        });
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public List<String> getStpList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.rgd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolTopicImpl.this.getStpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xgd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVolTopicImpl.this.setStpArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ygd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVolTopicImpl.this.insertStp(((Integer) obj).intValue(), (String) obj2);
                }
            }, new zgd(this), new ahd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public STVolValueType.Enum getT() {
        STVolValueType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[3]);
            }
            r5 = simpleValue == null ? null : (STVolValueType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public CTVolTopicRef[] getTrArray() {
        return (CTVolTopicRef[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTVolTopicRef[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public List<CTVolTopicRef> getTrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dhd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolTopicImpl.this.getTrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ehd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVolTopicImpl.this.setTrArray(((Integer) obj).intValue(), (CTVolTopicRef) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fhd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolTopicImpl.this.insertNewTr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sgd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTVolTopicImpl.this.removeTr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tgd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTVolTopicImpl.this.sizeOfTrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public String getV() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public STXstring insertNewStp(int i) {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public CTVolTopicRef insertNewTr(int i) {
        CTVolTopicRef cTVolTopicRef;
        synchronized (monitor()) {
            check_orphaned();
            cTVolTopicRef = (CTVolTopicRef) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTVolTopicRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void insertStp(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[1], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public boolean isSetT() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void removeStp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void removeTr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void setStpArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void setT(STVolValueType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void setTrArray(CTVolTopicRef[] cTVolTopicRefArr) {
        check_orphaned();
        arraySetterHelper(cTVolTopicRefArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void setV(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public int sizeOfStpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public int sizeOfTrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void unsetT() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public STXstring[] xgetStpArray() {
        return (STXstring[]) xgetArray(PROPERTY_QNAME[1], new IntFunction() { // from class: com.sunia.HTREnginev2.bhd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                STXstring[] lambda$xgetStpArray$1;
                lambda$xgetStpArray$1 = CTVolTopicImpl.lambda$xgetStpArray$1(i);
                return lambda$xgetStpArray$1;
            }
        });
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public List<STXstring> xgetStpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ugd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolTopicImpl.this.xgetStpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vgd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVolTopicImpl.this.xsetStpArray(((Integer) obj).intValue(), (STXstring) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wgd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolTopicImpl.this.insertNewStp(((Integer) obj).intValue());
                }
            }, new zgd(this), new ahd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public STVolValueType xgetT() {
        STVolValueType sTVolValueType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTVolValueType = (STVolValueType) typeStore.find_attribute_user(qNameArr[3]);
            if (sTVolValueType == null) {
                sTVolValueType = (STVolValueType) get_default_attribute_value(qNameArr[3]);
            }
        }
        return sTVolValueType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public STXstring xgetV() {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void xsetStpArray(STXstring[] sTXstringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sTXstringArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void xsetT(STVolValueType sTVolValueType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STVolValueType sTVolValueType2 = (STVolValueType) typeStore.find_attribute_user(qNameArr[3]);
            if (sTVolValueType2 == null) {
                sTVolValueType2 = (STVolValueType) get_store().add_attribute_user(qNameArr[3]);
            }
            sTVolValueType2.set(sTVolValueType);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void xsetV(STXstring sTXstring) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STXstring sTXstring2 = (STXstring) typeStore.find_element_user(qNameArr[0], 0);
            if (sTXstring2 == null) {
                sTXstring2 = (STXstring) get_store().add_element_user(qNameArr[0]);
            }
            sTXstring2.set(sTXstring);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public String getStpArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public CTVolTopicRef getTrArray(int i) {
        CTVolTopicRef cTVolTopicRef;
        synchronized (monitor()) {
            check_orphaned();
            cTVolTopicRef = (CTVolTopicRef) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTVolTopicRef == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTVolTopicRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public STXstring xgetStpArray(int i) {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (sTXstring == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void setTrArray(int i, CTVolTopicRef cTVolTopicRef) {
        generatedSetterHelperImpl(cTVolTopicRef, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void setStpArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic
    public void xsetStpArray(int i, STXstring sTXstring) {
        synchronized (monitor()) {
            check_orphaned();
            STXstring sTXstring2 = (STXstring) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (sTXstring2 != null) {
                sTXstring2.set(sTXstring);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
