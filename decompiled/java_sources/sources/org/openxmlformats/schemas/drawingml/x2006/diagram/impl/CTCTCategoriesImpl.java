package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTCTCategoriesImpl;

/* loaded from: classes14.dex */
public class CTCTCategoriesImpl extends XmlComplexContentImpl implements CTCTCategories {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "cat")};
    private static final long serialVersionUID = 1;

    public CTCTCategoriesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories
    public CTCTCategory addNewCat() {
        CTCTCategory cTCTCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTCTCategory = (CTCTCategory) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCTCategory;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories
    public CTCTCategory[] getCatArray() {
        return (CTCTCategory[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCTCategory[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories
    public List<CTCTCategory> getCatList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.m41
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCTCategoriesImpl.this.getCatArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n41
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCTCategoriesImpl.this.setCatArray(((Integer) obj).intValue(), (CTCTCategory) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o41
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCTCategoriesImpl.this.insertNewCat(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.p41
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCTCategoriesImpl.this.removeCat(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q41
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCTCategoriesImpl.this.sizeOfCatArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories
    public CTCTCategory insertNewCat(int i) {
        CTCTCategory cTCTCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTCTCategory = (CTCTCategory) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCTCategory;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories
    public void removeCat(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories
    public void setCatArray(CTCTCategory[] cTCTCategoryArr) {
        check_orphaned();
        arraySetterHelper(cTCTCategoryArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories
    public int sizeOfCatArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories
    public CTCTCategory getCatArray(int i) {
        CTCTCategory cTCTCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTCTCategory = (CTCTCategory) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCTCategory == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCTCategory;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories
    public void setCatArray(int i, CTCTCategory cTCTCategory) {
        generatedSetterHelperImpl(cTCTCategory, PROPERTY_QNAME[0], i, (short) 2);
    }
}
