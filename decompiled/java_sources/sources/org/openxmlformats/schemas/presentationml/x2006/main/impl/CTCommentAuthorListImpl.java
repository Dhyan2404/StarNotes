package org.openxmlformats.schemas.presentationml.x2006.main.impl;

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
import org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthor;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTCommentAuthorListImpl;

/* loaded from: classes14.dex */
public class CTCommentAuthorListImpl extends XmlComplexContentImpl implements CTCommentAuthorList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cmAuthor")};
    private static final long serialVersionUID = 1;

    public CTCommentAuthorListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList
    public CTCommentAuthor addNewCmAuthor() {
        CTCommentAuthor cTCommentAuthor;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentAuthor = (CTCommentAuthor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCommentAuthor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList
    public CTCommentAuthor[] getCmAuthorArray() {
        return (CTCommentAuthor[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCommentAuthor[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList
    public List<CTCommentAuthor> getCmAuthorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g32
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCommentAuthorListImpl.this.getCmAuthorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h32
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCommentAuthorListImpl.this.setCmAuthorArray(((Integer) obj).intValue(), (CTCommentAuthor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i32
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCommentAuthorListImpl.this.insertNewCmAuthor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j32
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCommentAuthorListImpl.this.removeCmAuthor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k32
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCommentAuthorListImpl.this.sizeOfCmAuthorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList
    public CTCommentAuthor insertNewCmAuthor(int i) {
        CTCommentAuthor cTCommentAuthor;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentAuthor = (CTCommentAuthor) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCommentAuthor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList
    public void removeCmAuthor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList
    public void setCmAuthorArray(CTCommentAuthor[] cTCommentAuthorArr) {
        check_orphaned();
        arraySetterHelper(cTCommentAuthorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList
    public int sizeOfCmAuthorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList
    public CTCommentAuthor getCmAuthorArray(int i) {
        CTCommentAuthor cTCommentAuthor;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentAuthor = (CTCommentAuthor) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCommentAuthor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCommentAuthor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList
    public void setCmAuthorArray(int i, CTCommentAuthor cTCommentAuthor) {
        generatedSetterHelperImpl(cTCommentAuthor, PROPERTY_QNAME[0], i, (short) 2);
    }
}
