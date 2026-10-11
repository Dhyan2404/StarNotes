package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import java.math.BigInteger;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivBdr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSignedTwipsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTDivImpl;

/* loaded from: classes16.dex */
public class CTDivImpl extends XmlComplexContentImpl implements CTDiv {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "blockQuote"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bodyDiv"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "marLeft"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "marRight"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "marTop"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "marBottom"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "divBdr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "divsChild"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "id")};
    private static final long serialVersionUID = 1;

    public CTDivImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTOnOff addNewBlockQuote() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTOnOff addNewBodyDiv() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTDivBdr addNewDivBdr() {
        CTDivBdr cTDivBdr;
        synchronized (monitor()) {
            check_orphaned();
            cTDivBdr = (CTDivBdr) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTDivBdr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTDivs addNewDivsChild() {
        CTDivs cTDivs;
        synchronized (monitor()) {
            check_orphaned();
            cTDivs = (CTDivs) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTDivs;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTSignedTwipsMeasure addNewMarBottom() {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTSignedTwipsMeasure addNewMarLeft() {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTSignedTwipsMeasure addNewMarRight() {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTSignedTwipsMeasure addNewMarTop() {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTOnOff getBlockQuote() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTOnOff getBodyDiv() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTDivBdr getDivBdr() {
        CTDivBdr cTDivBdr;
        synchronized (monitor()) {
            check_orphaned();
            cTDivBdr = (CTDivBdr) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTDivBdr == null) {
                cTDivBdr = null;
            }
        }
        return cTDivBdr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTDivs[] getDivsChildArray() {
        return (CTDivs[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTDivs[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public List<CTDivs> getDivsChildList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.df3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDivImpl.this.getDivsChildArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ef3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDivImpl.this.setDivsChildArray(((Integer) obj).intValue(), (CTDivs) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ff3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDivImpl.this.insertNewDivsChild(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gf3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDivImpl.this.removeDivsChild(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hf3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDivImpl.this.sizeOfDivsChildArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public BigInteger getId() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTSignedTwipsMeasure getMarBottom() {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTSignedTwipsMeasure == null) {
                cTSignedTwipsMeasure = null;
            }
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTSignedTwipsMeasure getMarLeft() {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTSignedTwipsMeasure == null) {
                cTSignedTwipsMeasure = null;
            }
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTSignedTwipsMeasure getMarRight() {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTSignedTwipsMeasure == null) {
                cTSignedTwipsMeasure = null;
            }
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTSignedTwipsMeasure getMarTop() {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTSignedTwipsMeasure == null) {
                cTSignedTwipsMeasure = null;
            }
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTDivs insertNewDivsChild(int i) {
        CTDivs cTDivs;
        synchronized (monitor()) {
            check_orphaned();
            cTDivs = (CTDivs) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTDivs;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public boolean isSetBlockQuote() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public boolean isSetBodyDiv() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public boolean isSetDivBdr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void removeDivsChild(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void setBlockQuote(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void setBodyDiv(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void setDivBdr(CTDivBdr cTDivBdr) {
        generatedSetterHelperImpl(cTDivBdr, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void setDivsChildArray(CTDivs[] cTDivsArr) {
        check_orphaned();
        arraySetterHelper(cTDivsArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void setId(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void setMarBottom(CTSignedTwipsMeasure cTSignedTwipsMeasure) {
        generatedSetterHelperImpl(cTSignedTwipsMeasure, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void setMarLeft(CTSignedTwipsMeasure cTSignedTwipsMeasure) {
        generatedSetterHelperImpl(cTSignedTwipsMeasure, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void setMarRight(CTSignedTwipsMeasure cTSignedTwipsMeasure) {
        generatedSetterHelperImpl(cTSignedTwipsMeasure, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void setMarTop(CTSignedTwipsMeasure cTSignedTwipsMeasure) {
        generatedSetterHelperImpl(cTSignedTwipsMeasure, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public int sizeOfDivsChildArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void unsetBlockQuote() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void unsetBodyDiv() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void unsetDivBdr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public STDecimalNumber xgetId() {
        STDecimalNumber sTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTDecimalNumber = (STDecimalNumber) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return sTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void xsetId(STDecimalNumber sTDecimalNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDecimalNumber sTDecimalNumber2 = (STDecimalNumber) typeStore.find_attribute_user(qNameArr[8]);
            if (sTDecimalNumber2 == null) {
                sTDecimalNumber2 = (STDecimalNumber) get_store().add_attribute_user(qNameArr[8]);
            }
            sTDecimalNumber2.set(sTDecimalNumber);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public CTDivs getDivsChildArray(int i) {
        CTDivs cTDivs;
        synchronized (monitor()) {
            check_orphaned();
            cTDivs = (CTDivs) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTDivs == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDivs;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv
    public void setDivsChildArray(int i, CTDivs cTDivs) {
        generatedSetterHelperImpl(cTDivs, PROPERTY_QNAME[7], i, (short) 2);
    }
}
