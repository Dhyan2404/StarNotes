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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTSDCategoriesImpl;

/* loaded from: classes14.dex */
public class CTSDCategoriesImpl extends XmlComplexContentImpl implements CTSDCategories {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "cat")};
    private static final long serialVersionUID = 1;

    public CTSDCategoriesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories
    public CTSDCategory addNewCat() {
        CTSDCategory cTSDCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTSDCategory = (CTSDCategory) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSDCategory;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories
    public CTSDCategory[] getCatArray() {
        return (CTSDCategory[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSDCategory[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories
    public List<CTSDCategory> getCatList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vl9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSDCategoriesImpl.this.getCatArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wl9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSDCategoriesImpl.this.setCatArray(((Integer) obj).intValue(), (CTSDCategory) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xl9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSDCategoriesImpl.this.insertNewCat(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yl9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSDCategoriesImpl.this.removeCat(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zl9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSDCategoriesImpl.this.sizeOfCatArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories
    public CTSDCategory insertNewCat(int i) {
        CTSDCategory cTSDCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTSDCategory = (CTSDCategory) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSDCategory;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories
    public void removeCat(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories
    public void setCatArray(CTSDCategory[] cTSDCategoryArr) {
        check_orphaned();
        arraySetterHelper(cTSDCategoryArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories
    public int sizeOfCatArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories
    public CTSDCategory getCatArray(int i) {
        CTSDCategory cTSDCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTSDCategory = (CTSDCategory) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSDCategory == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSDCategory;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories
    public void setCatArray(int i, CTSDCategory cTSDCategory) {
        generatedSetterHelperImpl(cTSDCategory, PROPERTY_QNAME[0], i, (short) 2);
    }
}
