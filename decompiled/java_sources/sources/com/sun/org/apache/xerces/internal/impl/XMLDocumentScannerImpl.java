package com.sun.org.apache.xerces.internal.impl;

import com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl;
import com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDDescription;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.xml.internal.stream.Entity;
import com.sun.xml.internal.stream.dtd.DTDGrammarUtil;
import com.sun.xml.internal.stream.dtd.nonvalidating.DTDGrammar;
import java.io.EOFException;
import java.io.IOException;
import java.util.NoSuchElementException;
import javax.xml.stream.XMLInputFactory;

/* loaded from: classes10.dex */
public class XMLDocumentScannerImpl extends XMLDocumentFragmentScannerImpl {
    protected static final String DISALLOW_DOCTYPE_DECL_FEATURE = "http://apache.org/xml/features/disallow-doctype-decl";
    protected static final String DOCUMENT_SCANNER = "http://apache.org/xml/properties/internal/document-scanner";
    protected static final String LOAD_EXTERNAL_DTD = "http://apache.org/xml/features/nonvalidating/load-external-dtd";
    protected static final String NAMESPACE_CONTEXT = "http://apache.org/xml/properties/internal/namespace-context";
    protected static final int SCANNER_STATE_DTD_EXTERNAL = 46;
    protected static final int SCANNER_STATE_DTD_EXTERNAL_DECLS = 47;
    protected static final int SCANNER_STATE_DTD_INTERNAL_DECLS = 45;
    protected static final int SCANNER_STATE_NO_SUCH_ELEMENT_EXCEPTION = 48;
    protected static final int SCANNER_STATE_PROLOG = 43;
    protected static final int SCANNER_STATE_TRAILING_MISC = 44;
    protected static final int SCANNER_STATE_XML_DECL = 42;
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    protected String fDoctypeName;
    protected String fDoctypePublicId;
    protected String fDoctypeSystemId;
    protected boolean fScanEndElement;
    protected boolean fSeenDoctypeDecl;
    protected ValidationManager fValidationManager;
    private static final String[] RECOGNIZED_FEATURES = {"http://apache.org/xml/features/nonvalidating/load-external-dtd", "http://apache.org/xml/features/disallow-doctype-decl"};
    private static final Boolean[] FEATURE_DEFAULTS = {Boolean.TRUE, Boolean.FALSE};
    protected static final String DTD_SCANNER = "http://apache.org/xml/properties/internal/dtd-scanner";
    private static final String[] RECOGNIZED_PROPERTIES = {DTD_SCANNER, "http://apache.org/xml/properties/internal/validation-manager"};
    private static final Object[] PROPERTY_DEFAULTS = {null, null};
    public static final char[] DOCTYPE = {'D', 'O', 'C', 'T', 'Y', 'P', 'E'};
    public static final char[] COMMENTSTRING = {'-', '-'};
    protected XMLDTDScanner fDTDScanner = null;
    protected XMLStringBuffer fDTDDecl = null;
    protected boolean fReadingDTD = false;
    protected boolean fAddedListener = false;
    protected NamespaceContext fNamespaceContext = new NamespaceSupport();
    protected boolean fLoadExternalDTD = true;
    protected boolean fDisallowDoctype = false;
    protected XMLDocumentFragmentScannerImpl.Driver fXMLDeclDriver = new XMLDeclDriver();
    protected XMLDocumentFragmentScannerImpl.Driver fPrologDriver = new PrologDriver();
    protected XMLDocumentFragmentScannerImpl.Driver fDTDDriver = null;
    protected XMLDocumentFragmentScannerImpl.Driver fTrailingMiscDriver = new TrailingMiscDriver();
    protected int fStartPos = 0;
    protected int fEndPos = 0;
    protected boolean fSeenInternalSubset = false;
    private String[] fStrings = new String[3];
    private XMLInputSource fExternalSubsetSource = null;
    private final XMLDTDDescription fDTDDescription = new XMLDTDDescription(null, null, null, null, null);
    private XMLString fString = new XMLString();

