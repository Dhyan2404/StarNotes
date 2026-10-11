package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.onyx.android.sdk.data.common.cloud.Constant;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMap;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMeasureDimensionMapsImpl;

/* loaded from: classes15.dex */
public class CTMeasureDimensionMapsImpl extends XmlComplexContentImpl implements CTMeasureDimensionMaps {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, Constant.MAP_TAG), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTMeasureDimensionMapsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public CTMeasureDimensionMap addNewMap() {
        CTMeasureDimensionMap cTMeasureDimensionMap;
        synchronized (monitor()) {
            check_orphaned();
            cTMeasureDimensionMap = (CTMeasureDimensionMap) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMeasureDimensionMap;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public CTMeasureDimensionMap[] getMapArray() {
        return (CTMeasureDimensionMap[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMeasureDimensionMap[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public List<CTMeasureDimensionMap> getMapList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kl5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMeasureDimensionMapsImpl.this.getMapArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ll5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMeasureDimensionMapsImpl.this.setMapArray(((Integer) obj).intValue(), (CTMeasureDimensionMap) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ml5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMeasureDimensionMapsImpl.this.insertNewMap(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nl5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMeasureDimensionMapsImpl.this.removeMap(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ol5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMeasureDimensionMapsImpl.this.sizeOfMapArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public CTMeasureDimensionMap insertNewMap(int i) {
        CTMeasureDimensionMap cTMeasureDimensionMap;
        synchronized (monitor()) {
            check_orphaned();
            cTMeasureDimensionMap = (CTMeasureDimensionMap) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMeasureDimensionMap;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public boolean isSetCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public void removeMap(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public void setCount(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public void setMapArray(CTMeasureDimensionMap[] cTMeasureDimensionMapArr) {
        check_orphaned();
        arraySetterHelper(cTMeasureDimensionMapArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public int sizeOfMapArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public void xsetCount(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public CTMeasureDimensionMap getMapArray(int i) {
        CTMeasureDimensionMap cTMeasureDimensionMap;
        synchronized (monitor()) {
            check_orphaned();
            cTMeasureDimensionMap = (CTMeasureDimensionMap) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMeasureDimensionMap == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMeasureDimensionMap;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureDimensionMaps
    public void setMapArray(int i, CTMeasureDimensionMap cTMeasureDimensionMap) {
        generatedSetterHelperImpl(cTMeasureDimensionMap, PROPERTY_QNAME[0], i, (short) 2);
    }
}
