package org.apache.xerces.xpointer;

import com.sunia.HTREnginev2.hmo;
import com.sunia.HTREnginev2.imo;
import com.sunia.HTREnginev2.lnf;
import com.sunia.HTREnginev2.pom;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.xinclude.XIncludeHandler;
import org.apache.xerces.xinclude.XIncludeNamespaceSupport;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLErrorHandler;

/* loaded from: classes13.dex */
public final class XPointerHandler extends XIncludeHandler implements XPointerProcessor {
    protected XMLErrorHandler fErrorHandler;
    protected SymbolTable fSymbolTable;
    protected XMLErrorReporter fXPointerErrorReporter;
    protected ArrayList fXPointerParts;
    protected XPointerPart fXPointerPart = null;
    protected boolean fFoundMatchingPtrPart = false;

    /* renamed from: x0 */
    public final String f113586x0 = "element";
    protected boolean fIsXPointerResolved = false;
    protected boolean fFixupBase = false;
    protected boolean fFixupLang = false;

    /* renamed from: org.apache.xerces.xpointer.XPointerHandler$a */
    /* loaded from: classes13.dex */
    public class C20089a {

        /* renamed from: d */
        public static final byte f113587d = 0;

        /* renamed from: e */
        public static final byte f113588e = 1;

        /* renamed from: f */
        public static final byte f113589f = 2;

        /* renamed from: g */
        public static final byte f113590g = 3;

        /* renamed from: h */
        public static final byte f113591h = 4;

        /* renamed from: i */
        public static final byte f113592i = 5;

        /* renamed from: j */
        public static final byte f113593j = 6;

        /* renamed from: k */
        public static final byte f113594k = 7;

        /* renamed from: l */
        public static final byte f113595l = 8;

        /* renamed from: m */
        public static final byte f113596m = 9;

        /* renamed from: n */
        public static final byte f113597n = 10;

        /* renamed from: o */
        public static final byte f113598o = 11;

        /* renamed from: p */
        public static final byte f113599p = 12;

        /* renamed from: q */
        public static final byte f113600q = 13;

        /* renamed from: r */
        public static final byte f113601r = 14;

        /* renamed from: a */
        public final byte[] f113602a;

        /* renamed from: b */
        public SymbolTable f113603b;

        public C20089a(SymbolTable symbolTable) {
            this.f113602a = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 1, 1, 1, 1, 1, 4, 5, 1, 1, 1, 6, 7, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 10, 1, 1, 11, 1, 1, 1, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 1, 1, 1, 3, 13, 1, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 1, 1, 1, 1, 1};
            this.f113603b = symbolTable;
        }

        /* renamed from: b */
        public void mo70639b(C20090b c20090b, int i) throws XNIException {
            c20090b.m70649g(i);
        }

        /* renamed from: c */
        public final int m70640c(String str, StringBuffer stringBuffer, int i, int i2) {
            while (i2 != i) {
                char charAt = str.charAt(i2);
                byte b = charAt >= 128 ? (byte) 14 : this.f113602a[charAt];
                if (b != 4) {
                    if (b != 5) {
                        if (b == 3) {
                            i2++;
                            charAt = str.charAt(i2);
                            byte b2 = charAt < 128 ? this.f113602a[charAt] : (byte) 14;
                            if (b2 != 3 && b2 != 4 && b2 != 5) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        return i2;
                    }
                } else {
                    stringBuffer.append((int) charAt);
                    i2 = m70640c(str, stringBuffer, i, i2 + 1);
                    if (i2 == i) {
                        return i2;
                    }
                    charAt = str.charAt(i2);
                    if ((charAt < 128 ? this.f113602a[charAt] : (byte) 14) != 5) {
                        return i;
                    }
                }
                stringBuffer.append(charAt);
                i2++;
            }
            return i2;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0034. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x0028 A[SYNTHETIC] */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m70641d(org.apache.xerces.util.SymbolTable r9, org.apache.xerces.xpointer.XPointerHandler.C20090b r10, java.lang.String r11, int r12, int r13) throws org.apache.xerces.xni.XNIException {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.xpointer.XPointerHandler.C20089a.m70641d(org.apache.xerces.util.SymbolTable, org.apache.xerces.xpointer.XPointerHandler$b, java.lang.String, int, int):boolean");
        }

        /* renamed from: e */
        public final int m70642e(String str, int i, int i2) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                byte b = this.f113602a[charAt];
                if (b != 12 && b != 13) {
                    return i2;
                }
            } else if (!XMLChar.isNameStart(charAt)) {
                return i2;
            }
            while (true) {
                i2++;
                if (i2 >= i) {
                    break;
                }
                char charAt2 = str.charAt(i2);
                if (charAt2 < 128) {
                    byte b2 = this.f113602a[charAt2];
                    if (b2 != 12 && b2 != 9 && b2 != 7 && b2 != 6 && b2 != 13) {
                        break;
                    }
                } else if (!XMLChar.isName(charAt2)) {
                    break;
                }
            }
            return i2;
        }

