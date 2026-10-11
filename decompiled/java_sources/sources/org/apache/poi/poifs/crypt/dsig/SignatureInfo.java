package org.apache.poi.poifs.crypt.dsig;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;
import javax.xml.crypto.MarshalException;
import javax.xml.crypto.URIDereferencer;
import javax.xml.crypto.dsig.Manifest;
import javax.xml.crypto.dsig.TransformException;
import javax.xml.crypto.dsig.XMLObject;
import javax.xml.crypto.dsig.XMLSignatureException;
import javax.xml.crypto.dsig.XMLSignatureFactory;
import javax.xml.crypto.dsig.dom.DOMSignContext;
import javax.xml.crypto.dsig.keyinfo.KeyInfo;
import javax.xml.crypto.dsig.keyinfo.KeyInfoFactory;
import javax.xml.crypto.dsig.spec.C14NMethodParameterSpec;
import javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec;
import org.apache.jcp.xml.dsig.internal.dom.DOMReference;
import org.apache.jcp.xml.dsig.internal.dom.DOMSignedInfo;
import org.apache.jcp.xml.dsig.internal.dom.DOMSubTreeData;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.ooxml.util.DocumentHelper;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipCollection;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.poifs.crypt.dsig.SignatureInfo;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.poi.poifs.crypt.dsig.services.RelationshipTransformService;
import org.apache.xml.security.Init;
import org.apache.xml.security.utils.XMLUtils;
import org.apache.xmlbeans.XmlOptions;
import org.p120w3.x2000.x09.xmldsig.SignatureDocument;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.w3c.dom.events.Event;
import org.w3c.dom.events.EventListener;
import org.w3c.dom.events.EventTarget;
import org.w3c.dom.events.MutationEvent;

