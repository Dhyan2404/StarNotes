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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnDocProps;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdnSepRef;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTFtnDocPropsImpl;

/* loaded from: classes16.dex */
public class CTFtnDocPropsImpl extends CTFtnPropsImpl implements CTFtnDocProps {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, Constants.ID_FOOT_NOTE)};
    private static final long serialVersionUID = 1;

    public CTFtnDocPropsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnDocProps
    public CTFtnEdnSepRef addNewFootnote() {
        CTFtnEdnSepRef cTFtnEdnSepRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnSepRef = (CTFtnEdnSepRef) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFtnEdnSepRef;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnDocProps
    public CTFtnEdnSepRef[] getFootnoteArray() {
        return (CTFtnEdnSepRef[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFtnEdnSepRef[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnDocProps
    public List<CTFtnEdnSepRef> getFootnoteList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.u24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnDocPropsImpl.this.getFootnoteArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v24
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnDocPropsImpl.this.setFootnoteArray(((Integer) obj).intValue(), (CTFtnEdnSepRef) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnDocPropsImpl.this.insertNewFootnote(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.x24
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnDocPropsImpl.this.removeFootnote(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.y24
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnDocPropsImpl.this.sizeOfFootnoteArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnDocProps
    public CTFtnEdnSepRef insertNewFootnote(int i) {
        CTFtnEdnSepRef cTFtnEdnSepRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnSepRef = (CTFtnEdnSepRef) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFtnEdnSepRef;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnDocProps
    public void removeFootnote(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnDocProps
    public void setFootnoteArray(CTFtnEdnSepRef[] cTFtnEdnSepRefArr) {
        check_orphaned();
        arraySetterHelper(cTFtnEdnSepRefArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnDocProps
    public int sizeOfFootnoteArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnDocProps
    public CTFtnEdnSepRef getFootnoteArray(int i) {
        CTFtnEdnSepRef cTFtnEdnSepRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnSepRef = (CTFtnEdnSepRef) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTFtnEdnSepRef == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFtnEdnSepRef;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnDocProps
    public void setFootnoteArray(int i, CTFtnEdnSepRef cTFtnEdnSepRef) {
        generatedSetterHelperImpl(cTFtnEdnSepRef, PROPERTY_QNAME[0], i, (short) 2);
    }
}
