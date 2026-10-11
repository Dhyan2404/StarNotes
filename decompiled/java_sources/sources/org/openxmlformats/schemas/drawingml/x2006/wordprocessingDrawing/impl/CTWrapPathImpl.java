package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import com.sunia.HTREnginev2.gon;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl.CTWrapPathImpl;

/* loaded from: classes14.dex */
public class CTWrapPathImpl extends XmlComplexContentImpl implements CTWrapPath {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", gon.f71290o0), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "lineTo"), new QName("", "edited")};
    private static final long serialVersionUID = 1;

    public CTWrapPathImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public CTPoint2D addNewLineTo() {
        CTPoint2D cTPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPoint2D = (CTPoint2D) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTPoint2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public CTPoint2D addNewStart() {
        CTPoint2D cTPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPoint2D = (CTPoint2D) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPoint2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public boolean getEdited() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public CTPoint2D[] getLineToArray() {
        return (CTPoint2D[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTPoint2D[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public List<CTPoint2D> getLineToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gmd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWrapPathImpl.this.getLineToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hmd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWrapPathImpl.this.setLineToArray(((Integer) obj).intValue(), (CTPoint2D) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.imd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWrapPathImpl.this.insertNewLineTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jmd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWrapPathImpl.this.removeLineTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kmd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWrapPathImpl.this.sizeOfLineToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public CTPoint2D getStart() {
        CTPoint2D cTPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPoint2D = (CTPoint2D) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPoint2D == null) {
                cTPoint2D = null;
            }
        }
        return cTPoint2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public CTPoint2D insertNewLineTo(int i) {
        CTPoint2D cTPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPoint2D = (CTPoint2D) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTPoint2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public boolean isSetEdited() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public void removeLineTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public void setEdited(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public void setLineToArray(CTPoint2D[] cTPoint2DArr) {
        check_orphaned();
        arraySetterHelper(cTPoint2DArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public void setStart(CTPoint2D cTPoint2D) {
        generatedSetterHelperImpl(cTPoint2D, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public int sizeOfLineToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public void unsetEdited() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public XmlBoolean xgetEdited() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public void xsetEdited(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public CTPoint2D getLineToArray(int i) {
        CTPoint2D cTPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPoint2D = (CTPoint2D) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTPoint2D == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPoint2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWrapPath
    public void setLineToArray(int i, CTPoint2D cTPoint2D) {
        generatedSetterHelperImpl(cTPoint2D, PROPERTY_QNAME[1], i, (short) 2);
    }
}
