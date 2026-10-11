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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAttr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTSmartTagPrImpl;

/* loaded from: classes16.dex */
public class CTSmartTagPrImpl extends XmlComplexContentImpl implements CTSmartTagPr {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "attr")};
    private static final long serialVersionUID = 1;

    public CTSmartTagPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagPr
    public CTAttr addNewAttr() {
        CTAttr cTAttr;
        synchronized (monitor()) {
            check_orphaned();
            cTAttr = (CTAttr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAttr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagPr
    public CTAttr[] getAttrArray() {
        return (CTAttr[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAttr[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagPr
    public List<CTAttr> getAttrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ybb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSmartTagPrImpl.this.getAttrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zbb
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSmartTagPrImpl.this.setAttrArray(((Integer) obj).intValue(), (CTAttr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.acb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSmartTagPrImpl.this.insertNewAttr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bcb
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSmartTagPrImpl.this.removeAttr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ccb
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSmartTagPrImpl.this.sizeOfAttrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagPr
    public CTAttr insertNewAttr(int i) {
        CTAttr cTAttr;
        synchronized (monitor()) {
            check_orphaned();
            cTAttr = (CTAttr) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAttr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagPr
    public void removeAttr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagPr
    public void setAttrArray(CTAttr[] cTAttrArr) {
        check_orphaned();
        arraySetterHelper(cTAttrArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagPr
    public int sizeOfAttrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagPr
    public CTAttr getAttrArray(int i) {
        CTAttr cTAttr;
        synchronized (monitor()) {
            check_orphaned();
            cTAttr = (CTAttr) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTAttr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAttr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagPr
    public void setAttrArray(int i, CTAttr cTAttr) {
        generatedSetterHelperImpl(cTAttr, PROPERTY_QNAME[0], i, (short) 2);
    }
}
