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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetView;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetViews;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCustomChartsheetViewsImpl;

/* loaded from: classes15.dex */
public class CTCustomChartsheetViewsImpl extends XmlComplexContentImpl implements CTCustomChartsheetViews {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "customSheetView")};
    private static final long serialVersionUID = 1;

    public CTCustomChartsheetViewsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetViews
    public CTCustomChartsheetView addNewCustomSheetView() {
        CTCustomChartsheetView cTCustomChartsheetView;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomChartsheetView = (CTCustomChartsheetView) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCustomChartsheetView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetViews
    public CTCustomChartsheetView[] getCustomSheetViewArray() {
        return (CTCustomChartsheetView[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCustomChartsheetView[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetViews
    public List<CTCustomChartsheetView> getCustomSheetViewList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dg2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomChartsheetViewsImpl.this.getCustomSheetViewArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.eg2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCustomChartsheetViewsImpl.this.setCustomSheetViewArray(((Integer) obj).intValue(), (CTCustomChartsheetView) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fg2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomChartsheetViewsImpl.this.insertNewCustomSheetView(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gg2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCustomChartsheetViewsImpl.this.removeCustomSheetView(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hg2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCustomChartsheetViewsImpl.this.sizeOfCustomSheetViewArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetViews
    public CTCustomChartsheetView insertNewCustomSheetView(int i) {
        CTCustomChartsheetView cTCustomChartsheetView;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomChartsheetView = (CTCustomChartsheetView) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCustomChartsheetView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetViews
    public void removeCustomSheetView(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetViews
    public void setCustomSheetViewArray(CTCustomChartsheetView[] cTCustomChartsheetViewArr) {
        check_orphaned();
        arraySetterHelper(cTCustomChartsheetViewArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetViews
    public int sizeOfCustomSheetViewArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetViews
    public CTCustomChartsheetView getCustomSheetViewArray(int i) {
        CTCustomChartsheetView cTCustomChartsheetView;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomChartsheetView = (CTCustomChartsheetView) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCustomChartsheetView == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomChartsheetView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomChartsheetViews
    public void setCustomSheetViewArray(int i, CTCustomChartsheetView cTCustomChartsheetView) {
        generatedSetterHelperImpl(cTCustomChartsheetView, PROPERTY_QNAME[0], i, (short) 2);
    }
}