/* loaded from: classes12.dex */
public class SignatureInfo {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SignatureInfo.class);
    private KeyInfoFactory keyInfoFactory;
    private OPCPackage opcPackage;
    private Provider provider;
    private SignatureConfig signatureConfig;
    private XMLSignatureFactory signatureFactory;
    private URIDereferencer uriDereferencer;

    /* renamed from: org.apache.poi.poifs.crypt.dsig.SignatureInfo$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195791 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm;

        static {
            int[] iArr = new int[HashAlgorithm.values().length];
            $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm = iArr;
            try {
                iArr[HashAlgorithm.md2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.md5.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.sha1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.sha256.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.sha384.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.sha512.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public final class SignaturePartIterator implements Iterator<SignaturePart> {
        Iterator<PackageRelationship> sigOrigRels;
        private PackagePart sigPart;
        private Iterator<PackageRelationship> sigRels;

        public /* synthetic */ SignaturePartIterator(SignatureInfo signatureInfo, C195791 c195791) {
            this();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (true) {
                Iterator<PackageRelationship> it2 = this.sigRels;
                if (it2 != null && it2.hasNext()) {
                    return true;
                }
                if (!this.sigOrigRels.hasNext()) {
                    return false;
                }
                this.sigPart = SignatureInfo.this.opcPackage.getPart(this.sigOrigRels.next());
                SignatureInfo.LOG.atDebug().log("Digital Signature Origin part: {}", this.sigPart);
                try {
                    this.sigRels = this.sigPart.getRelationshipsByType(PackageRelationshipTypes.DIGITAL_SIGNATURE).iterator();
                } catch (InvalidFormatException e) {
                    SignatureInfo.LOG.atWarn().withThrowable(e).log("Reference to signature is invalid.");
                }
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private SignaturePartIterator() {
            this.sigOrigRels = SignatureInfo.this.opcPackage.getRelationshipsByType(PackageRelationshipTypes.DIGITAL_SIGNATURE_ORIGIN).iterator();
        }

        @Override // java.util.Iterator
        public SignaturePart next() {
            PackagePart packagePart = null;
            do {
                try {
                    if (hasNext()) {
                        packagePart = this.sigPart.getRelatedPart(this.sigRels.next());
                        SignatureInfo.LOG.atDebug().log("XML Signature part: {}", packagePart);
                    } else {
                        throw new NoSuchElementException();
                        break;
                    }
                } catch (InvalidFormatException e) {
                    SignatureInfo.LOG.atWarn().withThrowable(e).log("Reference to signature is invalid.");
                }
            } while (packagePart == null);
            return new SignaturePart(packagePart, SignatureInfo.this);
        }
    }

    /* loaded from: classes12.dex */
    public static final class XmlProviderInitSingleton {

        /* loaded from: classes12.dex */
        public static class SingletonHelper {
            private static final XmlProviderInitSingleton INSTANCE = new XmlProviderInitSingleton(null);

            private SingletonHelper() {
            }
        }

        public /* synthetic */ XmlProviderInitSingleton(C195791 c195791) {
            this();
        }

        public static XmlProviderInitSingleton getInstance() {
            return SingletonHelper.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Provider getProvider(String str) {
            try {
                return (Provider) Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception unused) {
                SignatureInfo.LOG.atDebug().log("XMLDsig-Provider '{}' can't be found - trying next.", str);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RuntimeException providerNotFound() {
            return new IllegalStateException("JRE doesn't support default xml signature provider - set jsr105Provider system property!");
        }

        public Provider findProvider() {
            return (Provider) Stream.of((Object[]) SignatureConfig.getProviderNames()).map(new Function() { // from class: org.apache.poi.poifs.crypt.dsig.a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Provider provider;
                    provider = SignatureInfo.XmlProviderInitSingleton.this.getProvider((String) obj);
                    return provider;
                }
            }).filter(new Predicate() { // from class: com.sunia.HTREnginev2.kqm
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return Objects.nonNull((Provider) obj);
                }
            }).findFirst().orElseThrow(new Supplier() { // from class: org.apache.poi.poifs.crypt.dsig.b
                @Override // java.util.function.Supplier
                public final Object get() {
                    RuntimeException providerNotFound;
                    providerNotFound = SignatureInfo.XmlProviderInitSingleton.this.providerNotFound();
                    return providerNotFound;
                }
            });
        }

        private XmlProviderInitSingleton() {
            try {
                Init.init();
                RelationshipTransformService.registerDsigProvider();
                CryptoFunctions.registerBouncyCastle();
            } catch (Exception e) {
                throw new IllegalStateException("Xml & BouncyCastle-Provider initialization failed", e);
            }
        }
    }

    private static DigestOutputStream getDigestStream(HashAlgorithm hashAlgorithm, PrivateKey privateKey) {
        switch (C195791.$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[hashAlgorithm.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new SignatureOutputStream(hashAlgorithm, privateKey);
            default:
                return new DigestOutputStream(hashAlgorithm, privateKey);
        }
    }

    private Element getDsigElement(Document document, String str) {
        NodeList elementsByTagNameNS = document.getElementsByTagNameNS(SignatureFacet.XML_DIGSIG_NS, str);
        if (elementsByTagNameNS.getLength() == 1) {
            return (Element) elementsByTagNameNS.item(0);
        }
        LOG.atWarn().log("Signature element '{}' was {}", str, elementsByTagNameNS.getLength() == 0 ? "not found" : "multiple times");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterator lambda$getSignatureParts$0() {
        return new SignaturePartIterator(this, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$registerEventListener$1(EventTarget eventTarget, EventListener[] eventListenerArr, SignatureMarshalListener signatureMarshalListener, Document document, Event event) {
        if ((event instanceof MutationEvent) && (event.getTarget() instanceof Document)) {
            eventTarget.removeEventListener("DOMSubtreeModified", eventListenerArr[0], false);
            signatureMarshalListener.handleElement(this, document, eventTarget, eventListenerArr[0]);
            eventTarget.addEventListener("DOMSubtreeModified", eventListenerArr[0], false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$writeDocument$2(Map map, String str, String str2) {
    }

    public void confirmSignature() throws XMLSignatureException, MarshalException {
        initXmlProvider();
        DOMSignContext createXMLSignContext = createXMLSignContext(DocumentHelper.createDocument());
        postSign(createXMLSignContext, signDigest(createXMLSignContext, preSign(createXMLSignContext)));
    }

    public DOMSignContext createXMLSignContext(Document document) {
        initXmlProvider();
        return new DOMSignContext(this.signatureConfig.getKey(), document);
    }

    public KeyInfoFactory getKeyInfoFactory() {
        return this.keyInfoFactory;
    }

    public OPCPackage getOpcPackage() {
        return this.opcPackage;
    }

    public SignatureConfig getSignatureConfig() {
        return this.signatureConfig;
    }

    public XMLSignatureFactory getSignatureFactory() {
        return this.signatureFactory;
    }

    public Iterable<SignaturePart> getSignatureParts() {
        initXmlProvider();
        return new Iterable() { // from class: com.sunia.HTREnginev2.gqm
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                Iterator lambda$getSignatureParts$0;
                lambda$getSignatureParts$0 = SignatureInfo.this.lambda$getSignatureParts$0();
                return lambda$getSignatureParts$0;
            }
        };
    }

    public URIDereferencer getUriDereferencer() {
        return this.uriDereferencer;
    }

    public void initXmlProvider() {
        if (this.opcPackage == null) {
            this.opcPackage = this.signatureConfig.getOpcPackage();
        }
        if (this.provider == null) {
            Provider provider = this.signatureConfig.getProvider();
            this.provider = provider;
            if (provider == null) {
                this.provider = XmlProviderInitSingleton.getInstance().findProvider();
            }
        }
        if (this.signatureFactory == null) {
            XMLSignatureFactory signatureFactory = this.signatureConfig.getSignatureFactory();
            this.signatureFactory = signatureFactory;
            if (signatureFactory == null) {
                this.signatureFactory = XMLSignatureFactory.getInstance("DOM", this.provider);
            }
        }
        if (this.keyInfoFactory == null) {
            KeyInfoFactory keyInfoFactory = this.signatureConfig.getKeyInfoFactory();
            this.keyInfoFactory = keyInfoFactory;
            if (keyInfoFactory == null) {
                this.keyInfoFactory = KeyInfoFactory.getInstance("DOM", this.provider);
            }
        }
        if (this.uriDereferencer == null) {
            URIDereferencer uriDereferencer = this.signatureConfig.getUriDereferencer();
            this.uriDereferencer = uriDereferencer;
            if (uriDereferencer == null) {
                this.uriDereferencer = new OOXMLURIDereferencer();
            }
        }
        URIDereferencer uRIDereferencer = this.uriDereferencer;
        if (uRIDereferencer instanceof OOXMLURIDereferencer) {
            ((OOXMLURIDereferencer) uRIDereferencer).setSignatureInfo(this);
        }
    }

    public void postSign(DOMSignContext dOMSignContext, String str) throws MarshalException {
        LOG.atDebug().log("postSign");
        Document document = (Document) dOMSignContext.getParent();
        String packageSignatureId = this.signatureConfig.getPackageSignatureId();
        if (!packageSignatureId.equals(document.getDocumentElement().getAttribute(PackageRelationship.ID_ATTRIBUTE_NAME))) {
            throw new IllegalStateException("ds:Signature not found for @Id: " + packageSignatureId);
        }
        Element dsigElement = getDsigElement(document, "SignatureValue");
        if (dsigElement == null) {
            throw new IllegalStateException("preSign has to be called before postSign");
        }
        dsigElement.setTextContent(str);
        Iterator<SignatureFacet> it2 = this.signatureConfig.getSignatureFacets().iterator();
        while (it2.hasNext()) {
            it2.next().postSign(this, document);
        }
        writeDocument(document);
    }

    public DOMSignedInfo preSign(final DOMSignContext dOMSignContext) throws XMLSignatureException, MarshalException {
        Document document = (Document) dOMSignContext.getParent();
        registerEventListener(document);
        URIDereferencer uRIDereferencer = this.uriDereferencer;
        if (uRIDereferencer != null) {
            dOMSignContext.setURIDereferencer(uRIDereferencer);
        }
        this.signatureConfig.getNamespacePrefixes().forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.iqm
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                dOMSignContext.putNamespacePrefix((String) obj, (String) obj2);
            }
        });
        dOMSignContext.setDefaultNamespacePrefix("");
        ArrayList arrayList = new ArrayList();
        ArrayList<XMLObject> arrayList2 = new ArrayList();
        for (SignatureFacet signatureFacet : this.signatureConfig.getSignatureFacets()) {
            LOG.atDebug().log("invoking signature facet: {}", signatureFacet.getClass().getSimpleName());
            signatureFacet.preSign(this, document, arrayList, arrayList2);
        }
        try {
            DOMSignedInfo newSignedInfo = this.signatureFactory.newSignedInfo(this.signatureFactory.newCanonicalizationMethod(this.signatureConfig.getCanonicalizationMethod(), (C14NMethodParameterSpec) null), this.signatureFactory.newSignatureMethod(this.signatureConfig.getSignatureMethodUri(), (SignatureMethodParameterSpec) null), arrayList);
            this.signatureFactory.newXMLSignature(newSignedInfo, (KeyInfo) null, arrayList2, this.signatureConfig.getPackageSignatureId(), this.signatureConfig.getPackageSignatureId() + "-signature-value").sign(dOMSignContext);
            for (XMLObject xMLObject : arrayList2) {
                LOG.atDebug().log("object java type: {}", xMLObject.getClass().getName());
                for (Manifest manifest : xMLObject.getContent()) {
                    LOG.atDebug().log("object content java type: {}", manifest.getClass().getName());
                    if (manifest instanceof Manifest) {
                        for (DOMReference dOMReference : manifest.getReferences()) {
                            if (dOMReference.getDigestValue() == null) {
                                dOMReference.digest(dOMSignContext);
                            }
                        }
                    }
                }
            }
            for (DOMReference dOMReference2 : newSignedInfo.getReferences()) {
                if (dOMReference2.getDigestValue() == null) {
                    dOMReference2.digest(dOMSignContext);
                }
            }
            return newSignedInfo;
        } catch (GeneralSecurityException e) {
            throw new XMLSignatureException(e);
        }
    }

    public void registerEventListener(final Document document) {
        final SignatureMarshalListener signatureMarshalListener = this.signatureConfig.getSignatureMarshalListener();
        if (signatureMarshalListener == null) {
            return;
        }
        final EventListener[] eventListenerArr = {null};
        final EventTarget eventTarget = (EventTarget) document;
        EventListener eventListener = new EventListener() { // from class: com.sunia.HTREnginev2.jqm
            @Override // org.w3c.dom.events.EventListener
            public final void handleEvent(Event event) {
                SignatureInfo.this.lambda$registerEventListener$1(eventTarget, eventListenerArr, signatureMarshalListener, document, event);
            }
        };
        eventListenerArr[0] = eventListener;
        eventTarget.addEventListener("DOMSubtreeModified", eventListener, false);
    }

    public void setKeyInfoFactory(KeyInfoFactory keyInfoFactory) {
        this.keyInfoFactory = keyInfoFactory;
    }

    public void setOpcPackage(OPCPackage oPCPackage) {
        this.opcPackage = oPCPackage;
    }

    public void setProvider(Provider provider) {
        this.provider = provider;
    }

    public void setSignatureConfig(SignatureConfig signatureConfig) {
        this.signatureConfig = signatureConfig;
    }

    public void setSignatureFactory(XMLSignatureFactory xMLSignatureFactory) {
        this.signatureFactory = xMLSignatureFactory;
    }

    public void setUriDereferencer(URIDereferencer uRIDereferencer) {
        this.uriDereferencer = uRIDereferencer;
    }

    public String signDigest(DOMSignContext dOMSignContext, DOMSignedInfo dOMSignedInfo) {
        initXmlProvider();
        PrivateKey key = this.signatureConfig.getKey();
        HashAlgorithm digestAlgo = this.signatureConfig.getDigestAlgo();
        if ((digestAlgo.hashSize * 4) / 3 > 76 && !XMLUtils.ignoreLineBreaks()) {
            throw new EncryptedDocumentException("The hash size of the chosen hash algorithm (" + digestAlgo + CloudStorageConstants.OPERATION_EQUAL + digestAlgo.hashSize + " bytes), will motivate XmlSec to add linebreaks to the generated digest, which results in an invalid signature (... at least for Office) - please persuade it otherwise by adding '-Dorg.apache.xml.security.ignoreLineBreaks=true' to the JVM system properties.");
        }
        try {
            DigestOutputStream digestStream = getDigestStream(digestAlgo, key);
            try {
                digestStream.init();
                dOMSignedInfo.getCanonicalizationMethod().transform(new DOMSubTreeData(getDsigElement((Document) dOMSignContext.getParent(), "SignedInfo"), true), dOMSignContext, digestStream);
                String encodeToString = Base64.getEncoder().encodeToString(digestStream.sign());
                digestStream.close();
                return encodeToString;
            } finally {
            }
        } catch (IOException | GeneralSecurityException | TransformException e) {
            throw new EncryptedDocumentException(e);
        }
    }

    public boolean verifySignature() {
        initXmlProvider();
        Iterator<SignaturePart> it2 = getSignatureParts().iterator();
        return it2.hasNext() && it2.next().validate();
    }

    public void writeDocument(Document document) throws MarshalException {
        XmlOptions xmlOptions = new XmlOptions();
        final HashMap hashMap = new HashMap();
        this.signatureConfig.getNamespacePrefixes().forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.hqm
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                SignatureInfo.lambda$writeDocument$2(hashMap, (String) obj, (String) obj2);
            }
        });
        xmlOptions.setSaveSuggestedPrefixes(hashMap);
        xmlOptions.setUseDefaultNamespace();
        LOG.atDebug().log("output signed Office OpenXML document");
        try {
            DSigRelation dSigRelation = DSigRelation.ORIGIN_SIGS;
            PackagePartName createPartName = PackagingURIHelper.createPartName(dSigRelation.getFileName(0));
            PackagePart part = this.opcPackage.getPart(createPartName);
            if (part == null) {
                part = this.opcPackage.createPart(createPartName, dSigRelation.getContentType());
                this.opcPackage.addRelationship(createPartName, TargetMode.INTERNAL, dSigRelation.getRelation());
            }
            DSigRelation dSigRelation2 = DSigRelation.SIG;
            int unusedPartIndex = this.opcPackage.getUnusedPartIndex(dSigRelation2.getDefaultFileName());
            if (!this.signatureConfig.isAllowMultipleSignatures()) {
                PackageRelationshipCollection relationshipsByType = part.getRelationshipsByType(dSigRelation2.getRelation());
                for (int i = 2; i < unusedPartIndex; i++) {
                    PackagePartName createPartName2 = PackagingURIHelper.createPartName(dSigRelation2.getFileName(i));
                    Iterator<PackageRelationship> it2 = relationshipsByType.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            PackageRelationship next = it2.next();
                            if (part.getRelatedPart(next).getPartName().equals(createPartName2)) {
                                part.removeRelationship(next.getId());
                                relationshipsByType.removeRelationship(next.getId());
                                break;
                            }
                        }
                    }
                    OPCPackage oPCPackage = this.opcPackage;
                    oPCPackage.removePart(oPCPackage.getPart(createPartName2));
                }
                unusedPartIndex = 1;
            }
            PackagePartName createPartName3 = PackagingURIHelper.createPartName(dSigRelation2.getFileName(unusedPartIndex));
            PackagePart part2 = this.opcPackage.getPart(createPartName3);
            if (part2 == null) {
                part2 = this.opcPackage.createPart(createPartName3, dSigRelation2.getContentType());
                part.addRelationship(createPartName3, TargetMode.INTERNAL, dSigRelation2.getRelation());
            } else {
                part2.clear();
            }
            OutputStream outputStream = part2.getOutputStream();
            try {
                SignatureDocument.Factory.parse(document, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).save(outputStream, xmlOptions);
                if (outputStream != null) {
                    outputStream.close();
                }
            } finally {
            }
        } catch (Exception e) {
            throw new MarshalException("Unable to write signature document", e);
        }
    }
}
