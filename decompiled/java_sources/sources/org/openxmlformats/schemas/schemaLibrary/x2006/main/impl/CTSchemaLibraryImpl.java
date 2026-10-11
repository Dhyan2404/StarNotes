package org.openxmlformats.schemas.schemaLibrary.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchema;
import org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary;
import org.openxmlformats.schemas.schemaLibrary.x2006.main.impl.CTSchemaLibraryImpl;

/* loaded from: classes14.dex */
public class CTSchemaLibraryImpl extends XmlComplexContentImpl implements CTSchemaLibrary {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/schemaLibrary/2006/main", "schema")};
    private static final long serialVersionUID = 1;

    public CTSchemaLibraryImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary
    public CTSchema addNewSchema() {
        CTSchema cTSchema;
        synchronized (monitor()) {
            check_orphaned();
            cTSchema = (CTSchema) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSchema;
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary
    public CTSchema[] getSchemaArray() {
        return (CTSchema[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSchema[0]);
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary
    public List<CTSchema> getSchemaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dy9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemaLibraryImpl.this.getSchemaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ey9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemaLibraryImpl.this.setSchemaArray(((Integer) obj).intValue(), (CTSchema) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fy9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemaLibraryImpl.this.insertNewSchema(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gy9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemaLibraryImpl.this.removeSchema(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hy9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemaLibraryImpl.this.sizeOfSchemaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary
    public CTSchema insertNewSchema(int i) {
        CTSchema cTSchema;
        synchronized (monitor()) {
            check_orphaned();
            cTSchema = (CTSchema) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSchema;
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary
    public void removeSchema(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary
    public void setSchemaArray(CTSchema[] cTSchemaArr) {
        check_orphaned();
        arraySetterHelper(cTSchemaArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary
    public int sizeOfSchemaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary
    public CTSchema getSchemaArray(int i) {
        CTSchema cTSchema;
        synchronized (monitor()) {
            check_orphaned();
            cTSchema = (CTSchema) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSchema == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSchema;
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary
    public void setSchemaArray(int i, CTSchema cTSchema) {
        generatedSetterHelperImpl(cTSchema, PROPERTY_QNAME[0], i, (short) 2);
    }
}
