package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.CommentEntryType;
import com.microsoft.schemas.office.visio.x2012.main.CommentListType;
import com.microsoft.schemas.office.visio.x2012.main.impl.CommentListTypeImpl;
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
public class CommentListTypeImpl extends XmlComplexContentImpl implements CommentListType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "CommentEntry")};
    private static final long serialVersionUID = 1;

    public CommentListTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentListType
    public CommentEntryType addNewCommentEntry() {
        CommentEntryType commentEntryType;
        synchronized (monitor()) {
            check_orphaned();
            commentEntryType = (CommentEntryType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return commentEntryType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentListType
    public CommentEntryType[] getCommentEntryArray() {
        return (CommentEntryType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CommentEntryType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentListType
    public List<CommentEntryType> getCommentEntryList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e4e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CommentListTypeImpl.this.getCommentEntryArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f4e
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CommentListTypeImpl.this.setCommentEntryArray(((Integer) obj).intValue(), (CommentEntryType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g4e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CommentListTypeImpl.this.insertNewCommentEntry(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h4e
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CommentListTypeImpl.this.removeCommentEntry(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i4e
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CommentListTypeImpl.this.sizeOfCommentEntryArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentListType
    public CommentEntryType insertNewCommentEntry(int i) {
        CommentEntryType commentEntryType;
        synchronized (monitor()) {
            check_orphaned();
            commentEntryType = (CommentEntryType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return commentEntryType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentListType
    public void removeCommentEntry(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentListType
    public void setCommentEntryArray(CommentEntryType[] commentEntryTypeArr) {
        check_orphaned();
        arraySetterHelper(commentEntryTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentListType
    public int sizeOfCommentEntryArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentListType
    public CommentEntryType getCommentEntryArray(int i) {
        CommentEntryType commentEntryType;
        synchronized (monitor()) {
            check_orphaned();
            commentEntryType = (CommentEntryType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (commentEntryType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return commentEntryType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentListType
    public void setCommentEntryArray(int i, CommentEntryType commentEntryType) {
        generatedSetterHelperImpl(commentEntryType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
