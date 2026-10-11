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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetView;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTChartsheetViewsImpl;

/* loaded from: classes15.dex */
public class CTChartsheetViewsImpl extends XmlComplexContentImpl implements CTChartsheetViews {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "sheetView"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTChartsheetViewsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public CTChartsheetView addNewSheetView() {
        CTChartsheetView cTChartsheetView;
        synchronized (monitor()) {
            check_orphaned();
            cTChartsheetView = (CTChartsheetView) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTChartsheetView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public CTChartsheetView[] getSheetViewArray() {
        return (CTChartsheetView[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTChartsheetView[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public List<CTChartsheetView> getSheetViewList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y71
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTChartsheetViewsImpl.this.getSheetViewArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z71
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTChartsheetViewsImpl.this.setSheetViewArray(((Integer) obj).intValue(), (CTChartsheetView) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a81
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTChartsheetViewsImpl.this.insertNewSheetView(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b81
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTChartsheetViewsImpl.this.removeSheetView(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c81
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTChartsheetViewsImpl.this.sizeOfSheetViewArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public CTChartsheetView insertNewSheetView(int i) {
        CTChartsheetView cTChartsheetView;
        synchronized (monitor()) {
            check_orphaned();
            cTChartsheetView = (CTChartsheetView) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTChartsheetView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public void removeSheetView(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public void setSheetViewArray(CTChartsheetView[] cTChartsheetViewArr) {
        check_orphaned();
        arraySetterHelper(cTChartsheetViewArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public int sizeOfSheetViewArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public CTChartsheetView getSheetViewArray(int i) {
        CTChartsheetView cTChartsheetView;
        synchronized (monitor()) {
            check_orphaned();
            cTChartsheetView = (CTChartsheetView) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTChartsheetView == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTChartsheetView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartsheetViews
    public void setSheetViewArray(int i, CTChartsheetView cTChartsheetView) {
        generatedSetterHelperImpl(cTChartsheetView, PROPERTY_QNAME[0], i, (short) 2);
    }
}
