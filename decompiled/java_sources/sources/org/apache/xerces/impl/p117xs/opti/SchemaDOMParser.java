package org.apache.xerces.impl.p117xs.opti;

import java.io.IOException;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.util.XMLAttributesImpl;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
import org.w3c.dom.Document;

/* loaded from: classes13.dex */
public class SchemaDOMParser extends DefaultXMLDocumentHandler {
    public static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    public static final String GENERATE_SYNTHETIC_ANNOTATION = "http://apache.org/xml/features/generate-synthetic-annotations";
    protected XMLLocator fLocator;

    /* renamed from: h */
    public SchemaDOM f113040h;

    /* renamed from: i */
    public XMLParserConfiguration f113041i;

    /* renamed from: j */
    public ElementImpl f113042j;

    /* renamed from: n */
    public XMLErrorReporter f113046n;
    protected NamespaceContext fNamespaceContext = null;

    /* renamed from: k */
    public int f113043k = -1;

    /* renamed from: l */
    public int f113044l = -1;

    /* renamed from: m */
    public int f113045m = -1;

    /* renamed from: o */
    public boolean f113047o = false;

    /* renamed from: p */
    public C20052a f113048p = new C20052a();

    /* renamed from: q */
    public C20052a f113049q = new C20052a();

    /* renamed from: r */
    public XMLAttributes f113050r = new XMLAttributesImpl();

    /* renamed from: org.apache.xerces.impl.xs.opti.SchemaDOMParser$a */
    /* loaded from: classes13.dex */
    public static final class C20052a {

        /* renamed from: a */
        public int f113051a;

        /* renamed from: b */
        public boolean[] f113052b;

        /* renamed from: a */
        public void m70317a() {
            this.f113051a = 0;
        }

        /* renamed from: b */
        public final void m70318b(int i) {
            boolean[] zArr = this.f113052b;
            if (zArr == null) {
                this.f113052b = new boolean[32];
            } else if (zArr.length <= i) {
                boolean[] zArr2 = new boolean[zArr.length * 2];
                System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
                this.f113052b = zArr2;
            }
        }

        /* renamed from: c */
        public boolean m70319c() {
            boolean[] zArr = this.f113052b;
            int i = this.f113051a - 1;
            this.f113051a = i;
            return zArr[i];
        }

        /* renamed from: d */
        public void m70320d(boolean z) {
            m70318b(this.f113051a + 1);
            boolean[] zArr = this.f113052b;
            int i = this.f113051a;
            this.f113051a = i + 1;
            zArr[i] = z;
        }

        /* renamed from: e */
        public int m70321e() {
            return this.f113051a;
        }
    }

