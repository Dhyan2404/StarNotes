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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolMain;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STVolDepType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTVolTypeImpl;

/* loaded from: classes15.dex */
public class CTVolTypeImpl extends XmlComplexContentImpl implements CTVolType {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "main"), new QName("", "type")};
    private static final long serialVersionUID = 1;

    public CTVolTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public CTVolMain addNewMain() {
        CTVolMain cTVolMain;
        synchronized (monitor()) {
            check_orphaned();
            cTVolMain = (CTVolMain) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVolMain;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public CTVolMain[] getMainArray() {
        return (CTVolMain[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTVolMain[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public List<CTVolMain> getMainList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ghd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolTypeImpl.this.getMainArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hhd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVolTypeImpl.this.setMainArray(((Integer) obj).intValue(), (CTVolMain) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ihd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolTypeImpl.this.insertNewMain(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jhd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTVolTypeImpl.this.removeMain(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.khd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTVolTypeImpl.this.sizeOfMainArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public STVolDepType.Enum getType() {
        STVolDepType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STVolDepType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public CTVolMain insertNewMain(int i) {
        CTVolMain cTVolMain;
        synchronized (monitor()) {
            check_orphaned();
            cTVolMain = (CTVolMain) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTVolMain;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public void removeMain(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public void setMainArray(CTVolMain[] cTVolMainArr) {
        check_orphaned();
        arraySetterHelper(cTVolMainArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public void setType(STVolDepType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public int sizeOfMainArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public STVolDepType xgetType() {
        STVolDepType sTVolDepType;
        synchronized (monitor()) {
            check_orphaned();
            sTVolDepType = (STVolDepType) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTVolDepType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public void xsetType(STVolDepType sTVolDepType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STVolDepType sTVolDepType2 = (STVolDepType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTVolDepType2 == null) {
                sTVolDepType2 = (STVolDepType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTVolDepType2.set(sTVolDepType);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public CTVolMain getMainArray(int i) {
        CTVolMain cTVolMain;
        synchronized (monitor()) {
            check_orphaned();
            cTVolMain = (CTVolMain) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTVolMain == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTVolMain;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType
    public void setMainArray(int i, CTVolMain cTVolMain) {
        generatedSetterHelperImpl(cTVolMain, PROPERTY_QNAME[0], i, (short) 2);
    }
}
