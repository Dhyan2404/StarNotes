package org.openxmlformats.schemas.drawingml.x2006.main.impl;

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
import org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSite;
import org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTConnectionSiteListImpl;

/* loaded from: classes14.dex */
public class CTConnectionSiteListImpl extends XmlComplexContentImpl implements CTConnectionSiteList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "cxn")};
    private static final long serialVersionUID = 1;

    public CTConnectionSiteListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList
    public CTConnectionSite addNewCxn() {
        CTConnectionSite cTConnectionSite;
        synchronized (monitor()) {
            check_orphaned();
            cTConnectionSite = (CTConnectionSite) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTConnectionSite;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList
    public CTConnectionSite[] getCxnArray() {
        return (CTConnectionSite[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTConnectionSite[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList
    public List<CTConnectionSite> getCxnList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.oa2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTConnectionSiteListImpl.this.getCxnArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pa2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTConnectionSiteListImpl.this.setCxnArray(((Integer) obj).intValue(), (CTConnectionSite) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qa2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTConnectionSiteListImpl.this.insertNewCxn(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ra2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTConnectionSiteListImpl.this.removeCxn(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sa2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTConnectionSiteListImpl.this.sizeOfCxnArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList
    public CTConnectionSite insertNewCxn(int i) {
        CTConnectionSite cTConnectionSite;
        synchronized (monitor()) {
            check_orphaned();
            cTConnectionSite = (CTConnectionSite) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTConnectionSite;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList
    public void removeCxn(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList
    public void setCxnArray(CTConnectionSite[] cTConnectionSiteArr) {
        check_orphaned();
        arraySetterHelper(cTConnectionSiteArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList
    public int sizeOfCxnArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList
    public CTConnectionSite getCxnArray(int i) {
        CTConnectionSite cTConnectionSite;
        synchronized (monitor()) {
            check_orphaned();
            cTConnectionSite = (CTConnectionSite) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTConnectionSite == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTConnectionSite;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList
    public void setCxnArray(int i, CTConnectionSite cTConnectionSite) {
        generatedSetterHelperImpl(cTConnectionSite, PROPERTY_QNAME[0], i, (short) 2);
    }
}
