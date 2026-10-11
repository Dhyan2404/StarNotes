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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtension;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTExtensionListImpl;

/* loaded from: classes15.dex */
public class CTExtensionListImpl extends XmlComplexContentImpl implements CTExtensionList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "ext")};
    private static final long serialVersionUID = 1;

    public CTExtensionListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList
    public CTExtension addNewExt() {
        CTExtension cTExtension;
        synchronized (monitor()) {
            check_orphaned();
            cTExtension = (CTExtension) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTExtension;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList
    public CTExtension[] getExtArray() {
        return (CTExtension[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTExtension[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList
    public List<CTExtension> getExtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.iq3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTExtensionListImpl.this.getExtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lq3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTExtensionListImpl.this.setExtArray(((Integer) obj).intValue(), (CTExtension) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oq3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTExtensionListImpl.this.insertNewExt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rq3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTExtensionListImpl.this.removeExt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uq3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTExtensionListImpl.this.sizeOfExtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList
    public CTExtension insertNewExt(int i) {
        CTExtension cTExtension;
        synchronized (monitor()) {
            check_orphaned();
            cTExtension = (CTExtension) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTExtension;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList
    public void removeExt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList
    public void setExtArray(CTExtension[] cTExtensionArr) {
        check_orphaned();
        arraySetterHelper(cTExtensionArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList
    public int sizeOfExtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList
    public CTExtension getExtArray(int i) {
        CTExtension cTExtension;
        synchronized (monitor()) {
            check_orphaned();
            cTExtension = (CTExtension) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTExtension == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTExtension;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList
    public void setExtArray(int i, CTExtension cTExtension) {
        generatedSetterHelperImpl(cTExtension, PROPERTY_QNAME[0], i, (short) 2);
    }
}
