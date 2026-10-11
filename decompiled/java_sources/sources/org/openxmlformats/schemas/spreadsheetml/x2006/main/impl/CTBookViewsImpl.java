package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookView;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookViews;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTBookViewsImpl;

/* loaded from: classes15.dex */
public class CTBookViewsImpl extends XmlComplexContentImpl implements CTBookViews {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "workbookView")};
    private static final long serialVersionUID = 1;

    public CTBookViewsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookViews
    public CTBookView addNewWorkbookView() {
        CTBookView cTBookView;
        synchronized (monitor()) {
            check_orphaned();
            cTBookView = (CTBookView) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBookView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookViews
    public CTBookView[] getWorkbookViewArray() {
        return (CTBookView[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTBookView[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookViews
    public List<CTBookView> getWorkbookViewList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e21
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBookViewsImpl.this.getWorkbookViewArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f21
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBookViewsImpl.this.setWorkbookViewArray(((Integer) obj).intValue(), (CTBookView) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g21
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBookViewsImpl.this.insertNewWorkbookView(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h21
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBookViewsImpl.this.removeWorkbookView(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i21
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBookViewsImpl.this.sizeOfWorkbookViewArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookViews
    public CTBookView insertNewWorkbookView(int i) {
        CTBookView cTBookView;
        synchronized (monitor()) {
            check_orphaned();
            cTBookView = (CTBookView) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTBookView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookViews
    public void removeWorkbookView(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookViews
    public void setWorkbookViewArray(CTBookView[] cTBookViewArr) {
        check_orphaned();
        arraySetterHelper(cTBookViewArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookViews
    public int sizeOfWorkbookViewArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookViews
    public CTBookView getWorkbookViewArray(int i) {
        CTBookView cTBookView;
        synchronized (monitor()) {
            check_orphaned();
            cTBookView = (CTBookView) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTBookView == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBookView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookViews
    public void setWorkbookViewArray(int i, CTBookView cTBookView) {
        generatedSetterHelperImpl(cTBookView, PROPERTY_QNAME[0], i, (short) 2);
    }
}
