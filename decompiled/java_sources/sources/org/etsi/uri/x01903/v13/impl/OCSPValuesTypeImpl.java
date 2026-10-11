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
import org.etsi.uri.x01903.v13.EncapsulatedPKIDataType;
import org.etsi.uri.x01903.v13.OCSPValuesType;
import org.etsi.uri.x01903.v13.impl.OCSPValuesTypeImpl;

/* loaded from: classes13.dex */
public class OCSPValuesTypeImpl extends XmlComplexContentImpl implements OCSPValuesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "EncapsulatedOCSPValue")};
    private static final long serialVersionUID = 1;

    public OCSPValuesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.OCSPValuesType
    public EncapsulatedPKIDataType addNewEncapsulatedOCSPValue() {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPValuesType
    public EncapsulatedPKIDataType[] getEncapsulatedOCSPValueArray() {
        return (EncapsulatedPKIDataType[]) getXmlObjectArray(PROPERTY_QNAME[0], new EncapsulatedPKIDataType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.OCSPValuesType
    public List<EncapsulatedPKIDataType> getEncapsulatedOCSPValueList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j6k
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OCSPValuesTypeImpl.this.getEncapsulatedOCSPValueArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k6k
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    OCSPValuesTypeImpl.this.setEncapsulatedOCSPValueArray(((Integer) obj).intValue(), (EncapsulatedPKIDataType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l6k
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OCSPValuesTypeImpl.this.insertNewEncapsulatedOCSPValue(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m6k
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    OCSPValuesTypeImpl.this.removeEncapsulatedOCSPValue(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n6k
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(OCSPValuesTypeImpl.this.sizeOfEncapsulatedOCSPValueArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPValuesType
    public EncapsulatedPKIDataType insertNewEncapsulatedOCSPValue(int i) {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPValuesType
    public void removeEncapsulatedOCSPValue(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.OCSPValuesType
    public void setEncapsulatedOCSPValueArray(EncapsulatedPKIDataType[] encapsulatedPKIDataTypeArr) {
        check_orphaned();
        arraySetterHelper(encapsulatedPKIDataTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.OCSPValuesType
    public int sizeOfEncapsulatedOCSPValueArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPValuesType
    public EncapsulatedPKIDataType getEncapsulatedOCSPValueArray(int i) {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (encapsulatedPKIDataType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPValuesType
    public void setEncapsulatedOCSPValueArray(int i, EncapsulatedPKIDataType encapsulatedPKIDataType) {
        generatedSetterHelperImpl(encapsulatedPKIDataType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
