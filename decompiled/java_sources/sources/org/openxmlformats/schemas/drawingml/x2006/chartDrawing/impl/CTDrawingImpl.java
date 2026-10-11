package org.openxmlformats.schemas.drawingml.x2006.chartDrawing.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTRelSizeAnchor;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.impl.CTDrawingImpl;

/* loaded from: classes14.dex */
public class CTDrawingImpl extends XmlComplexContentImpl implements CTDrawing {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "relSizeAnchor"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "absSizeAnchor")};
    private static final long serialVersionUID = 1;

    public CTDrawingImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public CTAbsSizeAnchor addNewAbsSizeAnchor() {
        CTAbsSizeAnchor cTAbsSizeAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAbsSizeAnchor = (CTAbsSizeAnchor) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAbsSizeAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public CTRelSizeAnchor addNewRelSizeAnchor() {
        CTRelSizeAnchor cTRelSizeAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTRelSizeAnchor = (CTRelSizeAnchor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelSizeAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public CTAbsSizeAnchor[] getAbsSizeAnchorArray() {
        return (CTAbsSizeAnchor[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTAbsSizeAnchor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public List<CTAbsSizeAnchor> getAbsSizeAnchorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nh3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.getAbsSizeAnchorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qh3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDrawingImpl.this.setAbsSizeAnchorArray(((Integer) obj).intValue(), (CTAbsSizeAnchor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.th3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.insertNewAbsSizeAnchor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wh3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDrawingImpl.this.removeAbsSizeAnchor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zh3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDrawingImpl.this.sizeOfAbsSizeAnchorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public CTRelSizeAnchor[] getRelSizeAnchorArray() {
        return (CTRelSizeAnchor[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTRelSizeAnchor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public List<CTRelSizeAnchor> getRelSizeAnchorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tg3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.getRelSizeAnchorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bh3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDrawingImpl.this.setRelSizeAnchorArray(((Integer) obj).intValue(), (CTRelSizeAnchor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.eh3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.insertNewRelSizeAnchor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hh3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDrawingImpl.this.removeRelSizeAnchor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kh3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDrawingImpl.this.sizeOfRelSizeAnchorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public CTAbsSizeAnchor insertNewAbsSizeAnchor(int i) {
        CTAbsSizeAnchor cTAbsSizeAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAbsSizeAnchor = (CTAbsSizeAnchor) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTAbsSizeAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public CTRelSizeAnchor insertNewRelSizeAnchor(int i) {
        CTRelSizeAnchor cTRelSizeAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTRelSizeAnchor = (CTRelSizeAnchor) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTRelSizeAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public void removeAbsSizeAnchor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public void removeRelSizeAnchor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public void setAbsSizeAnchorArray(CTAbsSizeAnchor[] cTAbsSizeAnchorArr) {
        check_orphaned();
        arraySetterHelper(cTAbsSizeAnchorArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public void setRelSizeAnchorArray(CTRelSizeAnchor[] cTRelSizeAnchorArr) {
        check_orphaned();
        arraySetterHelper(cTRelSizeAnchorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public int sizeOfAbsSizeAnchorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public int sizeOfRelSizeAnchorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public CTAbsSizeAnchor getAbsSizeAnchorArray(int i) {
        CTAbsSizeAnchor cTAbsSizeAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAbsSizeAnchor = (CTAbsSizeAnchor) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTAbsSizeAnchor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAbsSizeAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public CTRelSizeAnchor getRelSizeAnchorArray(int i) {
        CTRelSizeAnchor cTRelSizeAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTRelSizeAnchor = (CTRelSizeAnchor) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTRelSizeAnchor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRelSizeAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public void setAbsSizeAnchorArray(int i, CTAbsSizeAnchor cTAbsSizeAnchor) {
        generatedSetterHelperImpl(cTAbsSizeAnchor, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing
    public void setRelSizeAnchorArray(int i, CTRelSizeAnchor cTRelSizeAnchor) {
        generatedSetterHelperImpl(cTRelSizeAnchor, PROPERTY_QNAME[0], i, (short) 2);
    }
}
