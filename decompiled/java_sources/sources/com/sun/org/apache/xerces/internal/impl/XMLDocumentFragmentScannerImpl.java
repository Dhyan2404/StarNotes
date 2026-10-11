package com.sun.org.apache.xerces.internal.impl;

import com.sun.org.apache.xerces.internal.util.AugmentationsImpl;
import com.sun.org.apache.xerces.internal.util.SecurityManager;
import com.sun.org.apache.xerces.internal.util.XMLAttributesIteratorImpl;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.xml.internal.stream.XMLBufferListener;
import com.sun.xml.internal.stream.XMLEntityStorage;
import com.sun.xml.internal.stream.dtd.DTDGrammarUtil;
import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import javax.xml.stream.XMLInputFactory;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class XMLDocumentFragmentScannerImpl extends XMLScanner implements XMLDocumentScanner, XMLComponent, XMLEntityHandler, XMLBufferListener {
    protected static final boolean DEBUG = false;
    protected static final boolean DEBUG_COALESCE = false;
    private static final boolean DEBUG_DISPATCHER = false;
    protected static final boolean DEBUG_NEXT = false;
    private static final boolean DEBUG_SCANNER_STATE = false;
    static final boolean DEBUG_SKIP_ALGORITHM = false;
    protected static final boolean DEBUG_START_END_ELEMENT = false;
    static final short ELEMENT_ARRAY_LENGTH = 200;
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    private static final Boolean[] FEATURE_DEFAULTS;
    static final short MAX_DEPTH_LIMIT = 5;
    static final short MAX_POINTER_AT_A_DEPTH = 4;
    private static final Object[] PROPERTY_DEFAULTS;
    private static final String[] RECOGNIZED_PROPERTIES;
    protected static final int SCANNER_STATE_ATTRIBUTE = 29;
    protected static final int SCANNER_STATE_ATTRIBUTE_VALUE = 30;
    protected static final int SCANNER_STATE_BUILT_IN_REFS = 41;
    protected static final int SCANNER_STATE_CDATA = 35;
    protected static final int SCANNER_STATE_CHARACTER_DATA = 37;
    protected static final int SCANNER_STATE_CHAR_REFERENCE = 40;
    protected static final int SCANNER_STATE_COMMENT = 27;
    protected static final int SCANNER_STATE_CONTENT = 22;
    protected static final int SCANNER_STATE_DOCTYPE = 24;
    protected static final int SCANNER_STATE_END_ELEMENT_TAG = 39;
    protected static final int SCANNER_STATE_END_OF_INPUT = 33;
    protected static final int SCANNER_STATE_PI = 23;
    protected static final int SCANNER_STATE_REFERENCE = 28;
    protected static final int SCANNER_STATE_ROOT_ELEMENT = 26;
    protected static final int SCANNER_STATE_START_ELEMENT_TAG = 38;
    protected static final int SCANNER_STATE_START_OF_MARKUP = 21;
    protected static final int SCANNER_STATE_TERMINATED = 34;
    protected static final int SCANNER_STATE_TEXT_DECL = 36;
    protected static final int SCANNER_STATE_XML_DECL = 25;
    protected static final char[] cdata;
    protected static final char[] endTag;
    protected static final char[] xmlDecl;
    protected QName fCurrentElement;
    protected XMLDocumentHandler fDocumentHandler;
    protected Driver fDriver;
    protected int fElementAttributeLimit;
    protected String fElementRawname;
    protected boolean fEmptyElement;
    protected XMLEntityStorage fEntityStore;
    protected ExternalSubsetResolver fExternalSubsetResolver;
    protected boolean fHasExternalDTD;
    protected int fMarkupDepth;
    protected String fPITarget;
    protected int fScannerLastState;
    protected int fScannerState;
    protected boolean fStandalone;
    protected boolean fUsebuffer;
    protected String fVersion;
    protected static final String NOTIFY_BUILTIN_REFS = "http://apache.org/xml/features/scanner/notify-builtin-refs";
    private static final String[] RECOGNIZED_FEATURES = {"http://xml.org/sax/features/namespaces", "http://xml.org/sax/features/validation", NOTIFY_BUILTIN_REFS, "http://apache.org/xml/features/scanner/notify-char-refs", Constants.STAX_REPORT_CDATA_EVENT};
    protected int[] fEntityStack = new int[4];
    protected boolean fReadingAttributes = false;
    protected boolean fInScanContent = false;
    protected boolean fLastSectionWasCData = false;
    protected boolean fLastSectionWasEntityReference = false;
    protected boolean fLastSectionWasCharacterData = false;
    protected ElementStack fElementStack = new ElementStack();
    protected ElementStack2 fElementStack2 = new ElementStack2();
    protected XMLString fPIData = new XMLString();
    protected boolean fNotifyBuiltInRefs = false;
    protected boolean fReplaceEntityReferences = true;
    protected boolean fSupportExternalEntities = false;
    protected boolean fReportCdataEvent = false;
    protected boolean fIsCoalesce = false;
    protected String fDeclaredEncoding = null;
    protected Driver fContentDriver = createContentDriver();
    protected QName fElementQName = new QName();
    protected QName fAttributeQName = new QName();
    protected XMLAttributesIteratorImpl fAttributes = new XMLAttributesIteratorImpl();
    protected XMLString fTempString = new XMLString();
    protected XMLString fTempString2 = new XMLString();
    private String[] fStrings = new String[3];
    protected XMLStringBuffer fStringBuffer = new XMLStringBuffer();
    protected XMLStringBuffer fStringBuffer2 = new XMLStringBuffer();
    protected XMLStringBuffer fContentBuffer = new XMLStringBuffer();
    private final char[] fSingleChar = new char[1];
    private String fCurrentEntityName = null;
    protected boolean fScanToEnd = false;
    protected DTDGrammarUtil dtdGrammarUtil = null;
    protected boolean fAddDefaultAttr = false;
    protected boolean foundBuiltInRefs = false;
    protected SecurityManager fSecurityManager = null;
    String[] fElementArray = new String[200];
    short fLastPointerLocation = 0;
    short fElementPointer = 0;
    short[][] fPointerInfo = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 5, 4);
    protected boolean fShouldSkip = false;
    protected boolean fAdd = false;
    protected boolean fSkip = false;
    private Augmentations fTempAugmentations = null;

    /* loaded from: classes10.dex */
    public interface Driver {
        int next() throws IOException, XNIException;
    }

    /* loaded from: classes10.dex */
    public static final class Element {
        public char[] fRawname;
        public Element next;
        public QName qname;

        public Element(QName qName, Element element) {
            this.qname.setValues(qName);
            this.fRawname = qName.rawname.toCharArray();
            this.next = element;
        }
    }

    /* loaded from: classes10.dex */
    public class ElementStack {
        protected int fCount;
        protected int fDepth;
        protected int fLastDepth;
        protected int fMark;
        protected int fPosition;
        protected int[] fInt = new int[20];
        protected QName[] fElements = new QName[20];

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
            this.fDepth = 0;
            this.fLastDepth = 0;
            this.fCount = 0;
            this.fMark = 1;
            this.fPosition = 1;
        }

        public QName getLastPoppedElement() {
            return this.fElements[this.fDepth];
        }

        public QName getNext() {
            if (this.fPosition == this.fCount) {
                this.fPosition = this.fMark;
            }
            return this.fElements[this.fPosition];
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x002f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean matchElement(com.sun.org.apache.xerces.internal.xni.QName r6) {
            /*
                r5 = this;
                int r0 = r5.fLastDepth
                int r1 = r5.fDepth
                r2 = 1
                r3 = 0
                if (r0 <= r1) goto L2c
                r0 = 3
                if (r1 > r0) goto L2c
                java.lang.String r6 = r6.rawname
                com.sun.org.apache.xerces.internal.xni.QName[] r0 = r5.fElements
                int r4 = r1 + (-1)
                r0 = r0[r4]
                java.lang.String r0 = r0.rawname
                if (r6 != r0) goto L28
                com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl r6 = com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.this
                r6.fAdd = r3
                int r6 = r1 + (-1)
                r5.fMark = r6
                r5.fPosition = r6
                int r6 = r5.fCount
                int r6 = r6 - r2
                r5.fCount = r6
                r6 = r2
                goto L2d
            L28:
                com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl r6 = com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.this
                r6.fAdd = r2
            L2c:
                r6 = r3
            L2d:
                if (r6 == 0) goto L3a
                int[] r0 = r5.fInt
                int r2 = r5.fPosition
                int r4 = r2 + 1
                r5.fPosition = r4
                r0[r1] = r2
                goto L41
            L3a:
                int[] r0 = r5.fInt
                int r4 = r5.fCount
                int r4 = r4 - r2
                r0[r1] = r4
            L41:
                int r0 = r5.fCount
                com.sun.org.apache.xerces.internal.xni.QName[] r2 = r5.fElements
                int r2 = r2.length
                if (r0 != r2) goto L52
                com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl r6 = com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.this
                r6.fSkip = r3
                r6.fAdd = r3
                r5.reposition()
                return r3
            L52:
                r5.fLastDepth = r1
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.ElementStack.matchElement(com.sun.org.apache.xerces.internal.xni.QName):boolean");
        }

        public QName nextElement() {
            if (XMLDocumentFragmentScannerImpl.this.fSkip) {
                this.fDepth++;
                QName[] qNameArr = this.fElements;
                int i = this.fCount;
                this.fCount = i + 1;
                return qNameArr[i];
            }
            int i2 = this.fDepth;
            QName[] qNameArr2 = this.fElements;
            if (i2 == qNameArr2.length) {
                QName[] qNameArr3 = new QName[qNameArr2.length * 2];
                System.arraycopy(qNameArr2, 0, qNameArr3, 0, i2);
                this.fElements = qNameArr3;
                int i3 = this.fDepth;
                while (true) {
                    QName[] qNameArr4 = this.fElements;
                    if (i3 >= qNameArr4.length) {
                        break;
                    }
                    qNameArr4[i3] = new QName();
                    i3++;
                }
            }
            QName[] qNameArr5 = this.fElements;
            int i4 = this.fDepth;
            this.fDepth = i4 + 1;
            return qNameArr5[i4];
        }

        public QName popElement() {
            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
            if (!xMLDocumentFragmentScannerImpl.fSkip && !xMLDocumentFragmentScannerImpl.fAdd) {
                QName[] qNameArr = this.fElements;
                int i = this.fDepth - 1;
                this.fDepth = i;
                return qNameArr[i];
            }
            QName[] qNameArr2 = this.fElements;
            int[] iArr = this.fInt;
            int i2 = this.fDepth;
            this.fDepth = i2 - 1;
            return qNameArr2[iArr[i2]];
        }

        public void push() {
            int[] iArr = this.fInt;
            int i = this.fDepth + 1;
            this.fDepth = i;
            int i2 = this.fPosition;
            this.fPosition = i2 + 1;
            iArr[i] = i2;
        }

        public QName pushElement(QName qName) {
            int i = this.fDepth;
            QName[] qNameArr = this.fElements;
            if (i == qNameArr.length) {
                QName[] qNameArr2 = new QName[qNameArr.length * 2];
                System.arraycopy(qNameArr, 0, qNameArr2, 0, i);
                this.fElements = qNameArr2;
                int i2 = this.fDepth;
                while (true) {
                    QName[] qNameArr3 = this.fElements;
                    if (i2 >= qNameArr3.length) {
                        break;
                    }
                    qNameArr3[i2] = new QName();
                    i2++;
                }
            }
            this.fElements[this.fDepth].setValues(qName);
            QName[] qNameArr4 = this.fElements;
            int i3 = this.fDepth;
            this.fDepth = i3 + 1;
            return qNameArr4[i3];
        }

        public void reposition() {
            for (int i = 2; i <= this.fDepth; i++) {
                QName[] qNameArr = this.fElements;
                qNameArr[i - 1] = qNameArr[this.fInt[i]];
            }
        }
    }

    /* loaded from: classes10.dex */
    public class ElementStack2 {
        protected int fCount;
        protected int fDepth;
        protected int fLastDepth;
        protected int fMark;
        protected int fPosition;
        protected QName[] fQName = new QName[20];

        public ElementStack2() {
            int i = 0;
            while (true) {
                QName[] qNameArr = this.fQName;
                if (i >= qNameArr.length) {
                    this.fPosition = 1;
                    this.fMark = 1;
                    return;
                } else {
                    qNameArr[i] = new QName();
                    i++;
                }
            }
        }

        public void clear() {
            this.fLastDepth = 0;
            this.fDepth = 0;
            this.fCount = 0;
            this.fMark = 1;
            this.fPosition = 1;
        }

        public QName getNext() {
            if (this.fPosition == this.fCount) {
                this.fPosition = this.fMark;
            }
            QName[] qNameArr = this.fQName;
            int i = this.fPosition;
            this.fPosition = i + 1;
            return qNameArr[i];
        }

        public boolean matchElement(QName qName) {
            int i = this.fLastDepth;
            int i2 = this.fDepth;
            boolean z = false;
            if (i > i2 && i2 <= 2) {
                if (qName.rawname == this.fQName[i2].rawname) {
                    XMLDocumentFragmentScannerImpl.this.fAdd = false;
                    int i3 = i2 - 1;
                    this.fMark = i3;
                    this.fPosition = i3 + 1;
                    this.fCount--;
                    z = true;
                } else {
                    XMLDocumentFragmentScannerImpl.this.fAdd = true;
                }
            }
            this.fDepth = i2 + 1;
            this.fLastDepth = i2;
            return z;
        }

        public QName nextElement() {
            int i = this.fCount;
            QName[] qNameArr = this.fQName;
            if (i != qNameArr.length) {
                this.fCount = i + 1;
                return qNameArr[i];
            }
            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
            xMLDocumentFragmentScannerImpl.fShouldSkip = false;
            xMLDocumentFragmentScannerImpl.fAdd = false;
            int i2 = i - 1;
            this.fCount = i2;
            return qNameArr[i2];
        }

        public int popElement() {
            int i = this.fDepth;
            this.fDepth = i - 1;
            return i;
        }

        public void resize() {
            QName[] qNameArr = this.fQName;
            int length = qNameArr.length;
            QName[] qNameArr2 = new QName[length * 2];
            System.arraycopy(qNameArr, 0, qNameArr2, 0, length);
            this.fQName = qNameArr2;
            while (true) {
                QName[] qNameArr3 = this.fQName;
                if (length >= qNameArr3.length) {
                    return;
                }
                qNameArr3[length] = new QName();
                length++;
            }
        }
    }

    /* loaded from: classes10.dex */
    public class FragmentContentDriver implements Driver {
        private boolean fContinueDispatching = true;
        private boolean fScanningForMarkup = true;

        public FragmentContentDriver() {
        }

        private void startOfContent() throws IOException {
            if (XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(60)) {
                XMLDocumentFragmentScannerImpl.this.setScannerState(21);
            } else if (XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(38)) {
                XMLDocumentFragmentScannerImpl.this.setScannerState(28);
            } else {
                XMLDocumentFragmentScannerImpl.this.setScannerState(37);
            }
        }

        private void startOfMarkup() throws IOException {
            XMLDocumentFragmentScannerImpl xMLDocumentFragmentScannerImpl = XMLDocumentFragmentScannerImpl.this;
            xMLDocumentFragmentScannerImpl.fMarkupDepth++;
            int peekChar = xMLDocumentFragmentScannerImpl.fEntityScanner.peekChar();
            if (peekChar != 33) {
                if (peekChar == 47) {
                    XMLDocumentFragmentScannerImpl.this.setScannerState(39);
                    XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(peekChar);
                    return;
                } else if (peekChar == 63) {
                    XMLDocumentFragmentScannerImpl.this.setScannerState(23);
                    XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(peekChar);
                    return;
                } else if (XMLDocumentFragmentScannerImpl.this.isValidNameStartChar(peekChar)) {
                    XMLDocumentFragmentScannerImpl.this.setScannerState(38);
                    return;
                } else {
                    XMLDocumentFragmentScannerImpl.this.reportFatalError("MarkupNotRecognizedInContent", null);
                    return;
                }
            }
            XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(peekChar);
            if (XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(45)) {
                if (!XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipChar(45)) {
                    XMLDocumentFragmentScannerImpl.this.reportFatalError("InvalidCommentStart", null);
                }
                XMLDocumentFragmentScannerImpl.this.setScannerState(27);
            } else if (XMLDocumentFragmentScannerImpl.this.fEntityScanner.skipString(XMLDocumentFragmentScannerImpl.cdata)) {
                XMLDocumentFragmentScannerImpl.this.setScannerState(35);
            } else {
                if (scanForDoctypeHook()) {
                    return;
                }
                XMLDocumentFragmentScannerImpl.this.reportFatalError("MarkupNotRecognizedInContent", null);
            }
        }

        public void decideSubState() throws IOException {
            while (true) {
                int i = XMLDocumentFragmentScannerImpl.this.fScannerState;
                if (i != 22 && i != 21) {
                    return;
                }
                if (i == 21) {
                    startOfMarkup();
                } else if (i == 22) {
                    startOfContent();
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

        /* JADX WARN: Removed duplicated region for block: B:101:0x0239  */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0295 A[Catch: EOFException -> 0x043e, TryCatch #0 {EOFException -> 0x043e, blocks: (B:3:0x0001, B:7:0x0043, B:9:0x004e, B:11:0x0054, B:15:0x005c, B:18:0x005f, B:20:0x0063, B:22:0x0067, B:26:0x006f, B:28:0x0074, B:33:0x007e, B:35:0x0083, B:36:0x0086, B:37:0x00a5, B:38:0x00a6, B:40:0x00bd, B:42:0x00c2, B:44:0x00cd, B:46:0x00d1, B:48:0x00d7, B:51:0x00de, B:53:0x00e4, B:55:0x00f0, B:57:0x00f4, B:58:0x00f8, B:60:0x00fc, B:62:0x0100, B:66:0x0108, B:69:0x010e, B:71:0x0112, B:73:0x0116, B:74:0x0124, B:76:0x013b, B:78:0x0147, B:79:0x0192, B:81:0x0198, B:82:0x01a5, B:84:0x01ab, B:88:0x0154, B:90:0x0162, B:91:0x016f, B:93:0x017a, B:95:0x01b5, B:97:0x01ca, B:128:0x022c, B:109:0x028f, B:111:0x0295, B:113:0x029e, B:115:0x02a2, B:126:0x023b, B:103:0x024a, B:106:0x0252, B:108:0x0258, B:119:0x0265, B:120:0x027e, B:123:0x028c, B:131:0x01df, B:133:0x01f9, B:134:0x0200, B:136:0x020a, B:138:0x0212, B:140:0x021e, B:141:0x0225, B:142:0x011f, B:144:0x02ac, B:146:0x02b6, B:148:0x02c9, B:150:0x02df, B:152:0x02ed, B:154:0x0319, B:155:0x02fc, B:157:0x030a, B:159:0x0338, B:160:0x033d, B:163:0x0353, B:165:0x0357, B:167:0x035b, B:169:0x035f, B:170:0x036b, B:172:0x037f, B:174:0x0388, B:178:0x0366, B:179:0x0390, B:181:0x0399, B:183:0x039d, B:185:0x03a1, B:187:0x03a5, B:188:0x03b1, B:190:0x03bd, B:192:0x03cf, B:194:0x03ff, B:196:0x03d3, B:198:0x03e2, B:200:0x03e6, B:204:0x03ee, B:207:0x03f9, B:209:0x03ac, B:210:0x040f, B:212:0x0419, B:214:0x041f, B:216:0x0424, B:218:0x042a, B:221:0x0016, B:223:0x001e, B:225:0x002d, B:226:0x003a, B:227:0x0040), top: B:2:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:113:0x029e A[Catch: EOFException -> 0x043e, TryCatch #0 {EOFException -> 0x043e, blocks: (B:3:0x0001, B:7:0x0043, B:9:0x004e, B:11:0x0054, B:15:0x005c, B:18:0x005f, B:20:0x0063, B:22:0x0067, B:26:0x006f, B:28:0x0074, B:33:0x007e, B:35:0x0083, B:36:0x0086, B:37:0x00a5, B:38:0x00a6, B:40:0x00bd, B:42:0x00c2, B:44:0x00cd, B:46:0x00d1, B:48:0x00d7, B:51:0x00de, B:53:0x00e4, B:55:0x00f0, B:57:0x00f4, B:58:0x00f8, B:60:0x00fc, B:62:0x0100, B:66:0x0108, B:69:0x010e, B:71:0x0112, B:73:0x0116, B:74:0x0124, B:76:0x013b, B:78:0x0147, B:79:0x0192, B:81:0x0198, B:82:0x01a5, B:84:0x01ab, B:88:0x0154, B:90:0x0162, B:91:0x016f, B:93:0x017a, B:95:0x01b5, B:97:0x01ca, B:128:0x022c, B:109:0x028f, B:111:0x0295, B:113:0x029e, B:115:0x02a2, B:126:0x023b, B:103:0x024a, B:106:0x0252, B:108:0x0258, B:119:0x0265, B:120:0x027e, B:123:0x028c, B:131:0x01df, B:133:0x01f9, B:134:0x0200, B:136:0x020a, B:138:0x0212, B:140:0x021e, B:141:0x0225, B:142:0x011f, B:144:0x02ac, B:146:0x02b6, B:148:0x02c9, B:150:0x02df, B:152:0x02ed, B:154:0x0319, B:155:0x02fc, B:157:0x030a, B:159:0x0338, B:160:0x033d, B:163:0x0353, B:165:0x0357, B:167:0x035b, B:169:0x035f, B:170:0x036b, B:172:0x037f, B:174:0x0388, B:178:0x0366, B:179:0x0390, B:181:0x0399, B:183:0x039d, B:185:0x03a1, B:187:0x03a5, B:188:0x03b1, B:190:0x03bd, B:192:0x03cf, B:194:0x03ff, B:196:0x03d3, B:198:0x03e2, B:200:0x03e6, B:204:0x03ee, B:207:0x03f9, B:209:0x03ac, B:210:0x040f, B:212:0x0419, B:214:0x041f, B:216:0x0424, B:218:0x042a, B:221:0x0016, B:223:0x001e, B:225:0x002d, B:226:0x003a, B:227:0x0040), top: B:2:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:127:0x022c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:220:0x043d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x013b A[Catch: EOFException -> 0x043e, TryCatch #0 {EOFException -> 0x043e, blocks: (B:3:0x0001, B:7:0x0043, B:9:0x004e, B:11:0x0054, B:15:0x005c, B:18:0x005f, B:20:0x0063, B:22:0x0067, B:26:0x006f, B:28:0x0074, B:33:0x007e, B:35:0x0083, B:36:0x0086, B:37:0x00a5, B:38:0x00a6, B:40:0x00bd, B:42:0x00c2, B:44:0x00cd, B:46:0x00d1, B:48:0x00d7, B:51:0x00de, B:53:0x00e4, B:55:0x00f0, B:57:0x00f4, B:58:0x00f8, B:60:0x00fc, B:62:0x0100, B:66:0x0108, B:69:0x010e, B:71:0x0112, B:73:0x0116, B:74:0x0124, B:76:0x013b, B:78:0x0147, B:79:0x0192, B:81:0x0198, B:82:0x01a5, B:84:0x01ab, B:88:0x0154, B:90:0x0162, B:91:0x016f, B:93:0x017a, B:95:0x01b5, B:97:0x01ca, B:128:0x022c, B:109:0x028f, B:111:0x0295, B:113:0x029e, B:115:0x02a2, B:126:0x023b, B:103:0x024a, B:106:0x0252, B:108:0x0258, B:119:0x0265, B:120:0x027e, B:123:0x028c, B:131:0x01df, B:133:0x01f9, B:134:0x0200, B:136:0x020a, B:138:0x0212, B:140:0x021e, B:141:0x0225, B:142:0x011f, B:144:0x02ac, B:146:0x02b6, B:148:0x02c9, B:150:0x02df, B:152:0x02ed, B:154:0x0319, B:155:0x02fc, B:157:0x030a, B:159:0x0338, B:160:0x033d, B:163:0x0353, B:165:0x0357, B:167:0x035b, B:169:0x035f, B:170:0x036b, B:172:0x037f, B:174:0x0388, B:178:0x0366, B:179:0x0390, B:181:0x0399, B:183:0x039d, B:185:0x03a1, B:187:0x03a5, B:188:0x03b1, B:190:0x03bd, B:192:0x03cf, B:194:0x03ff, B:196:0x03d3, B:198:0x03e2, B:200:0x03e6, B:204:0x03ee, B:207:0x03f9, B:209:0x03ac, B:210:0x040f, B:212:0x0419, B:214:0x041f, B:216:0x0424, B:218:0x042a, B:221:0x0016, B:223:0x001e, B:225:0x002d, B:226:0x003a, B:227:0x0040), top: B:2:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:95:0x01b5 A[Catch: EOFException -> 0x043e, TryCatch #0 {EOFException -> 0x043e, blocks: (B:3:0x0001, B:7:0x0043, B:9:0x004e, B:11:0x0054, B:15:0x005c, B:18:0x005f, B:20:0x0063, B:22:0x0067, B:26:0x006f, B:28:0x0074, B:33:0x007e, B:35:0x0083, B:36:0x0086, B:37:0x00a5, B:38:0x00a6, B:40:0x00bd, B:42:0x00c2, B:44:0x00cd, B:46:0x00d1, B:48:0x00d7, B:51:0x00de, B:53:0x00e4, B:55:0x00f0, B:57:0x00f4, B:58:0x00f8, B:60:0x00fc, B:62:0x0100, B:66:0x0108, B:69:0x010e, B:71:0x0112, B:73:0x0116, B:74:0x0124, B:76:0x013b, B:78:0x0147, B:79:0x0192, B:81:0x0198, B:82:0x01a5, B:84:0x01ab, B:88:0x0154, B:90:0x0162, B:91:0x016f, B:93:0x017a, B:95:0x01b5, B:97:0x01ca, B:128:0x022c, B:109:0x028f, B:111:0x0295, B:113:0x029e, B:115:0x02a2, B:126:0x023b, B:103:0x024a, B:106:0x0252, B:108:0x0258, B:119:0x0265, B:120:0x027e, B:123:0x028c, B:131:0x01df, B:133:0x01f9, B:134:0x0200, B:136:0x020a, B:138:0x0212, B:140:0x021e, B:141:0x0225, B:142:0x011f, B:144:0x02ac, B:146:0x02b6, B:148:0x02c9, B:150:0x02df, B:152:0x02ed, B:154:0x0319, B:155:0x02fc, B:157:0x030a, B:159:0x0338, B:160:0x033d, B:163:0x0353, B:165:0x0357, B:167:0x035b, B:169:0x035f, B:170:0x036b, B:172:0x037f, B:174:0x0388, B:178:0x0366, B:179:0x0390, B:181:0x0399, B:183:0x039d, B:185:0x03a1, B:187:0x03a5, B:188:0x03b1, B:190:0x03bd, B:192:0x03cf, B:194:0x03ff, B:196:0x03d3, B:198:0x03e2, B:200:0x03e6, B:204:0x03ee, B:207:0x03f9, B:209:0x03ac, B:210:0x040f, B:212:0x0419, B:214:0x041f, B:216:0x0424, B:218:0x042a, B:221:0x0016, B:223:0x001e, B:225:0x002d, B:226:0x003a, B:227:0x0040), top: B:2:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x004e A[Catch: EOFException -> 0x043e, TryCatch #0 {EOFException -> 0x043e, blocks: (B:3:0x0001, B:7:0x0043, B:9:0x004e, B:11:0x0054, B:15:0x005c, B:18:0x005f, B:20:0x0063, B:22:0x0067, B:26:0x006f, B:28:0x0074, B:33:0x007e, B:35:0x0083, B:36:0x0086, B:37:0x00a5, B:38:0x00a6, B:40:0x00bd, B:42:0x00c2, B:44:0x00cd, B:46:0x00d1, B:48:0x00d7, B:51:0x00de, B:53:0x00e4, B:55:0x00f0, B:57:0x00f4, B:58:0x00f8, B:60:0x00fc, B:62:0x0100, B:66:0x0108, B:69:0x010e, B:71:0x0112, B:73:0x0116, B:74:0x0124, B:76:0x013b, B:78:0x0147, B:79:0x0192, B:81:0x0198, B:82:0x01a5, B:84:0x01ab, B:88:0x0154, B:90:0x0162, B:91:0x016f, B:93:0x017a, B:95:0x01b5, B:97:0x01ca, B:128:0x022c, B:109:0x028f, B:111:0x0295, B:113:0x029e, B:115:0x02a2, B:126:0x023b, B:103:0x024a, B:106:0x0252, B:108:0x0258, B:119:0x0265, B:120:0x027e, B:123:0x028c, B:131:0x01df, B:133:0x01f9, B:134:0x0200, B:136:0x020a, B:138:0x0212, B:140:0x021e, B:141:0x0225, B:142:0x011f, B:144:0x02ac, B:146:0x02b6, B:148:0x02c9, B:150:0x02df, B:152:0x02ed, B:154:0x0319, B:155:0x02fc, B:157:0x030a, B:159:0x0338, B:160:0x033d, B:163:0x0353, B:165:0x0357, B:167:0x035b, B:169:0x035f, B:170:0x036b, B:172:0x037f, B:174:0x0388, B:178:0x0366, B:179:0x0390, B:181:0x0399, B:183:0x039d, B:185:0x03a1, B:187:0x03a5, B:188:0x03b1, B:190:0x03bd, B:192:0x03cf, B:194:0x03ff, B:196:0x03d3, B:198:0x03e2, B:200:0x03e6, B:204:0x03ee, B:207:0x03f9, B:209:0x03ac, B:210:0x040f, B:212:0x0419, B:214:0x041f, B:216:0x0424, B:218:0x042a, B:221:0x0016, B:223:0x001e, B:225:0x002d, B:226:0x003a, B:227:0x0040), top: B:2:0x0001 }] */
        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.Driver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int next() throws java.io.IOException, com.sun.org.apache.xerces.internal.xni.XNIException {
            /*
                Method dump skipped, instructions count: 1118
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.FragmentContentDriver.next():int");
        }

        public boolean scanForDoctypeHook() throws IOException, XNIException {
            return false;
        }

        public boolean scanRootElementHook() throws IOException, XNIException {
            return false;
        }
    }

    static {
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        FEATURE_DEFAULTS = new Boolean[]{bool, null, bool2, bool2, bool};
        RECOGNIZED_PROPERTIES = new String[]{"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-manager"};
        PROPERTY_DEFAULTS = new Object[]{null, null, null};
        cdata = new char[]{'[', 'C', 'D', 'A', 'T', 'A', '['};
        xmlDecl = new char[]{'<', '?', 'x', 'm', 'l'};
        endTag = new char[]{'<', '/'};
    }

    private void handleCharacter(char c, String str, XMLStringBuffer xMLStringBuffer) throws XNIException {
        this.foundBuiltInRefs = true;
        xMLStringBuffer.append(c);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            this.fSingleChar[0] = c;
            if (this.fNotifyBuiltInRefs) {
                xMLDocumentHandler.startGeneralEntity(str, null, null, null);
            }
            this.fTempString.setValues(this.fSingleChar, 0, 1);
            if (this.fNotifyBuiltInRefs) {
                this.fDocumentHandler.endGeneralEntity(str, null);
            }
        }
    }

    /* renamed from: pr */
    public static void m52898pr(String str) {
        System.out.println(str);
    }

    public void addElement(String str) {
        short storePointerForADepth;
        short s = this.fElementPointer;
        if (s < 200) {
            this.fElementArray[s] = str;
            if (this.fElementStack.fDepth < 5 && (storePointerForADepth = storePointerForADepth(s)) > 0) {
                short elementPointer = getElementPointer((short) this.fElementStack.fDepth, (short) (storePointerForADepth - 1));
                if (str == this.fElementArray[elementPointer]) {
                    this.fShouldSkip = true;
                    this.fLastPointerLocation = elementPointer;
                    resetPointer((short) this.fElementStack.fDepth, storePointerForADepth);
                    this.fElementArray[this.fElementPointer] = null;
                    return;
                }
                this.fShouldSkip = false;
            }
            this.fElementPointer = (short) (this.fElementPointer + 1);
        }
    }

    public boolean canStore(short s, short s2) {
        return this.fPointerInfo[s][s2] == 0;
    }

    public Driver createContentDriver() {
        return new FragmentContentDriver();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.impl.XMLEntityHandler
    public void endEntity(String str, Augmentations augmentations) throws IOException, XNIException {
        super.endEntity(str, augmentations);
        if (this.fMarkupDepth != this.fEntityStack[this.fEntityDepth]) {
            reportFatalError("MarkupEntityMismatch", null);
        }
        if (this.fDocumentHandler == null || this.fScanningAttribute || str.equals("[xml]")) {
            return;
        }
        this.fDocumentHandler.endGeneralEntity(str, null);
    }

    public XMLAttributesIteratorImpl getAttributeIterator() {
        DTDGrammarUtil dTDGrammarUtil = this.dtdGrammarUtil;
        if (dTDGrammarUtil != null && this.fAddDefaultAttr) {
            dTDGrammarUtil.addDTDDefaultAttrs(this.fElementQName, this.fAttributes);
            this.fAddDefaultAttr = false;
        }
        return this.fAttributes;
    }

    public XMLString getCharacterData() {
        return this.fUsebuffer ? this.fContentBuffer : this.fTempString;
    }

    public String getComment() {
        return this.fContentBuffer.toString();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    public String getDriverName(Driver driver) {
        return "null";
    }

    public short getElementPointer(short s, short s2) {
        return this.fPointerInfo[s][s2];
    }

    public QName getElementQName() {
        if (this.fScannerLastState == 2) {
            this.fElementQName.setValues(this.fElementStack.getLastPoppedElement());
        }
        return this.fElementQName;
    }

    public String getEntityName() {
        return this.fCurrentEntityName;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_FEATURES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return FEATURE_DEFAULTS[i];
            }
            i++;
        }
    }

    public XMLStringBuffer getPIData() {
        return this.fContentBuffer;
    }

    public String getPITarget() {
        return this.fPITarget;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_PROPERTIES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return PROPERTY_DEFAULTS[i];
            }
            i++;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) RECOGNIZED_FEATURES.clone();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) RECOGNIZED_PROPERTIES.clone();
    }

    public String getScannerStateName(int i) {
        switch (i) {
            case 21:
                return "SCANNER_STATE_START_OF_MARKUP";
            case 22:
                return "SCANNER_STATE_CONTENT";
            case 23:
                return "SCANNER_STATE_PI";
            case 24:
                return "SCANNER_STATE_DOCTYPE";
            case 25:
            case 31:
            case 32:
            default:
                return "??? (" + i + ')';
            case 26:
                return "SCANNER_STATE_ROOT_ELEMENT";
            case 27:
                return "SCANNER_STATE_COMMENT";
            case 28:
                return "SCANNER_STATE_REFERENCE";
            case 29:
                return "SCANNER_STATE_ATTRIBUTE";
            case 30:
                return "SCANNER_STATE_ATTRIBUTE_VALUE";
            case 33:
                return "SCANNER_STATE_END_OF_INPUT";
            case 34:
                return "SCANNER_STATE_TERMINATED";
            case 35:
                return "SCANNER_STATE_CDATA";
            case 36:
                return "SCANNER_STATE_TEXT_DECL";
            case 37:
                return "SCANNER_STATE_CHARACTER_DATA";
            case 38:
                return "SCANNER_STATE_START_ELEMENT_TAG";
            case 39:
                return "SCANNER_STATE_END_ELEMENT_TAG";
        }
    }

    public XMLString getString() {
        int i = this.fAttributeCacheUsedCount;
        if (i < this.initialCacheCount || i < this.attributeValueCache.size()) {
            ArrayList arrayList = this.attributeValueCache;
            int i2 = this.fAttributeCacheUsedCount;
            this.fAttributeCacheUsedCount = i2 + 1;
            return (XMLString) arrayList.get(i2);
        }
        XMLString xMLString = new XMLString();
        this.fAttributeCacheUsedCount++;
        this.attributeValueCache.add(xMLString);
        return xMLString;
    }

    public boolean hasAttributes() {
        return this.fAttributes.getLength() > 0;
    }

    public boolean isStandAlone() {
        return this.fStandalone;
    }

    public int next() throws IOException, XNIException {
        return this.fDriver.next();
    }

    @Override // com.sun.xml.internal.stream.XMLBufferListener
    public void refresh() {
        refresh(0);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        super.reset(xMLComponentManager);
        try {
            this.fReportCdataEvent = xMLComponentManager.getFeature(Constants.STAX_REPORT_CDATA_EVENT);
        } catch (XMLConfigurationException e) {
            e.printStackTrace();
            this.fReportCdataEvent = true;
        }
        try {
            this.fSecurityManager = (SecurityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/security-manager");
        } catch (XMLConfigurationException unused) {
            this.fSecurityManager = null;
        }
        SecurityManager securityManager = this.fSecurityManager;
        this.fElementAttributeLimit = securityManager != null ? securityManager.getElementAttrLimit() : 0;
        try {
            this.fNotifyBuiltInRefs = xMLComponentManager.getFeature(NOTIFY_BUILTIN_REFS);
        } catch (XMLConfigurationException unused2) {
            this.fNotifyBuiltInRefs = false;
        }
        try {
            Object property = xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
            this.fExternalSubsetResolver = property instanceof ExternalSubsetResolver ? (ExternalSubsetResolver) property : null;
        } catch (XMLConfigurationException unused3) {
            this.fExternalSubsetResolver = null;
        }
        this.fMarkupDepth = 0;
        this.fCurrentElement = null;
        this.fElementStack.clear();
        this.fHasExternalDTD = false;
        this.fStandalone = false;
        this.fInScanContent = false;
        this.fShouldSkip = false;
        this.fAdd = false;
        this.fSkip = false;
        this.fReadingAttributes = false;
        this.fSupportExternalEntities = true;
        this.fReplaceEntityReferences = true;
        this.fIsCoalesce = false;
        setScannerState(22);
        setDriver(this.fContentDriver);
        this.fEntityStore = this.fEntityManager.getEntityStore();
        this.dtdGrammarUtil = null;
    }

    public void resetPointer(short s, short s2) {
        this.fPointerInfo[s][s2] = 0;
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
            reportFatalError("EqRequiredInAttribute", new Object[]{this.fAttributeQName.rawname});
        }
        this.fEntityScanner.skipSpaces();
        boolean z = this.fHasExternalDTD && !this.fStandalone;
        XMLString string = getString();
        scanAttributeValue(string, this.fTempString2, this.fAttributeQName.rawname, xMLAttributes, 0, z);
        int length = xMLAttributes.getLength();
        int addAttribute = xMLAttributes.addAttribute(this.fAttributeQName, XMLSymbols.fCDATASymbol, null);
        if (length == xMLAttributes.getLength()) {
            reportFatalError("AttributeNotUnique", new Object[]{this.fCurrentElement.rawname, this.fAttributeQName.rawname});
        }
        xMLAttributes.setValue(addAttribute, null, string);
        xMLAttributes.setSpecified(addAttribute, true);
    }

    public boolean scanCDATASection(XMLStringBuffer xMLStringBuffer, boolean z) throws IOException, XNIException {
        int peekChar;
        if (this.fEntityScanner.scanData("]]>", xMLStringBuffer) && (peekChar = this.fEntityScanner.peekChar()) != -1 && isInvalidLiteral(peekChar)) {
            if (XMLChar.isHighSurrogate(peekChar)) {
                scanSurrogates(xMLStringBuffer);
            } else {
                reportFatalError("InvalidCharInCDSect", new Object[]{Integer.toString(peekChar, 16)});
                this.fEntityScanner.scanChar();
            }
        }
        this.fMarkupDepth--;
        if (this.fDocumentHandler != null) {
            int i = xMLStringBuffer.length;
        }
        return true;
    }

    public void scanCharReference() throws IOException, XNIException {
        XMLDocumentHandler xMLDocumentHandler;
        this.fStringBuffer2.clear();
        int scanCharReferenceValue = scanCharReferenceValue(this.fStringBuffer2, null);
        this.fMarkupDepth--;
        if (scanCharReferenceValue == -1 || (xMLDocumentHandler = this.fDocumentHandler) == null) {
            return;
        }
        if (this.fNotifyCharRefs) {
            xMLDocumentHandler.startGeneralEntity(this.fCharRefLiteral, null, null, null);
        }
        if (this.fValidation && scanCharReferenceValue <= 32) {
            Augmentations augmentations = this.fTempAugmentations;
            if (augmentations != null) {
                augmentations.removeAllItems();
            } else {
                this.fTempAugmentations = new AugmentationsImpl();
            }
            this.fTempAugmentations.putItem("CHAR_REF_PROBABLE_WS", Boolean.TRUE);
        }
        if (this.fNotifyCharRefs) {
            this.fDocumentHandler.endGeneralEntity(this.fCharRefLiteral, null);
        }
    }

    public void scanComment() throws IOException, XNIException {
        this.fContentBuffer.clear();
        scanComment(this.fContentBuffer);
        this.fUsebuffer = true;
        this.fMarkupDepth--;
    }

    public int scanContent(XMLStringBuffer xMLStringBuffer) throws IOException, XNIException {
        XMLString xMLString = this.fTempString;
        xMLString.length = 0;
        int scanContent = this.fEntityScanner.scanContent(xMLString);
        xMLStringBuffer.append(this.fTempString);
        this.fTempString.length = 0;
        if (scanContent == 13) {
            this.fEntityScanner.scanChar();
            xMLStringBuffer.append((char) scanContent);
        } else {
            if (scanContent != 93) {
                return scanContent;
            }
            xMLStringBuffer.append((char) this.fEntityScanner.scanChar());
            this.fInScanContent = true;
            if (this.fEntityScanner.skipChar(93)) {
                xMLStringBuffer.append(']');
                while (this.fEntityScanner.skipChar(93)) {
                    xMLStringBuffer.append(']');
                }
                if (this.fEntityScanner.skipChar(62)) {
                    reportFatalError("CDEndInContent", null);
                }
            }
            this.fInScanContent = false;
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0061 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0063 A[SYNTHETIC] */
    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanDocument(boolean r5) throws java.io.IOException, com.sun.org.apache.xerces.internal.xni.XNIException {
        /*
            r4 = this;
            com.sun.org.apache.xerces.internal.impl.XMLEntityManager r0 = r4.fEntityManager
            r0.setEntityHandler(r4)
            int r0 = r4.next()
        L9:
            r1 = 0
            switch(r0) {
                case 1: goto L59;
                case 2: goto L59;
                case 3: goto L4c;
                case 4: goto L42;
                case 5: goto L38;
                case 6: goto L59;
                case 7: goto L59;
                case 8: goto Ld;
                case 9: goto L59;
                case 10: goto L59;
                case 11: goto L59;
                case 12: goto L24;
                case 13: goto L59;
                case 14: goto L59;
                case 15: goto L59;
                default: goto Ld;
            }
        Ld:
            java.lang.InternalError r4 = new java.lang.InternalError
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r1 = "processing event: "
            r5.append(r1)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L24:
            com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler r0 = r4.fDocumentHandler
            r0.startCDATA(r1)
            com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler r0 = r4.fDocumentHandler
            com.sun.org.apache.xerces.internal.xni.XMLString r2 = r4.getCharacterData()
            r0.characters(r2, r1)
            com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler r0 = r4.fDocumentHandler
            r0.endCDATA(r1)
            goto L59
        L38:
            com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler r0 = r4.fDocumentHandler
            com.sun.org.apache.xerces.internal.xni.XMLString r2 = r4.getCharacterData()
            r0.comment(r2, r1)
            goto L59
        L42:
            com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler r0 = r4.fDocumentHandler
            com.sun.org.apache.xerces.internal.xni.XMLString r2 = r4.getCharacterData()
            r0.characters(r2, r1)
            goto L59
        L4c:
            com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler r0 = r4.fDocumentHandler
            java.lang.String r2 = r4.getPITarget()
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r3 = r4.getPIData()
            r0.processingInstruction(r2, r3, r1)
        L59:
            int r0 = r4.next()
            r2 = 8
            if (r0 == r2) goto L63
            if (r5 != 0) goto L9
        L63:
            if (r0 != r2) goto L6c
            com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler r4 = r4.fDocumentHandler
            r4.endDocument(r1)
            r4 = 0
            return r4
        L6c:
            r4 = 1
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.scanDocument(boolean):boolean");
    }

    public int scanEndElement() throws IOException, XNIException {
        QName popElement = this.fElementStack.popElement();
        String str = popElement.rawname;
        if (!this.fEntityScanner.skipString(str)) {
            reportFatalError("ETagRequired", new Object[]{str});
        }
        this.fEntityScanner.skipSpaces();
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("ETagUnterminated", new Object[]{str});
        }
        int i = (this.fMarkupDepth - 1) - 1;
        this.fMarkupDepth = i;
        if (i < this.fEntityStack[this.fEntityDepth - 1]) {
            reportFatalError("ElementEntityMismatch", new Object[]{str});
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endElement(popElement, null);
        }
        DTDGrammarUtil dTDGrammarUtil = this.dtdGrammarUtil;
        if (dTDGrammarUtil != null) {
            dTDGrammarUtil.endElement(popElement);
        }
        return this.fMarkupDepth;
    }

    public void scanEntityReference(XMLStringBuffer xMLStringBuffer) throws IOException, XNIException {
        String scanName = this.fEntityScanner.scanName();
        if (scanName == null) {
            reportFatalError("NameRequiredInReference", null);
        }
        if (!this.fEntityScanner.skipChar(59)) {
            reportFatalError("SemicolonRequiredInReference", new Object[]{scanName});
        }
        if (this.fEntityStore.isUnparsedEntity(scanName)) {
            reportFatalError("ReferenceToUnparsedEntity", new Object[]{scanName});
        }
        this.fMarkupDepth--;
        this.fCurrentEntityName = scanName;
        String str = XMLScanner.fAmpSymbol;
        if (scanName == str) {
            handleCharacter('&', str, xMLStringBuffer);
            this.fScannerState = 41;
            return;
        }
        String str2 = XMLScanner.fLtSymbol;
        if (scanName == str2) {
            handleCharacter('<', str2, xMLStringBuffer);
            this.fScannerState = 41;
            return;
        }
        String str3 = XMLScanner.fGtSymbol;
        if (scanName == str3) {
            handleCharacter('>', str3, xMLStringBuffer);
            this.fScannerState = 41;
            return;
        }
        String str4 = XMLScanner.fQuotSymbol;
        if (scanName == str4) {
            handleCharacter('\"', str4, xMLStringBuffer);
            this.fScannerState = 41;
            return;
        }
        String str5 = XMLScanner.fAposSymbol;
        if (scanName == str5) {
            handleCharacter(Chars.QUOTE, str5, xMLStringBuffer);
            this.fScannerState = 41;
            return;
        }
        if ((this.fEntityStore.isExternalEntity(scanName) && !this.fSupportExternalEntities) || ((!this.fEntityStore.isExternalEntity(scanName) && !this.fReplaceEntityReferences) || this.foundBuiltInRefs)) {
            this.fScannerState = 28;
            return;
        }
        if (!this.fEntityStore.isDeclaredEntity(scanName)) {
            if (!this.fHasExternalDTD || this.fStandalone) {
                reportFatalError("EntityNotDeclared", new Object[]{scanName});
            } else if (this.fValidation) {
                this.fErrorReporter.reportError(this.fEntityScanner, "http://www.w3.org/TR/1998/REC-xml-19980210", "EntityNotDeclared", new Object[]{scanName}, (short) 1);
            }
        }
        this.fEntityManager.startEntity(scanName, false);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public void scanPIData(String str, XMLStringBuffer xMLStringBuffer) throws IOException, XNIException {
        super.scanPIData(str, xMLStringBuffer);
        this.fPITarget = str;
        this.fMarkupDepth--;
    }

    public boolean scanStartElement() throws IOException, XNIException {
        if (this.fSkip && !this.fAdd) {
            QName next = this.fElementStack.getNext();
            boolean skipString = this.fEntityScanner.skipString(next.rawname);
            this.fSkip = skipString;
            if (skipString) {
                this.fElementStack.push();
                this.fElementQName = next;
            } else {
                this.fElementStack.reposition();
            }
        }
        if (!this.fSkip || this.fAdd) {
            QName nextElement = this.fElementStack.nextElement();
            this.fElementQName = nextElement;
            if (this.fNamespaces) {
                this.fEntityScanner.scanQName(nextElement);
            } else {
                String scanName = this.fEntityScanner.scanName();
                this.fElementQName.setValues(null, scanName, scanName, null);
            }
        }
        if (this.fAdd) {
            this.fElementStack.matchElement(this.fElementQName);
        }
        QName qName = this.fElementQName;
        this.fCurrentElement = qName;
        String str = qName.rawname;
        this.fEmptyElement = false;
        this.fAttributes.removeAllAttributes();
        if (!seekCloseOfStartTag()) {
            this.fReadingAttributes = true;
            this.fAttributeCacheUsedCount = 0;
            this.fStringBufferIndex = 0;
            this.fAddDefaultAttr = true;
            do {
                scanAttribute(this.fAttributes);
                if (this.fSecurityManager != null && this.fAttributes.getLength() > this.fElementAttributeLimit) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "ElementAttributeLimit", new Object[]{str, new Integer(this.fAttributes.getLength())}, (short) 2);
                }
            } while (!seekCloseOfStartTag());
            this.fReadingAttributes = false;
        }
        if (this.fEmptyElement) {
            int i = this.fMarkupDepth - 1;
            this.fMarkupDepth = i;
            if (i < this.fEntityStack[this.fEntityDepth - 1]) {
                reportFatalError("ElementEntityMismatch", new Object[]{this.fCurrentElement.rawname});
            }
            XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
            if (xMLDocumentHandler != null) {
                xMLDocumentHandler.emptyElement(this.fElementQName, this.fAttributes, null);
            }
            this.fElementStack.popElement();
        } else {
            DTDGrammarUtil dTDGrammarUtil = this.dtdGrammarUtil;
            if (dTDGrammarUtil != null) {
                dTDGrammarUtil.startElement(this.fElementQName, this.fAttributes);
            }
            XMLDocumentHandler xMLDocumentHandler2 = this.fDocumentHandler;
            if (xMLDocumentHandler2 != null) {
                xMLDocumentHandler2.startElement(this.fElementQName, this.fAttributes, null);
            }
        }
        return this.fEmptyElement;
    }

    public void scanXMLDeclOrTextDecl(boolean z) throws IOException, XNIException {
        super.scanXMLDeclOrTextDecl(z, this.fStrings);
        this.fMarkupDepth--;
        String[] strArr = this.fStrings;
        String str = strArr[0];
        String str2 = strArr[1];
        String str3 = strArr[2];
        this.fDeclaredEncoding = str2;
        boolean z2 = str3 != null && str3.equals("yes");
        this.fStandalone = z2;
        this.fEntityManager.setStandalone(z2);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (z) {
                xMLDocumentHandler.textDecl(str, str2, null);
            } else {
                xMLDocumentHandler.xmlDecl(str, str2, str3, null);
            }
        }
        if (str != null) {
            this.fEntityScanner.setVersion(str);
            this.fEntityScanner.setXMLVersion(str);
        }
        if (str2 == null || this.fEntityScanner.getCurrentEntity().isEncodingExternallySpecified()) {
            return;
        }
        this.fEntityScanner.setEncoding(str2);
    }

    public boolean seekCloseOfStartTag() throws IOException, XNIException {
        boolean skipSpaces = this.fEntityScanner.skipSpaces();
        int peekChar = this.fEntityScanner.peekChar();
        if (peekChar == 62) {
            this.fEntityScanner.scanChar();
            return true;
        }
        if (peekChar == 47) {
            this.fEntityScanner.scanChar();
            if (!this.fEntityScanner.skipChar(62)) {
                reportFatalError("ElementUnterminated", new Object[]{this.fElementQName.rawname});
            }
            this.fEmptyElement = true;
            return true;
        }
        if (isValidNameStartChar(peekChar) && skipSpaces) {
            return false;
        }
        reportFatalError("ElementUnterminated", new Object[]{this.fElementQName.rawname});
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    public final void setDriver(Driver driver) {
        this.fDriver = driver;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        super.setFeature(str, z);
        if (str.startsWith("http://apache.org/xml/features/") && str.substring(31).equals("scanner/notify-builtin-refs")) {
            this.fNotifyBuiltInRefs = z;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner
    public void setInputSource(XMLInputSource xMLInputSource) throws IOException {
        this.fEntityManager.setEntityHandler(this);
        this.fEntityManager.startEntity("$fragment$", xMLInputSource, false, true);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        super.setProperty(str, obj);
        if (str.startsWith("http://apache.org/xml/properties/")) {
            int length = str.length() - 33;
            if (length == 23 && str.endsWith("internal/entity-manager")) {
                this.fEntityManager = (XMLEntityManager) obj;
                return;
            } else if (length == 24 && str.endsWith("internal/entity-resolver")) {
                this.fExternalSubsetResolver = obj instanceof ExternalSubsetResolver ? (ExternalSubsetResolver) obj : null;
                return;
            }
        }
        if (str.startsWith("http://apache.org/xml/properties/") && str.substring(33).equals("internal/entity-manager")) {
            this.fEntityManager = (XMLEntityManager) obj;
        }
    }

    public final void setScannerState(int i) {
        this.fScannerState = i;
    }

    public boolean skipElement() throws IOException {
        if (!this.fShouldSkip) {
            return false;
        }
        short s = this.fLastPointerLocation;
        if (s != 0) {
            String str = this.fElementArray[s + 1];
            if (str != null && skipFromTheBuffer(str)) {
                this.fLastPointerLocation = (short) (this.fLastPointerLocation + 1);
                return true;
            }
            this.fLastPointerLocation = (short) 0;
        }
        return this.fShouldSkip && skipElement((short) 0);
    }

    public boolean skipFromTheBuffer(String str) throws IOException {
        if (!this.fEntityScanner.skipString(str)) {
            return false;
        }
        char peekChar = (char) this.fEntityScanner.peekChar();
        if (peekChar != ' ' && peekChar != '/' && peekChar != '>') {
            return false;
        }
        this.fElementRawname = str;
        return true;
    }

    public boolean skipQElement(String str) throws IOException {
        if (XMLChar.isName(this.fEntityScanner.getChar(str.length()))) {
            return false;
        }
        return this.fEntityScanner.skipString(str);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.impl.XMLEntityHandler
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
        if (this.fStandalone && this.fEntityStore.isEntityDeclInExternalSubset(str)) {
            reportFatalError("MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE", new Object[]{str});
        }
        if (this.fDocumentHandler == null || this.fScanningAttribute || str.equals("[xml]")) {
            return;
        }
        this.fDocumentHandler.startGeneralEntity(str, xMLResourceIdentifier, str2, null);
    }

    public short storePointerForADepth(short s) {
        short s2 = (short) this.fElementStack.fDepth;
        for (short s3 = 0; s3 < 4; s3 = (short) (s3 + 1)) {
            if (canStore(s2, s3)) {
                this.fPointerInfo[s2][s3] = s;
                return s3;
            }
        }
        return (short) -1;
    }

    @Override // com.sun.xml.internal.stream.XMLBufferListener
    public void refresh(int i) {
        if (this.fReadingAttributes) {
            this.fAttributes.refresh();
        }
        if (this.fScannerState == 37) {
            this.fContentBuffer.append(this.fTempString);
            this.fTempString.length = 0;
            this.fUsebuffer = true;
        }
    }

    public boolean skipElement(short s) throws IOException {
        short s2 = (short) this.fElementStack.fDepth;
        if (s2 > 5) {
            this.fShouldSkip = false;
            return false;
        }
        while (s < 4) {
            short elementPointer = getElementPointer(s2, s);
            if (elementPointer == 0) {
                this.fShouldSkip = false;
                return false;
            }
            String str = this.fElementArray[elementPointer];
            if (str != null && skipFromTheBuffer(str)) {
                this.fLastPointerLocation = elementPointer;
                this.fShouldSkip = true;
                return true;
            }
            s = (short) (s + 1);
        }
        this.fShouldSkip = false;
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public void reset(PropertyManager propertyManager) {
        super.reset(propertyManager);
        this.fNamespaces = ((Boolean) propertyManager.getProperty(XMLInputFactory.IS_NAMESPACE_AWARE)).booleanValue();
        boolean z = false;
        this.fNotifyBuiltInRefs = false;
        this.fMarkupDepth = 0;
        this.fCurrentElement = null;
        this.fShouldSkip = false;
        this.fAdd = false;
        this.fSkip = false;
        this.fElementStack.clear();
        this.fHasExternalDTD = false;
        this.fStandalone = false;
        this.fReplaceEntityReferences = ((Boolean) propertyManager.getProperty(XMLInputFactory.IS_REPLACING_ENTITY_REFERENCES)).booleanValue();
        this.fSupportExternalEntities = ((Boolean) propertyManager.getProperty(XMLInputFactory.IS_SUPPORTING_EXTERNAL_ENTITIES)).booleanValue();
        Boolean bool = (Boolean) propertyManager.getProperty("http://java.sun.com/xml/stream/properties/report-cdata-event");
        if (bool != null) {
            this.fReportCdataEvent = bool.booleanValue();
        }
        Boolean bool2 = (Boolean) propertyManager.getProperty(XMLInputFactory.IS_COALESCING);
        if (bool2 != null) {
            this.fIsCoalesce = bool2.booleanValue();
        }
        boolean z2 = this.fIsCoalesce;
        if (!z2 && this.fReportCdataEvent) {
            z = true;
        }
        this.fReportCdataEvent = z;
        this.fReplaceEntityReferences = z2 ? true : this.fReplaceEntityReferences;
        this.fEntityStore = this.fEntityManager.getEntityStore();
        this.dtdGrammarUtil = null;
    }
}
