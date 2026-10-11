package org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTAbsoluteAnchor;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTOneCellAnchor;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTTwoCellAnchor;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.impl.CTDrawingImpl;

/* loaded from: classes14.dex */
public class CTDrawingImpl extends XmlComplexContentImpl implements CTDrawing {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing", "twoCellAnchor"), new QName("http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing", "oneCellAnchor"), new QName("http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing", "absoluteAnchor")};
    private static final long serialVersionUID = 1;

    public CTDrawingImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTAbsoluteAnchor addNewAbsoluteAnchor() {
        CTAbsoluteAnchor cTAbsoluteAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAbsoluteAnchor = (CTAbsoluteAnchor) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTAbsoluteAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTOneCellAnchor addNewOneCellAnchor() {
        CTOneCellAnchor cTOneCellAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTOneCellAnchor = (CTOneCellAnchor) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOneCellAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTTwoCellAnchor addNewTwoCellAnchor() {
        CTTwoCellAnchor cTTwoCellAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTTwoCellAnchor = (CTTwoCellAnchor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTwoCellAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTAbsoluteAnchor[] getAbsoluteAnchorArray() {
        return (CTAbsoluteAnchor[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTAbsoluteAnchor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public List<CTAbsoluteAnchor> getAbsoluteAnchorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rg3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.getAbsoluteAnchorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zg3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDrawingImpl.this.setAbsoluteAnchorArray(((Integer) obj).intValue(), (CTAbsoluteAnchor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ch3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.insertNewAbsoluteAnchor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fh3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDrawingImpl.this.removeAbsoluteAnchor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ih3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDrawingImpl.this.sizeOfAbsoluteAnchorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTOneCellAnchor[] getOneCellAnchorArray() {
        return (CTOneCellAnchor[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTOneCellAnchor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public List<CTOneCellAnchor> getOneCellAnchorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lh3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.getOneCellAnchorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oh3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDrawingImpl.this.setOneCellAnchorArray(((Integer) obj).intValue(), (CTOneCellAnchor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rh3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.insertNewOneCellAnchor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.uh3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDrawingImpl.this.removeOneCellAnchor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xh3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDrawingImpl.this.sizeOfOneCellAnchorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTTwoCellAnchor[] getTwoCellAnchorArray() {
        return (CTTwoCellAnchor[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTwoCellAnchor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public List<CTTwoCellAnchor> getTwoCellAnchorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ug3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.getTwoCellAnchorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vg3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDrawingImpl.this.setTwoCellAnchorArray(((Integer) obj).intValue(), (CTTwoCellAnchor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wg3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.insertNewTwoCellAnchor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xg3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDrawingImpl.this.removeTwoCellAnchor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yg3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDrawingImpl.this.sizeOfTwoCellAnchorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTAbsoluteAnchor insertNewAbsoluteAnchor(int i) {
        CTAbsoluteAnchor cTAbsoluteAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAbsoluteAnchor = (CTAbsoluteAnchor) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTAbsoluteAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTOneCellAnchor insertNewOneCellAnchor(int i) {
        CTOneCellAnchor cTOneCellAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTOneCellAnchor = (CTOneCellAnchor) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTOneCellAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTTwoCellAnchor insertNewTwoCellAnchor(int i) {
        CTTwoCellAnchor cTTwoCellAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTTwoCellAnchor = (CTTwoCellAnchor) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTwoCellAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public void removeAbsoluteAnchor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public void removeOneCellAnchor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public void removeTwoCellAnchor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public void setAbsoluteAnchorArray(CTAbsoluteAnchor[] cTAbsoluteAnchorArr) {
        check_orphaned();
        arraySetterHelper(cTAbsoluteAnchorArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public void setOneCellAnchorArray(CTOneCellAnchor[] cTOneCellAnchorArr) {
        check_orphaned();
        arraySetterHelper(cTOneCellAnchorArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public void setTwoCellAnchorArray(CTTwoCellAnchor[] cTTwoCellAnchorArr) {
        check_orphaned();
        arraySetterHelper(cTTwoCellAnchorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public int sizeOfAbsoluteAnchorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public int sizeOfOneCellAnchorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public int sizeOfTwoCellAnchorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTAbsoluteAnchor getAbsoluteAnchorArray(int i) {
        CTAbsoluteAnchor cTAbsoluteAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAbsoluteAnchor = (CTAbsoluteAnchor) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTAbsoluteAnchor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAbsoluteAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTOneCellAnchor getOneCellAnchorArray(int i) {
        CTOneCellAnchor cTOneCellAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTOneCellAnchor = (CTOneCellAnchor) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTOneCellAnchor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOneCellAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public CTTwoCellAnchor getTwoCellAnchorArray(int i) {
        CTTwoCellAnchor cTTwoCellAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTTwoCellAnchor = (CTTwoCellAnchor) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTwoCellAnchor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTwoCellAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public void setAbsoluteAnchorArray(int i, CTAbsoluteAnchor cTAbsoluteAnchor) {
        generatedSetterHelperImpl(cTAbsoluteAnchor, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public void setOneCellAnchorArray(int i, CTOneCellAnchor cTOneCellAnchor) {
        generatedSetterHelperImpl(cTOneCellAnchor, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing
    public void setTwoCellAnchorArray(int i, CTTwoCellAnchor cTTwoCellAnchor) {
        generatedSetterHelperImpl(cTTwoCellAnchor, PROPERTY_QNAME[0], i, (short) 2);
    }
}
