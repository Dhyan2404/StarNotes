package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.CTCommentEx;
import com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx;
import com.microsoft.schemas.office.word.x2012.wordml.impl.CTCommentsExImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTCommentsExImpl extends XmlComplexContentImpl implements CTCommentsEx {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "commentEx")};
    private static final long serialVersionUID = 1;

    public CTCommentsExImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx
    public CTCommentEx addNewCommentEx() {
        CTCommentEx cTCommentEx;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentEx = (CTCommentEx) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCommentEx;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx
    public CTCommentEx[] getCommentExArray() {
        return (CTCommentEx[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCommentEx[0]);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx
    public List<CTCommentEx> getCommentExList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p92
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCommentsExImpl.this.getCommentExArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q92
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCommentsExImpl.this.setCommentExArray(((Integer) obj).intValue(), (CTCommentEx) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r92
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCommentsExImpl.this.insertNewCommentEx(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s92
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCommentsExImpl.this.removeCommentEx(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t92
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCommentsExImpl.this.sizeOfCommentExArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx
    public CTCommentEx insertNewCommentEx(int i) {
        CTCommentEx cTCommentEx;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentEx = (CTCommentEx) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCommentEx;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx
    public void removeCommentEx(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx
    public void setCommentExArray(CTCommentEx[] cTCommentExArr) {
        check_orphaned();
        arraySetterHelper(cTCommentExArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx
    public int sizeOfCommentExArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx
    public CTCommentEx getCommentExArray(int i) {
        CTCommentEx cTCommentEx;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentEx = (CTCommentEx) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCommentEx == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCommentEx;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx
    public void setCommentExArray(int i, CTCommentEx cTCommentEx) {
        generatedSetterHelperImpl(cTCommentEx, PROPERTY_QNAME[0], i, (short) 2);
    }
}
