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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetView;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTSheetViewsImpl;

/* loaded from: classes15.dex */
public class CTSheetViewsImpl extends XmlComplexContentImpl implements CTSheetViews {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "sheetView"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTSheetViewsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public CTSheetView addNewSheetView() {
        CTSheetView cTSheetView;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetView = (CTSheetView) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSheetView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public CTSheetView[] getSheetViewArray() {
        return (CTSheetView[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSheetView[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public List<CTSheetView> getSheetViewList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b4b
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSheetViewsImpl.this.getSheetViewArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c4b
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSheetViewsImpl.this.setSheetViewArray(((Integer) obj).intValue(), (CTSheetView) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d4b
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSheetViewsImpl.this.insertNewSheetView(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e4b
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSheetViewsImpl.this.removeSheetView(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.f4b
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSheetViewsImpl.this.sizeOfSheetViewArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public CTSheetView insertNewSheetView(int i) {
        CTSheetView cTSheetView;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetView = (CTSheetView) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSheetView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public void removeSheetView(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public void setSheetViewArray(CTSheetView[] cTSheetViewArr) {
        check_orphaned();
        arraySetterHelper(cTSheetViewArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public int sizeOfSheetViewArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public CTSheetView getSheetViewArray(int i) {
        CTSheetView cTSheetView;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetView = (CTSheetView) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSheetView == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSheetView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews
    public void setSheetViewArray(int i, CTSheetView cTSheetView) {
        generatedSetterHelperImpl(cTSheetView, PROPERTY_QNAME[0], i, (short) 2);
    }
}
