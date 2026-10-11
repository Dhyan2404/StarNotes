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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTPagesImpl;

/* loaded from: classes15.dex */
public class CTPagesImpl extends XmlComplexContentImpl implements CTPages {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "page"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTPagesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public CTPCDSCPage addNewPage() {
        CTPCDSCPage cTPCDSCPage;
        synchronized (monitor()) {
            check_orphaned();
            cTPCDSCPage = (CTPCDSCPage) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPCDSCPage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public CTPCDSCPage[] getPageArray() {
        return (CTPCDSCPage[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPCDSCPage[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public List<CTPCDSCPage> getPageList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vo6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPagesImpl.this.getPageArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wo6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPagesImpl.this.setPageArray(((Integer) obj).intValue(), (CTPCDSCPage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xo6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPagesImpl.this.insertNewPage(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yo6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPagesImpl.this.removePage(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zo6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPagesImpl.this.sizeOfPageArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public CTPCDSCPage insertNewPage(int i) {
        CTPCDSCPage cTPCDSCPage;
        synchronized (monitor()) {
            check_orphaned();
            cTPCDSCPage = (CTPCDSCPage) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPCDSCPage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public void removePage(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public void setPageArray(CTPCDSCPage[] cTPCDSCPageArr) {
        check_orphaned();
        arraySetterHelper(cTPCDSCPageArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public int sizeOfPageArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public CTPCDSCPage getPageArray(int i) {
        CTPCDSCPage cTPCDSCPage;
        synchronized (monitor()) {
            check_orphaned();
            cTPCDSCPage = (CTPCDSCPage) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPCDSCPage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPCDSCPage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages
    public void setPageArray(int i, CTPCDSCPage cTPCDSCPage) {
        generatedSetterHelperImpl(cTPCDSCPage, PROPERTY_QNAME[0], i, (short) 2);
    }
}