    /* loaded from: classes10.dex */
    public class ContentDriver extends XMLDocumentFragmentScannerImpl.FragmentContentDriver {
        public ContentDriver() {
            super();
        }

        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.FragmentContentDriver
        public boolean elementDepthIsZeroHook() throws IOException, XNIException {
            XMLDocumentScannerImpl.this.setScannerState(44);
            XMLDocumentScannerImpl xMLDocumentScannerImpl = XMLDocumentScannerImpl.this;
            xMLDocumentScannerImpl.setDriver(xMLDocumentScannerImpl.fTrailingMiscDriver);
            return true;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.FragmentContentDriver
        public void endOfFileHook(EOFException eOFException) throws IOException, XNIException {
            XMLDocumentScannerImpl.this.reportFatalError("PrematureEOF", null);
        }

        public void resolveExternalSubsetAndRead() throws IOException, XNIException {
            XMLDocumentScannerImpl.this.fDTDDescription.setValues(null, null, XMLDocumentScannerImpl.this.fEntityManager.getCurrentResourceIdentifier().getExpandedSystemId(), null);
            XMLDocumentScannerImpl.this.fDTDDescription.setRootName(XMLDocumentScannerImpl.this.fElementQName.rawname);
            XMLDocumentScannerImpl xMLDocumentScannerImpl = XMLDocumentScannerImpl.this;
            XMLInputSource externalSubset = xMLDocumentScannerImpl.fExternalSubsetResolver.getExternalSubset(xMLDocumentScannerImpl.fDTDDescription);
            if (externalSubset != null) {
                XMLDocumentScannerImpl xMLDocumentScannerImpl2 = XMLDocumentScannerImpl.this;
                xMLDocumentScannerImpl2.fDoctypeName = xMLDocumentScannerImpl2.fElementQName.rawname;
                xMLDocumentScannerImpl2.fDoctypePublicId = externalSubset.getPublicId();
                XMLDocumentScannerImpl.this.fDoctypeSystemId = externalSubset.getSystemId();
                XMLDocumentScannerImpl xMLDocumentScannerImpl3 = XMLDocumentScannerImpl.this;
                XMLDocumentHandler xMLDocumentHandler = xMLDocumentScannerImpl3.fDocumentHandler;
                if (xMLDocumentHandler != null) {
                    xMLDocumentHandler.doctypeDecl(xMLDocumentScannerImpl3.fDoctypeName, xMLDocumentScannerImpl3.fDoctypePublicId, xMLDocumentScannerImpl3.fDoctypeSystemId, null);
                }
                try {
                    XMLDocumentScannerImpl.this.fDTDScanner.setInputSource(externalSubset);
                    do {
                    } while (XMLDocumentScannerImpl.this.fDTDScanner.scanDTDExternalSubset(true));
                } finally {
                    XMLDocumentScannerImpl xMLDocumentScannerImpl4 = XMLDocumentScannerImpl.this;
                    xMLDocumentScannerImpl4.fEntityManager.setEntityHandler(xMLDocumentScannerImpl4);
                }
            }
        }

        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.FragmentContentDriver
        public boolean scanForDoctypeHook() throws IOException, XNIException {
            if (!XMLDocumentScannerImpl.this.fEntityScanner.skipString(XMLDocumentScannerImpl.DOCTYPE)) {
                return false;
            }
            XMLDocumentScannerImpl.this.setScannerState(24);
            return true;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.FragmentContentDriver
        public boolean scanRootElementHook() throws IOException, XNIException {
            if (!XMLDocumentScannerImpl.this.scanStartElement()) {
                return false;
            }
            XMLDocumentScannerImpl.this.setScannerState(44);
            XMLDocumentScannerImpl xMLDocumentScannerImpl = XMLDocumentScannerImpl.this;
            xMLDocumentScannerImpl.setDriver(xMLDocumentScannerImpl.fTrailingMiscDriver);
            return true;
        }
    }

    /* loaded from: classes10.dex */
    public final class DTDDriver implements XMLDocumentFragmentScannerImpl.Driver {
        public DTDDriver() {
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0043. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:17:0x011c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x003c A[ADDED_TO_REGION, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatch(boolean r10) throws java.io.IOException, com.sun.org.apache.xerces.internal.xni.XNIException {
            /*
                Method dump skipped, instructions count: 380
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl.DTDDriver.dispatch(boolean):boolean");
        }

        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.Driver
        public int next() throws IOException, XNIException {
            dispatch(true);
            XMLDocumentScannerImpl xMLDocumentScannerImpl = XMLDocumentScannerImpl.this;
            if (xMLDocumentScannerImpl.fPropertyManager == null) {
                return 11;
            }
            DTDGrammar grammar = ((XMLDTDScannerImpl) xMLDocumentScannerImpl.fDTDScanner).getGrammar();
            XMLDocumentScannerImpl xMLDocumentScannerImpl2 = XMLDocumentScannerImpl.this;
            xMLDocumentScannerImpl.dtdGrammarUtil = new DTDGrammarUtil(grammar, xMLDocumentScannerImpl2.fSymbolTable, xMLDocumentScannerImpl2.fNamespaceContext);
            return 11;
        }
    }

    /* loaded from: classes10.dex */
    public final class PrologDriver implements XMLDocumentFragmentScannerImpl.Driver {
        public PrologDriver() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0108. Please report as an issue. */
        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.Driver
        public int next() throws IOException, XNIException {
            ValidationManager validationManager;
            ValidationManager validationManager2;
            while (true) {
                try {
                    XMLDocumentScannerImpl xMLDocumentScannerImpl = XMLDocumentScannerImpl.this;
                    int i = xMLDocumentScannerImpl.fScannerState;
                    if (i == 21) {
                        xMLDocumentScannerImpl.fMarkupDepth++;
                        if (xMLDocumentScannerImpl.fEntityScanner.skipChar(63)) {
                            XMLDocumentScannerImpl.this.setScannerState(23);
                        } else if (XMLDocumentScannerImpl.this.fEntityScanner.skipChar(33)) {
                            if (XMLDocumentScannerImpl.this.fEntityScanner.skipChar(45)) {
                                if (!XMLDocumentScannerImpl.this.fEntityScanner.skipChar(45)) {
                                    XMLDocumentScannerImpl.this.reportFatalError("InvalidCommentStart", null);
                                }
                                XMLDocumentScannerImpl.this.setScannerState(27);
                            } else if (XMLDocumentScannerImpl.this.fEntityScanner.skipString(XMLDocumentScannerImpl.DOCTYPE)) {
                                XMLDocumentScannerImpl.this.setScannerState(24);
                                Entity.ScannedEntity currentEntity = XMLDocumentScannerImpl.this.fEntityScanner.getCurrentEntity();
                                if (currentEntity instanceof Entity.ScannedEntity) {
                                    XMLDocumentScannerImpl.this.fStartPos = currentEntity.position;
                                }
                                XMLDocumentScannerImpl xMLDocumentScannerImpl2 = XMLDocumentScannerImpl.this;
                                xMLDocumentScannerImpl2.fReadingDTD = true;
                                if (xMLDocumentScannerImpl2.fDTDDecl == null) {
                                    xMLDocumentScannerImpl2.fDTDDecl = new XMLStringBuffer();
                                }
                                XMLDocumentScannerImpl.this.fDTDDecl.append("<!DOCTYPE");
                            } else {
                                XMLDocumentScannerImpl.this.reportFatalError("MarkupNotRecognizedInProlog", null);
                            }
                        } else {
                            if (XMLChar.isNameStart(XMLDocumentScannerImpl.this.fEntityScanner.peekChar())) {
                                XMLDocumentScannerImpl.this.setScannerState(26);
                                XMLDocumentScannerImpl xMLDocumentScannerImpl3 = XMLDocumentScannerImpl.this;
                                xMLDocumentScannerImpl3.setDriver(xMLDocumentScannerImpl3.fContentDriver);
                                return XMLDocumentScannerImpl.this.fContentDriver.next();
                            }
                            XMLDocumentScannerImpl.this.reportFatalError("MarkupNotRecognizedInProlog", null);
                        }
                    } else if (i == 43) {
                        xMLDocumentScannerImpl.fEntityScanner.skipSpaces();
                        if (XMLDocumentScannerImpl.this.fEntityScanner.skipChar(60)) {
                            XMLDocumentScannerImpl.this.setScannerState(21);
                        } else if (XMLDocumentScannerImpl.this.fEntityScanner.skipChar(38)) {
                            XMLDocumentScannerImpl.this.setScannerState(28);
                        } else {
                            XMLDocumentScannerImpl.this.setScannerState(22);
                        }
                    }
                    XMLDocumentScannerImpl xMLDocumentScannerImpl4 = XMLDocumentScannerImpl.this;
                    int i2 = xMLDocumentScannerImpl4.fScannerState;
                    if (i2 != 43 && i2 != 21) {
                        switch (i2) {
                            case 22:
                                xMLDocumentScannerImpl4.reportFatalError("ContentIllegalInProlog", null);
                                XMLDocumentScannerImpl.this.fEntityScanner.scanChar();
                                XMLDocumentScannerImpl.this.reportFatalError("ReferenceIllegalInProlog", null);
                                return -1;
                            case 23:
                                xMLDocumentScannerImpl4.fContentBuffer.clear();
                                XMLDocumentScannerImpl xMLDocumentScannerImpl5 = XMLDocumentScannerImpl.this;
                                xMLDocumentScannerImpl5.scanPI(xMLDocumentScannerImpl5.fContentBuffer);
                                XMLDocumentScannerImpl.this.setScannerState(43);
                                return 3;
                            case 24:
                                if (xMLDocumentScannerImpl4.fDisallowDoctype) {
                                    xMLDocumentScannerImpl4.reportFatalError("DoctypeNotAllowed", null);
                                }
                                XMLDocumentScannerImpl xMLDocumentScannerImpl6 = XMLDocumentScannerImpl.this;
                                if (xMLDocumentScannerImpl6.fSeenDoctypeDecl) {
                                    xMLDocumentScannerImpl6.reportFatalError("AlreadySeenDoctype", null);
                                }
                                XMLDocumentScannerImpl xMLDocumentScannerImpl7 = XMLDocumentScannerImpl.this;
                                xMLDocumentScannerImpl7.fSeenDoctypeDecl = true;
                                if (xMLDocumentScannerImpl7.fDTDDriver == null) {
                                    xMLDocumentScannerImpl7.fDTDDriver = new DTDDriver();
                                }
                                if (XMLDocumentScannerImpl.this.scanDoctypeDecl()) {
                                    XMLDocumentScannerImpl.this.setScannerState(45);
                                    XMLDocumentScannerImpl xMLDocumentScannerImpl8 = XMLDocumentScannerImpl.this;
                                    xMLDocumentScannerImpl8.fSeenInternalSubset = true;
                                    xMLDocumentScannerImpl8.setDriver(xMLDocumentScannerImpl8.fContentDriver);
                                    return XMLDocumentScannerImpl.this.fDTDDriver.next();
                                }
                                XMLDocumentScannerImpl xMLDocumentScannerImpl9 = XMLDocumentScannerImpl.this;
                                if (xMLDocumentScannerImpl9.fDoctypeSystemId != null) {
                                    if ((xMLDocumentScannerImpl9.fValidation || xMLDocumentScannerImpl9.fLoadExternalDTD) && ((validationManager2 = xMLDocumentScannerImpl9.fValidationManager) == null || !validationManager2.isCachedDTD())) {
                                        XMLDocumentScannerImpl.this.setScannerState(46);
                                        XMLDocumentScannerImpl xMLDocumentScannerImpl10 = XMLDocumentScannerImpl.this;
                                        xMLDocumentScannerImpl10.setDriver(xMLDocumentScannerImpl10.fContentDriver);
                                        return XMLDocumentScannerImpl.this.fDTDDriver.next();
                                    }
                                } else if (xMLDocumentScannerImpl9.fExternalSubsetSource != null) {
                                    XMLDocumentScannerImpl xMLDocumentScannerImpl11 = XMLDocumentScannerImpl.this;
                                    if ((xMLDocumentScannerImpl11.fValidation || xMLDocumentScannerImpl11.fLoadExternalDTD) && ((validationManager = xMLDocumentScannerImpl11.fValidationManager) == null || !validationManager.isCachedDTD())) {
                                        XMLDocumentScannerImpl xMLDocumentScannerImpl12 = XMLDocumentScannerImpl.this;
                                        xMLDocumentScannerImpl12.fDTDScanner.setInputSource(xMLDocumentScannerImpl12.fExternalSubsetSource);
                                        XMLDocumentScannerImpl.this.fExternalSubsetSource = null;
                                        XMLDocumentScannerImpl.this.setScannerState(47);
                                        XMLDocumentScannerImpl xMLDocumentScannerImpl13 = XMLDocumentScannerImpl.this;
                                        xMLDocumentScannerImpl13.setDriver(xMLDocumentScannerImpl13.fContentDriver);
                                        return XMLDocumentScannerImpl.this.fDTDDriver.next();
                                    }
                                }
                                XMLDocumentScannerImpl.this.fDTDScanner.setInputSource(null);
                                XMLDocumentScannerImpl.this.setScannerState(43);
                                return 11;
                            case 25:
                            case 26:
                            default:
                                return -1;
                            case 27:
                                xMLDocumentScannerImpl4.scanComment();
                                XMLDocumentScannerImpl.this.setScannerState(43);
                                return 5;
                            case 28:
                                XMLDocumentScannerImpl.this.reportFatalError("ReferenceIllegalInProlog", null);
                                return -1;
                        }
                    }
                } catch (EOFException unused) {
                    XMLDocumentScannerImpl.this.reportFatalError("PrematureEOF", null);
                    return -1;
                }
            }
        }
    }

    /* loaded from: classes10.dex */
    public final class TrailingMiscDriver implements XMLDocumentFragmentScannerImpl.Driver {
        public TrailingMiscDriver() {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.Driver
        public int next() throws IOException, XNIException {
            XMLDocumentScannerImpl xMLDocumentScannerImpl = XMLDocumentScannerImpl.this;
            if (xMLDocumentScannerImpl.fEmptyElement) {
                xMLDocumentScannerImpl.fEmptyElement = false;
                return 2;
            }
            try {
                if (xMLDocumentScannerImpl.fScannerState == 34) {
                    return 8;
                }
                while (true) {
                    XMLDocumentScannerImpl xMLDocumentScannerImpl2 = XMLDocumentScannerImpl.this;
                    int i = xMLDocumentScannerImpl2.fScannerState;
                    if (i == 21) {
                        xMLDocumentScannerImpl2.fMarkupDepth++;
                        if (xMLDocumentScannerImpl2.fEntityScanner.skipChar(63)) {
                            XMLDocumentScannerImpl.this.setScannerState(23);
                        } else if (XMLDocumentScannerImpl.this.fEntityScanner.skipChar(33)) {
                            XMLDocumentScannerImpl.this.setScannerState(27);
                        } else if (XMLDocumentScannerImpl.this.fEntityScanner.skipChar(47)) {
                            XMLDocumentScannerImpl.this.reportFatalError("MarkupNotRecognizedInMisc", null);
                        } else if (XMLChar.isNameStart(XMLDocumentScannerImpl.this.fEntityScanner.peekChar())) {
                            XMLDocumentScannerImpl.this.reportFatalError("MarkupNotRecognizedInMisc", null);
                            XMLDocumentScannerImpl.this.scanStartElement();
                            XMLDocumentScannerImpl.this.setScannerState(22);
                        } else {
                            XMLDocumentScannerImpl.this.reportFatalError("MarkupNotRecognizedInMisc", null);
                        }
                    } else if (i == 44) {
                        xMLDocumentScannerImpl2.fEntityScanner.skipSpaces();
                        XMLDocumentScannerImpl xMLDocumentScannerImpl3 = XMLDocumentScannerImpl.this;
                        if (xMLDocumentScannerImpl3.fScannerState == 34) {
                            return 8;
                        }
                        if (xMLDocumentScannerImpl3.fEntityScanner.skipChar(60)) {
                            XMLDocumentScannerImpl.this.setScannerState(21);
                        } else {
                            XMLDocumentScannerImpl.this.setScannerState(22);
                        }
                    }
                    XMLDocumentScannerImpl xMLDocumentScannerImpl4 = XMLDocumentScannerImpl.this;
                    int i2 = xMLDocumentScannerImpl4.fScannerState;
                    if (i2 != 21 && i2 != 44) {
                        if (i2 == 22) {
                            if (xMLDocumentScannerImpl4.fEntityScanner.peekChar() == -1) {
                                XMLDocumentScannerImpl.this.setScannerState(34);
                                return 8;
                            }
                            XMLDocumentScannerImpl.this.reportFatalError("ContentIllegalInTrailingMisc", null);
                            XMLDocumentScannerImpl.this.fEntityScanner.scanChar();
                            XMLDocumentScannerImpl.this.setScannerState(44);
                            return 4;
                        }
                        if (i2 == 23) {
                            xMLDocumentScannerImpl4.fContentBuffer.clear();
                            XMLDocumentScannerImpl xMLDocumentScannerImpl5 = XMLDocumentScannerImpl.this;
                            xMLDocumentScannerImpl5.scanPI(xMLDocumentScannerImpl5.fContentBuffer);
                            XMLDocumentScannerImpl.this.setScannerState(44);
                            return 3;
                        }
                        if (i2 == 27) {
                            if (!xMLDocumentScannerImpl4.fEntityScanner.skipString(XMLDocumentScannerImpl.COMMENTSTRING)) {
                                XMLDocumentScannerImpl.this.reportFatalError("InvalidCommentStart", null);
                            }
                            XMLDocumentScannerImpl.this.scanComment();
                            XMLDocumentScannerImpl.this.setScannerState(44);
                            return 5;
                        }
                        if (i2 == 28) {
                            xMLDocumentScannerImpl4.reportFatalError("ReferenceIllegalInTrailingMisc", null);
                            XMLDocumentScannerImpl.this.setScannerState(44);
                            return 9;
                        }
                        if (i2 == 34) {
                            xMLDocumentScannerImpl4.setScannerState(48);
                            return 8;
                        }
                        if (i2 == 48) {
                            throw new NoSuchElementException("No more events to be parsed");
                        }
                        throw new XNIException("Scanner State " + XMLDocumentScannerImpl.this.fScannerState + " not Recognized ");
                    }
                }
            } catch (EOFException unused) {
                XMLDocumentScannerImpl xMLDocumentScannerImpl6 = XMLDocumentScannerImpl.this;
                if (xMLDocumentScannerImpl6.fMarkupDepth != 0) {
                    xMLDocumentScannerImpl6.reportFatalError("PrematureEOF", null);
                    return -1;
                }
                System.out.println("EOFException thrown");
                XMLDocumentScannerImpl.this.setScannerState(34);
                return 8;
            }
        }
    }

    /* loaded from: classes10.dex */
    public final class XMLDeclDriver implements XMLDocumentFragmentScannerImpl.Driver {
        public XMLDeclDriver() {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.Driver
        public int next() throws IOException, XNIException {
            XMLDocumentScannerImpl.this.setScannerState(43);
            XMLDocumentScannerImpl xMLDocumentScannerImpl = XMLDocumentScannerImpl.this;
            xMLDocumentScannerImpl.setDriver(xMLDocumentScannerImpl.fPrologDriver);
            try {
                if (!XMLDocumentScannerImpl.this.fEntityScanner.skipString(XMLDocumentFragmentScannerImpl.xmlDecl)) {
                    XMLDocumentScannerImpl.this.fEntityManager.fCurrentEntity.mayReadChunks = true;
                    return 7;
                }
                XMLDocumentScannerImpl xMLDocumentScannerImpl2 = XMLDocumentScannerImpl.this;
                xMLDocumentScannerImpl2.fMarkupDepth++;
                if (!XMLChar.isName(xMLDocumentScannerImpl2.fEntityScanner.peekChar())) {
                    XMLDocumentScannerImpl.this.scanXMLDeclOrTextDecl(false);
                    XMLDocumentScannerImpl.this.fEntityManager.fCurrentEntity.mayReadChunks = true;
                    return 7;
                }
                ((XMLDocumentFragmentScannerImpl) XMLDocumentScannerImpl.this).fStringBuffer.clear();
                ((XMLDocumentFragmentScannerImpl) XMLDocumentScannerImpl.this).fStringBuffer.append("xml");
                while (XMLChar.isName(XMLDocumentScannerImpl.this.fEntityScanner.peekChar())) {
                    XMLDocumentScannerImpl xMLDocumentScannerImpl3 = XMLDocumentScannerImpl.this;
                    ((XMLDocumentFragmentScannerImpl) xMLDocumentScannerImpl3).fStringBuffer.append((char) xMLDocumentScannerImpl3.fEntityScanner.scanChar());
                }
                XMLDocumentScannerImpl xMLDocumentScannerImpl4 = XMLDocumentScannerImpl.this;
                SymbolTable symbolTable = xMLDocumentScannerImpl4.fSymbolTable;
                XMLStringBuffer xMLStringBuffer = ((XMLDocumentFragmentScannerImpl) xMLDocumentScannerImpl4).fStringBuffer;
                String addSymbol = symbolTable.addSymbol(xMLStringBuffer.f64120ch, xMLStringBuffer.offset, xMLStringBuffer.length);
                ((XMLDocumentFragmentScannerImpl) XMLDocumentScannerImpl.this).fStringBuffer.clear();
                XMLDocumentScannerImpl xMLDocumentScannerImpl5 = XMLDocumentScannerImpl.this;
                xMLDocumentScannerImpl5.scanPIData(addSymbol, ((XMLDocumentFragmentScannerImpl) xMLDocumentScannerImpl5).fStringBuffer);
                XMLDocumentScannerImpl.this.fEntityManager.fCurrentEntity.mayReadChunks = true;
                return 3;
            } catch (EOFException unused) {
                XMLDocumentScannerImpl.this.reportFatalError("PrematureEOF", null);
                return -1;
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl
    public XMLDocumentFragmentScannerImpl.Driver createContentDriver() {
        return new ContentDriver();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.impl.XMLEntityHandler
    public void endEntity(String str, Augmentations augmentations) throws IOException, XNIException {
        super.endEntity(str, augmentations);
        if (str.equals("[xml]")) {
            if (this.fMarkupDepth != 0 || this.fDriver != this.fTrailingMiscDriver) {
                throw new EOFException();
            }
            setScannerState(34);
        }
    }

    public String getCharacterEncodingScheme() {
        return this.fDeclaredEncoding;
    }

    public XMLStringBuffer getDTDDecl() {
        Entity.ScannedEntity currentEntity = this.fEntityScanner.getCurrentEntity();
        XMLStringBuffer xMLStringBuffer = this.fDTDDecl;
        char[] cArr = currentEntity.f64126ch;
        int i = this.fStartPos;
        xMLStringBuffer.append(cArr, i, this.fEndPos - i);
        if (this.fSeenInternalSubset) {
            this.fDTDDecl.append("]>");
        }
        return this.fDTDDecl;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_FEATURES;
            if (i >= strArr.length) {
                return super.getFeatureDefault(str);
            }
            if (strArr[i].equals(str)) {
                return FEATURE_DEFAULTS[i];
            }
            i++;
        }
    }

    public NamespaceContext getNamespaceContext() {
        return this.fNamespaceContext;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_PROPERTIES;
            if (i >= strArr.length) {
                return super.getPropertyDefault(str);
            }
            if (strArr[i].equals(str)) {
                return PROPERTY_DEFAULTS[i];
            }
            i++;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        String[] recognizedFeatures = super.getRecognizedFeatures();
        int length = recognizedFeatures != null ? recognizedFeatures.length : 0;
        String[] strArr = RECOGNIZED_FEATURES;
        String[] strArr2 = new String[strArr.length + length];
        if (recognizedFeatures != null) {
            System.arraycopy(recognizedFeatures, 0, strArr2, 0, recognizedFeatures.length);
        }
        System.arraycopy(strArr, 0, strArr2, length, strArr.length);
        return strArr2;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        String[] recognizedProperties = super.getRecognizedProperties();
        int length = recognizedProperties != null ? recognizedProperties.length : 0;
        String[] strArr = RECOGNIZED_PROPERTIES;
        String[] strArr2 = new String[strArr.length + length];
        if (recognizedProperties != null) {
            System.arraycopy(recognizedProperties, 0, strArr2, 0, recognizedProperties.length);
        }
        System.arraycopy(strArr, 0, strArr2, length, strArr.length);
        return strArr2;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl
    public String getScannerStateName(int i) {
        switch (i) {
            case 42:
                return "SCANNER_STATE_XML_DECL";
            case 43:
                return "SCANNER_STATE_PROLOG";
            case 44:
                return "SCANNER_STATE_TRAILING_MISC";
            case 45:
                return "SCANNER_STATE_DTD_INTERNAL_DECLS";
            case 46:
                return "SCANNER_STATE_DTD_EXTERNAL";
            case 47:
                return "SCANNER_STATE_DTD_EXTERNAL_DECLS";
            default:
                return super.getScannerStateName(i);
        }
    }

    public int getScannetState() {
        return this.fScannerState;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner
    public int next() throws IOException, XNIException {
        return this.fDriver.next();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.xml.internal.stream.XMLBufferListener
    public void refresh(int i) {
        super.refresh(i);
        if (this.fReadingDTD) {
            Entity.ScannedEntity currentEntity = this.fEntityScanner.getCurrentEntity();
            if (currentEntity instanceof Entity.ScannedEntity) {
                this.fEndPos = currentEntity.position;
            }
            XMLStringBuffer xMLStringBuffer = this.fDTDDecl;
            char[] cArr = currentEntity.f64126ch;
            int i2 = this.fStartPos;
            xMLStringBuffer.append(cArr, i2, this.fEndPos - i2);
            this.fStartPos = i;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLScanner
    public void reset(PropertyManager propertyManager) {
        super.reset(propertyManager);
        this.fDoctypeName = null;
        this.fDoctypePublicId = null;
        this.fDoctypeSystemId = null;
        this.fSeenDoctypeDecl = false;
        this.fNamespaceContext.reset();
        this.fDisallowDoctype = !((Boolean) propertyManager.getProperty(XMLInputFactory.SUPPORT_DTD)).booleanValue();
        this.fLoadExternalDTD = true;
        setScannerState(7);
        setDriver(this.fXMLDeclDriver);
        this.fSeenInternalSubset = false;
        XMLDTDScanner xMLDTDScanner = this.fDTDScanner;
        if (xMLDTDScanner != null) {
            ((XMLDTDScannerImpl) xMLDTDScanner).reset(propertyManager);
        }
        this.fEndPos = 0;
        this.fStartPos = 0;
        XMLStringBuffer xMLStringBuffer = this.fDTDDecl;
        if (xMLStringBuffer != null) {
            xMLStringBuffer.clear();
        }
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
            scanExternalID(this.fStrings, false);
            String[] strArr = this.fStrings;
            this.fDoctypeSystemId = strArr[0];
            this.fDoctypePublicId = strArr[1];
            this.fEntityScanner.skipSpaces();
        }
        boolean z = this.fDoctypeSystemId != null;
        this.fHasExternalDTD = z;
        if (!z && this.fExternalSubsetResolver != null) {
            this.fDTDDescription.setValues(null, null, this.fEntityManager.getCurrentResourceIdentifier().getExpandedSystemId(), null);
            this.fDTDDescription.setRootName(this.fDoctypeName);
            XMLInputSource externalSubset = this.fExternalSubsetResolver.getExternalSubset(this.fDTDDescription);
            this.fExternalSubsetSource = externalSubset;
            this.fHasExternalDTD = externalSubset != null;
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            XMLInputSource xMLInputSource = this.fExternalSubsetSource;
            if (xMLInputSource == null) {
                xMLDocumentHandler.doctypeDecl(this.fDoctypeName, this.fDoctypePublicId, this.fDoctypeSystemId, null);
            } else {
                xMLDocumentHandler.doctypeDecl(this.fDoctypeName, xMLInputSource.getPublicId(), this.fExternalSubsetSource.getSystemId(), null);
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

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
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

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner
    public void setInputSource(XMLInputSource xMLInputSource) throws IOException {
        this.fEntityManager.setEntityHandler(this);
        this.fEntityManager.startDocumentEntity(xMLInputSource);
        setScannerState(7);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
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

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.impl.XMLEntityHandler
    public void startEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        super.startEntity(str, xMLResourceIdentifier, str2, augmentations);
        this.fEntityScanner.registerListener(this);
        if (!str.equals("[xml]") && this.fEntityScanner.isExternal()) {
            setScannerState(36);
        }
        if (this.fDocumentHandler == null || !str.equals("[xml]")) {
            return;
        }
        this.fDocumentHandler.startDocument(this.fEntityScanner, str2, this.fNamespaceContext, null);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        super.reset(xMLComponentManager);
        this.fDoctypeName = null;
        this.fDoctypePublicId = null;
        this.fDoctypeSystemId = null;
        this.fSeenDoctypeDecl = false;
        this.fExternalSubsetSource = null;
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
        try {
            this.fNamespaces = xMLComponentManager.getFeature("http://xml.org/sax/features/namespaces");
        } catch (XMLConfigurationException unused3) {
            this.fNamespaces = true;
        }
        this.fSeenInternalSubset = false;
        this.fDTDScanner = (XMLDTDScanner) xMLComponentManager.getProperty(DTD_SCANNER);
        try {
            this.fValidationManager = (ValidationManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/validation-manager");
        } catch (XMLConfigurationException unused4) {
            this.fValidationManager = null;
        }
        try {
            this.fNamespaceContext = (NamespaceContext) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/namespace-context");
        } catch (XMLConfigurationException unused5) {
        }
        if (this.fNamespaceContext == null) {
            this.fNamespaceContext = new NamespaceSupport();
        }
        this.fNamespaceContext.reset();
        this.fEndPos = 0;
        this.fStartPos = 0;
        XMLStringBuffer xMLStringBuffer = this.fDTDDecl;
        if (xMLStringBuffer != null) {
            xMLStringBuffer.clear();
        }
        setScannerState(42);
        setDriver(this.fXMLDeclDriver);
    }
}
