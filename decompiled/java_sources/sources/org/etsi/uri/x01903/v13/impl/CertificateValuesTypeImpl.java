package org.etsi.uri.x01903.v13.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.AnyType;
import org.etsi.uri.x01903.v13.CertificateValuesType;
import org.etsi.uri.x01903.v13.EncapsulatedPKIDataType;
import org.etsi.uri.x01903.v13.impl.CertificateValuesTypeImpl;

/* loaded from: classes13.dex */
public class CertificateValuesTypeImpl extends XmlComplexContentImpl implements CertificateValuesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "EncapsulatedX509Certificate"), new QName(SignatureFacet.XADES_132_NS, "OtherCertificate"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public CertificateValuesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public EncapsulatedPKIDataType addNewEncapsulatedX509Certificate() {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public AnyType addNewOtherCertificate() {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public EncapsulatedPKIDataType[] getEncapsulatedX509CertificateArray() {
        return (EncapsulatedPKIDataType[]) getXmlObjectArray(PROPERTY_QNAME[0], new EncapsulatedPKIDataType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public List<EncapsulatedPKIDataType> getEncapsulatedX509CertificateList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vpd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CertificateValuesTypeImpl.this.getEncapsulatedX509CertificateArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wpd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CertificateValuesTypeImpl.this.setEncapsulatedX509CertificateArray(((Integer) obj).intValue(), (EncapsulatedPKIDataType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xpd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CertificateValuesTypeImpl.this.insertNewEncapsulatedX509Certificate(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ypd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CertificateValuesTypeImpl.this.removeEncapsulatedX509Certificate(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zpd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CertificateValuesTypeImpl.this.sizeOfEncapsulatedX509CertificateArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public AnyType[] getOtherCertificateArray() {
        return (AnyType[]) getXmlObjectArray(PROPERTY_QNAME[1], new AnyType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public List<AnyType> getOtherCertificateList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.aqd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CertificateValuesTypeImpl.this.getOtherCertificateArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bqd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CertificateValuesTypeImpl.this.setOtherCertificateArray(((Integer) obj).intValue(), (AnyType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cqd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CertificateValuesTypeImpl.this.insertNewOtherCertificate(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dqd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CertificateValuesTypeImpl.this.removeOtherCertificate(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.eqd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CertificateValuesTypeImpl.this.sizeOfOtherCertificateArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public EncapsulatedPKIDataType insertNewEncapsulatedX509Certificate(int i) {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public AnyType insertNewOtherCertificate(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public void removeEncapsulatedX509Certificate(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public void removeOtherCertificate(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public void setEncapsulatedX509CertificateArray(EncapsulatedPKIDataType[] encapsulatedPKIDataTypeArr) {
        check_orphaned();
        arraySetterHelper(encapsulatedPKIDataTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public void setId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public void setOtherCertificateArray(AnyType[] anyTypeArr) {
        check_orphaned();
        arraySetterHelper(anyTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public int sizeOfEncapsulatedX509CertificateArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public int sizeOfOtherCertificateArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public EncapsulatedPKIDataType getEncapsulatedX509CertificateArray(int i) {
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

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public AnyType getOtherCertificateArray(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (anyType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public void setEncapsulatedX509CertificateArray(int i, EncapsulatedPKIDataType encapsulatedPKIDataType) {
        generatedSetterHelperImpl(encapsulatedPKIDataType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesType
    public void setOtherCertificateArray(int i, AnyType anyType) {
        generatedSetterHelperImpl(anyType, PROPERTY_QNAME[1], i, (short) 2);
    }
}
