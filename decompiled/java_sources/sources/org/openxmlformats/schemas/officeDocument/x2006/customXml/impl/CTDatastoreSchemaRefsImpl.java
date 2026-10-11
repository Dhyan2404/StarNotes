package org.openxmlformats.schemas.officeDocument.x2006.customXml.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRef;
import org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs;
import org.openxmlformats.schemas.officeDocument.x2006.customXml.impl.CTDatastoreSchemaRefsImpl;

/* loaded from: classes14.dex */
public class CTDatastoreSchemaRefsImpl extends XmlComplexContentImpl implements CTDatastoreSchemaRefs {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/customXml", "schemaRef")};
    private static final long serialVersionUID = 1;

    public CTDatastoreSchemaRefsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs
    public CTDatastoreSchemaRef addNewSchemaRef() {
        CTDatastoreSchemaRef cTDatastoreSchemaRef;
        synchronized (monitor()) {
            check_orphaned();
            cTDatastoreSchemaRef = (CTDatastoreSchemaRef) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDatastoreSchemaRef;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs
    public CTDatastoreSchemaRef[] getSchemaRefArray() {
        return (CTDatastoreSchemaRef[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDatastoreSchemaRef[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs
    public List<CTDatastoreSchemaRef> getSchemaRefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h63
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDatastoreSchemaRefsImpl.this.getSchemaRefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i63
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDatastoreSchemaRefsImpl.this.setSchemaRefArray(((Integer) obj).intValue(), (CTDatastoreSchemaRef) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j63
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDatastoreSchemaRefsImpl.this.insertNewSchemaRef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k63
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDatastoreSchemaRefsImpl.this.removeSchemaRef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l63
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDatastoreSchemaRefsImpl.this.sizeOfSchemaRefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs
    public CTDatastoreSchemaRef insertNewSchemaRef(int i) {
        CTDatastoreSchemaRef cTDatastoreSchemaRef;
        synchronized (monitor()) {
            check_orphaned();
            cTDatastoreSchemaRef = (CTDatastoreSchemaRef) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDatastoreSchemaRef;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs
    public void removeSchemaRef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs
    public void setSchemaRefArray(CTDatastoreSchemaRef[] cTDatastoreSchemaRefArr) {
        check_orphaned();
        arraySetterHelper(cTDatastoreSchemaRefArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs
    public int sizeOfSchemaRefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs
    public CTDatastoreSchemaRef getSchemaRefArray(int i) {
        CTDatastoreSchemaRef cTDatastoreSchemaRef;
        synchronized (monitor()) {
            check_orphaned();
            cTDatastoreSchemaRef = (CTDatastoreSchemaRef) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDatastoreSchemaRef == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDatastoreSchemaRef;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreSchemaRefs
    public void setSchemaRefArray(int i, CTDatastoreSchemaRef cTDatastoreSchemaRef) {
        generatedSetterHelperImpl(cTDatastoreSchemaRef, PROPERTY_QNAME[0], i, (short) 2);
    }
}
