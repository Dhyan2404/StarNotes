package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.sunia.HTREnginev2.gon;
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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDiv;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTDivsImpl;

/* loaded from: classes16.dex */
public class CTDivsImpl extends XmlComplexContentImpl implements CTDivs {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, gon.f71293q)};
    private static final long serialVersionUID = 1;

    public CTDivsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs
    public CTDiv addNewDiv() {
        CTDiv cTDiv;
        synchronized (monitor()) {
            check_orphaned();
            cTDiv = (CTDiv) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDiv;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs
    public CTDiv[] getDivArray() {
        return (CTDiv[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDiv[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs
    public List<CTDiv> getDivList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.if3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDivsImpl.this.getDivArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jf3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDivsImpl.this.setDivArray(((Integer) obj).intValue(), (CTDiv) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kf3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDivsImpl.this.insertNewDiv(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lf3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDivsImpl.this.removeDiv(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mf3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDivsImpl.this.sizeOfDivArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs
    public CTDiv insertNewDiv(int i) {
        CTDiv cTDiv;
        synchronized (monitor()) {
            check_orphaned();
            cTDiv = (CTDiv) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDiv;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs
    public void removeDiv(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs
    public void setDivArray(CTDiv[] cTDivArr) {
        check_orphaned();
        arraySetterHelper(cTDivArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs
    public int sizeOfDivArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs
    public CTDiv getDivArray(int i) {
        CTDiv cTDiv;
        synchronized (monitor()) {
            check_orphaned();
            cTDiv = (CTDiv) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDiv == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDiv;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs
    public void setDivArray(int i, CTDiv cTDiv) {
        generatedSetterHelperImpl(cTDiv, PROPERTY_QNAME[0], i, (short) 2);
    }
}
