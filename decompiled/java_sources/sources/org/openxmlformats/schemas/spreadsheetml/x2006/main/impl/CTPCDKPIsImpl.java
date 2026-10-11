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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPI;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTPCDKPIsImpl;

/* loaded from: classes15.dex */
public class CTPCDKPIsImpl extends XmlComplexContentImpl implements CTPCDKPIs {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "kpi"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTPCDKPIsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public CTPCDKPI addNewKpi() {
        CTPCDKPI ctpcdkpi;
        synchronized (monitor()) {
            check_orphaned();
            ctpcdkpi = (CTPCDKPI) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return ctpcdkpi;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public CTPCDKPI[] getKpiArray() {
        return (CTPCDKPI[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPCDKPI[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public List<CTPCDKPI> getKpiList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tg6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDKPIsImpl.this.getKpiArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ug6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPCDKPIsImpl.this.setKpiArray(((Integer) obj).intValue(), (CTPCDKPI) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vg6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDKPIsImpl.this.insertNewKpi(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wg6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPCDKPIsImpl.this.removeKpi(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xg6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPCDKPIsImpl.this.sizeOfKpiArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public CTPCDKPI insertNewKpi(int i) {
        CTPCDKPI ctpcdkpi;
        synchronized (monitor()) {
            check_orphaned();
            ctpcdkpi = (CTPCDKPI) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return ctpcdkpi;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public void removeKpi(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public void setKpiArray(CTPCDKPI[] ctpcdkpiArr) {
        check_orphaned();
        arraySetterHelper(ctpcdkpiArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public int sizeOfKpiArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public CTPCDKPI getKpiArray(int i) {
        CTPCDKPI ctpcdkpi;
        synchronized (monitor()) {
            check_orphaned();
            ctpcdkpi = (CTPCDKPI) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (ctpcdkpi == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctpcdkpi;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDKPIs
    public void setKpiArray(int i, CTPCDKPI ctpcdkpi) {
        generatedSetterHelperImpl(ctpcdkpi, PROPERTY_QNAME[0], i, (short) 2);
    }
}
