package org.apache.poi.poifs.crypt.dsig.facets;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRLException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.TimeZone;
import java.util.function.Consumer;
import java.util.function.Supplier;
import javax.xml.crypto.MarshalException;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.poifs.crypt.dsig.SignatureConfig;
import org.apache.poi.poifs.crypt.dsig.SignatureInfo;
import org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet;
import org.apache.poi.poifs.crypt.dsig.services.RevocationData;
import org.apache.poi.poifs.crypt.dsig.services.RevocationDataService;
import org.apache.xml.security.c14n.Canonicalizer;
import org.apache.xmlbeans.XmlException;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.cert.ocsp.BasicOCSPResp;
import org.bouncycastle.cert.ocsp.OCSPResp;
import org.etsi.uri.x01903.v13.CRLIdentifierType;
import org.etsi.uri.x01903.v13.CRLRefType;
import org.etsi.uri.x01903.v13.CRLRefsType;
import org.etsi.uri.x01903.v13.CRLValuesType;
import org.etsi.uri.x01903.v13.CertIDListType;
import org.etsi.uri.x01903.v13.CertificateValuesType;
import org.etsi.uri.x01903.v13.CompleteCertificateRefsType;
import org.etsi.uri.x01903.v13.CompleteRevocationRefsType;
import org.etsi.uri.x01903.v13.OCSPIdentifierType;
import org.etsi.uri.x01903.v13.OCSPRefType;
import org.etsi.uri.x01903.v13.OCSPRefsType;
import org.etsi.uri.x01903.v13.OCSPValuesType;
import org.etsi.uri.x01903.v13.QualifyingPropertiesDocument;
import org.etsi.uri.x01903.v13.QualifyingPropertiesType;
import org.etsi.uri.x01903.v13.ResponderIDType;
import org.etsi.uri.x01903.v13.RevocationValuesType;
import org.etsi.uri.x01903.v13.UnsignedPropertiesType;
import org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType;
import org.etsi.uri.x01903.v13.XAdESTimeStampType;
import org.etsi.uri.x01903.v14.TimeStampValidationDataDocument;
import org.etsi.uri.x01903.v14.ValidationDataType;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes12.dex */
public class XAdESXLSignatureFacet implements SignatureFacet {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XAdESXLSignatureFacet.class);
    private final CertificateFactory certificateFactory;

    public XAdESXLSignatureFacet() {
        try {
            this.certificateFactory = CertificateFactory.getInstance("X.509");
        } catch (CertificateException e) {
            throw new IllegalStateException("X509 JCA error: " + e.getMessage(), e);
        }
    }

    private void addCertificateValues(UnsignedSignaturePropertiesType unsignedSignaturePropertiesType, SignatureConfig signatureConfig) {
        List<X509Certificate> signingCertificateChain = signatureConfig.getSigningCertificateChain();
        if (signingCertificateChain.size() < 2) {
            return;
        }
        CertificateValuesType addNewCertificateValues = unsignedSignaturePropertiesType.addNewCertificateValues();
        try {
            Iterator<X509Certificate> it2 = signingCertificateChain.subList(1, signingCertificateChain.size()).iterator();
            while (it2.hasNext()) {
                addNewCertificateValues.addNewEncapsulatedX509Certificate().setByteArrayValue(it2.next().getEncoded());
            }
        } catch (CertificateEncodingException e) {
            throw new IllegalStateException("certificate encoding error: " + e.getMessage(), e);
        }
    }

    private void addRevocationCRL(CompleteRevocationRefsType completeRevocationRefsType, SignatureConfig signatureConfig, RevocationData revocationData) {
        if (revocationData.hasCRLs()) {
            CRLRefsType addNewCRLRefs = completeRevocationRefsType.addNewCRLRefs();
            completeRevocationRefsType.setCRLRefs(addNewCRLRefs);
            for (byte[] bArr : revocationData.getCRLs()) {
                CRLRefType addNewCRLRef = addNewCRLRefs.addNewCRLRef();
                try {
                    X509CRL x509crl = (X509CRL) this.certificateFactory.generateCRL(new UnsynchronizedByteArrayInputStream(bArr));
                    CRLIdentifierType addNewCRLIdentifier = addNewCRLRef.addNewCRLIdentifier();
                    addNewCRLIdentifier.setIssuer(x509crl.getIssuerX500Principal().getName().replace(",", ", "));
                    Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone(Constants.HASIDCALL_INDEX_SIG), Locale.ROOT);
                    calendar.setTime(x509crl.getThisUpdate());
                    addNewCRLIdentifier.setIssueTime(calendar);
                    addNewCRLIdentifier.setNumber(getCrlNumber(x509crl));
                    XAdESSignatureFacet.setDigestAlgAndValue(addNewCRLRef.addNewDigestAlgAndValue(), bArr, signatureConfig.getDigestAlgo());
                } catch (CRLException e) {
                    throw new IllegalStateException("CRL parse error: " + e.getMessage(), e);
                }
            }
        }
    }

    private void addRevocationOCSP(CompleteRevocationRefsType completeRevocationRefsType, SignatureConfig signatureConfig, RevocationData revocationData) {
        if (revocationData.hasOCSPs()) {
            OCSPRefsType addNewOCSPRefs = completeRevocationRefsType.addNewOCSPRefs();
            for (byte[] bArr : revocationData.getOCSPs()) {
                try {
                    OCSPRefType addNewOCSPRef = addNewOCSPRefs.addNewOCSPRef();
                    XAdESSignatureFacet.setDigestAlgAndValue(addNewOCSPRef.addNewDigestAlgAndValue(), bArr, signatureConfig.getDigestAlgo());
                    OCSPIdentifierType addNewOCSPIdentifier = addNewOCSPRef.addNewOCSPIdentifier();
                    BasicOCSPResp basicOCSPResp = (BasicOCSPResp) new OCSPResp(bArr).getResponseObject();
                    Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone(Constants.HASIDCALL_INDEX_SIG), Locale.ROOT);
                    calendar.setTime(basicOCSPResp.getProducedAt());
                    addNewOCSPIdentifier.setProducedAt(calendar);
                    ResponderIDType addNewResponderID = addNewOCSPIdentifier.addNewResponderID();
                    DERTaggedObject aSN1Primitive = basicOCSPResp.getResponderId().toASN1Primitive().toASN1Primitive();
                    if (2 == aSN1Primitive.getTagNo()) {
                        addNewResponderID.setByKey(aSN1Primitive.getBaseObject().getOctets());
                    } else {
                        addNewResponderID.setByName(X500Name.getInstance(aSN1Primitive.getBaseObject()).toString());
                    }
                } catch (Exception e) {
                    throw new IllegalStateException("OCSP decoding error: " + e.getMessage(), e);
                }
            }
        }
    }

    private CompleteCertificateRefsType completeCertificateRefs(UnsignedSignaturePropertiesType unsignedSignaturePropertiesType, final SignatureConfig signatureConfig) {
        CompleteCertificateRefsType addNewCompleteCertificateRefs = unsignedSignaturePropertiesType.addNewCompleteCertificateRefs();
        final CertIDListType addNewCertRefs = addNewCompleteCertificateRefs.addNewCertRefs();
        signatureConfig.getSigningCertificateChain().stream().skip(1L).forEachOrdered(new Consumer() { // from class: com.sunia.HTREnginev2.yco
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                XAdESXLSignatureFacet.lambda$completeCertificateRefs$0(CertIDListType.this, signatureConfig, (X509Certificate) obj);
            }
        });
        return addNewCompleteCertificateRefs;
    }

    private void createRevocationValues(RevocationValuesType revocationValuesType, RevocationData revocationData) {
        if (revocationData.hasCRLs()) {
            CRLValuesType addNewCRLValues = revocationValuesType.addNewCRLValues();
            Iterator<byte[]> it2 = revocationData.getCRLs().iterator();
            while (it2.hasNext()) {
                addNewCRLValues.addNewEncapsulatedCRLValue().setByteArrayValue(it2.next());
            }
        }
        if (revocationData.hasOCSPs()) {
            OCSPValuesType addNewOCSPValues = revocationValuesType.addNewOCSPValues();
            Iterator<byte[]> it3 = revocationData.getOCSPs().iterator();
            while (it3.hasNext()) {
                addNewOCSPValues.addNewEncapsulatedOCSPValue().setByteArrayValue(it3.next());
            }
        }
    }

    private TimeStampValidationDataDocument createValidationData(RevocationData revocationData) throws CertificateEncodingException {
        TimeStampValidationDataDocument newInstance = TimeStampValidationDataDocument.Factory.newInstance();
        ValidationDataType addNewTimeStampValidationData = newInstance.addNewTimeStampValidationData();
        List<X509Certificate> x509chain = revocationData.getX509chain();
        if (x509chain.size() > 1) {
            CertificateValuesType addNewCertificateValues = addNewTimeStampValidationData.addNewCertificateValues();
            Iterator<X509Certificate> it2 = x509chain.subList(1, x509chain.size()).iterator();
            while (it2.hasNext()) {
                addNewCertificateValues.addNewEncapsulatedX509Certificate().setByteArrayValue(it2.next().getEncoded());
            }
        }
        createRevocationValues(addNewTimeStampValidationData.addNewRevocationValues(), revocationData);
        return newInstance;
    }

    private XAdESTimeStampType createXAdESTimeStamp(SignatureInfo signatureInfo, RevocationData revocationData, Node... nodeArr) {
        SignatureConfig signatureConfig = signatureInfo.getSignatureConfig();
        try {
            byte[] timeStamp = signatureConfig.getTspService().timeStamp(signatureInfo, getC14nValue(Arrays.asList(nodeArr), signatureConfig.getXadesCanonicalizationMethod()), revocationData);
            XAdESTimeStampType newInstance = XAdESTimeStampType.Factory.newInstance();
            newInstance.addNewCanonicalizationMethod().setAlgorithm(signatureConfig.getXadesCanonicalizationMethod());
            newInstance.addNewEncapsulatedTimeStamp().setByteArrayValue(timeStamp);
            return newInstance;
        } catch (Exception e) {
            throw new IllegalStateException("error while creating a time-stamp: " + e.getMessage(), e);
        }
    }

    private static byte[] getC14nValue(List<Node> list, String str) {
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                Iterator<Node> it2 = list.iterator();
                while (it2.hasNext()) {
                    Canonicalizer.getInstance(str).canonicalizeSubtree(it2.next(), unsynchronizedByteArrayOutputStream);
                }
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                unsynchronizedByteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        unsynchronizedByteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new IllegalStateException("c14n error: " + e2.getMessage(), e2);
        }
    }

    private BigInteger getCrlNumber(X509CRL x509crl) {
        byte[] extensionValue = x509crl.getExtensionValue(Extension.cRLNumber.getId());
        if (extensionValue == null) {
            return null;
        }
        try {
            ASN1InputStream aSN1InputStream = new ASN1InputStream(extensionValue);
            try {
                ASN1InputStream aSN1InputStream2 = new ASN1InputStream(aSN1InputStream.readObject().getOctets());
                try {
                    BigInteger positiveValue = aSN1InputStream2.readObject().getPositiveValue();
                    aSN1InputStream2.close();
                    aSN1InputStream.close();
                    return positiveValue;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException("I/O error: " + e.getMessage(), e);
        }
    }

    private QualifyingPropertiesType getQualProps(NodeList nodeList) throws MarshalException {
        if (nodeList.getLength() != 1) {
            throw new MarshalException("no XAdES-BES extension present");
        }
        try {
            return QualifyingPropertiesDocument.Factory.parse(nodeList.item(0), POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getQualifyingProperties();
        } catch (XmlException e) {
            throw new MarshalException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$completeCertificateRefs$0(CertIDListType certIDListType, SignatureConfig signatureConfig, X509Certificate x509Certificate) {
        XAdESSignatureFacet.setCertID(certIDListType.addNewCert(), signatureConfig, false, x509Certificate);
    }

    @Override // org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet
    public void postSign(SignatureInfo signatureInfo, Document document) throws MarshalException {
        Logger logger = LOG;
        logger.atDebug().log("XAdES-X-L post sign phase");
        SignatureConfig signatureConfig = signatureInfo.getSignatureConfig();
        NodeList elementsByTagNameNS = document.getElementsByTagNameNS(SignatureFacet.XADES_132_NS, "QualifyingProperties");
        final QualifyingPropertiesType qualProps = getQualProps(elementsByTagNameNS);
        final UnsignedPropertiesType unsignedPropertiesType = (UnsignedPropertiesType) Optional.ofNullable(qualProps.getUnsignedProperties()).orElseGet(new Supplier() { // from class: com.sunia.HTREnginev2.zco
            @Override // java.util.function.Supplier
            public final Object get() {
                return QualifyingPropertiesType.this.addNewUnsignedProperties();
            }
        });
        UnsignedSignaturePropertiesType unsignedSignaturePropertiesType = (UnsignedSignaturePropertiesType) Optional.ofNullable(unsignedPropertiesType.getUnsignedSignatureProperties()).orElseGet(new Supplier() { // from class: com.sunia.HTREnginev2.ado
            @Override // java.util.function.Supplier
            public final Object get() {
                return UnsignedPropertiesType.this.addNewUnsignedSignatureProperties();
            }
        });
        NodeList elementsByTagNameNS2 = document.getElementsByTagNameNS(SignatureFacet.XML_DIGSIG_NS, "SignatureValue");
        if (elementsByTagNameNS2.getLength() != 1) {
            throw new IllegalArgumentException("SignatureValue is not set.");
        }
        Element element = (Element) elementsByTagNameNS2.item(0);
        RevocationDataService revocationDataService = signatureConfig.getRevocationDataService();
        if (revocationDataService != null) {
            addCertificateValues(unsignedSignaturePropertiesType, signatureConfig);
        }
        logger.atDebug().log("creating XAdES-T time-stamp");
        try {
            RevocationData revocationData = new RevocationData();
            XAdESTimeStampType createXAdESTimeStamp = createXAdESTimeStamp(signatureInfo, revocationData, element);
            unsignedSignaturePropertiesType.addNewSignatureTimeStamp().set(createXAdESTimeStamp);
            if (revocationData.hasRevocationDataEntries()) {
                XAdESSignatureFacet.insertXChild(unsignedSignaturePropertiesType, createValidationData(revocationData));
            }
            if (revocationDataService != null) {
                CompleteCertificateRefsType completeCertificateRefs = completeCertificateRefs(unsignedSignaturePropertiesType, signatureConfig);
                RevocationData revocationData2 = revocationDataService.getRevocationData(signatureConfig.getSigningCertificateChain());
                CompleteRevocationRefsType addNewCompleteRevocationRefs = unsignedSignaturePropertiesType.addNewCompleteRevocationRefs();
                addRevocationCRL(addNewCompleteRevocationRefs, signatureConfig, revocationData2);
                addRevocationOCSP(addNewCompleteRevocationRefs, signatureConfig, revocationData2);
                createRevocationValues(unsignedSignaturePropertiesType.addNewRevocationValues(), revocationData2);
                logger.atDebug().log("creating XAdES-X time-stamp");
                unsignedSignaturePropertiesType.addNewSigAndRefsTimeStamp().set(createXAdESTimeStamp(signatureInfo, new RevocationData(), element, createXAdESTimeStamp.getDomNode(), completeCertificateRefs.getDomNode(), addNewCompleteRevocationRefs.getDomNode()));
            }
            Element element2 = (Element) document.importNode(qualProps.getDomNode(), true);
            NodeList elementsByTagName = element2.getElementsByTagName("TimeStampValidationData");
            for (int i = 0; i < elementsByTagName.getLength(); i++) {
                ((Element) elementsByTagName.item(i)).setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns", SignatureFacet.XADES_141_NS);
            }
            Node item = elementsByTagNameNS.item(0);
            item.getParentNode().replaceChild(element2, item);
        } catch (CertificateEncodingException e) {
            throw new MarshalException("unable to create XAdES signatrue", e);
        }
    }
}
