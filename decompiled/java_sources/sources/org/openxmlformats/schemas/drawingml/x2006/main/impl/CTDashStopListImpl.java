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
import org.openxmlformats.schemas.drawingml.x2006.main.CTDashStop;
import org.openxmlformats.schemas.drawingml.x2006.main.CTDashStopList;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTDashStopListImpl;

/* loaded from: classes14.dex */
public class CTDashStopListImpl extends XmlComplexContentImpl implements CTDashStopList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "ds")};
    private static final long serialVersionUID = 1;

    public CTDashStopListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDashStopList
    public CTDashStop addNewDs() {
        CTDashStop cTDashStop;
        synchronized (monitor()) {
            check_orphaned();
            cTDashStop = (CTDashStop) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDashStop;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDashStopList
    public CTDashStop[] getDsArray() {
        return (CTDashStop[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDashStop[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDashStopList
    public List<CTDashStop> getDsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i53
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDashStopListImpl.this.getDsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j53
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDashStopListImpl.this.setDsArray(((Integer) obj).intValue(), (CTDashStop) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k53
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDashStopListImpl.this.insertNewDs(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l53
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDashStopListImpl.this.removeDs(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m53
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDashStopListImpl.this.sizeOfDsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDashStopList
    public CTDashStop insertNewDs(int i) {
        CTDashStop cTDashStop;
        synchronized (monitor()) {
            check_orphaned();
            cTDashStop = (CTDashStop) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDashStop;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDashStopList
    public void removeDs(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDashStopList
    public void setDsArray(CTDashStop[] cTDashStopArr) {
        check_orphaned();
        arraySetterHelper(cTDashStopArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDashStopList
    public int sizeOfDsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDashStopList
    public CTDashStop getDsArray(int i) {
        CTDashStop cTDashStop;
        synchronized (monitor()) {
            check_orphaned();
            cTDashStop = (CTDashStop) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDashStop == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDashStop;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDashStopList
    public void setDsArray(int i, CTDashStop cTDashStop) {
        generatedSetterHelperImpl(cTDashStop, PROPERTY_QNAME[0], i, (short) 2);
    }
}