    public SchemaDOMParser(XMLParserConfiguration xMLParserConfiguration) {
        this.f113041i = xMLParserConfiguration;
        xMLParserConfiguration.setDocumentHandler(this);
        xMLParserConfiguration.setDTDHandler(this);
        xMLParserConfiguration.setDTDContentModelHandler(this);
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.f113044l != -1) {
            this.f113040h.m70298a(xMLString);
            return;
        }
        for (int i = xMLString.offset; i < xMLString.offset + xMLString.length; i++) {
            if (!XMLChar.isSpace(xMLString.f113585ch[i])) {
                this.f113046n.reportError(this.fLocator, "http://www.w3.org/TR/xml-schema-1", "s4s-elt-character", new Object[]{new String(xMLString.f113585ch, i, (xMLString.length + xMLString.offset) - i)}, (short) 1);
                return;
            }
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.f113043k > -1) {
            this.f113040h.m70300c(xMLString);
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        String stringBuffer;
        if (this.f113047o && this.f113043k == -1) {
            String str = qName.uri;
            String str2 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            if (str == str2) {
                String str3 = qName.localpart;
                String str4 = SchemaSymbols.ELT_ANNOTATION;
                if (str3 != str4 && m70316o(qName, xMLAttributes)) {
                    this.f113040h.startElement(qName, xMLAttributes, this.fLocator.getLineNumber(), this.fLocator.getColumnNumber(), this.fLocator.getCharacterOffset());
                    xMLAttributes.removeAllAttributes();
                    String prefix = this.fNamespaceContext.getPrefix(str2);
                    if (prefix.length() != 0) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(prefix);
                        stringBuffer2.append(':');
                        stringBuffer2.append(str4);
                        str4 = stringBuffer2.toString();
                    }
                    this.f113040h.m70311p(str4, xMLAttributes, this.fNamespaceContext);
                    if (prefix.length() == 0) {
                        stringBuffer = SchemaSymbols.ELT_DOCUMENTATION;
                    } else {
                        StringBuffer stringBuffer3 = new StringBuffer();
                        stringBuffer3.append(prefix);
                        stringBuffer3.append(':');
                        stringBuffer3.append(SchemaSymbols.ELT_DOCUMENTATION);
                        stringBuffer = stringBuffer3.toString();
                    }
                    this.f113040h.m70314s(stringBuffer, xMLAttributes);
                    this.f113040h.m70299b("SYNTHETIC_ANNOTATION");
                    this.f113040h.m70305h(stringBuffer, false);
                    this.f113040h.m70305h(str4, true);
                    this.f113040h.endElement();
                    return;
                }
            }
        }
        if (this.f113043k != -1) {
            this.f113040h.m70315t(qName, xMLAttributes);
        } else if (qName.uri == SchemaSymbols.URI_SCHEMAFORSCHEMA && qName.localpart == SchemaSymbols.ELT_ANNOTATION) {
            this.f113040h.m70312q(qName, xMLAttributes, this.fNamespaceContext);
        }
        ElementImpl emptyElement = this.f113040h.emptyElement(qName, xMLAttributes, this.fLocator.getLineNumber(), this.fLocator.getColumnNumber(), this.fLocator.getCharacterOffset());
        if (this.f113043k != -1) {
            this.f113040h.m70304g(qName);
        } else if (qName.uri == SchemaSymbols.URI_SCHEMAFORSCHEMA && qName.localpart == SchemaSymbols.ELT_ANNOTATION) {
            this.f113040h.m70301d(qName, emptyElement);
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        if (this.f113043k != -1) {
            this.f113040h.m70302e();
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        String stringBuffer;
        String stringBuffer2;
        int i = this.f113043k;
        if (i > -1) {
            int i2 = this.f113044l;
            int i3 = this.f113045m;
            if (i2 == i3) {
                this.f113044l = -1;
                this.f113040h.m70304g(qName);
            } else if (i != i3) {
                this.f113040h.m70304g(qName);
                this.f113045m--;
            } else {
                this.f113043k = -1;
                this.f113040h.m70301d(qName, this.f113042j);
            }
        } else {
            String str = qName.uri;
            String str2 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            if (str == str2 && this.f113047o) {
                boolean m70319c = this.f113048p.m70319c();
                boolean m70319c2 = this.f113049q.m70319c();
                if (m70319c && !m70319c2) {
                    String prefix = this.fNamespaceContext.getPrefix(str2);
                    if (prefix.length() == 0) {
                        stringBuffer = SchemaSymbols.ELT_ANNOTATION;
                    } else {
                        StringBuffer stringBuffer3 = new StringBuffer();
                        stringBuffer3.append(prefix);
                        stringBuffer3.append(':');
                        stringBuffer3.append(SchemaSymbols.ELT_ANNOTATION);
                        stringBuffer = stringBuffer3.toString();
                    }
                    this.f113040h.m70311p(stringBuffer, this.f113050r, this.fNamespaceContext);
                    if (prefix.length() == 0) {
                        stringBuffer2 = SchemaSymbols.ELT_DOCUMENTATION;
                    } else {
                        StringBuffer stringBuffer4 = new StringBuffer();
                        stringBuffer4.append(prefix);
                        stringBuffer4.append(':');
                        stringBuffer4.append(SchemaSymbols.ELT_DOCUMENTATION);
                        stringBuffer2 = stringBuffer4.toString();
                    }
                    this.f113040h.m70314s(stringBuffer2, this.f113050r);
                    this.f113040h.m70299b("SYNTHETIC_ANNOTATION");
                    this.f113040h.m70305h(stringBuffer2, false);
                    this.f113040h.m70305h(stringBuffer, true);
                }
            }
        }
        this.f113040h.endElement();
        this.f113045m--;
    }

    public Document getDocument() {
        return this.f113040h;
    }

    public boolean getFeature(String str) {
        return this.f113041i.getFeature(str);
    }

    public Object getProperty(String str) {
        return this.f113041i.getProperty(str);
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.f113043k != -1) {
            this.f113040h.m70298a(xMLString);
        }
    }

