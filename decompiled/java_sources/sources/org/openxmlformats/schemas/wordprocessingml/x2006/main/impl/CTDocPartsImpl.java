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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTDocPartsImpl;

/* loaded from: classes16.dex */
public class CTDocPartsImpl extends XmlComplexContentImpl implements CTDocParts {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "docPart")};
    private static final long serialVersionUID = 1;

    public CTDocPartsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts
    public CTDocPart addNewDocPart() {
        CTDocPart cTDocPart;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPart = (CTDocPart) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDocPart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts
    public CTDocPart[] getDocPartArray() {
        return (CTDocPart[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDocPart[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts
    public List<CTDocPart> getDocPartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xf3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDocPartsImpl.this.getDocPartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yf3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDocPartsImpl.this.setDocPartArray(((Integer) obj).intValue(), (CTDocPart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zf3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDocPartsImpl.this.insertNewDocPart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ag3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDocPartsImpl.this.removeDocPart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bg3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDocPartsImpl.this.sizeOfDocPartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts
    public CTDocPart insertNewDocPart(int i) {
        CTDocPart cTDocPart;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPart = (CTDocPart) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDocPart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts
    public void removeDocPart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts
    public void setDocPartArray(CTDocPart[] cTDocPartArr) {
        check_orphaned();
        arraySetterHelper(cTDocPartArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts
    public int sizeOfDocPartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts
    public CTDocPart getDocPartArray(int i) {
        CTDocPart cTDocPart;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPart = (CTDocPart) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDocPart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDocPart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts
    public void setDocPartArray(int i, CTDocPart cTDocPart) {
        generatedSetterHelperImpl(cTDocPart, PROPERTY_QNAME[0], i, (short) 2);
    }
}
