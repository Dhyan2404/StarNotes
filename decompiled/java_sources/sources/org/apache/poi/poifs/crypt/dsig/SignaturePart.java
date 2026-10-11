package org.apache.poi.poifs.crypt.dsig;

import java.io.IOException;
import java.io.InputStream;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import javax.xml.crypto.MarshalException;
import javax.xml.crypto.dsig.XMLSignature;
import javax.xml.crypto.dsig.XMLSignatureException;
import javax.xml.crypto.dsig.dom.DOMValidateContext;
import javax.xml.namespace.NamespaceContext;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.ooxml.util.DocumentHelper;
import org.apache.poi.ooxml.util.XPathHelper;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.SignatureConfig;
import org.apache.poi.poifs.crypt.dsig.SignaturePart;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.XmlException;
import org.p120w3.x2000.x09.xmldsig.SignatureDocument;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/* loaded from: classes12.dex */
public class SignaturePart {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SignaturePart.class);
    private static final String XMLSEC_VALIDATE_MANIFEST = "org.jcp.xml.dsig.validateManifests";
    private static final String XMLSEC_VALIDATE_SECURE = "org.apache.jcp.xml.dsig.secureValidation";
    private List<X509Certificate> certChain;
    private final SignatureInfo signatureInfo;
    private final PackagePart signaturePart;
    private X509Certificate signer;

    /* loaded from: classes12.dex */
    public class XPathNSContext implements NamespaceContext {
        final Map<String, String> nsMap;

        private XPathNSContext() {
            HashMap hashMap = new HashMap();
            this.nsMap = hashMap;
            SignaturePart.this.signatureInfo.getSignatureConfig().getNamespacePrefixes().forEach(new BiConsumer() { // from class: org.apache.poi.poifs.crypt.dsig.c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SignaturePart.XPathNSContext.this.lambda$new$0((String) obj, (String) obj2);
                }
            });
            hashMap.put("dsss", SignatureFacet.MS_DIGSIG_NS);
            hashMap.put("ds", SignatureFacet.XML_DIGSIG_NS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(String str, String str2) {
            this.nsMap.put(str2, str);
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getNamespaceURI(String str) {
            return this.nsMap.get(str);
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String str) {
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator getPrefixes(String str) {
            return null;
        }
    }

    public SignaturePart(PackagePart packagePart, SignatureInfo signatureInfo) {
        this.signaturePart = packagePart;
        this.signatureInfo = signatureInfo;
    }

    private void extractConfig(Document document, XMLSignature xMLSignature) throws XPathExpressionException {
        final SignatureConfig signatureConfig = this.signatureInfo.getSignatureConfig();
        if (signatureConfig.isUpdateConfigOnValidate()) {
            signatureConfig.setSigningCertificateChain(this.certChain);
            signatureConfig.setSignatureMethodFromUri(xMLSignature.getSignedInfo().getSignatureMethod().getAlgorithm());
            XPath newXPath = XPathHelper.getFactory().newXPath();
            newXPath.setNamespaceContext(new XPathNSContext());
            HashMap hashMap = new HashMap();
            hashMap.put("//mdssi:SignatureTime/mdssi:Value", new Consumer() { // from class: com.sunia.HTREnginev2.oqm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignatureConfig.this.setExecutionTime((String) obj);
                }
            });
            hashMap.put("//xd:ClaimedRole", new Consumer() { // from class: com.sunia.HTREnginev2.pqm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignatureConfig.this.setXadesRole((String) obj);
                }
            });
            hashMap.put("//dsss:SignatureComments", new Consumer() { // from class: com.sunia.HTREnginev2.qqm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignatureConfig.this.setSignatureDescription((String) obj);
                }
            });
            hashMap.put("//xd:QualifyingProperties//xd:SignedSignatureProperties//ds:DigestMethod/@Algorithm", new Consumer() { // from class: com.sunia.HTREnginev2.rqm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignatureConfig.this.setXadesDigestAlgo((String) obj);
                }
            });
            hashMap.put("//ds:CanonicalizationMethod", new Consumer() { // from class: com.sunia.HTREnginev2.sqm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignatureConfig.this.setCanonicalizationMethod((String) obj);
                }
            });
            hashMap.put("//xd:CommitmentTypeId/xd:Description", new Consumer() { // from class: com.sunia.HTREnginev2.tqm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignatureConfig.this.setCommitmentType((String) obj);
                }
            });
            for (Map.Entry entry : hashMap.entrySet()) {
                ((Consumer) entry.getValue()).accept((String) newXPath.compile((String) entry.getKey()).evaluate(document, XPathConstants.STRING));
            }
        }
    }

    public List<X509Certificate> getCertChain() {
        return this.certChain;
    }

    public PackagePart getPackagePart() {
        return this.signaturePart;
    }

    public SignatureDocument getSignatureDocument() throws IOException, XmlException {
        InputStream inputStream = this.signaturePart.getInputStream();
        try {
            SignatureDocument parse = SignatureDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
            if (inputStream != null) {
                inputStream.close();
            }
            return parse;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public X509Certificate getSigner() {
        return this.signer;
    }

    public boolean validate() {
        KeyInfoKeySelector keyInfoKeySelector = new KeyInfoKeySelector();
        XPath newXPath = XPathHelper.getFactory().newXPath();
        newXPath.setNamespaceContext(new XPathNSContext());
        try {
            InputStream inputStream = this.signaturePart.getInputStream();
            try {
                Document readDocument = DocumentHelper.readDocument(inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
                NodeList nodeList = (NodeList) newXPath.compile("//*[@Id]").evaluate(readDocument, XPathConstants.NODESET);
                int length = nodeList.getLength();
                for (int i = 0; i < length; i++) {
                    ((Element) nodeList.item(i)).setIdAttribute(PackageRelationship.ID_ATTRIBUTE_NAME, true);
                }
                DOMValidateContext dOMValidateContext = new DOMValidateContext(keyInfoKeySelector, readDocument);
                dOMValidateContext.setProperty(XMLSEC_VALIDATE_MANIFEST, Boolean.TRUE);
                dOMValidateContext.setProperty(XMLSEC_VALIDATE_SECURE, Boolean.valueOf(this.signatureInfo.getSignatureConfig().isSecureValidation()));
                dOMValidateContext.setURIDereferencer(this.signatureInfo.getUriDereferencer());
                XMLSignature unmarshalXMLSignature = this.signatureInfo.getSignatureFactory().unmarshalXMLSignature(dOMValidateContext);
                boolean validate = unmarshalXMLSignature.validate(dOMValidateContext);
                if (validate) {
                    this.signer = keyInfoKeySelector.getSigner();
                    this.certChain = keyInfoKeySelector.getCertChain();
                    extractConfig(readDocument, unmarshalXMLSignature);
                }
                return validate;
            } finally {
            }
        } catch (XMLSignatureException e) {
            LOG.atError().withThrowable(e).log("error in validating the signature");
            throw new EncryptedDocumentException("error in validating the signature", e);
        } catch (MarshalException e2) {
            LOG.atError().withThrowable(e2).log("error in unmarshalling the signature");
            throw new EncryptedDocumentException("error in unmarshalling the signature", e2);
        } catch (IOException e3) {
            LOG.atError().withThrowable(e3).log("error in reading document");
            throw new EncryptedDocumentException("error in reading document", e3);
        } catch (XPathExpressionException e4) {
            LOG.atError().withThrowable(e4).log("error in searching document with xpath expression");
            throw new EncryptedDocumentException("error in searching document with xpath expression", e4);
        } catch (SAXException e5) {
            LOG.atError().withThrowable(e5).log("error in parsing document");
            throw new EncryptedDocumentException("error in parsing document", e5);
        }
    }
}