    /* renamed from: o */
    public final boolean m70316o(QName qName, XMLAttributes xMLAttributes) {
        int length = xMLAttributes.getLength();
        for (int i = 0; i < length; i++) {
            String uri = xMLAttributes.getURI(i);
            if (uri != null && uri != SchemaSymbols.URI_SCHEMAFORSCHEMA && uri != NamespaceContext.XMLNS_URI && (uri != NamespaceContext.XML_URI || xMLAttributes.getQName(i) != SchemaSymbols.ATT_XML_LANG || qName.localpart != SchemaSymbols.ELT_SCHEMA)) {
                return true;
            }
        }
        return false;
    }

    public void parse(XMLInputSource xMLInputSource) throws IOException {
        this.f113041i.parse(xMLInputSource);
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.f113043k > -1) {
            this.f113040h.m70308m(str, xMLString);
        }
    }

    public void reset() {
        ((SchemaParsingConfig) this.f113041i).reset();
    }

    public void resetNodePool() {
        ((SchemaParsingConfig) this.f113041i).resetNodePool();
    }

    public void setEntityResolver(XMLEntityResolver xMLEntityResolver) {
        this.f113041i.setEntityResolver(xMLEntityResolver);
    }

    public void setFeature(String str, boolean z) {
        this.f113041i.setFeature(str, z);
    }

    public void setProperty(String str, Object obj) {
        this.f113041i.setProperty(str, obj);
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        if (this.f113043k != -1) {
            this.f113040h.m70313r();
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        this.f113046n = (XMLErrorReporter) this.f113041i.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.f113047o = this.f113041i.getFeature("http://apache.org/xml/features/generate-synthetic-annotations");
        this.f113048p.m70317a();
        this.f113049q.m70317a();
        SchemaDOM schemaDOM = new SchemaDOM();
        this.f113040h = schemaDOM;
        this.f113042j = null;
        this.f113043k = -1;
        this.f113044l = -1;
        this.f113045m = -1;
        this.fLocator = xMLLocator;
        this.fNamespaceContext = namespaceContext;
        schemaDOM.setDocumentURI(xMLLocator.getExpandedSystemId());
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        int i = this.f113045m + 1;
        this.f113045m = i;
        int i2 = this.f113043k;
        if (i2 == -1) {
            String str = qName.uri;
            String str2 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            if (str == str2 && qName.localpart == SchemaSymbols.ELT_ANNOTATION) {
                if (this.f113047o) {
                    if (this.f113049q.m70321e() > 0) {
                        this.f113049q.m70319c();
                    }
                    this.f113049q.m70320d(true);
                }
                this.f113043k = this.f113045m;
                this.f113040h.m70312q(qName, xMLAttributes, this.fNamespaceContext);
                this.f113042j = this.f113040h.startElement(qName, xMLAttributes, this.fLocator.getLineNumber(), this.fLocator.getColumnNumber(), this.fLocator.getCharacterOffset());
                return;
            }
            if (str == str2 && this.f113047o) {
                this.f113049q.m70320d(false);
                this.f113048p.m70320d(m70316o(qName, xMLAttributes));
            }
        } else if (i != i2 + 1) {
            this.f113040h.m70315t(qName, xMLAttributes);
            return;
        } else {
            this.f113044l = i;
            this.f113040h.m70315t(qName, xMLAttributes);
        }
        this.f113040h.startElement(qName, xMLAttributes, this.fLocator.getLineNumber(), this.fLocator.getColumnNumber(), this.fLocator.getCharacterOffset());
    }
}
