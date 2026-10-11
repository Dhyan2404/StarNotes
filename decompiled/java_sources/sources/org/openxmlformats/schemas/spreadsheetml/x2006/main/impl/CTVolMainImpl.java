package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

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
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTopic;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTVolMainImpl;

/* loaded from: classes15.dex */
public class CTVolMainImpl extends XmlComplexContentImpl implements CTVolMain {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "tp"), new QName("", "first")};
    private static final long serialVersionUID = 1;

    public CTVolMainImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public CTVolTopic addNewTp() {
        CTVolTopic cTVolTopic;
        synchronized (monitor()) {
            check_orphaned();
            cTVolTopic = (CTVolTopic) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVolTopic;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public String getFirst() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public CTVolTopic[] getTpArray() {
        return (CTVolTopic[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTVolTopic[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public List<CTVolTopic> getTpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mgd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolMainImpl.this.getTpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ngd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVolMainImpl.this.setTpArray(((Integer) obj).intValue(), (CTVolTopic) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ogd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolMainImpl.this.insertNewTp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pgd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTVolMainImpl.this.removeTp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qgd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTVolMainImpl.this.sizeOfTpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public CTVolTopic insertNewTp(int i) {
        CTVolTopic cTVolTopic;
        synchronized (monitor()) {
            check_orphaned();
            cTVolTopic = (CTVolTopic) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTVolTopic;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public void removeTp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public void setFirst(String str) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public void setTpArray(CTVolTopic[] cTVolTopicArr) {
        check_orphaned();
        arraySetterHelper(cTVolTopicArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public int sizeOfTpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public STXstring xgetFirst() {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public void xsetFirst(STXstring sTXstring) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STXstring sTXstring2 = (STXstring) typeStore.find_attribute_user(qNameArr[1]);
            if (sTXstring2 == null) {
                sTXstring2 = (STXstring) get_store().add_attribute_user(qNameArr[1]);
            }
            sTXstring2.set(sTXstring);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public CTVolTopic getTpArray(int i) {
        CTVolTopic cTVolTopic;
        synchronized (monitor()) {
            check_orphaned();
            cTVolTopic = (CTVolTopic) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTVolTopic == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTVolTopic;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain
    public void setTpArray(int i, CTVolTopic cTVolTopic) {
        generatedSetterHelperImpl(cTVolTopic, PROPERTY_QNAME[0], i, (short) 2);
    }
}