        public /* synthetic */ C20089a(XPointerHandler xPointerHandler, SymbolTable symbolTable, C20091a c20091a) {
            this(symbolTable);
        }
    }

    /* renamed from: org.apache.xerces.xpointer.XPointerHandler$b */
    /* loaded from: classes13.dex */
    public final class C20090b {

        /* renamed from: h */
        public static final int f113605h = 0;

        /* renamed from: i */
        public static final int f113606i = 1;

        /* renamed from: j */
        public static final int f113607j = 2;

        /* renamed from: k */
        public static final int f113608k = 3;

        /* renamed from: l */
        public static final int f113609l = 4;

        /* renamed from: m */
        public static final int f113610m = 256;

        /* renamed from: a */
        public final String[] f113611a;

        /* renamed from: b */
        public int[] f113612b;

        /* renamed from: c */
        public int f113613c;

        /* renamed from: d */
        public int f113614d;

        /* renamed from: e */
        public SymbolTable f113615e;

        /* renamed from: f */
        public HashMap f113616f;

        public C20090b(SymbolTable symbolTable) {
            this.f113611a = new String[]{"XPTRTOKEN_OPEN_PAREN", "XPTRTOKEN_CLOSE_PAREN", "XPTRTOKEN_SHORTHAND", "XPTRTOKEN_SCHEMENAME", "XPTRTOKEN_SCHEMEDATA"};
            this.f113612b = new int[256];
            this.f113613c = 0;
            HashMap hashMap = new HashMap();
            this.f113616f = hashMap;
            this.f113615e = symbolTable;
            hashMap.put(new Integer(0), "XPTRTOKEN_OPEN_PAREN");
            this.f113616f.put(new Integer(1), "XPTRTOKEN_CLOSE_PAREN");
            this.f113616f.put(new Integer(2), "XPTRTOKEN_SHORTHAND");
            this.f113616f.put(new Integer(3), "XPTRTOKEN_SCHEMENAME");
            this.f113616f.put(new Integer(4), "XPTRTOKEN_SCHEMEDATA");
        }

        /* renamed from: g */
        public final void m70649g(int i) {
            try {
                this.f113612b[this.f113613c] = i;
            } catch (ArrayIndexOutOfBoundsException unused) {
                int[] iArr = this.f113612b;
                int i2 = this.f113613c;
                int[] iArr2 = new int[i2 << 1];
                this.f113612b = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                this.f113612b[this.f113613c] = i;
            }
            this.f113613c++;
        }

        /* renamed from: h */
        public final void m70650h(String str) {
            Integer num = (Integer) this.f113616f.get(str);
            if (num == null) {
                num = new Integer(this.f113616f.size());
                this.f113616f.put(num, str);
            }
            m70649g(num.intValue());
        }

        /* renamed from: i */
        public final String m70651i(int i) {
            return (String) this.f113616f.get(new Integer(i));
        }

        /* renamed from: j */
        public final boolean m70652j() {
            return this.f113614d < this.f113613c;
        }

        /* renamed from: k */
        public final int m70653k() throws XNIException {
            if (this.f113614d == this.f113613c) {
                XPointerHandler.this.m70636H("XPointerProcessingError", null);
            }
            int[] iArr = this.f113612b;
            int i = this.f113614d;
            this.f113614d = i + 1;
            return iArr[i];
        }

        /* renamed from: l */
        public final String m70654l() throws XNIException {
            String m70651i = m70651i(m70653k());
            if (m70651i == null) {
                XPointerHandler.this.m70636H("XPointerProcessingError", null);
            }
            return m70651i;
        }

        /* renamed from: m */
        public final int m70655m() throws XNIException {
            if (this.f113614d == this.f113613c) {
                XPointerHandler.this.m70636H("XPointerProcessingError", null);
            }
            return this.f113612b[this.f113614d];
        }

        /* renamed from: n */
        public final void m70656n() {
            this.f113614d = 0;
        }

        public /* synthetic */ C20090b(XPointerHandler xPointerHandler, SymbolTable symbolTable, C20091a c20091a) {
            this(symbolTable);
        }
    }

    public XPointerHandler() {
        this.fXPointerParts = null;
        this.fSymbolTable = null;
        this.fXPointerParts = new ArrayList();
        this.fSymbolTable = new SymbolTable();
    }

    /* renamed from: H */
    public final void m70636H(String str, Object[] objArr) throws XNIException {
        throw new XNIException(this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/XPTR").formatMessage(this.fErrorReporter.getLocale(), str, objArr));
    }

    /* renamed from: I */
    public final void m70637I(String str, Object[] objArr) throws XNIException {
        this.fXPointerErrorReporter.reportError("http://www.w3.org/TR/XPTR", str, objArr, (short) 0);
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (isChildFragmentResolved()) {
            super.characters(xMLString, augmentations);
        }
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (isChildFragmentResolved()) {
            super.comment(xMLString, augmentations);
        }
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        if (resolveXPointer(qName, xMLAttributes, augmentations, 2)) {
            super.emptyElement(qName, xMLAttributes, augmentations);
            return;
        }
        if (this.fFixupBase) {
            processXMLBaseAttributes(xMLAttributes);
        }
        if (this.fFixupLang) {
            processXMLLangAttributes(xMLAttributes);
        }
        this.fNamespaceContext.setContextInvalid();
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        if (isChildFragmentResolved()) {
            super.endCDATA(augmentations);
        }
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        if (resolveXPointer(qName, null, augmentations, 1)) {
            super.endElement(qName, augmentations);
        }
    }

    public ArrayList getPointerParts() {
        return this.fXPointerParts;
    }

    public XPointerPart getXPointerPart() {
        return this.fXPointerPart;
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (isChildFragmentResolved()) {
            super.ignorableWhitespace(xMLString, augmentations);
        }
    }

    public void init() {
        this.fXPointerParts.clear();
        this.fXPointerPart = null;
        this.fFoundMatchingPtrPart = false;
        this.fIsXPointerResolved = false;
        initErrorReporter();
    }

    public void initErrorReporter() {
        if (this.fXPointerErrorReporter == null) {
            this.fXPointerErrorReporter = new XMLErrorReporter();
        }
        if (this.fErrorHandler == null) {
            this.fErrorHandler = new hmo();
        }
        this.fXPointerErrorReporter.putMessageFormatter("http://www.w3.org/TR/XPTR", new imo());
    }

    public boolean isChildFragmentResolved() throws XNIException {
        XPointerPart xPointerPart = this.fXPointerPart;
        if (xPointerPart != null) {
            return xPointerPart.isChildFragmentResolved();
        }
        return false;
    }

    @Override // org.apache.xerces.xpointer.XPointerProcessor
    public boolean isFragmentResolved() throws XNIException {
        XPointerPart xPointerPart = this.fXPointerPart;
        boolean isFragmentResolved = xPointerPart != null ? xPointerPart.isFragmentResolved() : false;
        if (!this.fIsXPointerResolved) {
            this.fIsXPointerResolved = isFragmentResolved;
        }
        return isFragmentResolved;
    }

    @Override // org.apache.xerces.xpointer.XPointerProcessor
    public boolean isXPointerResolved() throws XNIException {
        return this.fIsXPointerResolved;
    }

    @Override // org.apache.xerces.xpointer.XPointerProcessor
    public void parseXPointer(String str) throws XNIException {
        init();
        C20090b c20090b = new C20090b(this, this.fSymbolTable, null);
        if (!new C20091a(this, this.fSymbolTable).m70641d(this.fSymbolTable, c20090b, str, 0, str.length())) {
            m70636H("InvalidXPointerExpression", new Object[]{str});
        }
        while (c20090b.m70652j()) {
            int m70653k = c20090b.m70653k();
            if (m70653k == 2) {
                String m70651i = c20090b.m70651i(c20090b.m70653k());
                if (m70651i == null) {
                    m70636H("InvalidXPointerExpression", new Object[]{str});
                }
                pom pomVar = new pom(this.fSymbolTable);
                pomVar.setSchemeName(m70651i);
                this.fXPointerParts.add(pomVar);
            } else if (m70653k != 3) {
                m70636H("InvalidXPointerExpression", new Object[]{str});
            } else {
                String m70651i2 = c20090b.m70651i(c20090b.m70653k());
                String m70651i3 = c20090b.m70651i(c20090b.m70653k());
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(m70651i2);
                stringBuffer.append(m70651i3);
                String stringBuffer2 = stringBuffer.toString();
                int m70653k2 = c20090b.m70653k();
                if (c20090b.m70651i(m70653k2) != "XPTRTOKEN_OPEN_PAREN") {
                    if (m70653k2 == 2) {
                        m70636H("MultipleShortHandPointers", new Object[]{str});
                    } else {
                        m70636H("InvalidXPointerExpression", new Object[]{str});
                    }
                }
                int i = 1;
                int i2 = 1;
                while (c20090b.m70652j() && c20090b.m70651i(c20090b.m70653k()) == "XPTRTOKEN_OPEN_PAREN") {
                    i2++;
                }
                String m70651i4 = c20090b.m70651i(c20090b.m70653k());
                if (c20090b.m70651i(c20090b.m70653k()) != "XPTRTOKEN_CLOSE_PAREN") {
                    m70636H("SchemeDataNotFollowedByCloseParenthesis", new Object[]{str});
                }
                while (c20090b.m70652j() && c20090b.m70651i(c20090b.m70655m()) == "XPTRTOKEN_OPEN_PAREN") {
                    i++;
                }
                if (i2 != i) {
                    m70636H("UnbalancedParenthesisInXPointerExpression", new Object[]{str, new Integer(i2), new Integer(i)});
                }
                if (stringBuffer2.equals("element")) {
                    lnf lnfVar = new lnf(this.fSymbolTable, this.fErrorReporter);
                    lnfVar.setSchemeName(stringBuffer2);
                    lnfVar.setSchemeData(m70651i4);
                    try {
                        lnfVar.parseXPointer(m70651i4);
                        this.fXPointerParts.add(lnfVar);
                    } catch (XNIException e) {
                        throw new XNIException(e);
                    }
                } else {
                    m70637I("SchemeUnsupported", new Object[]{stringBuffer2});
                }
            }
        }
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (isChildFragmentResolved()) {
            super.processingInstruction(str, xMLString, augmentations);
        }
    }

    @Override // org.apache.xerces.xpointer.XPointerProcessor
    public boolean resolveXPointer(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations, int i) throws XNIException {
        boolean z = true;
        if (!this.fFoundMatchingPtrPart) {
            boolean z2 = false;
            for (int i2 = 0; i2 < this.fXPointerParts.size(); i2++) {
                XPointerPart xPointerPart = (XPointerPart) this.fXPointerParts.get(i2);
                this.fXPointerPart = xPointerPart;
                if (xPointerPart.resolveXPointer(qName, xMLAttributes, augmentations, i)) {
                    this.fFoundMatchingPtrPart = true;
                    z2 = true;
                }
            }
            z = z2;
        } else if (!this.fXPointerPart.resolveXPointer(qName, xMLAttributes, augmentations, i)) {
            z = false;
        }
        if (!this.fIsXPointerResolved) {
            this.fIsXPointerResolved = z;
        }
        return z;
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.parser.XMLDocumentSource
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str == "http://apache.org/xml/properties/internal/error-reporter") {
            if (obj != null) {
                this.fXPointerErrorReporter = (XMLErrorReporter) obj;
            } else {
                this.fXPointerErrorReporter = null;
            }
        }
        if (str == "http://apache.org/xml/properties/internal/error-handler") {
            if (obj != null) {
                this.fErrorHandler = (XMLErrorHandler) obj;
            } else {
                this.fErrorHandler = null;
            }
        }
        if (str == "http://apache.org/xml/features/xinclude/fixup-language") {
            if (obj != null) {
                this.fFixupLang = ((Boolean) obj).booleanValue();
            } else {
                this.fFixupLang = false;
            }
        }
        if (str == "http://apache.org/xml/features/xinclude/fixup-base-uris") {
            if (obj != null) {
                this.fFixupBase = ((Boolean) obj).booleanValue();
            } else {
                this.fFixupBase = false;
            }
        }
        if (str == "http://apache.org/xml/properties/internal/namespace-context") {
            this.fNamespaceContext = (XIncludeNamespaceSupport) obj;
        }
        super.setProperty(str, obj);
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        if (isChildFragmentResolved()) {
            super.startCDATA(augmentations);
        }
    }

    @Override // org.apache.xerces.xinclude.XIncludeHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        if (resolveXPointer(qName, xMLAttributes, augmentations, 0)) {
            super.startElement(qName, xMLAttributes, augmentations);
            return;
        }
        if (this.fFixupBase) {
            processXMLBaseAttributes(xMLAttributes);
        }
        if (this.fFixupLang) {
            processXMLLangAttributes(xMLAttributes);
        }
        this.fNamespaceContext.setContextInvalid();
    }

    public XPointerHandler(SymbolTable symbolTable, XMLErrorHandler xMLErrorHandler, XMLErrorReporter xMLErrorReporter) {
        this.fXPointerParts = null;
        this.fSymbolTable = null;
        this.fXPointerParts = new ArrayList();
        this.fSymbolTable = symbolTable;
        this.fErrorHandler = xMLErrorHandler;
        this.fXPointerErrorReporter = xMLErrorReporter;
    }
}
