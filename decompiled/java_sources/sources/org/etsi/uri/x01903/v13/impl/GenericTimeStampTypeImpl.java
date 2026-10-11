package org.etsi.uri.x01903.v13.impl;

import androidx.constraintlayout.motion.widget.MotionScene;
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
import org.etsi.uri.x01903.v13.EncapsulatedPKIDataType;
import org.etsi.uri.x01903.v13.GenericTimeStampType;
import org.etsi.uri.x01903.v13.IncludeType;
import org.etsi.uri.x01903.v13.ReferenceInfoType;
import org.etsi.uri.x01903.v13.impl.GenericTimeStampTypeImpl;
import org.p120w3.x2000.x09.xmldsig.CanonicalizationMethodType;

/* loaded from: classes13.dex */
public class GenericTimeStampTypeImpl extends XmlComplexContentImpl implements GenericTimeStampType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, MotionScene.f3919H), new QName(SignatureFacet.XADES_132_NS, "ReferenceInfo"), new QName(SignatureFacet.XML_DIGSIG_NS, "CanonicalizationMethod"), new QName(SignatureFacet.XADES_132_NS, "EncapsulatedTimeStamp"), new QName(SignatureFacet.XADES_132_NS, "XMLTimeStamp"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public GenericTimeStampTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public CanonicalizationMethodType addNewCanonicalizationMethod() {
        CanonicalizationMethodType canonicalizationMethodType;
        synchronized (monitor()) {
            check_orphaned();
            canonicalizationMethodType = (CanonicalizationMethodType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return canonicalizationMethodType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public EncapsulatedPKIDataType addNewEncapsulatedTimeStamp() {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public IncludeType addNewInclude() {
        IncludeType includeType;
        synchronized (monitor()) {
            check_orphaned();
            includeType = (IncludeType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return includeType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public ReferenceInfoType addNewReferenceInfo() {
        ReferenceInfoType referenceInfoType;
        synchronized (monitor()) {
            check_orphaned();
            referenceInfoType = (ReferenceInfoType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return referenceInfoType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public AnyType addNewXMLTimeStamp() {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public CanonicalizationMethodType getCanonicalizationMethod() {
        CanonicalizationMethodType canonicalizationMethodType;
        synchronized (monitor()) {
            check_orphaned();
            canonicalizationMethodType = (CanonicalizationMethodType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (canonicalizationMethodType == null) {
                canonicalizationMethodType = null;
            }
        }
        return canonicalizationMethodType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public EncapsulatedPKIDataType[] getEncapsulatedTimeStampArray() {
        return (EncapsulatedPKIDataType[]) getXmlObjectArray(PROPERTY_QNAME[3], new EncapsulatedPKIDataType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public List<EncapsulatedPKIDataType> getEncapsulatedTimeStampList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w0h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GenericTimeStampTypeImpl.this.getEncapsulatedTimeStampArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h1h
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    GenericTimeStampTypeImpl.this.setEncapsulatedTimeStampArray(((Integer) obj).intValue(), (EncapsulatedPKIDataType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i1h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GenericTimeStampTypeImpl.this.insertNewEncapsulatedTimeStamp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j1h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GenericTimeStampTypeImpl.this.removeEncapsulatedTimeStamp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k1h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(GenericTimeStampTypeImpl.this.sizeOfEncapsulatedTimeStampArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public IncludeType[] getIncludeArray() {
        return (IncludeType[]) getXmlObjectArray(PROPERTY_QNAME[0], new IncludeType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public List<IncludeType> getIncludeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c1h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GenericTimeStampTypeImpl.this.getIncludeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d1h
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    GenericTimeStampTypeImpl.this.setIncludeArray(((Integer) obj).intValue(), (IncludeType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e1h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GenericTimeStampTypeImpl.this.insertNewInclude(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f1h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GenericTimeStampTypeImpl.this.removeInclude(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g1h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(GenericTimeStampTypeImpl.this.sizeOfIncludeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public ReferenceInfoType[] getReferenceInfoArray() {
        return (ReferenceInfoType[]) getXmlObjectArray(PROPERTY_QNAME[1], new ReferenceInfoType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public List<ReferenceInfoType> getReferenceInfoList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l1h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GenericTimeStampTypeImpl.this.getReferenceInfoArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m1h
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    GenericTimeStampTypeImpl.this.setReferenceInfoArray(((Integer) obj).intValue(), (ReferenceInfoType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n1h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GenericTimeStampTypeImpl.this.insertNewReferenceInfo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o1h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GenericTimeStampTypeImpl.this.removeReferenceInfo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p1h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(GenericTimeStampTypeImpl.this.sizeOfReferenceInfoArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public AnyType[] getXMLTimeStampArray() {
        return (AnyType[]) getXmlObjectArray(PROPERTY_QNAME[4], new AnyType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public List<AnyType> getXMLTimeStampList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.x0h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GenericTimeStampTypeImpl.this.getXMLTimeStampArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.y0h
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    GenericTimeStampTypeImpl.this.setXMLTimeStampArray(((Integer) obj).intValue(), (AnyType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.z0h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return GenericTimeStampTypeImpl.this.insertNewXMLTimeStamp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.a1h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GenericTimeStampTypeImpl.this.removeXMLTimeStamp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.b1h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(GenericTimeStampTypeImpl.this.sizeOfXMLTimeStampArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public EncapsulatedPKIDataType insertNewEncapsulatedTimeStamp(int i) {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public IncludeType insertNewInclude(int i) {
        IncludeType includeType;
        synchronized (monitor()) {
            check_orphaned();
            includeType = (IncludeType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return includeType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public ReferenceInfoType insertNewReferenceInfo(int i) {
        ReferenceInfoType referenceInfoType;
        synchronized (monitor()) {
            check_orphaned();
            referenceInfoType = (ReferenceInfoType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return referenceInfoType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public AnyType insertNewXMLTimeStamp(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public boolean isSetCanonicalizationMethod() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void removeEncapsulatedTimeStamp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void removeInclude(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void removeReferenceInfo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void removeXMLTimeStamp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setCanonicalizationMethod(CanonicalizationMethodType canonicalizationMethodType) {
        generatedSetterHelperImpl(canonicalizationMethodType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setEncapsulatedTimeStampArray(EncapsulatedPKIDataType[] encapsulatedPKIDataTypeArr) {
        check_orphaned();
        arraySetterHelper(encapsulatedPKIDataTypeArr, PROPERTY_QNAME[3]);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setIncludeArray(IncludeType[] includeTypeArr) {
        check_orphaned();
        arraySetterHelper(includeTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setReferenceInfoArray(ReferenceInfoType[] referenceInfoTypeArr) {
        check_orphaned();
        arraySetterHelper(referenceInfoTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setXMLTimeStampArray(AnyType[] anyTypeArr) {
        check_orphaned();
        arraySetterHelper(anyTypeArr, PROPERTY_QNAME[4]);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public int sizeOfEncapsulatedTimeStampArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public int sizeOfIncludeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public int sizeOfReferenceInfoArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public int sizeOfXMLTimeStampArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void unsetCanonicalizationMethod() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public EncapsulatedPKIDataType getEncapsulatedTimeStampArray(int i) {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (encapsulatedPKIDataType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public IncludeType getIncludeArray(int i) {
        IncludeType includeType;
        synchronized (monitor()) {
            check_orphaned();
            includeType = (IncludeType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (includeType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return includeType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public ReferenceInfoType getReferenceInfoArray(int i) {
        ReferenceInfoType referenceInfoType;
        synchronized (monitor()) {
            check_orphaned();
            referenceInfoType = (ReferenceInfoType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (referenceInfoType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return referenceInfoType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public AnyType getXMLTimeStampArray(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (anyType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setEncapsulatedTimeStampArray(int i, EncapsulatedPKIDataType encapsulatedPKIDataType) {
        generatedSetterHelperImpl(encapsulatedPKIDataType, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setIncludeArray(int i, IncludeType includeType) {
        generatedSetterHelperImpl(includeType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setReferenceInfoArray(int i, ReferenceInfoType referenceInfoType) {
        generatedSetterHelperImpl(referenceInfoType, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    public void setXMLTimeStampArray(int i, AnyType anyType) {
        generatedSetterHelperImpl(anyType, PROPERTY_QNAME[4], i, (short) 2);
    }
}
