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
import org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTXYAdjustHandle;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTAdjustHandleListImpl;

/* loaded from: classes14.dex */
public class CTAdjustHandleListImpl extends XmlComplexContentImpl implements CTAdjustHandleList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "ahXY"), new QName(XSSFRelation.NS_DRAWINGML, "ahPolar")};
    private static final long serialVersionUID = 1;

    public CTAdjustHandleListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public CTPolarAdjustHandle addNewAhPolar() {
        CTPolarAdjustHandle cTPolarAdjustHandle;
        synchronized (monitor()) {
            check_orphaned();
            cTPolarAdjustHandle = (CTPolarAdjustHandle) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTPolarAdjustHandle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public CTXYAdjustHandle addNewAhXY() {
        CTXYAdjustHandle cTXYAdjustHandle;
        synchronized (monitor()) {
            check_orphaned();
            cTXYAdjustHandle = (CTXYAdjustHandle) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTXYAdjustHandle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public CTPolarAdjustHandle[] getAhPolarArray() {
        return (CTPolarAdjustHandle[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTPolarAdjustHandle[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public List<CTPolarAdjustHandle> getAhPolarList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.x30
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAdjustHandleListImpl.this.getAhPolarArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.y30
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAdjustHandleListImpl.this.setAhPolarArray(((Integer) obj).intValue(), (CTPolarAdjustHandle) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.z30
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAdjustHandleListImpl.this.insertNewAhPolar(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.a40
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAdjustHandleListImpl.this.removeAhPolar(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.b40
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAdjustHandleListImpl.this.sizeOfAhPolarArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public CTXYAdjustHandle[] getAhXYArray() {
        return (CTXYAdjustHandle[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTXYAdjustHandle[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public List<CTXYAdjustHandle> getAhXYList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s30
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAdjustHandleListImpl.this.getAhXYArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.t30
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAdjustHandleListImpl.this.setAhXYArray(((Integer) obj).intValue(), (CTXYAdjustHandle) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.u30
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAdjustHandleListImpl.this.insertNewAhXY(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.v30
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAdjustHandleListImpl.this.removeAhXY(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.w30
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAdjustHandleListImpl.this.sizeOfAhXYArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public CTPolarAdjustHandle insertNewAhPolar(int i) {
        CTPolarAdjustHandle cTPolarAdjustHandle;
        synchronized (monitor()) {
            check_orphaned();
            cTPolarAdjustHandle = (CTPolarAdjustHandle) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTPolarAdjustHandle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public CTXYAdjustHandle insertNewAhXY(int i) {
        CTXYAdjustHandle cTXYAdjustHandle;
        synchronized (monitor()) {
            check_orphaned();
            cTXYAdjustHandle = (CTXYAdjustHandle) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTXYAdjustHandle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public void removeAhPolar(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public void removeAhXY(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public void setAhPolarArray(CTPolarAdjustHandle[] cTPolarAdjustHandleArr) {
        check_orphaned();
        arraySetterHelper(cTPolarAdjustHandleArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public void setAhXYArray(CTXYAdjustHandle[] cTXYAdjustHandleArr) {
        check_orphaned();
        arraySetterHelper(cTXYAdjustHandleArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public int sizeOfAhPolarArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public int sizeOfAhXYArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public CTPolarAdjustHandle getAhPolarArray(int i) {
        CTPolarAdjustHandle cTPolarAdjustHandle;
        synchronized (monitor()) {
            check_orphaned();
            cTPolarAdjustHandle = (CTPolarAdjustHandle) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTPolarAdjustHandle == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPolarAdjustHandle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public CTXYAdjustHandle getAhXYArray(int i) {
        CTXYAdjustHandle cTXYAdjustHandle;
        synchronized (monitor()) {
            check_orphaned();
            cTXYAdjustHandle = (CTXYAdjustHandle) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTXYAdjustHandle == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTXYAdjustHandle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public void setAhPolarArray(int i, CTPolarAdjustHandle cTPolarAdjustHandle) {
        generatedSetterHelperImpl(cTPolarAdjustHandle, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList
    public void setAhXYArray(int i, CTXYAdjustHandle cTXYAdjustHandle) {
        generatedSetterHelperImpl(cTXYAdjustHandle, PROPERTY_QNAME[0], i, (short) 2);
    }
}
