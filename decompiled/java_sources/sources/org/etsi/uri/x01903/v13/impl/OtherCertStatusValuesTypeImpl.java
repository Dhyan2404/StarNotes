package org.etsi.uri.x01903.v13.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.AnyType;
import org.etsi.uri.x01903.v13.OtherCertStatusValuesType;
import org.etsi.uri.x01903.v13.impl.OtherCertStatusValuesTypeImpl;

/* loaded from: classes13.dex */
public class OtherCertStatusValuesTypeImpl extends XmlComplexContentImpl implements OtherCertStatusValuesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "OtherValue")};
    private static final long serialVersionUID = 1;

    public OtherCertStatusValuesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusValuesType
    public AnyType addNewOtherValue() {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusValuesType
    public AnyType[] getOtherValueArray() {
        return (AnyType[]) getXmlObjectArray(PROPERTY_QNAME[0], new AnyType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusValuesType
    public List<AnyType> getOtherValueList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.eik
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OtherCertStatusValuesTypeImpl.this.getOtherValueArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fik
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    OtherCertStatusValuesTypeImpl.this.setOtherValueArray(((Integer) obj).intValue(), (AnyType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gik
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OtherCertStatusValuesTypeImpl.this.insertNewOtherValue(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hik
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    OtherCertStatusValuesTypeImpl.this.removeOtherValue(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.iik
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(OtherCertStatusValuesTypeImpl.this.sizeOfOtherValueArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusValuesType
    public AnyType insertNewOtherValue(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusValuesType
    public void removeOtherValue(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusValuesType
    public void setOtherValueArray(AnyType[] anyTypeArr) {
        check_orphaned();
        arraySetterHelper(anyTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusValuesType
    public int sizeOfOtherValueArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusValuesType
    public AnyType getOtherValueArray(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (anyType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusValuesType
    public void setOtherValueArray(int i, AnyType anyType) {
        generatedSetterHelperImpl(anyType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
