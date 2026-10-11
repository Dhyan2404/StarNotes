package org.apache.xerces.dom;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.lang.ref.SoftReference;
import net.p110sf.saxon.query.XQueryParser;
import org.apache.xerces.impl.RevalidationHandler;
import org.apache.xerces.impl.dtd.XMLDTDLoader;
import org.apache.xerces.parsers.DOMParserImpl;
import org.apache.xerces.util.XMLChar;
import org.apache.xml.serialize.DOMSerializerImpl;
import org.scribe.oauth.OAuth20ServiceImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSOutput;
import org.w3c.dom.ls.LSParser;
import org.w3c.dom.ls.LSSerializer;

/* loaded from: classes13.dex */
public class CoreDOMImplementationImpl implements DOMImplementation, DOMImplementationLS {

    /* renamed from: q */
    public static final int f111847q = 2;

    /* renamed from: r */
    public static final CoreDOMImplementationImpl f111848r = new CoreDOMImplementationImpl();

    /* renamed from: a */
    public SoftReference[] f111849a = new SoftReference[2];

    /* renamed from: b */
    public SoftReference[] f111850b = new SoftReference[2];

    /* renamed from: c */
    public SoftReference[] f111851c = new SoftReference[2];

    /* renamed from: d */
    public int f111852d = -1;

    /* renamed from: e */
    public int f111853e = -1;

    /* renamed from: f */
    public int f111854f = -1;

    /* renamed from: g */
    public int f111855g = 2;

    /* renamed from: h */
    public int f111856h = 2;

    /* renamed from: i */
    public int f111857i = 2;

    /* renamed from: j */
    public SoftReference[] f111858j = new SoftReference[2];

    /* renamed from: k */
    public SoftReference[] f111859k = new SoftReference[2];

    /* renamed from: l */
    public int f111860l = -1;

    /* renamed from: m */
    public int f111861m = -1;

    /* renamed from: n */
    public int f111862n = 2;

    /* renamed from: o */
    public int f111863o = 2;

    /* renamed from: p */
    public int f111864p = 0;

    /* renamed from: org.apache.xerces.dom.CoreDOMImplementationImpl$a */
    /* loaded from: classes13.dex */
    public static final class C19994a {

        /* renamed from: a */
        public RevalidationHandler f111865a;

        public C19994a(RevalidationHandler revalidationHandler) {
            this.f111865a = revalidationHandler;
        }
    }

    /* renamed from: org.apache.xerces.dom.CoreDOMImplementationImpl$b */
    /* loaded from: classes13.dex */
    public static final class C19995b {

        /* renamed from: a */
        public XMLDTDLoader f111866a;

        public C19995b(XMLDTDLoader xMLDTDLoader) {
            this.f111866a = xMLDTDLoader;
        }
    }

    public static DOMImplementation getDOMImplementation() {
        return f111848r;
    }

    /* renamed from: a */
    final void m69734a(String str) {
        int indexOf = str.indexOf(58);
        int lastIndexOf = str.lastIndexOf(58);
        int length = str.length();
        if (indexOf == 0 || indexOf == length - 1 || lastIndexOf != indexOf) {
            throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
        }
        int i = 0;
        if (indexOf > 0) {
            if (!XMLChar.isNCNameStart(str.charAt(0))) {
                throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
            }
            for (int i2 = 1; i2 < indexOf; i2++) {
                if (!XMLChar.isNCName(str.charAt(i2))) {
                    throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
                }
            }
            i = indexOf + 1;
        }
        if (!XMLChar.isNCNameStart(str.charAt(i))) {
            throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
        }
        for (int i3 = i + 1; i3 < length; i3++) {
            if (!XMLChar.isNCName(str.charAt(i3))) {
                throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
            }
        }
    }

    public synchronized int assignDocTypeNumber() {
        int i;
        i = this.f111864p + 1;
        this.f111864p = i;
        return i;
    }

    public synchronized int assignDocumentNumber() {
        int i;
        i = this.f111864p + 1;
        this.f111864p = i;
        return i;
    }

