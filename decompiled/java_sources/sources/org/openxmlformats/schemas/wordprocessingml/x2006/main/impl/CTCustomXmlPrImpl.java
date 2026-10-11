package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTCustomXmlPrImpl;

/* loaded from: classes16.dex */
public class CTCustomXmlPrImpl extends XmlComplexContentImpl implements CTCustomXmlPr {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, IStyleSheet.CLASS_PLACEHOLDER), new QName(XSSFRelation.NS_WORDPROCESSINGML, "attr")};
    private static final long serialVersionUID = 1;

    public CTCustomXmlPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public CTAttr addNewAttr() {
        CTAttr cTAttr;
        synchronized (monitor()) {
            check_orphaned();
            cTAttr = (CTAttr) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAttr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public CTString addNewPlaceholder() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public CTAttr[] getAttrArray() {
        return (CTAttr[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTAttr[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public List<CTAttr> getAttrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ls2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomXmlPrImpl.this.getAttrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ms2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCustomXmlPrImpl.this.setAttrArray(((Integer) obj).intValue(), (CTAttr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ns2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomXmlPrImpl.this.insertNewAttr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.os2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCustomXmlPrImpl.this.removeAttr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ps2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCustomXmlPrImpl.this.sizeOfAttrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public CTString getPlaceholder() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public CTAttr insertNewAttr(int i) {
        CTAttr cTAttr;
        synchronized (monitor()) {
            check_orphaned();
            cTAttr = (CTAttr) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTAttr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public boolean isSetPlaceholder() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public void removeAttr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public void setAttrArray(CTAttr[] cTAttrArr) {
        check_orphaned();
        arraySetterHelper(cTAttrArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public void setPlaceholder(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public int sizeOfAttrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public void unsetPlaceholder() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public CTAttr getAttrArray(int i) {
        CTAttr cTAttr;
        synchronized (monitor()) {
            check_orphaned();
            cTAttr = (CTAttr) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTAttr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAttr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlPr
    public void setAttrArray(int i, CTAttr cTAttr) {
        generatedSetterHelperImpl(cTAttr, PROPERTY_QNAME[1], i, (short) 2);
    }
}
