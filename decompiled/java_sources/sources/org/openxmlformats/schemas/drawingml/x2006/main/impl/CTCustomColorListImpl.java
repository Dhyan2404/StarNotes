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
import org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColorList;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTCustomColorListImpl;

/* loaded from: classes14.dex */
public class CTCustomColorListImpl extends XmlComplexContentImpl implements CTCustomColorList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "custClr")};
    private static final long serialVersionUID = 1;

    public CTCustomColorListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColorList
    public CTCustomColor addNewCustClr() {
        CTCustomColor cTCustomColor;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomColor = (CTCustomColor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCustomColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColorList
    public CTCustomColor[] getCustClrArray() {
        return (CTCustomColor[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCustomColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColorList
    public List<CTCustomColor> getCustClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ig2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomColorListImpl.this.getCustClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jg2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCustomColorListImpl.this.setCustClrArray(((Integer) obj).intValue(), (CTCustomColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kg2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomColorListImpl.this.insertNewCustClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lg2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCustomColorListImpl.this.removeCustClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mg2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCustomColorListImpl.this.sizeOfCustClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColorList
    public CTCustomColor insertNewCustClr(int i) {
        CTCustomColor cTCustomColor;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomColor = (CTCustomColor) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCustomColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColorList
    public void removeCustClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColorList
    public void setCustClrArray(CTCustomColor[] cTCustomColorArr) {
        check_orphaned();
        arraySetterHelper(cTCustomColorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColorList
    public int sizeOfCustClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColorList
    public CTCustomColor getCustClrArray(int i) {
        CTCustomColor cTCustomColor;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomColor = (CTCustomColor) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCustomColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCustomColorList
    public void setCustClrArray(int i, CTCustomColor cTCustomColor) {
        generatedSetterHelperImpl(cTCustomColor, PROPERTY_QNAME[0], i, (short) 2);
    }
}
