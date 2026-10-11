package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTAnchor;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTInline;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTDrawingImpl;

/* loaded from: classes16.dex */
public class CTDrawingImpl extends XmlComplexContentImpl implements CTDrawing {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", Constants.ELEMNAME_ANCHOR_STRING), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "inline")};
    private static final long serialVersionUID = 1;

    public CTDrawingImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public CTAnchor addNewAnchor() {
        CTAnchor cTAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAnchor = (CTAnchor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAnchor;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public CTInline addNewInline() {
        CTInline cTInline;
        synchronized (monitor()) {
            check_orphaned();
            cTInline = (CTInline) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTInline;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public CTAnchor[] getAnchorArray() {
        return (CTAnchor[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAnchor[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public List<CTAnchor> getAnchorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sg3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.getAnchorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ah3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDrawingImpl.this.setAnchorArray(((Integer) obj).intValue(), (CTAnchor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dh3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.insertNewAnchor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gh3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDrawingImpl.this.removeAnchor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jh3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDrawingImpl.this.sizeOfAnchorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public CTInline[] getInlineArray() {
        return (CTInline[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTInline[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public List<CTInline> getInlineList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mh3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.getInlineArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ph3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDrawingImpl.this.setInlineArray(((Integer) obj).intValue(), (CTInline) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sh3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDrawingImpl.this.insertNewInline(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vh3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDrawingImpl.this.removeInline(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yh3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDrawingImpl.this.sizeOfInlineArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public CTAnchor insertNewAnchor(int i) {
        CTAnchor cTAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAnchor = (CTAnchor) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAnchor;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public CTInline insertNewInline(int i) {
        CTInline cTInline;
        synchronized (monitor()) {
            check_orphaned();
            cTInline = (CTInline) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTInline;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public void removeAnchor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public void removeInline(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public void setAnchorArray(CTAnchor[] cTAnchorArr) {
        check_orphaned();
        arraySetterHelper(cTAnchorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public void setInlineArray(CTInline[] cTInlineArr) {
        check_orphaned();
        arraySetterHelper(cTInlineArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public int sizeOfAnchorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public int sizeOfInlineArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public CTAnchor getAnchorArray(int i) {
        CTAnchor cTAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAnchor = (CTAnchor) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTAnchor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAnchor;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public CTInline getInlineArray(int i) {
        CTInline cTInline;
        synchronized (monitor()) {
            check_orphaned();
            cTInline = (CTInline) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTInline == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTInline;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public void setAnchorArray(int i, CTAnchor cTAnchor) {
        generatedSetterHelperImpl(cTAnchor, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing
    public void setInlineArray(int i, CTInline cTInline) {
        generatedSetterHelperImpl(cTInline, PROPERTY_QNAME[1], i, (short) 2);
    }
}
