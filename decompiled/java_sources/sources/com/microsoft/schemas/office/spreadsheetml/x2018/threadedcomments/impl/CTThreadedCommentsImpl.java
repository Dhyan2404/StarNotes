package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.impl;

import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComment;
import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments;
import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.impl.CTThreadedCommentsImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;

/* loaded from: classes7.dex */
public class CTThreadedCommentsImpl extends XmlComplexContentImpl implements CTThreadedComments {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/spreadsheetml/2018/threadedcomments", "threadedComment"), new QName("http://schemas.microsoft.com/office/spreadsheetml/2018/threadedcomments", "extLst")};
    private static final long serialVersionUID = 1;

    public CTThreadedCommentsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTExtensionList;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public CTThreadedComment addNewThreadedComment() {
        CTThreadedComment cTThreadedComment;
        synchronized (monitor()) {
            check_orphaned();
            cTThreadedComment = (CTThreadedComment) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTThreadedComment;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public CTThreadedComment[] getThreadedCommentArray() {
        return (CTThreadedComment[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTThreadedComment[0]);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public List<CTThreadedComment> getThreadedCommentList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lsc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTThreadedCommentsImpl.this.getThreadedCommentArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.msc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTThreadedCommentsImpl.this.setThreadedCommentArray(((Integer) obj).intValue(), (CTThreadedComment) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nsc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTThreadedCommentsImpl.this.insertNewThreadedComment(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.osc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTThreadedCommentsImpl.this.removeThreadedComment(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.psc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTThreadedCommentsImpl.this.sizeOfThreadedCommentArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public CTThreadedComment insertNewThreadedComment(int i) {
        CTThreadedComment cTThreadedComment;
        synchronized (monitor()) {
            check_orphaned();
            cTThreadedComment = (CTThreadedComment) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTThreadedComment;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public boolean isSetExtLst() {
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

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public void removeThreadedComment(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public void setThreadedCommentArray(CTThreadedComment[] cTThreadedCommentArr) {
        check_orphaned();
        arraySetterHelper(cTThreadedCommentArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public int sizeOfThreadedCommentArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public CTThreadedComment getThreadedCommentArray(int i) {
        CTThreadedComment cTThreadedComment;
        synchronized (monitor()) {
            check_orphaned();
            cTThreadedComment = (CTThreadedComment) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTThreadedComment == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTThreadedComment;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments
    public void setThreadedCommentArray(int i, CTThreadedComment cTThreadedComment) {
        generatedSetterHelperImpl(cTThreadedComment, PROPERTY_QNAME[0], i, (short) 2);
    }
}
