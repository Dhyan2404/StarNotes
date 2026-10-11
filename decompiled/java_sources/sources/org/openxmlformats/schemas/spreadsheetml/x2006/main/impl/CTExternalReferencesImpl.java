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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReference;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReferences;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTExternalReferencesImpl;

/* loaded from: classes15.dex */
public class CTExternalReferencesImpl extends XmlComplexContentImpl implements CTExternalReferences {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "externalReference")};
    private static final long serialVersionUID = 1;

    public CTExternalReferencesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReferences
    public CTExternalReference addNewExternalReference() {
        CTExternalReference cTExternalReference;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalReference = (CTExternalReference) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTExternalReference;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReferences
    public CTExternalReference[] getExternalReferenceArray() {
        return (CTExternalReference[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTExternalReference[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReferences
    public List<CTExternalReference> getExternalReferenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gr3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTExternalReferencesImpl.this.getExternalReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hr3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTExternalReferencesImpl.this.setExternalReferenceArray(((Integer) obj).intValue(), (CTExternalReference) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ir3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTExternalReferencesImpl.this.insertNewExternalReference(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jr3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTExternalReferencesImpl.this.removeExternalReference(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kr3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTExternalReferencesImpl.this.sizeOfExternalReferenceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReferences
    public CTExternalReference insertNewExternalReference(int i) {
        CTExternalReference cTExternalReference;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalReference = (CTExternalReference) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTExternalReference;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReferences
    public void removeExternalReference(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReferences
    public void setExternalReferenceArray(CTExternalReference[] cTExternalReferenceArr) {
        check_orphaned();
        arraySetterHelper(cTExternalReferenceArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReferences
    public int sizeOfExternalReferenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReferences
    public CTExternalReference getExternalReferenceArray(int i) {
        CTExternalReference cTExternalReference;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalReference = (CTExternalReference) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTExternalReference == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTExternalReference;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReferences
    public void setExternalReferenceArray(int i, CTExternalReference cTExternalReference) {
        generatedSetterHelperImpl(cTExternalReference, PROPERTY_QNAME[0], i, (short) 2);
    }
}
