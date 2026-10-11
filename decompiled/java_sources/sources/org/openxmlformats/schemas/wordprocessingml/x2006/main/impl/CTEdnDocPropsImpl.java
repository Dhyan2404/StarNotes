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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnDocProps;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdnSepRef;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTEdnDocPropsImpl;

/* loaded from: classes16.dex */
public class CTEdnDocPropsImpl extends CTEdnPropsImpl implements CTEdnDocProps {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, Constants.ID_END_NOTE)};
    private static final long serialVersionUID = 1;

    public CTEdnDocPropsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnDocProps
    public CTFtnEdnSepRef addNewEndnote() {
        CTFtnEdnSepRef cTFtnEdnSepRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnSepRef = (CTFtnEdnSepRef) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFtnEdnSepRef;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnDocProps
    public CTFtnEdnSepRef[] getEndnoteArray() {
        return (CTFtnEdnSepRef[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFtnEdnSepRef[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnDocProps
    public List<CTFtnEdnSepRef> getEndnoteList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jj3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEdnDocPropsImpl.this.getEndnoteArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kj3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEdnDocPropsImpl.this.setEndnoteArray(((Integer) obj).intValue(), (CTFtnEdnSepRef) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lj3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEdnDocPropsImpl.this.insertNewEndnote(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mj3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEdnDocPropsImpl.this.removeEndnote(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nj3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEdnDocPropsImpl.this.sizeOfEndnoteArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnDocProps
    public CTFtnEdnSepRef insertNewEndnote(int i) {
        CTFtnEdnSepRef cTFtnEdnSepRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnSepRef = (CTFtnEdnSepRef) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFtnEdnSepRef;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnDocProps
    public void removeEndnote(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnDocProps
    public void setEndnoteArray(CTFtnEdnSepRef[] cTFtnEdnSepRefArr) {
        check_orphaned();
        arraySetterHelper(cTFtnEdnSepRefArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnDocProps
    public int sizeOfEndnoteArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnDocProps
    public CTFtnEdnSepRef getEndnoteArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnDocProps
    public void setEndnoteArray(int i, CTFtnEdnSepRef cTFtnEdnSepRef) {
        generatedSetterHelperImpl(cTFtnEdnSepRef, PROPERTY_QNAME[0], i, (short) 2);
    }
}
