package org.apache.xerces.impl;

import java.io.CharConversionException;
import java.io.EOFException;
import java.io.IOException;
import org.apache.logging.log4j.util.Chars;
import org.apache.xerces.impl.io.MalformedByteSequenceException;
import org.apache.xerces.util.AugmentationsImpl;
import org.apache.xerces.util.XMLAttributesImpl;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDocumentScanner;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public class XMLDocumentFragmentScannerImpl extends XMLScanner implements XMLDocumentScanner, XMLComponent, XMLEntityHandler {
    protected static final boolean DEBUG_CONTENT_SCANNING = false;
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final int SCANNER_STATE_CDATA = 15;
    protected static final int SCANNER_STATE_COMMENT = 2;
    protected static final int SCANNER_STATE_CONTENT = 7;
    protected static final int SCANNER_STATE_DOCTYPE = 4;
    protected static final int SCANNER_STATE_END_OF_INPUT = 13;
    protected static final int SCANNER_STATE_PI = 3;
    protected static final int SCANNER_STATE_REFERENCE = 8;
    protected static final int SCANNER_STATE_ROOT_ELEMENT = 6;
    protected static final int SCANNER_STATE_START_OF_MARKUP = 1;
    protected static final int SCANNER_STATE_TERMINATED = 14;
    protected static final int SCANNER_STATE_TEXT_DECL = 16;

    /* renamed from: q */
    public static final Boolean[] f111979q;

    /* renamed from: r */
    public static final String[] f111980r;

    /* renamed from: s */
    public static final Object[] f111981s;

    /* renamed from: t */
    public static final boolean f111982t = false;

    /* renamed from: u */
    public static final boolean f111983u = false;
    protected QName fCurrentElement;
    protected Dispatcher fDispatcher;
    protected XMLDocumentHandler fDocumentHandler;
    protected ExternalSubsetResolver fExternalSubsetResolver;
    protected boolean fHasExternalDTD;
    protected boolean fIsEntityDeclaredVC;
    protected int fMarkupDepth;
    protected int fScannerState;
    protected boolean fStandalone;

    /* renamed from: n */
    public boolean f111989n;
    protected static final String NOTIFY_BUILTIN_REFS = "http://apache.org/xml/features/scanner/notify-builtin-refs";

    /* renamed from: p */
    public static final String[] f111978p = {"http://xml.org/sax/features/namespaces", "http://xml.org/sax/features/validation", NOTIFY_BUILTIN_REFS, "http://apache.org/xml/features/scanner/notify-char-refs"};
    protected int[] fEntityStack = new int[4];
    protected boolean fInScanContent = false;
    protected final ElementStack fElementStack = new ElementStack();
    protected boolean fNotifyBuiltInRefs = false;
    protected final Dispatcher fContentDispatcher = createContentDispatcher();
    protected final QName fElementQName = new QName();
    protected final QName fAttributeQName = new QName();
    protected final XMLAttributesImpl fAttributes = new XMLAttributesImpl();
    protected final XMLString fTempString = new XMLString();
    protected final XMLString fTempString2 = new XMLString();

    /* renamed from: i */
    public final String[] f111984i = new String[3];

    /* renamed from: j */
    public final XMLStringBuffer f111985j = new XMLStringBuffer();

    /* renamed from: k */
    public final XMLStringBuffer f111986k = new XMLStringBuffer();

    /* renamed from: l */
    public final QName f111987l = new QName();

    /* renamed from: m */
    public final char[] f111988m = new char[1];

    /* renamed from: o */
    public Augmentations f111990o = null;

    /* loaded from: classes13.dex */
    public interface Dispatcher {
        boolean dispatch(boolean z) throws IOException, XNIException;
    }

    /* loaded from: classes13.dex */
    public static class ElementStack {
        protected QName[] fElements = new QName[10];
        protected int fSize;

        public ElementStack() {
            int i = 0;
            while (true) {
                QName[] qNameArr = this.fElements;
                if (i >= qNameArr.length) {
                    return;
                }
                qNameArr[i] = new QName();
                i++;
            }
        }

        public void clear() {
            this.fSize = 0;
        }

        public void popElement(QName qName) {
            QName[] qNameArr = this.fElements;
            int i = this.fSize - 1;
            this.fSize = i;
            qName.setValues(qNameArr[i]);
        }

        public QName pushElement(QName qName) {
            int i = this.fSize;
            QName[] qNameArr = this.fElements;
            if (i == qNameArr.length) {
                QName[] qNameArr2 = new QName[qNameArr.length * 2];
                System.arraycopy(qNameArr, 0, qNameArr2, 0, i);
                this.fElements = qNameArr2;
                int i2 = this.fSize;
                while (true) {
                    QName[] qNameArr3 = this.fElements;
                    if (i2 >= qNameArr3.length) {
                        break;
                    }
                    qNameArr3[i2] = new QName();
                    i2++;
                }
            }
            this.fElements[this.fSize].setValues(qName);
            QName[] qNameArr4 = this.fElements;
            int i3 = this.fSize;
            this.fSize = i3 + 1;
            return qNameArr4[i3];
        }
    }

    /* loaded from: classes13.dex */
    public class FragmentContentDispatcher implements Dispatcher {
        public FragmentContentDispatcher() {
        }

        @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.Dispatcher
        public boolean dispatch(boolean z) throws IOException, XNIException {
            CharConversionException charConversionException;
            String str;
            String str2;
            Object[] objArr;
            XMLErrorReporter xMLErrorReporter;
            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl;
            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl2;
            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl3;
            XMLDocumentHandler xMLDocumentHandler;
            while (true) {
                boolean z2 = false;
                try {
                    XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl4 = XMLDocumentFragmentScannerImpl.this;
                    int i = xMLDocumentFragmentScannerImpl4.fScannerState;
                    int i2 = 2;
                    if (i != 1) {
                        if (i == 2) {
                            xMLDocumentFragmentScannerImpl4.scanComment();
                            xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
                        } else if (i == 3) {
                            xMLDocumentFragmentScannerImpl4.scanPI();
                            xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
                        } else if (i == 4) {
                            xMLDocumentFragmentScannerImpl4.reportFatalError("DoctypeIllegalInContent", null);
                            xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
                        } else if (i != 6) {
                            i2 = 8;
                            if (i != 7) {
                                if (i == 8) {
                                    xMLDocumentFragmentScannerImpl4.fMarkupDepth++;
                                    xMLDocumentFragmentScannerImpl4.setScannerState(7);
                                    if (XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(35)) {
                                        XMLDocumentFragmentScannerImpl.this.scanCharReference();
                                    } else {
                                        XMLDocumentFragmentScannerImpl.this.scanEntityReference();
                                    }
                                } else if (i == 15) {
                                    xMLDocumentFragmentScannerImpl4.scanCDATASection(z);
                                    xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
                                } else if (i == 16) {
                                    if (xMLDocumentFragmentScannerImpl4.fEntityScanner.skipString("<?xml")) {
                                        XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl5 = XMLDocumentFragmentScannerImpl.this;
                                        xMLDocumentFragmentScannerImpl5.fMarkupDepth++;
                                        if (xMLDocumentFragmentScannerImpl5.isValidNameChar(xMLDocumentFragmentScannerImpl5.fEntityScanner.peekChar())) {
                                            XMLDocumentFragmentScannerImpl.this.f111985j.clear();
                                            XMLDocumentFragmentScannerImpl.this.f111985j.append("xml");
                                            if (XMLDocumentFragmentScannerImpl.this.fNamespaces) {
                                                while (true) {
                                                    XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl6 = XMLDocumentFragmentScannerImpl.this;
                                                    if (!xMLDocumentFragmentScannerImpl6.isValidNCName(xMLDocumentFragmentScannerImpl6.fEntityScanner.peekChar())) {
                                                        break;
                                                    }
                                                    XMLDocumentFragmentScannerImpl.this.f111985j.append((char) XMLDocumentFragmentScannerImpl.this.fEntityScanner.scanChar());
                                                }
                                            } else {
                                                while (true) {
                                                    XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl7 = XMLDocumentFragmentScannerImpl.this;
                                                    if (!xMLDocumentFragmentScannerImpl7.isValidNameChar(xMLDocumentFragmentScannerImpl7.fEntityScanner.peekChar())) {
                                                        break;
                                                    }
                                                    XMLDocumentFragmentScannerImpl.this.f111985j.append((char) XMLDocumentFragmentScannerImpl.this.fEntityScanner.scanChar());
                                                }
                                            }
                                            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl8 = XMLDocumentFragmentScannerImpl.this;
                                            String addSymbol = xMLDocumentFragmentScannerImpl8.fSymbolTable.addSymbol(xMLDocumentFragmentScannerImpl8.f111985j.f113585ch, XMLDocumentFragmentScannerImpl.this.f111985j.offset, XMLDocumentFragmentScannerImpl.this.f111985j.length);
                                            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl9 = XMLDocumentFragmentScannerImpl.this;
                                            xMLDocumentFragmentScannerImpl9.scanPIData(addSymbol, xMLDocumentFragmentScannerImpl9.fTempString);
                                        } else {
                                            XMLDocumentFragmentScannerImpl.this.scanXMLDeclOrTextDecl(true);
                                        }
                                    }
                                    xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
                                    xMLDocumentFragmentScannerImpl.fEntityManager.fCurrentEntity.mayReadChunks = true;
                                }
                            } else if (xMLDocumentFragmentScannerImpl4.fEntityScanner.skipChar(60)) {
                                XMLDocumentFragmentScannerImpl.this.setScannerState(1);
                                z2 = true;
                            } else {
                                if (XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(38)) {
                                    xMLDocumentFragmentScannerImpl2 = XMLDocumentFragmentScannerImpl.this;
                                    xMLDocumentFragmentScannerImpl2.setScannerState(i2);
                                    z2 = true;
                                }
                                while (true) {
                                    int scanContent = XMLDocumentFragmentScannerImpl.this.scanContent();
                                    if (scanContent == 60) {
                                        XMLDocumentFragmentScannerImpl.this.fEntityScanner.scanChar();
                                        XMLDocumentFragmentScannerImpl.this.setScannerState(1);
                                        break;
                                    }
                                    if (scanContent == 38) {
                                        XMLDocumentFragmentScannerImpl.this.fEntityScanner.scanChar();
                                        XMLDocumentFragmentScannerImpl.this.setScannerState(8);
                                        break;
                                    }
                                    if (scanContent != -1 && XMLDocumentFragmentScannerImpl.this.isInvalidLiteral(scanContent)) {
                                        if (XMLChar.isHighSurrogate(scanContent)) {
                                            XMLDocumentFragmentScannerImpl.this.f111985j.clear();
                                            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl10 = XMLDocumentFragmentScannerImpl.this;
                                            if (xMLDocumentFragmentScannerImpl10.scanSurrogates(xMLDocumentFragmentScannerImpl10.f111985j) && (xMLDocumentHandler = (xMLDocumentFragmentScannerImpl3 = XMLDocumentFragmentScannerImpl.this).fDocumentHandler) != null) {
                                                xMLDocumentHandler.characters(xMLDocumentFragmentScannerImpl3.f111985j, null);
                                            }
                                        } else {
                                            XMLDocumentFragmentScannerImpl.this.reportFatalError("InvalidCharInContent", new Object[]{Integer.toString(scanContent, 16)});
                                            XMLDocumentFragmentScannerImpl.this.fEntityScanner.scanChar();
                                        }
                                    }
                                    if (!z) {
                                        break;
                                    }
                                }
                            }
                        } else {
                            if (scanRootElementHook()) {
                                return true;
                            }
                            xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
                        }
                        xMLDocumentFragmentScannerImpl.setScannerState(7);
                    } else {
                        xMLDocumentFragmentScannerImpl4.fMarkupDepth++;
                        if (!xMLDocumentFragmentScannerImpl4.fEntityScanner.skipChar(47)) {
                            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl11 = XMLDocumentFragmentScannerImpl.this;
                            if (xMLDocumentFragmentScannerImpl11.isValidNameStartChar(xMLDocumentFragmentScannerImpl11.fEntityScanner.peekChar())) {
                                XMLDocumentFragmentScannerImpl.this.scanStartElement();
                                xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
                            } else {
                                if (XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(33)) {
                                    if (XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(45)) {
                                        if (!XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(45)) {
                                            XMLDocumentFragmentScannerImpl.this.reportFatalError("InvalidCommentStart", null);
                                        }
                                        xMLDocumentFragmentScannerImpl2 = XMLDocumentFragmentScannerImpl.this;
                                        xMLDocumentFragmentScannerImpl2.setScannerState(i2);
                                    } else if (XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipString("[CDATA[")) {
                                        XMLDocumentFragmentScannerImpl.this.setScannerState(15);
                                    } else if (!scanForDoctypeHook()) {
                                        XMLDocumentFragmentScannerImpl.this.reportFatalError("MarkupNotRecognizedInContent", null);
                                    }
                                } else if (XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(63)) {
                                    XMLDocumentFragmentScannerImpl.this.setScannerState(3);
                                } else {
                                    XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl12 = XMLDocumentFragmentScannerImpl.this;
                                    if (xMLDocumentFragmentScannerImpl12.isValidNameStartHighSurrogate(xMLDocumentFragmentScannerImpl12.fEntityScanner.peekChar())) {
                                        XMLDocumentFragmentScannerImpl.this.scanStartElement();
                                        xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
                                    } else {
                                        XMLDocumentFragmentScannerImpl.this.reportFatalError("MarkupNotRecognizedInContent", null);
                                        xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
                                    }
                                }
                                z2 = true;
                            }
                        } else {
                            if (XMLDocumentFragmentScannerImpl.this.scanEndElement() == 0 && elementDepthIsZeroHook()) {
                                return true;
                            }
                            xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
                        }
                        xMLDocumentFragmentScannerImpl.setScannerState(7);
                    }
                    if (!z && !z2) {
                        return true;
                    }
                } catch (MalformedByteSequenceException e) {
                    MalformedByteSequenceException malformedByteSequenceException = e;
                    XMLErrorReporter xMLErrorReporter2 = XMLDocumentFragmentScannerImpl.this.fErrorReporter;
                    str = malformedByteSequenceException.getDomain();
                    str2 = malformedByteSequenceException.getKey();
                    objArr = malformedByteSequenceException.getArguments();
                    xMLErrorReporter = xMLErrorReporter2;
                    charConversionException = malformedByteSequenceException;
                    xMLErrorReporter.reportError(str, str2, objArr, (short) 2, (Exception) charConversionException);
                    return false;
                } catch (CharConversionException e2) {
                    charConversionException = e2;
                    str = "http://www.w3.org/TR/1998/REC-xml-19980210";
                    str2 = "CharConversionFailure";
                    objArr = null;
                    xMLErrorReporter = XMLDocumentFragmentScannerImpl.this.fErrorReporter;
                    xMLErrorReporter.reportError(str, str2, objArr, (short) 2, (Exception) charConversionException);
                    return false;
                } catch (EOFException e3) {
                    endOfFileHook(e3);
                    return false;
                }
            }
        }

        public boolean elementDepthIsZeroHook() throws IOException, XNIException {
            return false;
        }

        public void endOfFileHook(EOFException eOFException) throws IOException, XNIException {
            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
            if (xMLDocumentFragmentScannerImpl.fMarkupDepth != 0) {
                xMLDocumentFragmentScannerImpl.reportFatalError("PrematureEOF", null);
            }
        }

        public boolean scanForDoctypeHook() throws IOException, XNIException {
            return false;
        }

        public boolean scanRootElementHook() throws IOException, XNIException {
            return false;
        }
    }

    static {
        Boolean bool = Boolean.FALSE;
        f111979q = new Boolean[]{null, null, bool, bool};
        f111980r = new String[]{"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-manager", "http://apache.org/xml/properties/internal/entity-resolver"};
        f111981s = new Object[]{null, null, null, null};
    }

    public Dispatcher createContentDispatcher() {
        return new FragmentContentDispatcher();
    }

    /* renamed from: d */
    public final void m69823d(char c, String str) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (this.fNotifyBuiltInRefs) {
                xMLDocumentHandler.startGeneralEntity(str, null, null, null);
            }
            char[] cArr = this.f111988m;
            cArr[0] = c;
            this.fTempString.setValues(cArr, 0, 1);
            this.fDocumentHandler.characters(this.fTempString, null);
            if (this.fNotifyBuiltInRefs) {
                this.fDocumentHandler.endGeneralEntity(str, null);
            }
        }
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.impl.XMLEntityHandler
    public void endEntity(String str, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler;
        if (this.fInScanContent) {
            XMLStringBuffer xMLStringBuffer = this.f111985j;
            if (xMLStringBuffer.length != 0 && (xMLDocumentHandler = this.fDocumentHandler) != null) {
                xMLDocumentHandler.characters(xMLStringBuffer, null);
                this.f111985j.length = 0;
            }
        }
        super.endEntity(str, augmentations);
        if (this.fMarkupDepth != this.fEntityStack[this.fEntityDepth]) {
            reportFatalError("MarkupEntityMismatch", null);
        }
        if (this.fDocumentHandler == null || this.fScanningAttribute || str.equals("[xml]")) {
            return;
        }
        this.fDocumentHandler.endGeneralEntity(str, augmentations);
    }

    public String getDispatcherName(Dispatcher dispatcher) {
        return "null";
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f111978p;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f111979q[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f111980r;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f111981s[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f111978p.clone();
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f111980r.clone();
    }

    public String getScannerStateName(int i) {
        if (i == 1) {
            return "SCANNER_STATE_START_OF_MARKUP";
        }
        if (i == 2) {
            return "SCANNER_STATE_COMMENT";
        }
        if (i == 3) {
            return "SCANNER_STATE_PI";
        }
        if (i == 4) {
            return "SCANNER_STATE_DOCTYPE";
        }
        if (i == 6) {
            return "SCANNER_STATE_ROOT_ELEMENT";
        }
        if (i == 7) {
            return "SCANNER_STATE_CONTENT";
        }
        if (i == 8) {
            return "SCANNER_STATE_REFERENCE";
        }
        switch (i) {
            case 13:
                return "SCANNER_STATE_END_OF_INPUT";
            case 14:
                return "SCANNER_STATE_TERMINATED";
            case 15:
                return "SCANNER_STATE_CDATA";
            case 16:
                return "SCANNER_STATE_TEXT_DECL";
            default:
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("??? (");
                stringBuffer.append(i);
                stringBuffer.append(')');
                return stringBuffer.toString();
        }
    }

    public int handleEndElement(QName qName, boolean z) throws XNIException {
        int i = this.fMarkupDepth - 1;
        this.fMarkupDepth = i;
        if (i < this.fEntityStack[this.fEntityDepth - 1]) {
            reportFatalError("ElementEntityMismatch", new Object[]{this.fCurrentElement.rawname});
        }
        QName qName2 = this.f111987l;
        this.fElementStack.popElement(qName2);
        String str = qName.rawname;
        String str2 = qName2.rawname;
        if (str != str2) {
            reportFatalError("ETagRequired", new Object[]{str2});
        }
        if (this.fNamespaces) {
            qName.uri = qName2.uri;
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null && !z) {
            xMLDocumentHandler.endElement(qName, null);
        }
        return this.fMarkupDepth;
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        super.reset(xMLComponentManager);
        this.fAttributes.setNamespaces(this.fNamespaces);
        this.fMarkupDepth = 0;
        this.fCurrentElement = null;
        this.fElementStack.clear();
        this.fHasExternalDTD = false;
        this.fStandalone = false;
        this.fIsEntityDeclaredVC = false;
        this.fInScanContent = false;
        setScannerState(7);
        setDispatcher(this.fContentDispatcher);
        if (this.fParserSettings) {
            try {
                this.fNotifyBuiltInRefs = xMLComponentManager.getFeature(NOTIFY_BUILTIN_REFS);
            } catch (XMLConfigurationException unused) {
                this.fNotifyBuiltInRefs = false;
            }
            try {
                Object property = xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
                this.fExternalSubsetResolver = property instanceof ExternalSubsetResolver ? (ExternalSubsetResolver) property : null;
            } catch (XMLConfigurationException unused2) {
                this.fExternalSubsetResolver = null;
            }
        }
    }

    public void scanAttribute(XMLAttributes xMLAttributes) throws IOException, XNIException {
        if (this.fNamespaces) {
            this.fEntityScanner.scanQName(this.fAttributeQName);
        } else {
            String scanName = this.fEntityScanner.scanName();
            this.fAttributeQName.setValues(null, scanName, scanName, null);
        }
        this.fEntityScanner.skipSpaces();
        if (!this.fEntityScanner.skipChar(61)) {
            reportFatalError("EqRequiredInAttribute", new Object[]{this.fCurrentElement.rawname, this.fAttributeQName.rawname});
        }
        this.fEntityScanner.skipSpaces();
        int length = xMLAttributes.getLength();
        int addAttribute = xMLAttributes.addAttribute(this.fAttributeQName, XMLSymbols.fCDATASymbol, null);
        if (length == xMLAttributes.getLength()) {
            reportFatalError("AttributeNotUnique", new Object[]{this.fCurrentElement.rawname, this.fAttributeQName.rawname});
        }
        boolean scanAttributeValue = scanAttributeValue(this.fTempString, this.fTempString2, this.fAttributeQName.rawname, this.fIsEntityDeclaredVC, this.fCurrentElement.rawname);
        xMLAttributes.setValue(addAttribute, this.fTempString.toString());
        if (!scanAttributeValue) {
            xMLAttributes.setNonNormalizedValue(addAttribute, this.fTempString2.toString());
        }
        xMLAttributes.setSpecified(addAttribute, true);
    }

    public boolean scanCDATASection(boolean z) throws IOException, XNIException {
        XMLDocumentHandler xMLDocumentHandler;
        XMLDocumentHandler xMLDocumentHandler2 = this.fDocumentHandler;
        if (xMLDocumentHandler2 != null) {
            xMLDocumentHandler2.startCDATA(null);
        }
        while (true) {
            this.f111985j.clear();
            if (this.fEntityScanner.scanData("]]", this.f111985j)) {
                XMLDocumentHandler xMLDocumentHandler3 = this.fDocumentHandler;
                if (xMLDocumentHandler3 != null) {
                    xMLDocumentHandler3.characters(this.f111985j, null);
                }
                int peekChar = this.fEntityScanner.peekChar();
                if (peekChar != -1 && isInvalidLiteral(peekChar)) {
                    if (XMLChar.isHighSurrogate(peekChar)) {
                        this.f111985j.clear();
                        scanSurrogates(this.f111985j);
                        xMLDocumentHandler = this.fDocumentHandler;
                        if (xMLDocumentHandler != null) {
                            xMLDocumentHandler.characters(this.f111985j, null);
                        }
                    } else {
                        reportFatalError("InvalidCharInCDSect", new Object[]{Integer.toString(peekChar, 16)});
                        this.fEntityScanner.scanChar();
                    }
                }
            } else {
                XMLDocumentHandler xMLDocumentHandler4 = this.fDocumentHandler;
                if (xMLDocumentHandler4 != null) {
                    XMLStringBuffer xMLStringBuffer = this.f111985j;
                    if (xMLStringBuffer.length > 0) {
                        xMLDocumentHandler4.characters(xMLStringBuffer, null);
                    }
                }
                int i = 0;
                int i2 = 0;
                while (this.fEntityScanner.skipChar(93)) {
                    i2++;
                }
                if (this.fDocumentHandler != null && i2 > 0) {
                    this.f111985j.clear();
                    if (i2 > 2048) {
                        int i3 = i2 / 2048;
                        int i4 = i2 % 2048;
                        for (int i5 = 0; i5 < 2048; i5++) {
                            this.f111985j.append(']');
                        }
                        while (i < i3) {
                            this.fDocumentHandler.characters(this.f111985j, null);
                            i++;
                        }
                        if (i4 != 0) {
                            XMLStringBuffer xMLStringBuffer2 = this.f111985j;
                            xMLStringBuffer2.length = i4;
                            this.fDocumentHandler.characters(xMLStringBuffer2, null);
                        }
                    } else {
                        while (i < i2) {
                            this.f111985j.append(']');
                            i++;
                        }
                        this.fDocumentHandler.characters(this.f111985j, null);
                    }
                }
                if (this.fEntityScanner.skipChar(62)) {
                    break;
                }
                if (this.fDocumentHandler != null) {
                    this.f111985j.clear();
                    this.f111985j.append("]]");
                    xMLDocumentHandler = this.fDocumentHandler;
                    xMLDocumentHandler.characters(this.f111985j, null);
                }
            }
        }
        this.fMarkupDepth--;
        XMLDocumentHandler xMLDocumentHandler5 = this.fDocumentHandler;
        if (xMLDocumentHandler5 != null) {
            xMLDocumentHandler5.endCDATA(null);
        }
        return true;
    }

    public void scanCharReference() throws IOException, XNIException {
        XMLDocumentHandler xMLDocumentHandler;
        Augmentations augmentations;
        this.f111986k.clear();
        int scanCharReferenceValue = scanCharReferenceValue(this.f111986k, null);
        this.fMarkupDepth--;
        if (scanCharReferenceValue == -1 || (xMLDocumentHandler = this.fDocumentHandler) == null) {
            return;
        }
        if (this.fNotifyCharRefs) {
            xMLDocumentHandler.startGeneralEntity(this.fCharRefLiteral, null, null, null);
        }
        if (!this.fValidation || scanCharReferenceValue > 32) {
            augmentations = null;
        } else {
            Augmentations augmentations2 = this.f111990o;
            if (augmentations2 != null) {
                augmentations2.removeAllItems();
            } else {
                this.f111990o = new AugmentationsImpl();
            }
            augmentations = this.f111990o;
            augmentations.putItem("CHAR_REF_PROBABLE_WS", Boolean.TRUE);
        }
        this.fDocumentHandler.characters(this.f111986k, augmentations);
        if (this.fNotifyCharRefs) {
            this.fDocumentHandler.endGeneralEntity(this.fCharRefLiteral, null);
        }
    }

    public void scanComment() throws IOException, XNIException {
        scanComment(this.f111985j);
        this.fMarkupDepth--;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.comment(this.f111985j, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
    
        if (r6.fEntityScanner.skipChar(93) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
    
        r6.f111985j.append(']');
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0064, code lost:
    
        if (r6.fEntityScanner.skipChar(93) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006e, code lost:
    
        if (r6.fEntityScanner.skipChar(62) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
    
        reportFatalError("CDEndInContent", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0075, code lost:
    
        r0 = r6.fDocumentHandler;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0077, code lost:
    
        if (r0 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0079, code lost:
    
        r1 = r6.f111985j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007d, code lost:
    
        if (r1.length == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
    
        r0.characters(r1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
    
        r6.fInScanContent = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanContent() throws java.io.IOException, org.apache.xerces.xni.XNIException {
        /*
            r6 = this;
            org.apache.xerces.xni.XMLString r0 = r6.fTempString
            org.apache.xerces.impl.XMLEntityScanner r1 = r6.fEntityScanner
            int r1 = r1.scanContent(r0)
            r2 = 13
            r3 = -1
            if (r1 != r2) goto L27
            org.apache.xerces.impl.XMLEntityScanner r0 = r6.fEntityScanner
            r0.scanChar()
            org.apache.xerces.util.XMLStringBuffer r0 = r6.f111985j
            r0.clear()
            org.apache.xerces.util.XMLStringBuffer r0 = r6.f111985j
            org.apache.xerces.xni.XMLString r2 = r6.fTempString
            r0.append(r2)
            org.apache.xerces.util.XMLStringBuffer r0 = r6.f111985j
            char r1 = (char) r1
            r0.append(r1)
            org.apache.xerces.util.XMLStringBuffer r0 = r6.f111985j
            r1 = r3
        L27:
            org.apache.xerces.xni.XMLDocumentHandler r2 = r6.fDocumentHandler
            r4 = 0
            if (r2 == 0) goto L33
            int r5 = r0.length
            if (r5 <= 0) goto L33
            r2.characters(r0, r4)
        L33:
            r0 = 93
            if (r1 != r0) goto L86
            org.apache.xerces.xni.XMLString r2 = r6.fTempString
            int r2 = r2.length
            if (r2 != 0) goto L86
            org.apache.xerces.util.XMLStringBuffer r1 = r6.f111985j
            r1.clear()
            org.apache.xerces.util.XMLStringBuffer r1 = r6.f111985j
            org.apache.xerces.impl.XMLEntityScanner r2 = r6.fEntityScanner
            int r2 = r2.scanChar()
            char r2 = (char) r2
            r1.append(r2)
            r1 = 1
            r6.fInScanContent = r1
            org.apache.xerces.impl.XMLEntityScanner r1 = r6.fEntityScanner
            boolean r1 = r1.skipChar(r0)
            if (r1 == 0) goto L75
        L59:
            org.apache.xerces.util.XMLStringBuffer r1 = r6.f111985j
            r1.append(r0)
            org.apache.xerces.impl.XMLEntityScanner r1 = r6.fEntityScanner
            boolean r1 = r1.skipChar(r0)
            if (r1 != 0) goto L59
            org.apache.xerces.impl.XMLEntityScanner r0 = r6.fEntityScanner
            r1 = 62
            boolean r0 = r0.skipChar(r1)
            if (r0 == 0) goto L75
            java.lang.String r0 = "CDEndInContent"
            r6.reportFatalError(r0, r4)
        L75:
            org.apache.xerces.xni.XMLDocumentHandler r0 = r6.fDocumentHandler
            if (r0 == 0) goto L82
            org.apache.xerces.util.XMLStringBuffer r1 = r6.f111985j
            int r2 = r1.length
            if (r2 == 0) goto L82
            r0.characters(r1, r4)
        L82:
            r0 = 0
            r6.fInScanContent = r0
            goto L87
        L86:
            r3 = r1
        L87:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.scanContent():int");
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentScanner
    public boolean scanDocument(boolean z) throws IOException, XNIException {
        this.fEntityScanner = this.fEntityManager.getEntityScanner();
        this.fEntityManager.setEntityHandler(this);
        while (this.fDispatcher.dispatch(z)) {
            if (!z) {
                return true;
            }
        }
        return false;
    }

    public int scanEndElement() throws IOException, XNIException {
        this.fElementStack.popElement(this.fElementQName);
        if (!this.fEntityScanner.skipString(this.fElementQName.rawname)) {
            reportFatalError("ETagRequired", new Object[]{this.fElementQName.rawname});
        }
        this.fEntityScanner.skipSpaces();
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("ETagUnterminated", new Object[]{this.fElementQName.rawname});
        }
        int i = (this.fMarkupDepth - 1) - 1;
        this.fMarkupDepth = i;
        if (i < this.fEntityStack[this.fEntityDepth - 1]) {
            reportFatalError("ElementEntityMismatch", new Object[]{this.fCurrentElement.rawname});
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endElement(this.fElementQName, null);
        }
        return this.fMarkupDepth;
    }

    public void scanEntityReference() throws IOException, XNIException {
        char c;
        String scanName = this.fEntityScanner.scanName();
        if (scanName == null) {
            reportFatalError("NameRequiredInReference", null);
            return;
        }
        if (!this.fEntityScanner.skipChar(59)) {
            reportFatalError("SemicolonRequiredInReference", new Object[]{scanName});
        }
        this.fMarkupDepth--;
        String str = XMLScanner.fAmpSymbol;
        if (scanName == str) {
            c = '&';
        } else {
            str = XMLScanner.fLtSymbol;
            if (scanName == str) {
                c = '<';
            } else {
                str = XMLScanner.fGtSymbol;
                if (scanName == str) {
                    c = '>';
                } else {
                    str = XMLScanner.fQuotSymbol;
                    if (scanName == str) {
                        c = '\"';
                    } else {
                        str = XMLScanner.fAposSymbol;
                        if (scanName != str) {
                            if (this.fEntityManager.isUnparsedEntity(scanName)) {
                                reportFatalError("ReferenceToUnparsedEntity", new Object[]{scanName});
                                return;
                            }
                            if (!this.fEntityManager.isDeclaredEntity(scanName)) {
                                if (!this.fIsEntityDeclaredVC) {
                                    reportFatalError("EntityNotDeclared", new Object[]{scanName});
                                } else if (this.fValidation) {
                                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EntityNotDeclared", new Object[]{scanName}, (short) 1);
                                }
                            }
                            this.fEntityManager.startEntity(scanName, false);
                            return;
                        }
                        c = Chars.QUOTE;
                    }
                }
            }
        }
        m69823d(c, str);
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public void scanPIData(String str, XMLString xMLString) throws IOException, XNIException {
        super.scanPIData(str, xMLString);
        this.fMarkupDepth--;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.processingInstruction(str, xMLString, null);
        }
    }

    public boolean scanStartElement() throws IOException, XNIException {
        boolean z;
        if (this.fNamespaces) {
            this.fEntityScanner.scanQName(this.fElementQName);
        } else {
            String scanName = this.fEntityScanner.scanName();
            this.fElementQName.setValues(null, scanName, scanName, null);
        }
        QName qName = this.fElementQName;
        String str = qName.rawname;
        this.fCurrentElement = this.fElementStack.pushElement(qName);
        this.fAttributes.removeAllAttributes();
        while (true) {
            boolean skipSpaces = this.fEntityScanner.skipSpaces();
            int peekChar = this.fEntityScanner.peekChar();
            if (peekChar == 62) {
                this.fEntityScanner.scanChar();
                z = false;
                break;
            }
            if (peekChar == 47) {
                this.fEntityScanner.scanChar();
                if (!this.fEntityScanner.skipChar(62)) {
                    reportFatalError("ElementUnterminated", new Object[]{str});
                }
                z = true;
            } else {
                if ((!isValidNameStartChar(peekChar) || !skipSpaces) && (!isValidNameStartHighSurrogate(peekChar) || !skipSpaces)) {
                    reportFatalError("ElementUnterminated", new Object[]{str});
                }
                scanAttribute(this.fAttributes);
            }
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (z) {
                int i = this.fMarkupDepth - 1;
                this.fMarkupDepth = i;
                if (i < this.fEntityStack[this.fEntityDepth - 1]) {
                    reportFatalError("ElementEntityMismatch", new Object[]{this.fCurrentElement.rawname});
                }
                this.fDocumentHandler.emptyElement(this.fElementQName, this.fAttributes, null);
                this.fElementStack.popElement(this.fElementQName);
            } else {
                xMLDocumentHandler.startElement(this.fElementQName, this.fAttributes, null);
            }
        }
        return z;
    }

    public boolean scanStartElementAfterName() throws IOException, XNIException {
        boolean z;
        QName qName = this.fElementQName;
        String str = qName.rawname;
        this.fCurrentElement = this.fElementStack.pushElement(qName);
        this.fAttributes.removeAllAttributes();
        while (true) {
            int peekChar = this.fEntityScanner.peekChar();
            if (peekChar == 62) {
                this.fEntityScanner.scanChar();
                z = false;
                break;
            }
            if (peekChar == 47) {
                this.fEntityScanner.scanChar();
                if (!this.fEntityScanner.skipChar(62)) {
                    reportFatalError("ElementUnterminated", new Object[]{str});
                }
                z = true;
            } else {
                if ((!isValidNameStartChar(peekChar) || !this.f111989n) && (!isValidNameStartHighSurrogate(peekChar) || !this.f111989n)) {
                    reportFatalError("ElementUnterminated", new Object[]{str});
                }
                scanAttribute(this.fAttributes);
                this.f111989n = this.fEntityScanner.skipSpaces();
            }
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (z) {
                int i = this.fMarkupDepth - 1;
                this.fMarkupDepth = i;
                if (i < this.fEntityStack[this.fEntityDepth - 1]) {
                    reportFatalError("ElementEntityMismatch", new Object[]{this.fCurrentElement.rawname});
                }
                this.fDocumentHandler.emptyElement(this.fElementQName, this.fAttributes, null);
                this.fElementStack.popElement(this.fElementQName);
            } else {
                xMLDocumentHandler.startElement(this.fElementQName, this.fAttributes, null);
            }
        }
        return z;
    }

    public void scanStartElementName() throws IOException, XNIException {
        if (this.fNamespaces) {
            this.fEntityScanner.scanQName(this.fElementQName);
        } else {
            String scanName = this.fEntityScanner.scanName();
            this.fElementQName.setValues(null, scanName, scanName, null);
        }
        this.f111989n = this.fEntityScanner.skipSpaces();
    }

    public void scanXMLDeclOrTextDecl(boolean z) throws IOException, XNIException {
        super.scanXMLDeclOrTextDecl(z, this.f111984i);
        this.fMarkupDepth--;
        String[] strArr = this.f111984i;
        String str = strArr[0];
        String str2 = strArr[1];
        String str3 = strArr[2];
        boolean z2 = str3 != null && str3.equals("yes");
        this.fStandalone = z2;
        this.fEntityManager.setStandalone(z2);
        this.fEntityScanner.setXMLVersion(str);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (z) {
                xMLDocumentHandler.textDecl(str, str2, null);
            } else {
                xMLDocumentHandler.xmlDecl(str, str2, str3, null);
            }
        }
        if (str2 == null || this.fEntityScanner.fCurrentEntity.isEncodingExternallySpecified()) {
            return;
        }
        this.fEntityScanner.setEncoding(str2);
    }

    public final void setDispatcher(Dispatcher dispatcher) {
        this.fDispatcher = dispatcher;
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        super.setFeature(str, z);
        if (str.startsWith("http://apache.org/xml/features/") && str.length() - 31 == 27 && str.endsWith("scanner/notify-builtin-refs")) {
            this.fNotifyBuiltInRefs = z;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentScanner
    public void setInputSource(XMLInputSource xMLInputSource) throws IOException {
        this.fEntityManager.setEntityHandler(this);
        this.fEntityManager.startEntity("$fragment$", xMLInputSource, false, true);
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        super.setProperty(str, obj);
        if (str.startsWith("http://apache.org/xml/properties/")) {
            int length = str.length() - 33;
            if (length == 23 && str.endsWith("internal/entity-manager")) {
                this.fEntityManager = (XMLEntityManager) obj;
            } else if (length == 24 && str.endsWith("internal/entity-resolver")) {
                this.fExternalSubsetResolver = obj instanceof ExternalSubsetResolver ? (ExternalSubsetResolver) obj : null;
            }
        }
    }

    public final void setScannerState(int i) {
        this.fScannerState = i;
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.impl.XMLEntityHandler
    public void startEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        int i = this.fEntityDepth;
        int[] iArr = this.fEntityStack;
        if (i == iArr.length) {
            int[] iArr2 = new int[iArr.length * 2];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.fEntityStack = iArr2;
        }
        this.fEntityStack[this.fEntityDepth] = this.fMarkupDepth;
        super.startEntity(str, xMLResourceIdentifier, str2, augmentations);
        if (this.fStandalone && this.fEntityManager.isEntityDeclInExternalSubset(str)) {
            reportFatalError("MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE", new Object[]{str});
        }
        if (this.fDocumentHandler == null || this.fScanningAttribute || str.equals("[xml]")) {
            return;
        }
        this.fDocumentHandler.startGeneralEntity(str, xMLResourceIdentifier, str2, augmentations);
    }
}
