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
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotArea;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTPivotAreasImpl;

/* loaded from: classes15.dex */
public class CTPivotAreasImpl extends XmlComplexContentImpl implements CTPivotAreas {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "pivotArea"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTPivotAreasImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public CTPivotArea addNewPivotArea() {
        CTPivotArea cTPivotArea;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotArea = (CTPivotArea) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotArea;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public CTPivotArea[] getPivotAreaArray() {
        return (CTPivotArea[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPivotArea[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public List<CTPivotArea> getPivotAreaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l87
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotAreasImpl.this.getPivotAreaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m87
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPivotAreasImpl.this.setPivotAreaArray(((Integer) obj).intValue(), (CTPivotArea) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n87
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotAreasImpl.this.insertNewPivotArea(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o87
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPivotAreasImpl.this.removePivotArea(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p87
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPivotAreasImpl.this.sizeOfPivotAreaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public CTPivotArea insertNewPivotArea(int i) {
        CTPivotArea cTPivotArea;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotArea = (CTPivotArea) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPivotArea;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public void removePivotArea(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public void setPivotAreaArray(CTPivotArea[] cTPivotAreaArr) {
        check_orphaned();
        arraySetterHelper(cTPivotAreaArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public int sizeOfPivotAreaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public CTPivotArea getPivotAreaArray(int i) {
        CTPivotArea cTPivotArea;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotArea = (CTPivotArea) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPivotArea == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPivotArea;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreas
    public void setPivotAreaArray(int i, CTPivotArea cTPivotArea) {
        generatedSetterHelperImpl(cTPivotArea, PROPERTY_QNAME[0], i, (short) 2);
    }
}
