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
import org.etsi.uri.x01903.v13.OtherCertStatusRefsType;
import org.etsi.uri.x01903.v13.impl.OtherCertStatusRefsTypeImpl;

/* loaded from: classes13.dex */
public class OtherCertStatusRefsTypeImpl extends XmlComplexContentImpl implements OtherCertStatusRefsType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "OtherRef")};
    private static final long serialVersionUID = 1;

    public OtherCertStatusRefsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusRefsType
    public AnyType addNewOtherRef() {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusRefsType
    public AnyType[] getOtherRefArray() {
        return (AnyType[]) getXmlObjectArray(PROPERTY_QNAME[0], new AnyType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusRefsType
    public List<AnyType> getOtherRefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zhk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OtherCertStatusRefsTypeImpl.this.getOtherRefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.aik
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    OtherCertStatusRefsTypeImpl.this.setOtherRefArray(((Integer) obj).intValue(), (AnyType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bik
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OtherCertStatusRefsTypeImpl.this.insertNewOtherRef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cik
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    OtherCertStatusRefsTypeImpl.this.removeOtherRef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dik
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(OtherCertStatusRefsTypeImpl.this.sizeOfOtherRefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusRefsType
    public AnyType insertNewOtherRef(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusRefsType
    public void removeOtherRef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusRefsType
    public void setOtherRefArray(AnyType[] anyTypeArr) {
        check_orphaned();
        arraySetterHelper(anyTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusRefsType
    public int sizeOfOtherRefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusRefsType
    public AnyType getOtherRefArray(int i) {
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

    @Override // org.etsi.uri.x01903.v13.OtherCertStatusRefsType
    public void setOtherRefArray(int i, AnyType anyType) {
        generatedSetterHelperImpl(anyType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
