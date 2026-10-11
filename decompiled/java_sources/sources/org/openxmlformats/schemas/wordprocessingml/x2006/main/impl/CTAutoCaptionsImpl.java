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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaption;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTAutoCaptionsImpl;

/* loaded from: classes16.dex */
public class CTAutoCaptionsImpl extends XmlComplexContentImpl implements CTAutoCaptions {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "autoCaption")};
    private static final long serialVersionUID = 1;

    public CTAutoCaptionsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions
    public CTAutoCaption addNewAutoCaption() {
        CTAutoCaption cTAutoCaption;
        synchronized (monitor()) {
            check_orphaned();
            cTAutoCaption = (CTAutoCaption) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAutoCaption;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions
    public CTAutoCaption[] getAutoCaptionArray() {
        return (CTAutoCaption[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAutoCaption[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions
    public List<CTAutoCaption> getAutoCaptionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nj0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAutoCaptionsImpl.this.getAutoCaptionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oj0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAutoCaptionsImpl.this.setAutoCaptionArray(((Integer) obj).intValue(), (CTAutoCaption) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pj0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAutoCaptionsImpl.this.insertNewAutoCaption(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qj0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAutoCaptionsImpl.this.removeAutoCaption(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rj0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAutoCaptionsImpl.this.sizeOfAutoCaptionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions
    public CTAutoCaption insertNewAutoCaption(int i) {
        CTAutoCaption cTAutoCaption;
        synchronized (monitor()) {
            check_orphaned();
            cTAutoCaption = (CTAutoCaption) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAutoCaption;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions
    public void removeAutoCaption(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions
    public void setAutoCaptionArray(CTAutoCaption[] cTAutoCaptionArr) {
        check_orphaned();
        arraySetterHelper(cTAutoCaptionArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions
    public int sizeOfAutoCaptionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions
    public CTAutoCaption getAutoCaptionArray(int i) {
        CTAutoCaption cTAutoCaption;
        synchronized (monitor()) {
            check_orphaned();
            cTAutoCaption = (CTAutoCaption) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTAutoCaption == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAutoCaption;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions
    public void setAutoCaptionArray(int i, CTAutoCaption cTAutoCaption) {
        generatedSetterHelperImpl(cTAutoCaption, PROPERTY_QNAME[0], i, (short) 2);
    }
}
