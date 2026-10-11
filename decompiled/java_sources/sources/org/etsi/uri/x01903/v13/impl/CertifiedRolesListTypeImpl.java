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
import org.etsi.uri.x01903.v13.CertifiedRolesListType;
import org.etsi.uri.x01903.v13.EncapsulatedPKIDataType;
import org.etsi.uri.x01903.v13.impl.CertifiedRolesListTypeImpl;

/* loaded from: classes13.dex */
public class CertifiedRolesListTypeImpl extends XmlComplexContentImpl implements CertifiedRolesListType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CertifiedRole")};
    private static final long serialVersionUID = 1;

    public CertifiedRolesListTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CertifiedRolesListType
    public EncapsulatedPKIDataType addNewCertifiedRole() {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.CertifiedRolesListType
    public EncapsulatedPKIDataType[] getCertifiedRoleArray() {
        return (EncapsulatedPKIDataType[]) getXmlObjectArray(PROPERTY_QNAME[0], new EncapsulatedPKIDataType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.CertifiedRolesListType
    public List<EncapsulatedPKIDataType> getCertifiedRoleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fqd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CertifiedRolesListTypeImpl.this.getCertifiedRoleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gqd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CertifiedRolesListTypeImpl.this.setCertifiedRoleArray(((Integer) obj).intValue(), (EncapsulatedPKIDataType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hqd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CertifiedRolesListTypeImpl.this.insertNewCertifiedRole(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.iqd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CertifiedRolesListTypeImpl.this.removeCertifiedRole(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jqd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CertifiedRolesListTypeImpl.this.sizeOfCertifiedRoleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.CertifiedRolesListType
    public EncapsulatedPKIDataType insertNewCertifiedRole(int i) {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.CertifiedRolesListType
    public void removeCertifiedRole(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CertifiedRolesListType
    public void setCertifiedRoleArray(EncapsulatedPKIDataType[] encapsulatedPKIDataTypeArr) {
        check_orphaned();
        arraySetterHelper(encapsulatedPKIDataTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.CertifiedRolesListType
    public int sizeOfCertifiedRoleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.CertifiedRolesListType
    public EncapsulatedPKIDataType getCertifiedRoleArray(int i) {
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

    @Override // org.etsi.uri.x01903.v13.CertifiedRolesListType
    public void setCertifiedRoleArray(int i, EncapsulatedPKIDataType encapsulatedPKIDataType) {
        generatedSetterHelperImpl(encapsulatedPKIDataType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
