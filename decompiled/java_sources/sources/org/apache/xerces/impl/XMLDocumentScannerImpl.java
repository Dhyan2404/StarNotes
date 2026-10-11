package org.apache.xerces.impl;

import java.io.CharConversionException;
import java.io.EOFException;
import java.io.IOException;
import org.apache.xerces.impl.XMLDocumentFragmentScannerImpl;
import org.apache.xerces.impl.dtd.XMLDTDDescription;
import org.apache.xerces.impl.io.MalformedByteSequenceException;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDTDScanner;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes13.dex */
public class XMLDocumentScannerImpl extends XMLDocumentFragmentScannerImpl {
    protected static final String DISALLOW_DOCTYPE_DECL_FEATURE = "http://apache.org/xml/features/disallow-doctype-decl";
    protected static final String LOAD_EXTERNAL_DTD = "http://apache.org/xml/features/nonvalidating/load-external-dtd";
    protected static final String NAMESPACE_CONTEXT = "http://apache.org/xml/properties/internal/namespace-context";
    protected static final int SCANNER_STATE_DTD_EXTERNAL = 18;
    protected static final int SCANNER_STATE_DTD_EXTERNAL_DECLS = 19;
    protected static final int SCANNER_STATE_DTD_INTERNAL_DECLS = 17;
    protected static final int SCANNER_STATE_PROLOG = 5;
    protected static final int SCANNER_STATE_TRAILING_MISC = 12;
    protected static final int SCANNER_STATE_XML_DECL = 0;
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    protected XMLDTDScanner fDTDScanner;
    protected String fDoctypeName;
    protected String fDoctypePublicId;
    protected String fDoctypeSystemId;
    protected boolean fScanningDTD;
    protected boolean fSeenDoctypeDecl;
    protected ValidationManager fValidationManager;

    /* renamed from: J */
    public static final String[] f111992J = {"http://apache.org/xml/features/nonvalidating/load-external-dtd", "http://apache.org/xml/features/disallow-doctype-decl"};

    /* renamed from: O */
    public static final Boolean[] f111993O = {Boolean.TRUE, Boolean.FALSE};
    protected static final String DTD_SCANNER = "http://apache.org/xml/properties/internal/dtd-scanner";

    /* renamed from: Q */
    public static final String[] f111994Q = {DTD_SCANNER, "http://apache.org/xml/properties/internal/validation-manager", "http://apache.org/xml/properties/internal/namespace-context"};

    /* renamed from: Z */
    public static final Object[] f111995Z = {null, null, null};
    protected NamespaceContext fNamespaceContext = new NamespaceSupport();
    protected boolean fLoadExternalDTD = true;
    protected boolean fDisallowDoctype = false;
    protected final XMLDocumentFragmentScannerImpl.Dispatcher fXMLDeclDispatcher = new XMLDeclDispatcher();
    protected final XMLDocumentFragmentScannerImpl.Dispatcher fPrologDispatcher = new PrologDispatcher();
    protected final XMLDocumentFragmentScannerImpl.Dispatcher fDTDDispatcher = new DTDDispatcher();
    protected final XMLDocumentFragmentScannerImpl.Dispatcher fTrailingMiscDispatcher = new TrailingMiscDispatcher();

    /* renamed from: v */
    public final String[] f111996v = new String[3];

    /* renamed from: w */
    public final XMLString f111997w = new XMLString();

    /* renamed from: x */
    public final XMLStringBuffer f111998x = new XMLStringBuffer();

    /* renamed from: y */
    public XMLInputSource f111999y = null;

    /* renamed from: z */
    public final XMLDTDDescription f112000z = new XMLDTDDescription(null, null, null, null, null);

    /* loaded from: classes13.dex */
    public class ContentDispatcher extends XMLDocumentFragmentScannerImpl.FragmentContentDispatcher {

        /* renamed from: b */
        public final /* synthetic */ XMLDocumentScannerImpl f112001b;

