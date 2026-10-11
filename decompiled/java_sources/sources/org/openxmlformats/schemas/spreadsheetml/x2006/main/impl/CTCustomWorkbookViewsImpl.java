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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookView;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookViews;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCustomWorkbookViewsImpl;

/* loaded from: classes15.dex */
public class CTCustomWorkbookViewsImpl extends XmlComplexContentImpl implements CTCustomWorkbookViews {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "customWorkbookView")};
    private static final long serialVersionUID = 1;

    public CTCustomWorkbookViewsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookViews
    public CTCustomWorkbookView addNewCustomWorkbookView() {
        CTCustomWorkbookView cTCustomWorkbookView;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomWorkbookView = (CTCustomWorkbookView) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCustomWorkbookView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookViews
    public CTCustomWorkbookView[] getCustomWorkbookViewArray() {
        return (CTCustomWorkbookView[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCustomWorkbookView[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookViews
    public List<CTCustomWorkbookView> getCustomWorkbookViewList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hh2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomWorkbookViewsImpl.this.getCustomWorkbookViewArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ih2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCustomWorkbookViewsImpl.this.setCustomWorkbookViewArray(((Integer) obj).intValue(), (CTCustomWorkbookView) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jh2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomWorkbookViewsImpl.this.insertNewCustomWorkbookView(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kh2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCustomWorkbookViewsImpl.this.removeCustomWorkbookView(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lh2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCustomWorkbookViewsImpl.this.sizeOfCustomWorkbookViewArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookViews
    public CTCustomWorkbookView insertNewCustomWorkbookView(int i) {
        CTCustomWorkbookView cTCustomWorkbookView;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomWorkbookView = (CTCustomWorkbookView) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCustomWorkbookView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookViews
    public void removeCustomWorkbookView(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookViews
    public void setCustomWorkbookViewArray(CTCustomWorkbookView[] cTCustomWorkbookViewArr) {
        check_orphaned();
        arraySetterHelper(cTCustomWorkbookViewArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookViews
    public int sizeOfCustomWorkbookViewArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookViews
    public CTCustomWorkbookView getCustomWorkbookViewArray(int i) {
        CTCustomWorkbookView cTCustomWorkbookView;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomWorkbookView = (CTCustomWorkbookView) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCustomWorkbookView == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomWorkbookView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomWorkbookViews
    public void setCustomWorkbookViewArray(int i, CTCustomWorkbookView cTCustomWorkbookView) {
        generatedSetterHelperImpl(cTCustomWorkbookView, PROPERTY_QNAME[0], i, (short) 2);
    }
}
