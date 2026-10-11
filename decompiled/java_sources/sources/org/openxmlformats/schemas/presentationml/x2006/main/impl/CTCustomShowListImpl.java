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
import org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShow;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTCustomShowListImpl;

/* loaded from: classes14.dex */
public class CTCustomShowListImpl extends XmlComplexContentImpl implements CTCustomShowList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "custShow")};
    private static final long serialVersionUID = 1;

    public CTCustomShowListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowList
    public CTCustomShow addNewCustShow() {
        CTCustomShow cTCustomShow;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomShow = (CTCustomShow) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCustomShow;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowList
    public CTCustomShow[] getCustShowArray() {
        return (CTCustomShow[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCustomShow[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowList
    public List<CTCustomShow> getCustShowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ch2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomShowListImpl.this.getCustShowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dh2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCustomShowListImpl.this.setCustShowArray(((Integer) obj).intValue(), (CTCustomShow) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.eh2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomShowListImpl.this.insertNewCustShow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fh2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCustomShowListImpl.this.removeCustShow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gh2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCustomShowListImpl.this.sizeOfCustShowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowList
    public CTCustomShow insertNewCustShow(int i) {
        CTCustomShow cTCustomShow;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomShow = (CTCustomShow) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCustomShow;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowList
    public void removeCustShow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowList
    public void setCustShowArray(CTCustomShow[] cTCustomShowArr) {
        check_orphaned();
        arraySetterHelper(cTCustomShowArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowList
    public int sizeOfCustShowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowList
    public CTCustomShow getCustShowArray(int i) {
        CTCustomShow cTCustomShow;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomShow = (CTCustomShow) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCustomShow == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomShow;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowList
    public void setCustShowArray(int i, CTCustomShow cTCustomShow) {
        generatedSetterHelperImpl(cTCustomShow, PROPERTY_QNAME[0], i, (short) 2);
    }
}