        public ContentDispatcher(XMLDocumentScannerImpl xMLDocumentScannerImpl) {
            super();
            this.f112001b = xMLDocumentScannerImpl;
        }

        @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.FragmentContentDispatcher
        public boolean elementDepthIsZeroHook() throws IOException, XNIException {
            this.f112001b.setScannerState(12);
            XMLDocumentScannerImpl xMLDocumentScannerImpl = this.f112001b;
            xMLDocumentScannerImpl.setDispatcher(xMLDocumentScannerImpl.fTrailingMiscDispatcher);
            return true;
        }

        @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.FragmentContentDispatcher
        public void endOfFileHook(EOFException eOFException) throws IOException, XNIException {
            this.f112001b.reportFatalError("PrematureEOF", null);
        }

        public void resolveExternalSubsetAndRead() throws IOException, XNIException {
            this.f112001b.f112000z.setValues(null, null, this.f112001b.fEntityManager.getCurrentResourceIdentifier().getExpandedSystemId(), null);
            this.f112001b.f112000z.setRootName(this.f112001b.fElementQName.rawname);
            XMLDocumentScannerImpl xMLDocumentScannerImpl = this.f112001b;
            XMLInputSource externalSubset = xMLDocumentScannerImpl.fExternalSubsetResolver.getExternalSubset(xMLDocumentScannerImpl.f112000z);
            if (externalSubset != null) {
                XMLDocumentScannerImpl xMLDocumentScannerImpl2 = this.f112001b;
                xMLDocumentScannerImpl2.fDoctypeName = xMLDocumentScannerImpl2.fElementQName.rawname;
                xMLDocumentScannerImpl2.fDoctypePublicId = externalSubset.getPublicId();
                this.f112001b.fDoctypeSystemId = externalSubset.getSystemId();
                XMLDocumentScannerImpl xMLDocumentScannerImpl3 = this.f112001b;
                XMLDocumentHandler xMLDocumentHandler = xMLDocumentScannerImpl3.fDocumentHandler;
                if (xMLDocumentHandler != null) {
                    xMLDocumentHandler.doctypeDecl(xMLDocumentScannerImpl3.fDoctypeName, xMLDocumentScannerImpl3.fDoctypePublicId, xMLDocumentScannerImpl3.fDoctypeSystemId, null);
                }
                try {
                    ValidationManager validationManager = this.f112001b.fValidationManager;
                    if (validationManager != null && validationManager.isCachedDTD()) {
                        this.f112001b.fDTDScanner.setInputSource(null);
                    }
                    this.f112001b.fDTDScanner.setInputSource(externalSubset);
                    do {
                    } while (this.f112001b.fDTDScanner.scanDTDExternalSubset(true));
                } finally {
                    XMLDocumentScannerImpl xMLDocumentScannerImpl4 = this.f112001b;
                    xMLDocumentScannerImpl4.fEntityManager.setEntityHandler(xMLDocumentScannerImpl4);
                }
            }
        }

        @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.FragmentContentDispatcher
        public boolean scanForDoctypeHook() throws IOException, XNIException {
            if (!this.f112001b.fEntityScanner.skipString("DOCTYPE")) {
                return false;
            }
            this.f112001b.setScannerState(4);
            return true;
        }

        @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.FragmentContentDispatcher
        public boolean scanRootElementHook() throws IOException, XNIException {
            XMLDocumentScannerImpl xMLDocumentScannerImpl = this.f112001b;
            if (xMLDocumentScannerImpl.fExternalSubsetResolver != null && !xMLDocumentScannerImpl.fSeenDoctypeDecl && !xMLDocumentScannerImpl.fDisallowDoctype && (xMLDocumentScannerImpl.fValidation || xMLDocumentScannerImpl.fLoadExternalDTD)) {
                xMLDocumentScannerImpl.scanStartElementName();
                resolveExternalSubsetAndRead();
                if (!this.f112001b.scanStartElementAfterName()) {
                    return false;
                }
            } else if (!xMLDocumentScannerImpl.scanStartElement()) {
                return false;
            }
            this.f112001b.setScannerState(12);
            XMLDocumentScannerImpl xMLDocumentScannerImpl2 = this.f112001b;
            xMLDocumentScannerImpl2.setDispatcher(xMLDocumentScannerImpl2.fTrailingMiscDispatcher);
            return true;
        }
    }

