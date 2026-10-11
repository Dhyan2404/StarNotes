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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTCategoriesImpl;

/* loaded from: classes14.dex */
public class CTCategoriesImpl extends XmlComplexContentImpl implements CTCategories {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "cat")};
    private static final long serialVersionUID = 1;

    public CTCategoriesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories
    public CTCategory addNewCat() {
        CTCategory cTCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTCategory = (CTCategory) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCategory;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories
    public CTCategory[] getCatArray() {
        return (CTCategory[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCategory[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories
    public List<CTCategory> getCatList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a61
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCategoriesImpl.this.getCatArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b61
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCategoriesImpl.this.setCatArray(((Integer) obj).intValue(), (CTCategory) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c61
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCategoriesImpl.this.insertNewCat(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d61
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCategoriesImpl.this.removeCat(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e61
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCategoriesImpl.this.sizeOfCatArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories
    public CTCategory insertNewCat(int i) {
        CTCategory cTCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTCategory = (CTCategory) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCategory;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories
    public void removeCat(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories
    public void setCatArray(CTCategory[] cTCategoryArr) {
        check_orphaned();
        arraySetterHelper(cTCategoryArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories
    public int sizeOfCatArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories
    public CTCategory getCatArray(int i) {
        CTCategory cTCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTCategory = (CTCategory) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCategory == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCategory;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories
    public void setCatArray(int i, CTCategory cTCategory) {
        generatedSetterHelperImpl(cTCategory, PROPERTY_QNAME[0], i, (short) 2);
    }
}
