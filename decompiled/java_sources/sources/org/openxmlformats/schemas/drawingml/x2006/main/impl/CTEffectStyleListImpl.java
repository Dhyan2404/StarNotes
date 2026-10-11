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
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleItem;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleList;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTEffectStyleListImpl;

/* loaded from: classes14.dex */
public class CTEffectStyleListImpl extends XmlComplexContentImpl implements CTEffectStyleList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "effectStyle")};
    private static final long serialVersionUID = 1;

    public CTEffectStyleListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleList
    public CTEffectStyleItem addNewEffectStyle() {
        CTEffectStyleItem cTEffectStyleItem;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectStyleItem = (CTEffectStyleItem) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEffectStyleItem;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleList
    public CTEffectStyleItem[] getEffectStyleArray() {
        return (CTEffectStyleItem[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTEffectStyleItem[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleList
    public List<CTEffectStyleItem> getEffectStyleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ip3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectStyleListImpl.this.getEffectStyleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jp3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectStyleListImpl.this.setEffectStyleArray(((Integer) obj).intValue(), (CTEffectStyleItem) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kp3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectStyleListImpl.this.insertNewEffectStyle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lp3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectStyleListImpl.this.removeEffectStyle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mp3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectStyleListImpl.this.sizeOfEffectStyleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleList
    public CTEffectStyleItem insertNewEffectStyle(int i) {
        CTEffectStyleItem cTEffectStyleItem;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectStyleItem = (CTEffectStyleItem) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTEffectStyleItem;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleList
    public void removeEffectStyle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleList
    public void setEffectStyleArray(CTEffectStyleItem[] cTEffectStyleItemArr) {
        check_orphaned();
        arraySetterHelper(cTEffectStyleItemArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleList
    public int sizeOfEffectStyleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleList
    public CTEffectStyleItem getEffectStyleArray(int i) {
        CTEffectStyleItem cTEffectStyleItem;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectStyleItem = (CTEffectStyleItem) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTEffectStyleItem == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEffectStyleItem;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectStyleList
    public void setEffectStyleArray(int i, CTEffectStyleItem cTEffectStyleItem) {
        generatedSetterHelperImpl(cTEffectStyleItem, PROPERTY_QNAME[0], i, (short) 2);
    }
}
