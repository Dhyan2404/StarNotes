package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabStop;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabs;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTTabsImpl;

/* loaded from: classes16.dex */
public class CTTabsImpl extends XmlComplexContentImpl implements CTTabs {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "tab")};
    private static final long serialVersionUID = 1;

    public CTTabsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabs
    public CTTabStop addNewTab() {
        CTTabStop cTTabStop;
        synchronized (monitor()) {
            check_orphaned();
            cTTabStop = (CTTabStop) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTabStop;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabs
    public CTTabStop[] getTabArray() {
        return (CTTabStop[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTabStop[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabs
    public List<CTTabStop> getTabList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.efc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTabsImpl.this.getTabArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ffc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTabsImpl.this.setTabArray(((Integer) obj).intValue(), (CTTabStop) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gfc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTabsImpl.this.insertNewTab(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hfc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTabsImpl.this.removeTab(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ifc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTabsImpl.this.sizeOfTabArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabs
    public CTTabStop insertNewTab(int i) {
        CTTabStop cTTabStop;
        synchronized (monitor()) {
            check_orphaned();
            cTTabStop = (CTTabStop) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTabStop;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabs
    public void removeTab(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabs
    public void setTabArray(CTTabStop[] cTTabStopArr) {
        check_orphaned();
        arraySetterHelper(cTTabStopArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabs
    public int sizeOfTabArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabs
    public CTTabStop getTabArray(int i) {
        CTTabStop cTTabStop;
        synchronized (monitor()) {
            check_orphaned();
            cTTabStop = (CTTabStop) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTabStop == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTabStop;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabs
    public void setTabArray(int i, CTTabStop cTTabStop) {
        generatedSetterHelperImpl(cTTabStop, PROPERTY_QNAME[0], i, (short) 2);
    }
}
