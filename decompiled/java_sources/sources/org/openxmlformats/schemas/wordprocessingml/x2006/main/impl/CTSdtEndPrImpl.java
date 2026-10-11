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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTSdtEndPrImpl;

/* loaded from: classes16.dex */
public class CTSdtEndPrImpl extends XmlComplexContentImpl implements CTSdtEndPr {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "rPr")};
    private static final long serialVersionUID = 1;

    public CTSdtEndPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr
    public CTRPr addNewRPr() {
        CTRPr cTRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTRPr = (CTRPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr
    public CTRPr[] getRPrArray() {
        return (CTRPr[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTRPr[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr
    public List<CTRPr> getRPrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zqa
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSdtEndPrImpl.this.getRPrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ara
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSdtEndPrImpl.this.setRPrArray(((Integer) obj).intValue(), (CTRPr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bra
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSdtEndPrImpl.this.insertNewRPr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cra
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSdtEndPrImpl.this.removeRPr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dra
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSdtEndPrImpl.this.sizeOfRPrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr
    public CTRPr insertNewRPr(int i) {
        CTRPr cTRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTRPr = (CTRPr) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTRPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr
    public void removeRPr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr
    public void setRPrArray(CTRPr[] cTRPrArr) {
        check_orphaned();
        arraySetterHelper(cTRPrArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr
    public int sizeOfRPrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr
    public CTRPr getRPrArray(int i) {
        CTRPr cTRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTRPr = (CTRPr) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTRPr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr
    public void setRPrArray(int i, CTRPr cTRPr) {
        generatedSetterHelperImpl(cTRPr, PROPERTY_QNAME[0], i, (short) 2);
    }
}