    /* loaded from: classes13.dex */
    public final class DTDDispatcher implements XMLDocumentFragmentScannerImpl.Dispatcher {
        public DTDDispatcher() {
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x009b A[Catch: all -> 0x017b, EOFException -> 0x017d, CharConversionException -> 0x018c, MalformedByteSequenceException -> 0x01a3, Merged into TryCatch #2 {all -> 0x017b, CharConversionException -> 0x018c, EOFException -> 0x017d, MalformedByteSequenceException -> 0x01a3, blocks: (B:4:0x0009, B:5:0x0011, B:79:0x0014, B:80:0x014d, B:81:0x017a, B:6:0x0018, B:19:0x0020, B:22:0x003b, B:23:0x0070, B:25:0x0074, B:28:0x0086, B:32:0x0095, B:34:0x009b, B:36:0x00a7, B:37:0x00ae, B:39:0x00c1, B:40:0x00ce, B:42:0x00d9, B:45:0x00e0, B:47:0x00e4, B:49:0x0126, B:53:0x00ea, B:55:0x00f0, B:58:0x00f9, B:60:0x00fd, B:64:0x0111, B:66:0x011b, B:69:0x0124, B:72:0x0078, B:74:0x007c, B:90:0x017d, B:87:0x018e, B:95:0x01a5), top: B:3:0x0009 }] */
        @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.Dispatcher
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatch(boolean r11) throws java.io.IOException, org.apache.xerces.xni.XNIException {
            /*
                Method dump skipped, instructions count: 468
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLDocumentScannerImpl.DTDDispatcher.dispatch(boolean):boolean");
        }
    }

    /* loaded from: classes13.dex */
    public final class PrologDispatcher implements XMLDocumentFragmentScannerImpl.Dispatcher {
        public PrologDispatcher() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x00a5, code lost:
        
            r8.f112003a.setScannerState(18);
            r9 = r8.f112003a;
            r9.setDispatcher(r9.fDTDDispatcher);
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00b3, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x00d7, code lost:
        
            r9 = r8.f112003a;
            r9.fDTDScanner.setInputSource(r9.f111999y);
            r8.f112003a.f111999y = null;
            r8.f112003a.setScannerState(19);
            r9 = r8.f112003a;
            r9.setDispatcher(r9.fDTDDispatcher);
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x00f5, code lost:
        
            return true;
         */
        /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000b. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0000 A[ADDED_TO_REGION, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:8:0x01af A[SYNTHETIC] */
        @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.Dispatcher
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatch(boolean r9) throws java.io.IOException, org.apache.xerces.xni.XNIException {
            /*
                Method dump skipped, instructions count: 532
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLDocumentScannerImpl.PrologDispatcher.dispatch(boolean):boolean");
        }
    }

    /* loaded from: classes13.dex */
    public final class TrailingMiscDispatcher implements XMLDocumentFragmentScannerImpl.Dispatcher {
        public TrailingMiscDispatcher() {
        }

        @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.Dispatcher
        public boolean dispatch(boolean z) throws IOException, XNIException {
            XMLDocumentScannerImpl xMLDocumentScannerImpl;
            XMLDocumentScannerImpl xMLDocumentScannerImpl2;
            while (true) {
                boolean z2 = false;
                try {
                    XMLDocumentScannerImpl xMLDocumentScannerImpl3 = XMLDocumentScannerImpl.this;
                    int i = xMLDocumentScannerImpl3.fScannerState;
                    if (i != 1) {
                        if (i == 2) {
                            if (!xMLDocumentScannerImpl3.fEntityScanner.skipString(MultiPartWriter.f115320h)) {
                                XMLDocumentScannerImpl.this.reportFatalError("InvalidCommentStart", null);
                            }
                            XMLDocumentScannerImpl.this.scanComment();
                            xMLDocumentScannerImpl2 = XMLDocumentScannerImpl.this;
                        } else if (i == 3) {
                            xMLDocumentScannerImpl3.scanPI();
                            xMLDocumentScannerImpl2 = XMLDocumentScannerImpl.this;
                        } else if (i != 7) {
                            if (i == 8) {
                                xMLDocumentScannerImpl3.reportFatalError("ReferenceIllegalInTrailingMisc", null);
                                xMLDocumentScannerImpl2 = XMLDocumentScannerImpl.this;
                            } else if (i == 12) {
                                xMLDocumentScannerImpl3.fEntityScanner.skipSpaces();
                                if (XMLDocumentScannerImpl.this.fEntityScanner.skipChar(60)) {
                                    XMLDocumentScannerImpl.this.setScannerState(1);
                                } else {
                                    XMLDocumentScannerImpl.this.setScannerState(7);
                                }
                                z2 = true;
                            } else if (i == 14) {
                                return false;
                            }
                        } else {
                            if (xMLDocumentScannerImpl3.fEntityScanner.peekChar() == -1) {
                                XMLDocumentScannerImpl.this.setScannerState(14);
                                return false;
                            }
                            XMLDocumentScannerImpl.this.reportFatalError("ContentIllegalInTrailingMisc", null);
                            XMLDocumentScannerImpl.this.fEntityScanner.scanChar();
                            xMLDocumentScannerImpl2 = XMLDocumentScannerImpl.this;
                        }
                        xMLDocumentScannerImpl2.setScannerState(12);
                    } else {
                        xMLDocumentScannerImpl3.fMarkupDepth++;
                        if (xMLDocumentScannerImpl3.fEntityScanner.skipChar(63)) {
                            XMLDocumentScannerImpl.this.setScannerState(3);
                        } else if (XMLDocumentScannerImpl.this.fEntityScanner.skipChar(33)) {
                            XMLDocumentScannerImpl.this.setScannerState(2);
                        } else if (XMLDocumentScannerImpl.this.fEntityScanner.skipChar(47)) {
                            XMLDocumentScannerImpl.this.reportFatalError("MarkupNotRecognizedInMisc", null);
                        } else {
                            XMLDocumentScannerImpl xMLDocumentScannerImpl4 = XMLDocumentScannerImpl.this;
                            if (xMLDocumentScannerImpl4.isValidNameStartChar(xMLDocumentScannerImpl4.fEntityScanner.peekChar())) {
                                XMLDocumentScannerImpl.this.reportFatalError("MarkupNotRecognizedInMisc", null);
                                XMLDocumentScannerImpl.this.scanStartElement();
                                xMLDocumentScannerImpl = XMLDocumentScannerImpl.this;
                            } else {
                                XMLDocumentScannerImpl xMLDocumentScannerImpl5 = XMLDocumentScannerImpl.this;
                                if (xMLDocumentScannerImpl5.isValidNameStartHighSurrogate(xMLDocumentScannerImpl5.fEntityScanner.peekChar())) {
                                    XMLDocumentScannerImpl.this.reportFatalError("MarkupNotRecognizedInMisc", null);
                                    XMLDocumentScannerImpl.this.scanStartElement();
                                    xMLDocumentScannerImpl = XMLDocumentScannerImpl.this;
                                } else {
                                    XMLDocumentScannerImpl.this.reportFatalError("MarkupNotRecognizedInMisc", null);
                                }
                            }
                            xMLDocumentScannerImpl.setScannerState(7);
                        }
                        z2 = true;
                    }
                    if (!z && !z2) {
                        return true;
                    }
                } catch (MalformedByteSequenceException e) {
                    XMLDocumentScannerImpl.this.fErrorReporter.reportError(e.getDomain(), e.getKey(), e.getArguments(), (short) 2, (Exception) e);
                    return false;
                } catch (CharConversionException e2) {
                    XMLDocumentScannerImpl.this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "CharConversionFailure", (Object[]) null, (short) 2, (Exception) e2);
                    return false;
                } catch (EOFException unused) {
                    XMLDocumentScannerImpl xMLDocumentScannerImpl6 = XMLDocumentScannerImpl.this;
                    if (xMLDocumentScannerImpl6.fMarkupDepth != 0) {
                        xMLDocumentScannerImpl6.reportFatalError("PrematureEOF", null);
                        return false;
                    }
                    xMLDocumentScannerImpl6.setScannerState(14);
                    return false;
                }
            }
        }
    }

    /* loaded from: classes13.dex */
    public final class XMLDeclDispatcher implements XMLDocumentFragmentScannerImpl.Dispatcher {
        public XMLDeclDispatcher() {
        }

        @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.Dispatcher
        public boolean dispatch(boolean z) throws IOException, XNIException {
            XMLDocumentScannerImpl.this.setScannerState(5);
            XMLDocumentScannerImpl xMLDocumentScannerImpl = XMLDocumentScannerImpl.this;
            xMLDocumentScannerImpl.setDispatcher(xMLDocumentScannerImpl.fPrologDispatcher);
            try {
                if (XMLDocumentScannerImpl.this.fEntityScanner.skipString("<?xml")) {
                    XMLDocumentScannerImpl xMLDocumentScannerImpl2 = XMLDocumentScannerImpl.this;
                    xMLDocumentScannerImpl2.fMarkupDepth++;
                    if (XMLChar.isName(xMLDocumentScannerImpl2.fEntityScanner.peekChar())) {
                        XMLDocumentScannerImpl.this.f111998x.clear();
                        XMLDocumentScannerImpl.this.f111998x.append("xml");
                        if (XMLDocumentScannerImpl.this.fNamespaces) {
                            while (XMLChar.isNCName(XMLDocumentScannerImpl.this.fEntityScanner.peekChar())) {
                                XMLDocumentScannerImpl.this.f111998x.append((char) XMLDocumentScannerImpl.this.fEntityScanner.scanChar());
                            }
                        } else {
                            while (XMLChar.isName(XMLDocumentScannerImpl.this.fEntityScanner.peekChar())) {
                                XMLDocumentScannerImpl.this.f111998x.append((char) XMLDocumentScannerImpl.this.fEntityScanner.scanChar());
                            }
                        }
                        XMLDocumentScannerImpl xMLDocumentScannerImpl3 = XMLDocumentScannerImpl.this;
                        String addSymbol = xMLDocumentScannerImpl3.fSymbolTable.addSymbol(xMLDocumentScannerImpl3.f111998x.f113585ch, XMLDocumentScannerImpl.this.f111998x.offset, XMLDocumentScannerImpl.this.f111998x.length);
                        XMLDocumentScannerImpl xMLDocumentScannerImpl4 = XMLDocumentScannerImpl.this;
                        xMLDocumentScannerImpl4.scanPIData(addSymbol, xMLDocumentScannerImpl4.f111997w);
                    } else {
                        XMLDocumentScannerImpl.this.scanXMLDeclOrTextDecl(false);
                    }
                }
                XMLDocumentScannerImpl.this.fEntityManager.fCurrentEntity.mayReadChunks = true;
                return true;
            } catch (CharConversionException e) {
                XMLDocumentScannerImpl.this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "CharConversionFailure", (Object[]) null, (short) 2, (Exception) e);
                return false;
            } catch (EOFException unused) {
                XMLDocumentScannerImpl.this.reportFatalError("PrematureEOF", null);
                return false;
            } catch (MalformedByteSequenceException e2) {
                XMLDocumentScannerImpl.this.fErrorReporter.reportError(e2.getDomain(), e2.getKey(), e2.getArguments(), (short) 2, (Exception) e2);
                return false;
            }
        }
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl
    public XMLDocumentFragmentScannerImpl.Dispatcher createContentDispatcher() {
        return new ContentDispatcher(this);
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.impl.XMLScanner, org.apache.xerces.impl.XMLEntityHandler
    public void endEntity(String str, Augmentations augmentations) throws XNIException {
        super.endEntity(str, augmentations);
        if (this.fDocumentHandler == null || !str.equals("[xml]")) {
            return;
        }
        this.fDocumentHandler.endDocument(null);
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f111992J;
            if (i >= strArr.length) {
                return super.getFeatureDefault(str);
            }
            if (strArr[i].equals(str)) {
                return f111993O[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f111994Q;
            if (i >= strArr.length) {
                return super.getPropertyDefault(str);
            }
            if (strArr[i].equals(str)) {
                return f111995Z[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        String[] recognizedFeatures = super.getRecognizedFeatures();
        int length = recognizedFeatures != null ? recognizedFeatures.length : 0;
        String[] strArr = f111992J;
        String[] strArr2 = new String[strArr.length + length];
        if (recognizedFeatures != null) {
            System.arraycopy(recognizedFeatures, 0, strArr2, 0, recognizedFeatures.length);
        }
        System.arraycopy(strArr, 0, strArr2, length, strArr.length);
        return strArr2;
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        String[] recognizedProperties = super.getRecognizedProperties();
        int length = recognizedProperties != null ? recognizedProperties.length : 0;
        String[] strArr = f111994Q;
        String[] strArr2 = new String[strArr.length + length];
        if (recognizedProperties != null) {
            System.arraycopy(recognizedProperties, 0, strArr2, 0, recognizedProperties.length);
        }
        System.arraycopy(strArr, 0, strArr2, length, strArr.length);
        return strArr2;
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl
    public String getScannerStateName(int i) {
        if (i == 0) {
            return "SCANNER_STATE_XML_DECL";
        }
        if (i == 5) {
            return "SCANNER_STATE_PROLOG";
        }
        if (i == 12) {
            return "SCANNER_STATE_TRAILING_MISC";
        }
        switch (i) {
            case 17:
                return "SCANNER_STATE_DTD_INTERNAL_DECLS";
            case 18:
                return "SCANNER_STATE_DTD_EXTERNAL";
            case 19:
                return "SCANNER_STATE_DTD_EXTERNAL_DECLS";
            default:
                return super.getScannerStateName(i);
        }
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        super.reset(xMLComponentManager);
        this.fDoctypeName = null;
        this.fDoctypePublicId = null;
        this.fDoctypeSystemId = null;
        this.fSeenDoctypeDecl = false;
        this.fScanningDTD = false;
        this.f111999y = null;
        if (this.fParserSettings) {
            try {
                this.fLoadExternalDTD = xMLComponentManager.getFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd");
            } catch (XMLConfigurationException unused) {
                this.fLoadExternalDTD = true;
            }
            try {
                this.fDisallowDoctype = xMLComponentManager.getFeature("http://apache.org/xml/features/disallow-doctype-decl");
            } catch (XMLConfigurationException unused2) {
                this.fDisallowDoctype = false;
            }
            this.fDTDScanner = (XMLDTDScanner) xMLComponentManager.getProperty(DTD_SCANNER);
            try {
                this.fValidationManager = (ValidationManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/validation-manager");
            } catch (XMLConfigurationException unused3) {
                this.fValidationManager = null;
            }
            try {
                this.fNamespaceContext = (NamespaceContext) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/namespace-context");
            } catch (XMLConfigurationException unused4) {
            }
            if (this.fNamespaceContext == null) {
                this.fNamespaceContext = new NamespaceSupport();
            }
        }
        this.fNamespaceContext.reset();
        setScannerState(0);
        setDispatcher(this.fXMLDeclDispatcher);
    }

    public boolean scanDoctypeDecl() throws IOException, XNIException {
        if (!this.fEntityScanner.skipSpaces()) {
            reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL", null);
        }
        String scanName = this.fEntityScanner.scanName();
        this.fDoctypeName = scanName;
        if (scanName == null) {
            reportFatalError("MSG_ROOT_ELEMENT_TYPE_REQUIRED", null);
        }
        if (this.fEntityScanner.skipSpaces()) {
            scanExternalID(this.f111996v, false);
            String[] strArr = this.f111996v;
            this.fDoctypeSystemId = strArr[0];
            this.fDoctypePublicId = strArr[1];
            this.fEntityScanner.skipSpaces();
        }
        boolean z = this.fDoctypeSystemId != null;
        this.fHasExternalDTD = z;
        if (!z && this.fExternalSubsetResolver != null) {
            this.f112000z.setValues(null, null, this.fEntityManager.getCurrentResourceIdentifier().getExpandedSystemId(), null);
            this.f112000z.setRootName(this.fDoctypeName);
            XMLInputSource externalSubset = this.fExternalSubsetResolver.getExternalSubset(this.f112000z);
            this.f111999y = externalSubset;
            this.fHasExternalDTD = externalSubset != null;
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            XMLInputSource xMLInputSource = this.f111999y;
            if (xMLInputSource == null) {
                xMLDocumentHandler.doctypeDecl(this.fDoctypeName, this.fDoctypePublicId, this.fDoctypeSystemId, null);
            } else {
                xMLDocumentHandler.doctypeDecl(this.fDoctypeName, xMLInputSource.getPublicId(), this.f111999y.getSystemId(), null);
            }
        }
        if (this.fEntityScanner.skipChar(91)) {
            return true;
        }
        this.fEntityScanner.skipSpaces();
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("DoctypedeclUnterminated", new Object[]{this.fDoctypeName});
        }
        this.fMarkupDepth--;
        return false;
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        super.setFeature(str, z);
        if (str.startsWith("http://apache.org/xml/features/")) {
            int length = str.length() - 31;
            if (length == 31 && str.endsWith("nonvalidating/load-external-dtd")) {
                this.fLoadExternalDTD = z;
            } else if (length == 21 && str.endsWith("disallow-doctype-decl")) {
                this.fDisallowDoctype = z;
            }
        }
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.xni.parser.XMLDocumentScanner
    public void setInputSource(XMLInputSource xMLInputSource) throws IOException {
        this.fEntityManager.setEntityHandler(this);
        this.fEntityManager.startDocumentEntity(xMLInputSource);
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        super.setProperty(str, obj);
        if (str.startsWith("http://apache.org/xml/properties/")) {
            int length = str.length() - 33;
            if (length == 20 && str.endsWith("internal/dtd-scanner")) {
                this.fDTDScanner = (XMLDTDScanner) obj;
            }
            if (length == 26 && str.endsWith("internal/namespace-context") && obj != null) {
                this.fNamespaceContext = (NamespaceContext) obj;
            }
        }
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.impl.XMLScanner, org.apache.xerces.impl.XMLEntityHandler
    public void startEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        super.startEntity(str, xMLResourceIdentifier, str2, augmentations);
        if (!str.equals("[xml]") && this.fEntityScanner.isExternal()) {
            setScannerState(16);
        }
        if (this.fDocumentHandler == null || !str.equals("[xml]")) {
            return;
        }
        this.fDocumentHandler.startDocument(this.fEntityScanner, str2, this.fNamespaceContext, null);
    }
}
