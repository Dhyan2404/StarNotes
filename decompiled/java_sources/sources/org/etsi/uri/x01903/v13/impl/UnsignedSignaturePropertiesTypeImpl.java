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
import org.etsi.uri.x01903.v13.CertificateValuesType;
import org.etsi.uri.x01903.v13.CompleteCertificateRefsType;
import org.etsi.uri.x01903.v13.CompleteRevocationRefsType;
import org.etsi.uri.x01903.v13.CounterSignatureType;
import org.etsi.uri.x01903.v13.RevocationValuesType;
import org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType;
import org.etsi.uri.x01903.v13.XAdESTimeStampType;
import org.etsi.uri.x01903.v13.impl.UnsignedSignaturePropertiesTypeImpl;

/* loaded from: classes13.dex */
public class UnsignedSignaturePropertiesTypeImpl extends XmlComplexContentImpl implements UnsignedSignaturePropertiesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CounterSignature"), new QName(SignatureFacet.XADES_132_NS, "SignatureTimeStamp"), new QName(SignatureFacet.XADES_132_NS, "CompleteCertificateRefs"), new QName(SignatureFacet.XADES_132_NS, "CompleteRevocationRefs"), new QName(SignatureFacet.XADES_132_NS, "AttributeCertificateRefs"), new QName(SignatureFacet.XADES_132_NS, "AttributeRevocationRefs"), new QName(SignatureFacet.XADES_132_NS, "SigAndRefsTimeStamp"), new QName(SignatureFacet.XADES_132_NS, "RefsOnlyTimeStamp"), new QName(SignatureFacet.XADES_132_NS, "CertificateValues"), new QName(SignatureFacet.XADES_132_NS, "RevocationValues"), new QName(SignatureFacet.XADES_132_NS, "AttrAuthoritiesCertValues"), new QName(SignatureFacet.XADES_132_NS, "AttributeRevocationValues"), new QName(SignatureFacet.XADES_132_NS, "ArchiveTimeStamp"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public UnsignedSignaturePropertiesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType addNewArchiveTimeStamp() {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CertificateValuesType addNewAttrAuthoritiesCertValues() {
        CertificateValuesType certificateValuesType;
        synchronized (monitor()) {
            check_orphaned();
            certificateValuesType = (CertificateValuesType) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return certificateValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteCertificateRefsType addNewAttributeCertificateRefs() {
        CompleteCertificateRefsType completeCertificateRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeCertificateRefsType = (CompleteCertificateRefsType) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return completeCertificateRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteRevocationRefsType addNewAttributeRevocationRefs() {
        CompleteRevocationRefsType completeRevocationRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeRevocationRefsType = (CompleteRevocationRefsType) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return completeRevocationRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public RevocationValuesType addNewAttributeRevocationValues() {
        RevocationValuesType revocationValuesType;
        synchronized (monitor()) {
            check_orphaned();
            revocationValuesType = (RevocationValuesType) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return revocationValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CertificateValuesType addNewCertificateValues() {
        CertificateValuesType certificateValuesType;
        synchronized (monitor()) {
            check_orphaned();
            certificateValuesType = (CertificateValuesType) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return certificateValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteCertificateRefsType addNewCompleteCertificateRefs() {
        CompleteCertificateRefsType completeCertificateRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeCertificateRefsType = (CompleteCertificateRefsType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return completeCertificateRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteRevocationRefsType addNewCompleteRevocationRefs() {
        CompleteRevocationRefsType completeRevocationRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeRevocationRefsType = (CompleteRevocationRefsType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return completeRevocationRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CounterSignatureType addNewCounterSignature() {
        CounterSignatureType counterSignatureType;
        synchronized (monitor()) {
            check_orphaned();
            counterSignatureType = (CounterSignatureType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return counterSignatureType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType addNewRefsOnlyTimeStamp() {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public RevocationValuesType addNewRevocationValues() {
        RevocationValuesType revocationValuesType;
        synchronized (monitor()) {
            check_orphaned();
            revocationValuesType = (RevocationValuesType) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return revocationValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType addNewSigAndRefsTimeStamp() {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType addNewSignatureTimeStamp() {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType[] getArchiveTimeStampArray() {
        return (XAdESTimeStampType[]) getXmlObjectArray(PROPERTY_QNAME[12], new XAdESTimeStampType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<XAdESTimeStampType> getArchiveTimeStampList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xvn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getArchiveTimeStampArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yvn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setArchiveTimeStampArray(((Integer) obj).intValue(), (XAdESTimeStampType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zvn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewArchiveTimeStamp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.awn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeArchiveTimeStamp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bwn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfArchiveTimeStampArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CertificateValuesType[] getAttrAuthoritiesCertValuesArray() {
        return (CertificateValuesType[]) getXmlObjectArray(PROPERTY_QNAME[10], new CertificateValuesType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<CertificateValuesType> getAttrAuthoritiesCertValuesList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hvn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getAttrAuthoritiesCertValuesArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ivn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setAttrAuthoritiesCertValuesArray(((Integer) obj).intValue(), (CertificateValuesType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jvn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewAttrAuthoritiesCertValues(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kvn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeAttrAuthoritiesCertValues(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lvn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfAttrAuthoritiesCertValuesArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteCertificateRefsType[] getAttributeCertificateRefsArray() {
        return (CompleteCertificateRefsType[]) getXmlObjectArray(PROPERTY_QNAME[4], new CompleteCertificateRefsType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<CompleteCertificateRefsType> getAttributeCertificateRefsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bvn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getAttributeCertificateRefsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cvn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setAttributeCertificateRefsArray(((Integer) obj).intValue(), (CompleteCertificateRefsType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dvn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewAttributeCertificateRefs(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.evn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeAttributeCertificateRefs(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fvn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfAttributeCertificateRefsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteRevocationRefsType[] getAttributeRevocationRefsArray() {
        return (CompleteRevocationRefsType[]) getXmlObjectArray(PROPERTY_QNAME[5], new CompleteRevocationRefsType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<CompleteRevocationRefsType> getAttributeRevocationRefsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qun
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getAttributeRevocationRefsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.run
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setAttributeRevocationRefsArray(((Integer) obj).intValue(), (CompleteRevocationRefsType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sun
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewAttributeRevocationRefs(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tun
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeAttributeRevocationRefs(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uun
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfAttributeRevocationRefsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public RevocationValuesType[] getAttributeRevocationValuesArray() {
        return (RevocationValuesType[]) getXmlObjectArray(PROPERTY_QNAME[11], new RevocationValuesType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<RevocationValuesType> getAttributeRevocationValuesList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lun
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getAttributeRevocationValuesArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mun
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setAttributeRevocationValuesArray(((Integer) obj).intValue(), (RevocationValuesType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nun
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewAttributeRevocationValues(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.oun
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeAttributeRevocationValues(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pun
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfAttributeRevocationValuesArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CertificateValuesType[] getCertificateValuesArray() {
        return (CertificateValuesType[]) getXmlObjectArray(PROPERTY_QNAME[8], new CertificateValuesType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<CertificateValuesType> getCertificateValuesList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dwn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getCertificateValuesArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ewn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setCertificateValuesArray(((Integer) obj).intValue(), (CertificateValuesType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fwn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewCertificateValues(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gwn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeCertificateValues(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hwn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfCertificateValuesArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteCertificateRefsType[] getCompleteCertificateRefsArray() {
        return (CompleteCertificateRefsType[]) getXmlObjectArray(PROPERTY_QNAME[2], new CompleteCertificateRefsType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<CompleteCertificateRefsType> getCompleteCertificateRefsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wun
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getCompleteCertificateRefsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xun
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setCompleteCertificateRefsArray(((Integer) obj).intValue(), (CompleteCertificateRefsType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yun
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewCompleteCertificateRefs(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zun
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeCompleteCertificateRefs(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.avn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfCompleteCertificateRefsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteRevocationRefsType[] getCompleteRevocationRefsArray() {
        return (CompleteRevocationRefsType[]) getXmlObjectArray(PROPERTY_QNAME[3], new CompleteRevocationRefsType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<CompleteRevocationRefsType> getCompleteRevocationRefsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kun
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getCompleteRevocationRefsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vun
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setCompleteRevocationRefsArray(((Integer) obj).intValue(), (CompleteRevocationRefsType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gvn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewCompleteRevocationRefs(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rvn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeCompleteRevocationRefs(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cwn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfCompleteRevocationRefsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CounterSignatureType[] getCounterSignatureArray() {
        return (CounterSignatureType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CounterSignatureType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<CounterSignatureType> getCounterSignatureList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.own
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getCounterSignatureArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pwn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setCounterSignatureArray(((Integer) obj).intValue(), (CounterSignatureType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qwn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewCounterSignature(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rwn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeCounterSignature(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.swn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfCounterSignatureArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[13]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType[] getRefsOnlyTimeStampArray() {
        return (XAdESTimeStampType[]) getXmlObjectArray(PROPERTY_QNAME[7], new XAdESTimeStampType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<XAdESTimeStampType> getRefsOnlyTimeStampList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mvn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getRefsOnlyTimeStampArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nvn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setRefsOnlyTimeStampArray(((Integer) obj).intValue(), (XAdESTimeStampType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ovn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewRefsOnlyTimeStamp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pvn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeRefsOnlyTimeStamp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qvn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfRefsOnlyTimeStampArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public RevocationValuesType[] getRevocationValuesArray() {
        return (RevocationValuesType[]) getXmlObjectArray(PROPERTY_QNAME[9], new RevocationValuesType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<RevocationValuesType> getRevocationValuesList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.svn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getRevocationValuesArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tvn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setRevocationValuesArray(((Integer) obj).intValue(), (RevocationValuesType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uvn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewRevocationValues(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vvn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeRevocationValues(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wvn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfRevocationValuesArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType[] getSigAndRefsTimeStampArray() {
        return (XAdESTimeStampType[]) getXmlObjectArray(PROPERTY_QNAME[6], new XAdESTimeStampType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<XAdESTimeStampType> getSigAndRefsTimeStampList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nwn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getSigAndRefsTimeStampArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.twn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setSigAndRefsTimeStampArray(((Integer) obj).intValue(), (XAdESTimeStampType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uwn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewSigAndRefsTimeStamp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vwn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeSigAndRefsTimeStamp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wwn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfSigAndRefsTimeStampArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType[] getSignatureTimeStampArray() {
        return (XAdESTimeStampType[]) getXmlObjectArray(PROPERTY_QNAME[1], new XAdESTimeStampType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public List<XAdESTimeStampType> getSignatureTimeStampList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.iwn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.getSignatureTimeStampArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jwn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedSignaturePropertiesTypeImpl.this.setSignatureTimeStampArray(((Integer) obj).intValue(), (XAdESTimeStampType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kwn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedSignaturePropertiesTypeImpl.this.insertNewSignatureTimeStamp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lwn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedSignaturePropertiesTypeImpl.this.removeSignatureTimeStamp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mwn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedSignaturePropertiesTypeImpl.this.sizeOfSignatureTimeStampArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType insertNewArchiveTimeStamp(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CertificateValuesType insertNewAttrAuthoritiesCertValues(int i) {
        CertificateValuesType certificateValuesType;
        synchronized (monitor()) {
            check_orphaned();
            certificateValuesType = (CertificateValuesType) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return certificateValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteCertificateRefsType insertNewAttributeCertificateRefs(int i) {
        CompleteCertificateRefsType completeCertificateRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeCertificateRefsType = (CompleteCertificateRefsType) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return completeCertificateRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteRevocationRefsType insertNewAttributeRevocationRefs(int i) {
        CompleteRevocationRefsType completeRevocationRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeRevocationRefsType = (CompleteRevocationRefsType) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return completeRevocationRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public RevocationValuesType insertNewAttributeRevocationValues(int i) {
        RevocationValuesType revocationValuesType;
        synchronized (monitor()) {
            check_orphaned();
            revocationValuesType = (RevocationValuesType) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return revocationValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CertificateValuesType insertNewCertificateValues(int i) {
        CertificateValuesType certificateValuesType;
        synchronized (monitor()) {
            check_orphaned();
            certificateValuesType = (CertificateValuesType) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return certificateValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteCertificateRefsType insertNewCompleteCertificateRefs(int i) {
        CompleteCertificateRefsType completeCertificateRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeCertificateRefsType = (CompleteCertificateRefsType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return completeCertificateRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteRevocationRefsType insertNewCompleteRevocationRefs(int i) {
        CompleteRevocationRefsType completeRevocationRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeRevocationRefsType = (CompleteRevocationRefsType) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return completeRevocationRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CounterSignatureType insertNewCounterSignature(int i) {
        CounterSignatureType counterSignatureType;
        synchronized (monitor()) {
            check_orphaned();
            counterSignatureType = (CounterSignatureType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return counterSignatureType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType insertNewRefsOnlyTimeStamp(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public RevocationValuesType insertNewRevocationValues(int i) {
        RevocationValuesType revocationValuesType;
        synchronized (monitor()) {
            check_orphaned();
            revocationValuesType = (RevocationValuesType) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return revocationValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType insertNewSigAndRefsTimeStamp(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType insertNewSignatureTimeStamp(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeArchiveTimeStamp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeAttrAuthoritiesCertValues(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeAttributeCertificateRefs(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeAttributeRevocationRefs(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeAttributeRevocationValues(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeCertificateValues(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeCompleteCertificateRefs(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeCompleteRevocationRefs(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeCounterSignature(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeRefsOnlyTimeStamp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeRevocationValues(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeSigAndRefsTimeStamp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void removeSignatureTimeStamp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setArchiveTimeStampArray(XAdESTimeStampType[] xAdESTimeStampTypeArr) {
        check_orphaned();
        arraySetterHelper(xAdESTimeStampTypeArr, PROPERTY_QNAME[12]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setAttrAuthoritiesCertValuesArray(CertificateValuesType[] certificateValuesTypeArr) {
        check_orphaned();
        arraySetterHelper(certificateValuesTypeArr, PROPERTY_QNAME[10]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setAttributeCertificateRefsArray(CompleteCertificateRefsType[] completeCertificateRefsTypeArr) {
        check_orphaned();
        arraySetterHelper(completeCertificateRefsTypeArr, PROPERTY_QNAME[4]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setAttributeRevocationRefsArray(CompleteRevocationRefsType[] completeRevocationRefsTypeArr) {
        check_orphaned();
        arraySetterHelper(completeRevocationRefsTypeArr, PROPERTY_QNAME[5]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setAttributeRevocationValuesArray(RevocationValuesType[] revocationValuesTypeArr) {
        check_orphaned();
        arraySetterHelper(revocationValuesTypeArr, PROPERTY_QNAME[11]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setCertificateValuesArray(CertificateValuesType[] certificateValuesTypeArr) {
        check_orphaned();
        arraySetterHelper(certificateValuesTypeArr, PROPERTY_QNAME[8]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setCompleteCertificateRefsArray(CompleteCertificateRefsType[] completeCertificateRefsTypeArr) {
        check_orphaned();
        arraySetterHelper(completeCertificateRefsTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setCompleteRevocationRefsArray(CompleteRevocationRefsType[] completeRevocationRefsTypeArr) {
        check_orphaned();
        arraySetterHelper(completeRevocationRefsTypeArr, PROPERTY_QNAME[3]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setCounterSignatureArray(CounterSignatureType[] counterSignatureTypeArr) {
        check_orphaned();
        arraySetterHelper(counterSignatureTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setRefsOnlyTimeStampArray(XAdESTimeStampType[] xAdESTimeStampTypeArr) {
        check_orphaned();
        arraySetterHelper(xAdESTimeStampTypeArr, PROPERTY_QNAME[7]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setRevocationValuesArray(RevocationValuesType[] revocationValuesTypeArr) {
        check_orphaned();
        arraySetterHelper(revocationValuesTypeArr, PROPERTY_QNAME[9]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setSigAndRefsTimeStampArray(XAdESTimeStampType[] xAdESTimeStampTypeArr) {
        check_orphaned();
        arraySetterHelper(xAdESTimeStampTypeArr, PROPERTY_QNAME[6]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setSignatureTimeStampArray(XAdESTimeStampType[] xAdESTimeStampTypeArr) {
        check_orphaned();
        arraySetterHelper(xAdESTimeStampTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfArchiveTimeStampArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfAttrAuthoritiesCertValuesArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfAttributeCertificateRefsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfAttributeRevocationRefsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfAttributeRevocationValuesArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfCertificateValuesArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfCompleteCertificateRefsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfCompleteRevocationRefsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfCounterSignatureArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfRefsOnlyTimeStampArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfRevocationValuesArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfSigAndRefsTimeStampArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public int sizeOfSignatureTimeStampArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[13]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[13]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[13]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType getArchiveTimeStampArray(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (xAdESTimeStampType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CertificateValuesType getAttrAuthoritiesCertValuesArray(int i) {
        CertificateValuesType certificateValuesType;
        synchronized (monitor()) {
            check_orphaned();
            certificateValuesType = (CertificateValuesType) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (certificateValuesType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return certificateValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteCertificateRefsType getAttributeCertificateRefsArray(int i) {
        CompleteCertificateRefsType completeCertificateRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeCertificateRefsType = (CompleteCertificateRefsType) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (completeCertificateRefsType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return completeCertificateRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteRevocationRefsType getAttributeRevocationRefsArray(int i) {
        CompleteRevocationRefsType completeRevocationRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeRevocationRefsType = (CompleteRevocationRefsType) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (completeRevocationRefsType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return completeRevocationRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public RevocationValuesType getAttributeRevocationValuesArray(int i) {
        RevocationValuesType revocationValuesType;
        synchronized (monitor()) {
            check_orphaned();
            revocationValuesType = (RevocationValuesType) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (revocationValuesType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return revocationValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CertificateValuesType getCertificateValuesArray(int i) {
        CertificateValuesType certificateValuesType;
        synchronized (monitor()) {
            check_orphaned();
            certificateValuesType = (CertificateValuesType) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (certificateValuesType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return certificateValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteCertificateRefsType getCompleteCertificateRefsArray(int i) {
        CompleteCertificateRefsType completeCertificateRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeCertificateRefsType = (CompleteCertificateRefsType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (completeCertificateRefsType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return completeCertificateRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CompleteRevocationRefsType getCompleteRevocationRefsArray(int i) {
        CompleteRevocationRefsType completeRevocationRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeRevocationRefsType = (CompleteRevocationRefsType) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (completeRevocationRefsType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return completeRevocationRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public CounterSignatureType getCounterSignatureArray(int i) {
        CounterSignatureType counterSignatureType;
        synchronized (monitor()) {
            check_orphaned();
            counterSignatureType = (CounterSignatureType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (counterSignatureType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return counterSignatureType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType getRefsOnlyTimeStampArray(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (xAdESTimeStampType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public RevocationValuesType getRevocationValuesArray(int i) {
        RevocationValuesType revocationValuesType;
        synchronized (monitor()) {
            check_orphaned();
            revocationValuesType = (RevocationValuesType) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (revocationValuesType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return revocationValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType getSigAndRefsTimeStampArray(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (xAdESTimeStampType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public XAdESTimeStampType getSignatureTimeStampArray(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (xAdESTimeStampType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setArchiveTimeStampArray(int i, XAdESTimeStampType xAdESTimeStampType) {
        generatedSetterHelperImpl(xAdESTimeStampType, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setAttrAuthoritiesCertValuesArray(int i, CertificateValuesType certificateValuesType) {
        generatedSetterHelperImpl(certificateValuesType, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setAttributeCertificateRefsArray(int i, CompleteCertificateRefsType completeCertificateRefsType) {
        generatedSetterHelperImpl(completeCertificateRefsType, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setAttributeRevocationRefsArray(int i, CompleteRevocationRefsType completeRevocationRefsType) {
        generatedSetterHelperImpl(completeRevocationRefsType, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setAttributeRevocationValuesArray(int i, RevocationValuesType revocationValuesType) {
        generatedSetterHelperImpl(revocationValuesType, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setCertificateValuesArray(int i, CertificateValuesType certificateValuesType) {
        generatedSetterHelperImpl(certificateValuesType, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setCompleteCertificateRefsArray(int i, CompleteCertificateRefsType completeCertificateRefsType) {
        generatedSetterHelperImpl(completeCertificateRefsType, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setCompleteRevocationRefsArray(int i, CompleteRevocationRefsType completeRevocationRefsType) {
        generatedSetterHelperImpl(completeRevocationRefsType, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setCounterSignatureArray(int i, CounterSignatureType counterSignatureType) {
        generatedSetterHelperImpl(counterSignatureType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setRefsOnlyTimeStampArray(int i, XAdESTimeStampType xAdESTimeStampType) {
        generatedSetterHelperImpl(xAdESTimeStampType, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setRevocationValuesArray(int i, RevocationValuesType revocationValuesType) {
        generatedSetterHelperImpl(revocationValuesType, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setSigAndRefsTimeStampArray(int i, XAdESTimeStampType xAdESTimeStampType) {
        generatedSetterHelperImpl(xAdESTimeStampType, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType
    public void setSignatureTimeStampArray(int i, XAdESTimeStampType xAdESTimeStampType) {
        generatedSetterHelperImpl(xAdESTimeStampType, PROPERTY_QNAME[1], i, (short) 2);
    }
}
