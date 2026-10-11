package org.openxmlformats.schemas.drawingml.x2006.main.impl;

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
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTTextTabStopListImpl;

/* loaded from: classes14.dex */
public class CTTextTabStopListImpl extends XmlComplexContentImpl implements CTTextTabStopList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "tab")};
    private static final long serialVersionUID = 1;

    public CTTextTabStopListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList
    public CTTextTabStop addNewTab() {
        CTTextTabStop cTTextTabStop;
        synchronized (monitor()) {
            check_orphaned();
            cTTextTabStop = (CTTextTabStop) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTextTabStop;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList
    public CTTextTabStop[] getTabArray() {
        return (CTTextTabStop[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTextTabStop[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList
    public List<CTTextTabStop> getTabList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wrc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTextTabStopListImpl.this.getTabArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xrc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTextTabStopListImpl.this.setTabArray(((Integer) obj).intValue(), (CTTextTabStop) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yrc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTextTabStopListImpl.this.insertNewTab(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zrc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTextTabStopListImpl.this.removeTab(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.asc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTextTabStopListImpl.this.sizeOfTabArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList
    public CTTextTabStop insertNewTab(int i) {
        CTTextTabStop cTTextTabStop;
        synchronized (monitor()) {
            check_orphaned();
            cTTextTabStop = (CTTextTabStop) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTextTabStop;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList
    public void removeTab(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList
    public void setTabArray(CTTextTabStop[] cTTextTabStopArr) {
        check_orphaned();
        arraySetterHelper(cTTextTabStopArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList
    public int sizeOfTabArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList
    public CTTextTabStop getTabArray(int i) {
        CTTextTabStop cTTextTabStop;
        synchronized (monitor()) {
            check_orphaned();
            cTTextTabStop = (CTTextTabStop) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTextTabStop == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTextTabStop;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStopList
    public void setTabArray(int i, CTTextTabStop cTTextTabStop) {
        generatedSetterHelperImpl(cTTextTabStop, PROPERTY_QNAME[0], i, (short) 2);
    }
}
