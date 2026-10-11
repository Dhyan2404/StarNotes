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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAutoCaptions;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaption;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTCaptionsImpl;

/* loaded from: classes16.dex */
public class CTCaptionsImpl extends XmlComplexContentImpl implements CTCaptions {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "caption"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "autoCaptions")};
    private static final long serialVersionUID = 1;

    public CTCaptionsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public CTAutoCaptions addNewAutoCaptions() {
        CTAutoCaptions cTAutoCaptions;
        synchronized (monitor()) {
            check_orphaned();
            cTAutoCaptions = (CTAutoCaptions) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAutoCaptions;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public CTCaption addNewCaption() {
        CTCaption cTCaption;
        synchronized (monitor()) {
            check_orphaned();
            cTCaption = (CTCaption) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCaption;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public CTAutoCaptions getAutoCaptions() {
        CTAutoCaptions cTAutoCaptions;
        synchronized (monitor()) {
            check_orphaned();
            cTAutoCaptions = (CTAutoCaptions) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTAutoCaptions == null) {
                cTAutoCaptions = null;
            }
        }
        return cTAutoCaptions;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public CTCaption[] getCaptionArray() {
        return (CTCaption[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCaption[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public List<CTCaption> getCaptionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v51
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCaptionsImpl.this.getCaptionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.w51
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCaptionsImpl.this.setCaptionArray(((Integer) obj).intValue(), (CTCaption) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x51
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCaptionsImpl.this.insertNewCaption(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y51
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCaptionsImpl.this.removeCaption(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z51
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCaptionsImpl.this.sizeOfCaptionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public CTCaption insertNewCaption(int i) {
        CTCaption cTCaption;
        synchronized (monitor()) {
            check_orphaned();
            cTCaption = (CTCaption) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCaption;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public boolean isSetAutoCaptions() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public void removeCaption(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public void setAutoCaptions(CTAutoCaptions cTAutoCaptions) {
        generatedSetterHelperImpl(cTAutoCaptions, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public void setCaptionArray(CTCaption[] cTCaptionArr) {
        check_orphaned();
        arraySetterHelper(cTCaptionArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public int sizeOfCaptionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public void unsetAutoCaptions() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public CTCaption getCaptionArray(int i) {
        CTCaption cTCaption;
        synchronized (monitor()) {
            check_orphaned();
            cTCaption = (CTCaption) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCaption == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCaption;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCaptions
    public void setCaptionArray(int i, CTCaption cTCaption) {
        generatedSetterHelperImpl(cTCaption, PROPERTY_QNAME[0], i, (short) 2);
    }
}
