package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCommentList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCommentListImpl;

/* loaded from: classes15.dex */
public class CTCommentListImpl extends XmlComplexContentImpl implements CTCommentList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "comment")};
    private static final long serialVersionUID = 1;

    public CTCommentListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCommentList
    public CTComment addNewComment() {
        CTComment cTComment;
        synchronized (monitor()) {
            check_orphaned();
            cTComment = (CTComment) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTComment;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCommentList
    public CTComment[] getCommentArray() {
        return (CTComment[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTComment[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCommentList
    public List<CTComment> getCommentList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f92
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCommentListImpl.this.getCommentArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h92
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCommentListImpl.this.setCommentArray(((Integer) obj).intValue(), (CTComment) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j92
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCommentListImpl.this.insertNewComment(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l92
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCommentListImpl.this.removeComment(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n92
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCommentListImpl.this.sizeOfCommentArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCommentList
    public CTComment insertNewComment(int i) {
        CTComment cTComment;
        synchronized (monitor()) {
            check_orphaned();
            cTComment = (CTComment) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTComment;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCommentList
    public void removeComment(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCommentList
    public void setCommentArray(CTComment[] cTCommentArr) {
        check_orphaned();
        arraySetterHelper(cTCommentArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCommentList
    public int sizeOfCommentArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCommentList
    public CTComment getCommentArray(int i) {
        CTComment cTComment;
        synchronized (monitor()) {
            check_orphaned();
            cTComment = (CTComment) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTComment == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTComment;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCommentList
    public void setCommentArray(int i, CTComment cTComment) {
        generatedSetterHelperImpl(cTComment, PROPERTY_QNAME[0], i, (short) 2);
    }
}
