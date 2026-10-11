package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.google.protobuf.C6883t;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMap;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSchema;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMapInfoImpl;

/* loaded from: classes15.dex */
public class CTMapInfoImpl extends XmlComplexContentImpl implements CTMapInfo {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "Schema"), new QName(XSSFRelation.NS_SPREADSHEETML, C6883t.f38149c), new QName("", "SelectionNamespaces")};
    private static final long serialVersionUID = 1;

    public CTMapInfoImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public CTMap addNewMap() {
        CTMap cTMap;
        synchronized (monitor()) {
            check_orphaned();
            cTMap = (CTMap) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTMap;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public CTSchema addNewSchema() {
        CTSchema cTSchema;
        synchronized (monitor()) {
            check_orphaned();
            cTSchema = (CTSchema) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSchema;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public CTMap[] getMapArray() {
        return (CTMap[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTMap[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public List<CTMap> getMapList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lk5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMapInfoImpl.this.getMapArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mk5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMapInfoImpl.this.setMapArray(((Integer) obj).intValue(), (CTMap) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nk5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMapInfoImpl.this.insertNewMap(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ok5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMapInfoImpl.this.removeMap(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pk5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMapInfoImpl.this.sizeOfMapArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public CTSchema[] getSchemaArray() {
        return (CTSchema[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSchema[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public List<CTSchema> getSchemaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qk5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMapInfoImpl.this.getSchemaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rk5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMapInfoImpl.this.setSchemaArray(((Integer) obj).intValue(), (CTSchema) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sk5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMapInfoImpl.this.insertNewSchema(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tk5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMapInfoImpl.this.removeSchema(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uk5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMapInfoImpl.this.sizeOfSchemaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public String getSelectionNamespaces() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public CTMap insertNewMap(int i) {
        CTMap cTMap;
        synchronized (monitor()) {
            check_orphaned();
            cTMap = (CTMap) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTMap;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public CTSchema insertNewSchema(int i) {
        CTSchema cTSchema;
        synchronized (monitor()) {
            check_orphaned();
            cTSchema = (CTSchema) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSchema;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public void removeMap(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public void removeSchema(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public void setMapArray(CTMap[] cTMapArr) {
        check_orphaned();
        arraySetterHelper(cTMapArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public void setSchemaArray(CTSchema[] cTSchemaArr) {
        check_orphaned();
        arraySetterHelper(cTSchemaArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public void setSelectionNamespaces(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public int sizeOfMapArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public int sizeOfSchemaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public XmlString xgetSelectionNamespaces() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public void xsetSelectionNamespaces(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public CTMap getMapArray(int i) {
        CTMap cTMap;
        synchronized (monitor()) {
            check_orphaned();
            cTMap = (CTMap) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTMap == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMap;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public CTSchema getSchemaArray(int i) {
        CTSchema cTSchema;
        synchronized (monitor()) {
            check_orphaned();
            cTSchema = (CTSchema) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSchema == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSchema;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public void setMapArray(int i, CTMap cTMap) {
        generatedSetterHelperImpl(cTMap, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMapInfo
    public void setSchemaArray(int i, CTSchema cTSchema) {
        generatedSetterHelperImpl(cTSchema, PROPERTY_QNAME[0], i, (short) 2);
    }
}