    /* renamed from: b */
    public final synchronized XMLDTDLoader m69735b(String str) {
        XMLDTDLoader xMLDTDLoader;
        XMLDTDLoader xMLDTDLoader2;
        if (SerializerConstants.XMLVERSION11.equals(str)) {
            while (true) {
                int i = this.f111861m;
                if (i < 0) {
                    return (XMLDTDLoader) ObjectFactory.m69764h("org.apache.xerces.impl.dtd.XML11DTDProcessor", ObjectFactory.m69760d(), true);
                }
                C19995b c19995b = (C19995b) this.f111859k[i].get();
                if (c19995b != null && (xMLDTDLoader2 = c19995b.f111866a) != null) {
                    c19995b.f111866a = null;
                    this.f111861m--;
                    return xMLDTDLoader2;
                }
                SoftReference[] softReferenceArr = this.f111859k;
                int i2 = this.f111861m;
                this.f111861m = i2 - 1;
                softReferenceArr[i2] = null;
            }
        } else {
            while (true) {
                int i3 = this.f111860l;
                if (i3 < 0) {
                    return new XMLDTDLoader();
                }
                C19995b c19995b2 = (C19995b) this.f111858j[i3].get();
                if (c19995b2 != null && (xMLDTDLoader = c19995b2.f111866a) != null) {
                    c19995b2.f111866a = null;
                    this.f111860l--;
                    return xMLDTDLoader;
                }
                SoftReference[] softReferenceArr2 = this.f111858j;
                int i4 = this.f111860l;
                this.f111860l = i4 - 1;
                softReferenceArr2[i4] = null;
            }
        }
    }

    /* renamed from: c */
    public synchronized RevalidationHandler m69736c(String str, String str2) {
        RevalidationHandler revalidationHandler;
        RevalidationHandler revalidationHandler2;
        RevalidationHandler revalidationHandler3;
        if (str == "http://www.w3.org/2001/XMLSchema") {
            while (true) {
                int i = this.f111852d;
                if (i < 0) {
                    return (RevalidationHandler) ObjectFactory.m69764h("org.apache.xerces.impl.xs.XMLSchemaValidator", ObjectFactory.m69760d(), true);
                }
                C19994a c19994a = (C19994a) this.f111849a[i].get();
                if (c19994a != null && (revalidationHandler3 = c19994a.f111865a) != null) {
                    c19994a.f111865a = null;
                    this.f111852d--;
                    return revalidationHandler3;
                }
                SoftReference[] softReferenceArr = this.f111849a;
                int i2 = this.f111852d;
                this.f111852d = i2 - 1;
                softReferenceArr[i2] = null;
            }
        } else {
            if (str != "http://www.w3.org/TR/REC-xml") {
                return null;
            }
            if (SerializerConstants.XMLVERSION11.equals(str2)) {
                while (true) {
                    int i3 = this.f111854f;
                    if (i3 < 0) {
                        return (RevalidationHandler) ObjectFactory.m69764h("org.apache.xerces.impl.dtd.XML11DTDValidator", ObjectFactory.m69760d(), true);
                    }
                    C19994a c19994a2 = (C19994a) this.f111851c[i3].get();
                    if (c19994a2 != null && (revalidationHandler2 = c19994a2.f111865a) != null) {
                        c19994a2.f111865a = null;
                        this.f111854f--;
                        return revalidationHandler2;
                    }
                    SoftReference[] softReferenceArr2 = this.f111851c;
                    int i4 = this.f111854f;
                    this.f111854f = i4 - 1;
                    softReferenceArr2[i4] = null;
                }
            } else {
                while (true) {
                    int i5 = this.f111853e;
                    if (i5 < 0) {
                        return (RevalidationHandler) ObjectFactory.m69764h("org.apache.xerces.impl.dtd.XMLDTDValidator", ObjectFactory.m69760d(), true);
                    }
                    C19994a c19994a3 = (C19994a) this.f111850b[i5].get();
                    if (c19994a3 != null && (revalidationHandler = c19994a3.f111865a) != null) {
                        c19994a3.f111865a = null;
                        this.f111853e--;
                        return revalidationHandler;
                    }
                    SoftReference[] softReferenceArr3 = this.f111850b;
                    int i6 = this.f111853e;
                    this.f111853e = i6 - 1;
                    softReferenceArr3[i6] = null;
                }
            }
        }
    }

    public CoreDocumentImpl createDocument(DocumentType documentType) {
        return new CoreDocumentImpl(documentType);
    }

    @Override // org.w3c.dom.DOMImplementation
    public DocumentType createDocumentType(String str, String str2, String str3) {
        m69734a(str);
        return new DocumentTypeImpl(null, str, str2, str3);
    }

    @Override // org.w3c.dom.ls.DOMImplementationLS
    public LSInput createLSInput() {
        return new DOMInputImpl();
    }

