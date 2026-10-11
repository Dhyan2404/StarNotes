package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotDimension;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTDimensionsImpl;

/* loaded from: classes15.dex */
public class CTDimensionsImpl extends XmlComplexContentImpl implements CTDimensions {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, TypedValues.Custom.S_DIMENSION), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTDimensionsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public CTPivotDimension addNewDimension() {
        CTPivotDimension cTPivotDimension;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotDimension = (CTPivotDimension) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotDimension;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public CTPivotDimension[] getDimensionArray() {
        return (CTPivotDimension[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPivotDimension[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public List<CTPivotDimension> getDimensionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDimensionsImpl.this.getDimensionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g83
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDimensionsImpl.this.setDimensionArray(((Integer) obj).intValue(), (CTPivotDimension) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDimensionsImpl.this.insertNewDimension(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i83
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDimensionsImpl.this.removeDimension(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j83
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDimensionsImpl.this.sizeOfDimensionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public CTPivotDimension insertNewDimension(int i) {
        CTPivotDimension cTPivotDimension;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotDimension = (CTPivotDimension) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPivotDimension;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public void removeDimension(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public void setDimensionArray(CTPivotDimension[] cTPivotDimensionArr) {
        check_orphaned();
        arraySetterHelper(cTPivotDimensionArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public int sizeOfDimensionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public CTPivotDimension getDimensionArray(int i) {
        CTPivotDimension cTPivotDimension;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotDimension = (CTPivotDimension) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPivotDimension == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPivotDimension;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDimensions
    public void setDimensionArray(int i, CTPivotDimension cTPivotDimension) {
        generatedSetterHelperImpl(cTPivotDimension, PROPERTY_QNAME[0], i, (short) 2);
    }
}
