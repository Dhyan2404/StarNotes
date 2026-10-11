package org.openxmlformats.schemas.officeDocument.x2006.customProperties.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperties;
import org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty;
import org.openxmlformats.schemas.officeDocument.x2006.customProperties.impl.CTPropertiesImpl;

/* loaded from: classes14.dex */
public class CTPropertiesImpl extends XmlComplexContentImpl implements CTProperties {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/custom-properties", "property")};
    private static final long serialVersionUID = 1;

    public CTPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperties
    public CTProperty addNewProperty() {
        CTProperty cTProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTProperty = (CTProperty) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTProperty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperties
    public CTProperty[] getPropertyArray() {
        return (CTProperty[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTProperty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperties
    public List<CTProperty> getPropertyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ao7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPropertiesImpl.this.getPropertyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bo7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPropertiesImpl.this.setPropertyArray(((Integer) obj).intValue(), (CTProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.co7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPropertiesImpl.this.insertNewProperty(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.do7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPropertiesImpl.this.removeProperty(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.eo7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPropertiesImpl.this.sizeOfPropertyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperties
    public CTProperty insertNewProperty(int i) {
        CTProperty cTProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTProperty = (CTProperty) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTProperty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperties
    public void removeProperty(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperties
    public void setPropertyArray(CTProperty[] cTPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTPropertyArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperties
    public int sizeOfPropertyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperties
    public CTProperty getPropertyArray(int i) {
        CTProperty cTProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTProperty = (CTProperty) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTProperty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperties
    public void setPropertyArray(int i, CTProperty cTProperty) {
        generatedSetterHelperImpl(cTProperty, PROPERTY_QNAME[0], i, (short) 2);
    }
}
