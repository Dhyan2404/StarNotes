package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTFootnotesImpl;

/* loaded from: classes16.dex */
public class CTFootnotesImpl extends XmlComplexContentImpl implements CTFootnotes {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, Constants.ID_FOOT_NOTE)};
    private static final long serialVersionUID = 1;

    public CTFootnotesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes
    public CTFtnEdn addNewFootnote() {
        CTFtnEdn cTFtnEdn;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdn = (CTFtnEdn) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFtnEdn;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes
    public CTFtnEdn[] getFootnoteArray() {
        return (CTFtnEdn[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFtnEdn[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes
    public List<CTFtnEdn> getFootnoteList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c04
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFootnotesImpl.this.getFootnoteArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d04
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFootnotesImpl.this.setFootnoteArray(((Integer) obj).intValue(), (CTFtnEdn) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e04
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFootnotesImpl.this.insertNewFootnote(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f04
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFootnotesImpl.this.removeFootnote(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g04
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFootnotesImpl.this.sizeOfFootnoteArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes
    public CTFtnEdn insertNewFootnote(int i) {
        CTFtnEdn cTFtnEdn;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdn = (CTFtnEdn) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFtnEdn;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes
    public void removeFootnote(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes
    public void setFootnoteArray(CTFtnEdn[] cTFtnEdnArr) {
        check_orphaned();
        arraySetterHelper(cTFtnEdnArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes
    public int sizeOfFootnoteArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes
    public CTFtnEdn getFootnoteArray(int i) {
        CTFtnEdn cTFtnEdn;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdn = (CTFtnEdn) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTFtnEdn == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFtnEdn;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes
    public void setFootnoteArray(int i, CTFtnEdn cTFtnEdn) {
        generatedSetterHelperImpl(cTFtnEdn, PROPERTY_QNAME[0], i, (short) 2);
    }
}
