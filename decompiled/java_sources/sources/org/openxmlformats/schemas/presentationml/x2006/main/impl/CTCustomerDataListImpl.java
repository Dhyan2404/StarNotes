package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTagsData;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTCustomerDataListImpl;

/* loaded from: classes14.dex */
public class CTCustomerDataListImpl extends XmlComplexContentImpl implements CTCustomerDataList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "custData"), new QName(XSSFRelation.NS_PRESENTATIONML, "tags")};
    private static final long serialVersionUID = 1;

    public CTCustomerDataListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public CTCustomerData addNewCustData() {
        CTCustomerData cTCustomerData;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomerData = (CTCustomerData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCustomerData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public CTTagsData addNewTags() {
        CTTagsData cTTagsData;
        synchronized (monitor()) {
            check_orphaned();
            cTTagsData = (CTTagsData) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTagsData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public CTCustomerData[] getCustDataArray() {
        return (CTCustomerData[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCustomerData[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public List<CTCustomerData> getCustDataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.o43
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomerDataListImpl.this.getCustDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.p43
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCustomerDataListImpl.this.setCustDataArray(((Integer) obj).intValue(), (CTCustomerData) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.q43
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomerDataListImpl.this.insertNewCustData(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.r43
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCustomerDataListImpl.this.removeCustData(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.s43
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCustomerDataListImpl.this.sizeOfCustDataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public CTTagsData getTags() {
        CTTagsData cTTagsData;
        synchronized (monitor()) {
            check_orphaned();
            cTTagsData = (CTTagsData) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTagsData == null) {
                cTTagsData = null;
            }
        }
        return cTTagsData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public CTCustomerData insertNewCustData(int i) {
        CTCustomerData cTCustomerData;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomerData = (CTCustomerData) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCustomerData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public boolean isSetTags() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public void removeCustData(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public void setCustDataArray(CTCustomerData[] cTCustomerDataArr) {
        check_orphaned();
        arraySetterHelper(cTCustomerDataArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public void setTags(CTTagsData cTTagsData) {
        generatedSetterHelperImpl(cTTagsData, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public int sizeOfCustDataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public void unsetTags() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public CTCustomerData getCustDataArray(int i) {
        CTCustomerData cTCustomerData;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomerData = (CTCustomerData) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCustomerData == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomerData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList
    public void setCustDataArray(int i, CTCustomerData cTCustomerData) {
        generatedSetterHelperImpl(cTCustomerData, PROPERTY_QNAME[0], i, (short) 2);
    }
}