    @Override // org.w3c.dom.ls.DOMImplementationLS
    public LSOutput createLSOutput() {
        return new DOMOutputImpl();
    }

    @Override // org.w3c.dom.ls.DOMImplementationLS
    public LSParser createLSParser(short s, String str) throws DOMException {
        if (s == 1 && (str == null || "http://www.w3.org/2001/XMLSchema".equals(str) || "http://www.w3.org/TR/REC-xml".equals(str))) {
            return (str == null || !str.equals("http://www.w3.org/TR/REC-xml")) ? new DOMParserImpl("org.apache.xerces.parsers.XIncludeAwareParserConfiguration", str) : new DOMParserImpl("org.apache.xerces.parsers.XML11DTDConfiguration", str);
        }
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.w3c.dom.ls.DOMImplementationLS
    public LSSerializer createLSSerializer() {
        try {
            return (LSSerializer) ObjectFactory.m69762f("org.apache.xml.serializer.dom3.LSSerializerImpl", ObjectFactory.m69760d(), true).newInstance();
        } catch (Exception unused) {
            return new DOMSerializerImpl();
        }
    }

    /* renamed from: d */
    public final synchronized void m69737d(String str, XMLDTDLoader xMLDTDLoader) {
        C19995b c19995b;
        C19995b c19995b2;
        if (SerializerConstants.XMLVERSION11.equals(str)) {
            int i = this.f111861m + 1;
            this.f111861m = i;
            SoftReference[] softReferenceArr = this.f111859k;
            if (softReferenceArr.length == i) {
                int i2 = this.f111863o + 2;
                this.f111863o = i2;
                SoftReference[] softReferenceArr2 = new SoftReference[i2];
                System.arraycopy(softReferenceArr, 0, softReferenceArr2, 0, softReferenceArr.length);
                this.f111859k = softReferenceArr2;
            }
            SoftReference softReference = this.f111859k[this.f111861m];
            if (softReference != null && (c19995b2 = (C19995b) softReference.get()) != null) {
                c19995b2.f111866a = xMLDTDLoader;
                return;
            }
            this.f111859k[this.f111861m] = new SoftReference(new C19995b(xMLDTDLoader));
        } else {
            int i3 = this.f111860l + 1;
            this.f111860l = i3;
            SoftReference[] softReferenceArr3 = this.f111858j;
            if (softReferenceArr3.length == i3) {
                int i4 = this.f111862n + 2;
                this.f111862n = i4;
                SoftReference[] softReferenceArr4 = new SoftReference[i4];
                System.arraycopy(softReferenceArr3, 0, softReferenceArr4, 0, softReferenceArr3.length);
                this.f111858j = softReferenceArr4;
            }
            SoftReference softReference2 = this.f111858j[this.f111860l];
            if (softReference2 != null && (c19995b = (C19995b) softReference2.get()) != null) {
                c19995b.f111866a = xMLDTDLoader;
                return;
            }
            this.f111858j[this.f111860l] = new SoftReference(new C19995b(xMLDTDLoader));
        }
    }

    /* renamed from: e */
    public synchronized void m69738e(String str, String str2, RevalidationHandler revalidationHandler) {
        C19994a c19994a;
        C19994a c19994a2;
        C19994a c19994a3;
        if (str == "http://www.w3.org/2001/XMLSchema") {
            int i = this.f111852d + 1;
            this.f111852d = i;
            SoftReference[] softReferenceArr = this.f111849a;
            if (softReferenceArr.length == i) {
                int i2 = this.f111855g + 2;
                this.f111855g = i2;
                SoftReference[] softReferenceArr2 = new SoftReference[i2];
                System.arraycopy(softReferenceArr, 0, softReferenceArr2, 0, softReferenceArr.length);
                this.f111849a = softReferenceArr2;
            }
            SoftReference softReference = this.f111849a[this.f111852d];
            if (softReference != null && (c19994a3 = (C19994a) softReference.get()) != null) {
                c19994a3.f111865a = revalidationHandler;
                return;
            }
            this.f111849a[this.f111852d] = new SoftReference(new C19994a(revalidationHandler));
        } else if (str == "http://www.w3.org/TR/REC-xml") {
            if (SerializerConstants.XMLVERSION11.equals(str2)) {
                int i3 = this.f111854f + 1;
                this.f111854f = i3;
                SoftReference[] softReferenceArr3 = this.f111851c;
                if (softReferenceArr3.length == i3) {
                    int i4 = this.f111857i + 2;
                    this.f111857i = i4;
                    SoftReference[] softReferenceArr4 = new SoftReference[i4];
                    System.arraycopy(softReferenceArr3, 0, softReferenceArr4, 0, softReferenceArr3.length);
                    this.f111851c = softReferenceArr4;
                }
                SoftReference softReference2 = this.f111851c[this.f111854f];
                if (softReference2 != null && (c19994a2 = (C19994a) softReference2.get()) != null) {
                    c19994a2.f111865a = revalidationHandler;
                    return;
                }
                this.f111851c[this.f111854f] = new SoftReference(new C19994a(revalidationHandler));
            } else {
                int i5 = this.f111853e + 1;
                this.f111853e = i5;
                SoftReference[] softReferenceArr5 = this.f111850b;
                if (softReferenceArr5.length == i5) {
                    int i6 = this.f111856h + 2;
                    this.f111856h = i6;
                    SoftReference[] softReferenceArr6 = new SoftReference[i6];
                    System.arraycopy(softReferenceArr5, 0, softReferenceArr6, 0, softReferenceArr5.length);
                    this.f111850b = softReferenceArr6;
                }
                SoftReference softReference3 = this.f111850b[this.f111853e];
                if (softReference3 != null && (c19994a = (C19994a) softReference3.get()) != null) {
                    c19994a.f111865a = revalidationHandler;
                    return;
                }
                this.f111850b[this.f111853e] = new SoftReference(new C19994a(revalidationHandler));
            }
        }
    }

    @Override // org.w3c.dom.DOMImplementation
    public Object getFeature(String str, String str2) {
        CoreDOMImplementationImpl coreDOMImplementationImpl = f111848r;
        if (coreDOMImplementationImpl.hasFeature(str, str2)) {
            if (!str.equalsIgnoreCase("+XPath")) {
                return coreDOMImplementationImpl;
            }
            try {
                Class m69762f = ObjectFactory.m69762f("org.apache.xpath.domapi.XPathEvaluatorImpl", ObjectFactory.m69760d(), true);
                for (Class<?> cls : m69762f.getInterfaces()) {
                    if (cls.getName().equals("org.w3c.dom.xpath.XPathEvaluator")) {
                        return m69762f.newInstance();
                    }
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    @Override // org.w3c.dom.DOMImplementation
    public boolean hasFeature(String str, String str2) {
        boolean z = str2 == null || str2.length() == 0;
        if (str.equalsIgnoreCase("+XPath") && (z || str2.equals(XQueryParser.XQUERY30))) {
            try {
                Class<?>[] interfaces = ObjectFactory.m69762f("org.apache.xpath.domapi.XPathEvaluatorImpl", ObjectFactory.m69760d(), true).getInterfaces();
                for (int i = 0; i < interfaces.length && !interfaces[i].getName().equals("org.w3c.dom.xpath.XPathEvaluator"); i++) {
                }
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        if (str.startsWith("+")) {
            str = str.substring(1);
        }
        if ((!str.equalsIgnoreCase("Core") || (!z && !str2.equals("1.0") && !str2.equals(OAuth20ServiceImpl.f115984c) && !str2.equals(XQueryParser.XQUERY30))) && ((!str.equalsIgnoreCase("XML") || (!z && !str2.equals("1.0") && !str2.equals(OAuth20ServiceImpl.f115984c) && !str2.equals(XQueryParser.XQUERY30))) && ((!str.equalsIgnoreCase("XMLVersion") || (!z && !str2.equals("1.0") && !str2.equals(SerializerConstants.XMLVERSION11))) && (!str.equalsIgnoreCase("LS") || (!z && !str2.equals(XQueryParser.XQUERY30)))))) {
            if (!str.equalsIgnoreCase("ElementTraversal")) {
                return false;
            }
            if (!z && !str2.equals("1.0")) {
                return false;
            }
        }
        return true;
    }

    @Override // org.w3c.dom.DOMImplementation
    public Document createDocument(String str, String str2, DocumentType documentType) throws DOMException {
        if (documentType != null && documentType.getOwnerDocument() != null) {
            throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
        }
        CoreDocumentImpl createDocument = createDocument(documentType);
        if (str2 != null || str != null) {
            createDocument.appendChild(createDocument.createElementNS(str, str2));
        }
        return createDocument;
    }
}
