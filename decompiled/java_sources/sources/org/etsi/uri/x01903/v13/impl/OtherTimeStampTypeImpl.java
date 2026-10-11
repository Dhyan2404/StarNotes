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
import org.etsi.uri.x01903.v13.AnyType;
import org.etsi.uri.x01903.v13.EncapsulatedPKIDataType;
import org.etsi.uri.x01903.v13.OtherTimeStampType;
import org.etsi.uri.x01903.v13.ReferenceInfoType;
import org.etsi.uri.x01903.v13.impl.OtherTimeStampTypeImpl;

/* loaded from: classes13.dex */
public class OtherTimeStampTypeImpl extends GenericTimeStampTypeImpl implements OtherTimeStampType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "ReferenceInfo"), new QName(SignatureFacet.XADES_132_NS, "EncapsulatedTimeStamp"), new QName(SignatureFacet.XADES_132_NS, "XMLTimeStamp")};
    private static final long serialVersionUID = 1;

    public OtherTimeStampTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public EncapsulatedPKIDataType addNewEncapsulatedTimeStamp() {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public ReferenceInfoType addNewReferenceInfo() {
        ReferenceInfoType referenceInfoType;
        synchronized (monitor()) {
            check_orphaned();
            referenceInfoType = (ReferenceInfoType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return referenceInfoType;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public AnyType addNewXMLTimeStamp() {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public EncapsulatedPKIDataType[] getEncapsulatedTimeStampArray() {
        return (EncapsulatedPKIDataType[]) getXmlObjectArray(PROPERTY_QNAME[1], new EncapsulatedPKIDataType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public List<EncapsulatedPKIDataType> getEncapsulatedTimeStampList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jik
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OtherTimeStampTypeImpl.this.getEncapsulatedTimeStampArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pik
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    OtherTimeStampTypeImpl.this.setEncapsulatedTimeStampArray(((Integer) obj).intValue(), (EncapsulatedPKIDataType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qik
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OtherTimeStampTypeImpl.this.insertNewEncapsulatedTimeStamp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rik
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    OtherTimeStampTypeImpl.this.removeEncapsulatedTimeStamp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sik
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(OtherTimeStampTypeImpl.this.sizeOfEncapsulatedTimeStampArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public ReferenceInfoType[] getReferenceInfoArray() {
        return (ReferenceInfoType[]) getXmlObjectArray(PROPERTY_QNAME[0], new ReferenceInfoType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public List<ReferenceInfoType> getReferenceInfoList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kik
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OtherTimeStampTypeImpl.this.getReferenceInfoArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lik
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    OtherTimeStampTypeImpl.this.setReferenceInfoArray(((Integer) obj).intValue(), (ReferenceInfoType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mik
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OtherTimeStampTypeImpl.this.insertNewReferenceInfo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nik
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    OtherTimeStampTypeImpl.this.removeReferenceInfo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.oik
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(OtherTimeStampTypeImpl.this.sizeOfReferenceInfoArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public AnyType[] getXMLTimeStampArray() {
        return (AnyType[]) getXmlObjectArray(PROPERTY_QNAME[2], new AnyType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public List<AnyType> getXMLTimeStampList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tik
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OtherTimeStampTypeImpl.this.getXMLTimeStampArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.uik
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    OtherTimeStampTypeImpl.this.setXMLTimeStampArray(((Integer) obj).intValue(), (AnyType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vik
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OtherTimeStampTypeImpl.this.insertNewXMLTimeStamp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wik
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    OtherTimeStampTypeImpl.this.removeXMLTimeStamp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xik
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(OtherTimeStampTypeImpl.this.sizeOfXMLTimeStampArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public EncapsulatedPKIDataType insertNewEncapsulatedTimeStamp(int i) {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public ReferenceInfoType insertNewReferenceInfo(int i) {
        ReferenceInfoType referenceInfoType;
        synchronized (monitor()) {
            check_orphaned();
            referenceInfoType = (ReferenceInfoType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return referenceInfoType;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public AnyType insertNewXMLTimeStamp(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public void removeEncapsulatedTimeStamp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public void removeReferenceInfo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public void removeXMLTimeStamp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setEncapsulatedTimeStampArray(EncapsulatedPKIDataType[] encapsulatedPKIDataTypeArr) {
        check_orphaned();
        arraySetterHelper(encapsulatedPKIDataTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setReferenceInfoArray(ReferenceInfoType[] referenceInfoTypeArr) {
        check_orphaned();
        arraySetterHelper(referenceInfoTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setXMLTimeStampArray(AnyType[] anyTypeArr) {
        check_orphaned();
        arraySetterHelper(anyTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public int sizeOfEncapsulatedTimeStampArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public int sizeOfReferenceInfoArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public int sizeOfXMLTimeStampArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public EncapsulatedPKIDataType getEncapsulatedTimeStampArray(int i) {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (encapsulatedPKIDataType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public ReferenceInfoType getReferenceInfoArray(int i) {
        ReferenceInfoType referenceInfoType;
        synchronized (monitor()) {
            check_orphaned();
            referenceInfoType = (ReferenceInfoType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (referenceInfoType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return referenceInfoType;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public AnyType getXMLTimeStampArray(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (anyType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setEncapsulatedTimeStampArray(int i, EncapsulatedPKIDataType encapsulatedPKIDataType) {
        generatedSetterHelperImpl(encapsulatedPKIDataType, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setReferenceInfoArray(int i, ReferenceInfoType referenceInfoType) {
        generatedSetterHelperImpl(referenceInfoType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl, org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setXMLTimeStampArray(int i, AnyType anyType) {
        generatedSetterHelperImpl(anyType, PROPERTY_QNAME[2], i, (short) 2);
    }
}
