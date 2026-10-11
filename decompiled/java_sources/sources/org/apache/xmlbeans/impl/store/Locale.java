package org.apache.xmlbeans.impl.store;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.xmlbeans.CDataBookmark;
import org.apache.xmlbeans.QNameCache;
import org.apache.xmlbeans.QNameSet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlDocumentProperties;
import org.apache.xmlbeans.XmlError;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlLineNumber;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.XmlRuntimeException;
import org.apache.xmlbeans.XmlSaxHandler;
import org.apache.xmlbeans.XmlTokenSource;
import org.apache.xmlbeans.impl.common.ResolverUtil;
import org.apache.xmlbeans.impl.common.SAXHelper;
import org.apache.xmlbeans.impl.common.XmlLocale;
import org.apache.xmlbeans.impl.store.Cur;
import org.apache.xmlbeans.impl.store.DomImpl;
import org.apache.xmlbeans.impl.store.Locale;
import org.apache.xmlbeans.impl.store.Saaj;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes13.dex */
public final class Locale implements DOMImplementation, Saaj.SaajCallback, XmlLocale {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int ATTR = 3;
    static final int COMMENT = 4;
    static final int ELEM = 2;
    static final int PROCINST = 5;
    static final int ROOT = 1;
    static final int TEXT = 0;
    static final String _xml1998Uri = "http://www.w3.org/XML/1998/namespace";
    static final String _xmlnsUri = "http://www.w3.org/2000/xmlns/";
    static final String _xsi = "http://www.w3.org/2001/XMLSchema-instance";
    int _cchSrc;
    ChangeListener _changeListeners;
    private CharUtil _charUtil;
    Cur _curPool;
    int _curPoolCount;
    private int _entryCount;
    Cur.Locations _locations;
    boolean _noSync;
    int _numTempFramesLeft;
    int _offSrc;
    DomImpl.Dom _ownerDoc;
    int _posTemp;
    QNameFactory _qnameFactory;
    private ReferenceQueue<Ref> _refQueue;
    Cur _registered;
    Saaj _saaj;
    SchemaTypeLoader _schemaTypeLoader;
    Cur[] _tempFrames;
    boolean _validateOnSet;
    long _versionAll;
    long _versionSansText;
    private static final Logger LOG = LogManager.getLogger((Class<?>) Locale.class);
    static final QName _xsiNil = new QName("http://www.w3.org/2001/XMLSchema-instance", "nil", "xsi");
    static final QName _xsiType = new QName("http://www.w3.org/2001/XMLSchema-instance", "type", "xsi");
    static final QName _xsiLoc = new QName("http://www.w3.org/2001/XMLSchema-instance", "schemaLocation", "xsi");
    static final QName _xsiNoLoc = new QName("http://www.w3.org/2001/XMLSchema-instance", "noNamespaceSchemaLocation", "xsi");
    static final String _openFragUri = "http://www.openuri.org/fragment";
    static final QName _openuriFragment = new QName(_openFragUri, "fragment", "frag");
    static final QName _xmlFragment = new QName("xml-fragment");
    private static final ThreadLocal<SoftReference<ScrubBuffer>> tl_scrubBuffer = ThreadLocal.withInitial(new Supplier() { // from class: com.sunia.HTREnginev2.d1j
        @Override // java.util.function.Supplier
        public final Object get() {
            SoftReference lambda$static$7;
            lambda$static$7 = Locale.lambda$static$7();
            return lambda$static$7;
        }
    });
    nthCache _nthCache_A = new nthCache();
    nthCache _nthCache_B = new nthCache();
    domNthCache _domNthCache_A = new domNthCache();
    domNthCache _domNthCache_B = new domNthCache();

    /* loaded from: classes13.dex */
    public interface ChangeListener {
        ChangeListener getNextChangeListener();

        void notifyChange();

        void setNextChangeListener(ChangeListener changeListener);
    }

    /* loaded from: classes13.dex */
    public static class DefaultEntityResolver implements EntityResolver {
        private DefaultEntityResolver() {
        }

        @Override // org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) {
            return new InputSource(new StringReader(""));
        }
    }

    /* loaded from: classes13.dex */
    public static final class DefaultQNameFactory implements QNameFactory {
        private final QNameCache _cache;

        private DefaultQNameFactory() {
            this._cache = XmlBeans.getQNameCache();
        }

        @Override // org.apache.xmlbeans.impl.store.QNameFactory
        public QName getQName(String str, String str2) {
            return this._cache.getName(str, str2, "");
        }

        @Override // org.apache.xmlbeans.impl.store.QNameFactory
        public QName getQName(String str, String str2, String str3) {
            return this._cache.getName(str, str2, str3);
        }

        @Override // org.apache.xmlbeans.impl.store.QNameFactory
        public QName getQName(char[] cArr, int i, int i2, char[] cArr2, int i3, int i4) {
            return this._cache.getName(new String(cArr, i, i2), new String(cArr2, i3, i4), "");
        }

        @Override // org.apache.xmlbeans.impl.store.QNameFactory
        public QName getQName(char[] cArr, int i, int i2, char[] cArr2, int i3, int i4, char[] cArr3, int i5, int i6) {
            return this._cache.getName(new String(cArr, i, i2), new String(cArr2, i3, i4), new String(cArr3, i5, i6));
        }
    }

    /* loaded from: classes13.dex */
    public static class DocProps extends XmlDocumentProperties {
        private final HashMap<Object, Object> _map;

        private DocProps() {
            this._map = new HashMap<>();
        }

        @Override // org.apache.xmlbeans.XmlDocumentProperties
        public Object get(Object obj) {
            return this._map.get(obj);
        }

        @Override // org.apache.xmlbeans.XmlDocumentProperties
        public Object put(Object obj, Object obj2) {
            return this._map.put(obj, obj2);
        }

        @Override // org.apache.xmlbeans.XmlDocumentProperties
        public Object remove(Object obj) {
            return this._map.remove(obj);
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class LoadContext {
        private Hashtable<String, String> _idAttrs;

        public abstract void abort();

        public void addIdAttr(String str, String str2) {
            if (this._idAttrs == null) {
                this._idAttrs = new Hashtable<>();
            }
            this._idAttrs.put(str2, str);
        }

        public abstract void attr(String str, String str2, String str3, String str4);

        public abstract void attr(QName qName, String str);

        public abstract void bookmark(XmlCursor.XmlBookmark xmlBookmark);

        public abstract void bookmarkLastAttr(QName qName, XmlCursor.XmlBookmark xmlBookmark);

        public abstract void bookmarkLastNonAttr(XmlCursor.XmlBookmark xmlBookmark);

        public abstract void comment(String str);

        public abstract void comment(char[] cArr, int i, int i2);

        public abstract void endDTD();

        public abstract void endElement();

        public abstract Cur finish();

        public boolean isAttrOfTypeId(QName qName, QName qName2) {
            if (this._idAttrs == null) {
                return "id".equalsIgnoreCase(qName.getLocalPart());
            }
            String prefix = qName.getPrefix();
            String localPart = qName.getLocalPart();
            if (!"".equals(prefix)) {
                localPart = prefix + ":" + localPart;
            }
            String str = this._idAttrs.get(localPart);
            if (str == null) {
                return false;
            }
            String prefix2 = qName2.getPrefix();
            String localPart2 = qName2.getLocalPart();
            if (!"".equals(prefix2)) {
                localPart2 = prefix2 + ":" + localPart2;
            }
            return str.equals(localPart2);
        }

        public abstract void lineNumber(int i, int i2, int i3);

        public abstract void procInst(String str, String str2);

        public abstract void startDTD(String str, String str2, String str3);

        public abstract void startElement(QName qName);

        public abstract void text(String str);

        public abstract void text(char[] cArr, int i, int i2);

        public abstract void xmlns(String str, String str2);
    }

    /* loaded from: classes13.dex */
    public static final class Ref extends PhantomReference {
        Cur _cur;

        public Ref(Cur cur, Object obj) {
            super(obj, cur._locale.refQueue());
            this._cur = cur;
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class SaxHandler implements ContentHandler, LexicalHandler, DeclHandler, DTDHandler {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        protected LoadContext _context;
        protected Locale _locale;
        private Locator _startLocator;
        private boolean _wantCdataBookmarks;
        private boolean _wantLineNumbers;
        private boolean _wantLineNumbersAtEndElt;
        private boolean _insideCDATA = false;
        private int _entityBytesLimit = 10240;
        private int _entityBytes = 0;
        private int _insideEntity = 0;
        private Map<String, String> delayedPrefixMappings = new LinkedHashMap();

        public SaxHandler(Locator locator) {
            this._startLocator = locator;
        }

        @Override // org.xml.sax.ext.DeclHandler
        public void attributeDecl(String str, String str2, String str3, String str4, String str5) {
            if (str3.equals("ID")) {
                this._context.addIdAttr(str, str2);
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) throws SAXException {
            this._context.text(cArr, i, i2);
            if (this._wantCdataBookmarks && this._insideCDATA && this._startLocator != null) {
                this._context.bookmarkLastNonAttr(CDataBookmark.CDATA_BOOKMARK);
            }
            if (this._insideEntity != 0) {
                int i3 = this._entityBytes + i2;
                this._entityBytes = i3;
                int i4 = this._entityBytesLimit;
                if (i3 > i4) {
                    throw new SAXException(XmlError.forMessage(XmlErrorCodes.EXCEPTION_EXCEEDED_ENTITY_BYTES, new Integer[]{Integer.valueOf(i4)}).getMessage());
                }
            }
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void comment(char[] cArr, int i, int i2) throws SAXException {
            this._context.comment(cArr, i, i2);
        }

        @Override // org.xml.sax.ext.DeclHandler
        public void elementDecl(String str, String str2) {
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void endCDATA() {
            this._insideCDATA = false;
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void endDTD() {
            this._context.endDTD();
        }

        @Override // org.xml.sax.ContentHandler
        public void endDocument() throws SAXException {
        }

        @Override // org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            Locator locator;
            this._context.endElement();
            if (!this._wantLineNumbersAtEndElt || (locator = this._startLocator) == null) {
                return;
            }
            this._context.bookmark(new XmlLineNumber(locator.getLineNumber(), this._startLocator.getColumnNumber() - 1, -1));
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void endEntity(String str) throws SAXException {
            int i = this._insideEntity - 1;
            this._insideEntity = i;
            if (i == 0) {
                this._entityBytes = 0;
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void endPrefixMapping(String str) throws SAXException {
        }

        @Override // org.xml.sax.ext.DeclHandler
        public void externalEntityDecl(String str, String str2, String str3) {
        }

        @Override // org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) {
        }

        public void initSaxHandler(Locale locale, XmlOptions xmlOptions) {
            this._locale = locale;
            XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
            this._context = new Cur.CurLoadContext(this._locale, maskNull);
            this._wantLineNumbers = maskNull.isLoadLineNumbers();
            this._wantLineNumbersAtEndElt = maskNull.isLoadLineNumbersEndElement();
            this._wantCdataBookmarks = maskNull.isUseCDataBookmarks();
            Integer loadEntityBytesLimit = maskNull.getLoadEntityBytesLimit();
            if (loadEntityBytesLimit != null) {
                this._entityBytesLimit = loadEntityBytesLimit.intValue();
            }
        }

        @Override // org.xml.sax.ext.DeclHandler
        public void internalEntityDecl(String str, String str2) {
        }

        @Override // org.xml.sax.DTDHandler
        public void notationDecl(String str, String str2, String str3) {
        }

        @Override // org.xml.sax.ContentHandler
        public void processingInstruction(String str, String str2) throws SAXException {
            this._context.procInst(str, str2);
        }

        @Override // org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
            if (this._startLocator == null) {
                this._startLocator = locator;
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void skippedEntity(String str) {
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void startCDATA() {
            this._insideCDATA = true;
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void startDTD(String str, String str2, String str3) throws SAXException {
            this._context.startDTD(str, str2, str3);
        }

        @Override // org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
        }

        @Override // org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            Locator locator;
            if (str3.indexOf(58) >= 0 && str.length() == 0) {
                XmlError forMessage = XmlError.forMessage("Use of undefined namespace prefix: " + str3.substring(0, str3.indexOf(58)));
                throw new XmlRuntimeException(forMessage.toString(), (Throwable) null, forMessage);
            }
            this._context.startElement(this._locale.makeQualifiedQName(str, str3));
            if (this._wantLineNumbers && (locator = this._startLocator) != null) {
                this._context.bookmark(new XmlLineNumber(locator.getLineNumber(), this._startLocator.getColumnNumber() - 1, -1));
            }
            for (Map.Entry<String, String> entry : this.delayedPrefixMappings.entrySet()) {
                this._context.xmlns(entry.getKey(), entry.getValue());
            }
            this.delayedPrefixMappings.clear();
            int length = attributes.getLength();
            for (int i = 0; i < length; i++) {
                String qName = attributes.getQName(i);
                int indexOf = qName.indexOf(58);
                if (indexOf < 0) {
                    this._context.attr(qName, attributes.getURI(i), null, attributes.getValue(i));
                } else {
                    this._context.attr(qName.substring(indexOf + 1), attributes.getURI(i), qName.substring(0, indexOf), attributes.getValue(i));
                }
            }
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void startEntity(String str) throws SAXException {
            this._insideEntity++;
        }

        @Override // org.xml.sax.ContentHandler
        public void startPrefixMapping(String str, String str2) throws SAXException {
            if (!Locale.beginsWithXml(str) || ("xml".equals(str) && "http://www.w3.org/XML/1998/namespace".equals(str2))) {
                this.delayedPrefixMappings.put(str, str2);
                return;
            }
            XmlError forMessage = XmlError.forMessage("Prefix can't begin with XML: " + str, 0);
            throw new XmlRuntimeException(forMessage.toString(), (Throwable) null, forMessage);
        }

        @Override // org.xml.sax.DTDHandler
        public void unparsedEntityDecl(String str, String str2, String str3, String str4) {
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class SaxLoader extends SaxHandler implements ErrorHandler {
        private final XMLReader _xr;

        public SaxLoader(XMLReader xMLReader, Locator locator) {
            super(locator);
            this._xr = xMLReader;
            try {
                xMLReader.setFeature("http://xml.org/sax/features/namespaces", true);
                xMLReader.setFeature("http://xml.org/sax/features/validation", false);
                xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", this);
                xMLReader.setContentHandler(this);
                xMLReader.setDTDHandler(this);
                xMLReader.setErrorHandler(this);
                try {
                    xMLReader.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                } catch (Throwable th) {
                    Locale.LOG.atWarn().withThrowable(th).log("Secure Processing Feature is not supported");
                }
                try {
                    this._xr.setProperty("http://xml.org/sax/properties/declaration-handler", this);
                } catch (Throwable th2) {
                    Locale.LOG.atWarn().withThrowable(th2).log("SAX Declaration Handler is not supported");
                }
            } catch (Throwable th3) {
                throw new RuntimeException(th3.getMessage(), th3);
            }
        }

        @Override // org.xml.sax.ErrorHandler
        public void error(SAXParseException sAXParseException) throws SAXException {
            throw sAXParseException;
        }

        @Override // org.xml.sax.ErrorHandler
        public void fatalError(SAXParseException sAXParseException) throws SAXException {
            throw sAXParseException;
        }

        public Cur load(Locale locale, InputSource inputSource, XmlOptions xmlOptions) throws XmlException, IOException {
            inputSource.setSystemId("file://");
            initSaxHandler(locale, xmlOptions);
            try {
                this._xr.parse(inputSource);
                Cur finish = this._context.finish();
                Locale.associateSourceName(finish, xmlOptions);
                postLoad(finish);
                return finish;
            } catch (XmlRuntimeException e) {
                this._context.abort();
                throw new XmlException(e);
            } catch (RuntimeException e2) {
                this._context.abort();
                throw e2;
            } catch (SAXParseException e3) {
                this._context.abort();
                XmlError forLocation = XmlError.forLocation(e3.getMessage(), xmlOptions == null ? null : xmlOptions.getDocumentSourceName(), e3.getLineNumber(), e3.getColumnNumber(), -1);
                throw new XmlException(forLocation.toString(), e3, forLocation);
            } catch (SAXException e4) {
                this._context.abort();
                XmlError forMessage = XmlError.forMessage(e4.getMessage());
                throw new XmlException(forMessage.toString(), e4, forMessage);
            }
        }

        public void postLoad(Cur cur) {
            this._locale = null;
            this._context = null;
        }

        @Override // org.xml.sax.ErrorHandler
        public void warning(SAXParseException sAXParseException) throws SAXException {
            throw sAXParseException;
        }
    }

    /* loaded from: classes13.dex */
    public static final class ScrubBuffer {
        private static final int NOSPACE_STATE = 2;
        private static final int SPACE_SEEN_STATE = 1;
        private static final int START_STATE = 0;
        private int _state;
        private int _wsr;
        private char[] _srcBuf = new char[1024];
        private final StringBuffer _sb = new StringBuffer();

        public String getResultAsString() {
            return this._sb.toString();
        }

        public void init(int i) {
            StringBuffer stringBuffer = this._sb;
            stringBuffer.delete(0, stringBuffer.length());
            this._wsr = i;
            this._state = 0;
        }

        public void scrub(Object obj, int i, int i2) {
            char[] cArr;
            if (i2 == 0) {
                return;
            }
            if (this._wsr == 1) {
                CharUtil.getString(this._sb, obj, i, i2);
                return;
            }
            if (obj instanceof char[]) {
                cArr = (char[]) obj;
            } else {
                char[] cArr2 = this._srcBuf;
                if (i2 > cArr2.length) {
                    if (i2 <= 16384) {
                        cArr2 = new char[16384];
                        this._srcBuf = cArr2;
                    } else {
                        cArr2 = new char[i2];
                    }
                }
                CharUtil.getChars(cArr2, 0, obj, i, i2);
                cArr = cArr2;
                i = 0;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                char c = cArr[i + i4];
                if (c == ' ' || c == '\n' || c == '\r' || c == '\t') {
                    this._sb.append(cArr, i + i3, i4 - i3);
                    i3 = i4 + 1;
                    if (this._wsr == 2) {
                        this._sb.append(' ');
                    } else if (this._state == 2) {
                        this._state = 1;
                    }
                } else {
                    if (this._state == 1) {
                        this._sb.append(' ');
                    }
                    this._state = 2;
                }
            }
            this._sb.append(cArr, i + i3, i2 - i3);
        }
    }

    /* loaded from: classes13.dex */
    public interface SyncWrapFun<T> {
        T parse(Locale locale) throws XmlException, IOException;
    }

    /* loaded from: classes13.dex */
    public static class XmlReaderSaxLoader extends SaxLoader {
        public XmlReaderSaxLoader(XMLReader xMLReader) {
            super(xMLReader, null);
        }
    }

    /* loaded from: classes13.dex */
    public static class XmlSaxHandlerImpl extends SaxHandler implements XmlSaxHandler {
        private final XmlOptions _options;
        private final SchemaType _type;

        public XmlSaxHandlerImpl(Locale locale, SchemaType schemaType, XmlOptions xmlOptions) {
            super(null);
            this._options = xmlOptions;
            this._type = schemaType;
            XmlOptions xmlOptions2 = new XmlOptions(xmlOptions);
            xmlOptions2.setLoadUseLocaleCharUtil(true);
            initSaxHandler(locale, xmlOptions2);
        }

        @Override // org.apache.xmlbeans.XmlSaxHandler
        public void bookmarkLastAttr(QName qName, XmlCursor.XmlBookmark xmlBookmark) {
            this._context.bookmarkLastAttr(qName, xmlBookmark);
        }

        @Override // org.apache.xmlbeans.XmlSaxHandler
        public void bookmarkLastEvent(XmlCursor.XmlBookmark xmlBookmark) {
            this._context.bookmarkLastNonAttr(xmlBookmark);
        }

        @Override // org.apache.xmlbeans.XmlSaxHandler
        public ContentHandler getContentHandler() {
            if (this._context == null) {
                return null;
            }
            return this;
        }

        @Override // org.apache.xmlbeans.XmlSaxHandler
        public LexicalHandler getLexicalHandler() {
            if (this._context == null) {
                return null;
            }
            return this;
        }

        @Override // org.apache.xmlbeans.XmlSaxHandler
        public XmlObject getObject() throws XmlException {
            if (this._context == null) {
                return null;
            }
            this._locale.enter();
            try {
                Cur finish = this._context.finish();
                Locale.autoTypeDocument(finish, this._type, this._options);
                XmlObject xmlObject = (XmlObject) finish.getUser();
                finish.release();
                this._context = null;
                return xmlObject;
            } finally {
                this._locale.exit();
            }
        }
    }

    /* loaded from: classes13.dex */
    public class domNthCache {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public static final int BLITZ_BOUNDARY = 40;
        private DomImpl.Dom _child;
        private int _len;

        /* renamed from: _n */
        private int f113758_n;
        private DomImpl.Dom _parent;
        private long _version;

        public domNthCache() {
        }

        public int distance(DomImpl.Dom dom, int i) {
            if (this._version != Locale.this.version()) {
                return 2147483646;
            }
            if (dom != this._parent) {
                return Integer.MAX_VALUE;
            }
            int i2 = this.f113758_n;
            return i > i2 ? i - i2 : i2 - i;
        }

        public DomImpl.Dom fetch(DomImpl.Dom dom, int i) {
            if (this._version != Locale.this.version() || this._parent != dom) {
                this._parent = dom;
                this._version = Locale.this.version();
                this._child = null;
                this.f113758_n = -1;
                this._len = -1;
                Node firstChild = DomImpl.firstChild(this._parent);
                while (true) {
                    DomImpl.Dom dom2 = (DomImpl.Dom) firstChild;
                    if (dom2 == null) {
                        break;
                    }
                    int i2 = this.f113758_n + 1;
                    this.f113758_n = i2;
                    if (this._child == null && i == i2) {
                        this._child = dom2;
                        break;
                    }
                    firstChild = DomImpl.nextSibling(dom2);
                }
                return this._child;
            }
            int i3 = this.f113758_n;
            if (i3 < 0) {
                return null;
            }
            if (i > i3) {
                while (i > this.f113758_n) {
                    DomImpl.Dom dom3 = (DomImpl.Dom) DomImpl.nextSibling(this._child);
                    if (dom3 == null) {
                        return null;
                    }
                    this._child = dom3;
                    this.f113758_n++;
                }
            } else if (i < i3) {
                while (i < this.f113758_n) {
                    DomImpl.Dom dom4 = (DomImpl.Dom) DomImpl.prevSibling(this._child);
                    if (dom4 == null) {
                        return null;
                    }
                    this._child = dom4;
                    this.f113758_n--;
                }
            }
            return this._child;
        }

        public int length(DomImpl.Dom dom) {
            int i;
            if (this._version != Locale.this.version() || this._parent != dom) {
                this._parent = dom;
                this._version = Locale.this.version();
                this._child = null;
                this.f113758_n = -1;
                this._len = -1;
            }
            if (this._len == -1) {
                DomImpl.Dom dom2 = this._child;
                if (dom2 == null || (i = this.f113758_n) == -1) {
                    dom2 = (DomImpl.Dom) DomImpl.firstChild(this._parent);
                    this._len = 0;
                    this._child = dom2;
                    this.f113758_n = 0;
                } else {
                    this._len = i;
                }
                while (dom2 != null) {
                    this._len++;
                    dom2 = (DomImpl.Dom) DomImpl.nextSibling(dom2);
                }
            }
            return this._len;
        }
    }

    /* loaded from: classes13.dex */
    public class nthCache {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private Xobj _child;

        /* renamed from: _n */
        private int f113759_n;
        private QName _name;
        private Xobj _parent;
        private QNameSet _set;
        private long _version;

        public nthCache() {
        }

        private boolean cacheSame(QName qName, QNameSet qNameSet) {
            return qNameSet == null ? namesSame(qName, this._name) : setsSame(qNameSet, this._set);
        }

        private boolean nameHit(QName qName, QNameSet qNameSet, QName qName2) {
            return qNameSet == null ? namesSame(qName, qName2) : qNameSet.contains(qName2);
        }

        private boolean namesSame(QName qName, QName qName2) {
            return qName == null || qName.equals(qName2);
        }

        private boolean setsSame(QNameSet qNameSet, QNameSet qNameSet2) {
            return qNameSet != null && qNameSet == qNameSet2;
        }

        public int distance(Xobj xobj, QName qName, QNameSet qNameSet, int i) {
            if (this._version != Locale.this.version()) {
                return 2147483646;
            }
            if (xobj != this._parent || !cacheSame(qName, qNameSet)) {
                return Integer.MAX_VALUE;
            }
            int i2 = this.f113759_n;
            return i > i2 ? i - i2 : i2 - i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
        
            r4._child = r5;
            r4.f113759_n++;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0089, code lost:
        
            r4._child = r5;
            r4.f113759_n--;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public org.apache.xmlbeans.impl.store.Xobj fetch(org.apache.xmlbeans.impl.store.Xobj r5, javax.xml.namespace.QName r6, org.apache.xmlbeans.QNameSet r7, int r8) {
            /*
                r4 = this;
                long r0 = r4._version
                org.apache.xmlbeans.impl.store.Locale r2 = org.apache.xmlbeans.impl.store.Locale.this
                long r2 = r2.version()
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                r1 = 0
                if (r0 != 0) goto L19
                org.apache.xmlbeans.impl.store.Xobj r0 = r4._parent
                if (r0 != r5) goto L19
                boolean r0 = r4.cacheSame(r6, r7)
                if (r0 == 0) goto L19
                if (r8 != 0) goto L45
            L19:
                org.apache.xmlbeans.impl.store.Locale r0 = org.apache.xmlbeans.impl.store.Locale.this
                long r2 = r0.version()
                r4._version = r2
                r4._parent = r5
                r4._name = r6
                r4._child = r1
                r0 = -1
                r4.f113759_n = r0
                org.apache.xmlbeans.impl.store.Xobj r5 = r5._firstChild
            L2c:
                if (r5 == 0) goto L45
                boolean r0 = r5.isElem()
                if (r0 == 0) goto L42
                javax.xml.namespace.QName r0 = r5._name
                boolean r0 = r4.nameHit(r6, r7, r0)
                if (r0 == 0) goto L42
                r4._child = r5
                r5 = 0
                r4.f113759_n = r5
                goto L45
            L42:
                org.apache.xmlbeans.impl.store.Xobj r5 = r5._nextSibling
                goto L2c
            L45:
                int r5 = r4.f113759_n
                if (r5 >= 0) goto L4a
                return r1
            L4a:
                if (r8 <= r5) goto L6e
            L4c:
                int r5 = r4.f113759_n
                if (r8 <= r5) goto L92
                org.apache.xmlbeans.impl.store.Xobj r5 = r4._child
            L52:
                org.apache.xmlbeans.impl.store.Xobj r5 = r5._nextSibling
                if (r5 != 0) goto L57
                return r1
            L57:
                boolean r0 = r5.isElem()
                if (r0 == 0) goto L52
                javax.xml.namespace.QName r0 = r5._name
                boolean r0 = r4.nameHit(r6, r7, r0)
                if (r0 == 0) goto L52
                r4._child = r5
                int r5 = r4.f113759_n
                int r5 = r5 + 1
                r4.f113759_n = r5
                goto L4c
            L6e:
                if (r8 >= r5) goto L92
            L70:
                int r5 = r4.f113759_n
                if (r8 >= r5) goto L92
                org.apache.xmlbeans.impl.store.Xobj r5 = r4._child
            L76:
                org.apache.xmlbeans.impl.store.Xobj r5 = r5._prevSibling
                if (r5 != 0) goto L7b
                return r1
            L7b:
                boolean r0 = r5.isElem()
                if (r0 == 0) goto L76
                javax.xml.namespace.QName r0 = r5._name
                boolean r0 = r4.nameHit(r6, r7, r0)
                if (r0 == 0) goto L76
                r4._child = r5
                int r5 = r4.f113759_n
                int r5 = r5 + (-1)
                r4.f113759_n = r5
                goto L70
            L92:
                org.apache.xmlbeans.impl.store.Xobj r4 = r4._child
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Locale.nthCache.fetch(org.apache.xmlbeans.impl.store.Xobj, javax.xml.namespace.QName, org.apache.xmlbeans.QNameSet, int):org.apache.xmlbeans.impl.store.Xobj");
        }
    }

    private Locale(SchemaTypeLoader schemaTypeLoader, XmlOptions xmlOptions) {
        XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
        this._noSync = maskNull.isUnsynchronized();
        this._numTempFramesLeft = 8;
        this._tempFrames = new Cur[8];
        this._qnameFactory = new DefaultQNameFactory();
        this._locations = new Cur.Locations(this);
        this._schemaTypeLoader = schemaTypeLoader;
        this._validateOnSet = maskNull.isValidateOnSet();
        Saaj saaj = maskNull.getSaaj();
        this._saaj = saaj;
        if (saaj != null) {
            saaj.setCallback(this);
        }
    }

    private static void addNamespace(StringBuilder sb, QName qName) {
        if (qName.getNamespaceURI() == null) {
            sb.append("<no namespace>");
            return;
        }
        sb.append("\"");
        sb.append(qName.getNamespaceURI());
        sb.append("\"");
    }

    public static void applyNamespaces(Cur cur, Map<String, String> map) {
        for (String str : map.keySet()) {
            if (!str.toLowerCase(java.util.Locale.ROOT).startsWith("xml") && cur.namespaceForPrefix(str, false) == null) {
                cur.push();
                cur.next();
                cur.createAttr(cur._locale.createXmlns(str));
                cur.next();
                cur.insertString(map.get(str));
                cur.pop();
            }
        }
    }

    public static String applyWhiteSpaceRule(String str, int i) {
        int i2 = 0;
        int length = str == null ? 0 : str.length();
        if (length == 0) {
            return str;
        }
        int i3 = 1;
        if (i == 1) {
            return str;
        }
        if (i == 2) {
            while (i2 < length) {
                char charAt = str.charAt(i2);
                if (charAt == '\n' || charAt == '\r' || charAt == '\t') {
                    return processWhiteSpaceRule(str, i);
                }
                i2++;
            }
            return str;
        }
        if (i != 3) {
            return str;
        }
        if (CharUtil.isWhiteSpace(str.charAt(0)) || CharUtil.isWhiteSpace(str.charAt(length - 1))) {
            return processWhiteSpaceRule(str, i);
        }
        while (i3 < length) {
            boolean isWhiteSpace = CharUtil.isWhiteSpace(str.charAt(i3));
            if (isWhiteSpace && i2 != 0) {
                return processWhiteSpaceRule(str, i);
            }
            i3++;
            i2 = isWhiteSpace ? 1 : 0;
        }
        return str;
    }

    public static void associateSourceName(Cur cur, XmlOptions xmlOptions) {
        String documentSourceName = xmlOptions == null ? null : xmlOptions.getDocumentSourceName();
        if (documentSourceName != null) {
            getDocProps(cur, true).setSourceName(documentSourceName);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x002d, code lost:
    
        if (r5.isAssignableFrom(r0) == false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void autoTypeDocument(org.apache.xmlbeans.impl.store.Cur r4, org.apache.xmlbeans.SchemaType r5, org.apache.xmlbeans.XmlOptions r6) throws org.apache.xmlbeans.XmlException {
        /*
            org.apache.xmlbeans.XmlOptions r6 = org.apache.xmlbeans.XmlOptions.maskNull(r6)
            org.apache.xmlbeans.SchemaType r6 = r6.getDocumentType()
            if (r6 == 0) goto Le
            r4.setType(r6)
            return
        Le:
            r6 = 0
            if (r5 == 0) goto L17
            javax.xml.namespace.QName r0 = r5.getName()
            if (r0 == 0) goto L30
        L17:
            javax.xml.namespace.QName r0 = r4.getXsiTypeName()
            if (r0 != 0) goto L1f
            r0 = r6
            goto L27
        L1f:
            org.apache.xmlbeans.impl.store.Locale r1 = r4._locale
            org.apache.xmlbeans.SchemaTypeLoader r1 = r1._schemaTypeLoader
            org.apache.xmlbeans.SchemaType r0 = r1.findType(r0)
        L27:
            if (r5 == 0) goto L31
            boolean r1 = r5.isAssignableFrom(r0)
            if (r1 == 0) goto L30
            goto L31
        L30:
            r0 = r6
        L31:
            if (r0 != 0) goto La4
            if (r5 == 0) goto L3b
            boolean r1 = r5.isDocumentType()
            if (r1 == 0) goto La4
        L3b:
            r4.push()
            boolean r1 = r4.hasAttrs()
            if (r1 != 0) goto L55
            boolean r1 = toFirstChildElement(r4)
            if (r1 == 0) goto L55
            boolean r1 = toNextSiblingElement(r4)
            if (r1 != 0) goto L55
            javax.xml.namespace.QName r1 = r4.getName()
            goto L56
        L55:
            r1 = r6
        L56:
            r4.pop()
            if (r1 == 0) goto La4
            org.apache.xmlbeans.impl.store.Locale r0 = r4._locale
            org.apache.xmlbeans.SchemaTypeLoader r0 = r0._schemaTypeLoader
            org.apache.xmlbeans.SchemaType r0 = r0.findDocumentType(r1)
            if (r0 == 0) goto La4
            if (r5 == 0) goto La4
            javax.xml.namespace.QName r2 = r5.getDocumentElementName()
            boolean r3 = r2.equals(r1)
            if (r3 != 0) goto La4
            boolean r3 = r5.isValidSubstitution(r1)
            if (r3 == 0) goto L78
            goto La4
        L78:
            org.apache.xmlbeans.XmlException r4 = new org.apache.xmlbeans.XmlException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Element "
            r5.append(r6)
            java.lang.String r6 = org.apache.xmlbeans.impl.common.QNameHelper.pretty(r1)
            r5.append(r6)
            java.lang.String r6 = " is not a valid "
            r5.append(r6)
            java.lang.String r6 = org.apache.xmlbeans.impl.common.QNameHelper.pretty(r2)
            r5.append(r6)
            java.lang.String r6 = " document or a valid substitution."
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        La4:
            if (r0 != 0) goto Lc7
            if (r5 != 0) goto Lc7
            r4.push()
            boolean r0 = toFirstNormalAttr(r4)
            if (r0 == 0) goto Lc3
            boolean r0 = toNextNormalAttr(r4)
            if (r0 != 0) goto Lc3
            org.apache.xmlbeans.impl.store.Locale r6 = r4._locale
            org.apache.xmlbeans.SchemaTypeLoader r6 = r6._schemaTypeLoader
            javax.xml.namespace.QName r0 = r4.getName()
            org.apache.xmlbeans.SchemaType r6 = r6.findAttributeType(r0)
        Lc3:
            r4.pop()
            r0 = r6
        Lc7:
            if (r0 != 0) goto Lca
            r0 = r5
        Lca:
            if (r0 != 0) goto Lce
            org.apache.xmlbeans.SchemaType r0 = org.apache.xmlbeans.XmlBeans.NO_TYPE
        Lce:
            r4.setType(r0)
            if (r5 == 0) goto Lee
            boolean r5 = r0.isDocumentType()
            if (r5 == 0) goto Le1
            javax.xml.namespace.QName r5 = r0.getDocumentElementName()
            verifyDocumentType(r4, r5)
            goto Lee
        Le1:
            boolean r5 = r0.isAttributeType()
            if (r5 == 0) goto Lee
            javax.xml.namespace.QName r5 = r0.getAttributeTypeAttributeName()
            verifyAttributeType(r4, r5)
        Lee:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Locale.autoTypeDocument(org.apache.xmlbeans.impl.store.Cur, org.apache.xmlbeans.SchemaType, org.apache.xmlbeans.XmlOptions):void");
    }

    public static boolean beginsWithXml(String str) {
        if (str.length() < 3) {
            return false;
        }
        char charAt = str.charAt(0);
        if (charAt != 'x' && charAt != 'X') {
            return false;
        }
        char charAt2 = str.charAt(1);
        if (charAt2 != 'm' && charAt2 != 'M') {
            return false;
        }
        char charAt3 = str.charAt(2);
        return charAt3 == 'l' || charAt3 == 'L';
    }

    private static DomImpl.Dom checkNode(Node node) {
        if (node == null) {
            throw new IllegalArgumentException("Node is null");
        }
        if (node instanceof DomImpl.Dom) {
            return (DomImpl.Dom) node;
        }
        throw new IllegalArgumentException("Node is not an XmlBeans node");
    }

    public static void clearThreadLocals() {
        tl_scrubBuffer.remove();
    }

    private void doAttributes(XMLStreamReader xMLStreamReader, LoadContext loadContext) {
        int attributeCount = xMLStreamReader.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            loadContext.attr(xMLStreamReader.getAttributeLocalName(i), xMLStreamReader.getAttributeNamespace(i), xMLStreamReader.getAttributePrefix(i), xMLStreamReader.getAttributeValue(i));
        }
    }

    private void doNamespaces(XMLStreamReader xMLStreamReader, LoadContext loadContext) {
        int namespaceCount = xMLStreamReader.getNamespaceCount();
        for (int i = 0; i < namespaceCount; i++) {
            String namespacePrefix = xMLStreamReader.getNamespacePrefix(i);
            if (namespacePrefix == null || namespacePrefix.length() == 0) {
                loadContext.attr("xmlns", "http://www.w3.org/2000/xmlns/", null, xMLStreamReader.getNamespaceURI(i));
            } else {
                loadContext.attr(namespacePrefix, "http://www.w3.org/2000/xmlns/", "xmlns", xMLStreamReader.getNamespaceURI(i));
            }
        }
    }

    public static Map<String, String> getAllNamespaces(Cur cur, Map<String, String> map) {
        cur.push();
        if (!cur.isContainer()) {
            cur.toParent();
        }
        while (true) {
            if (!cur.toNextAttr()) {
                if (!cur.isContainer()) {
                    cur.toParentRaw();
                }
                if (!cur.toParentRaw()) {
                    cur.pop();
                    return map;
                }
            } else if (cur.isXmlns()) {
                String xmlnsPrefix = cur.getXmlnsPrefix();
                String xmlnsUri = cur.getXmlnsUri();
                if (map == null) {
                    map = new HashMap<>();
                }
                if (!map.containsKey(xmlnsPrefix)) {
                    map.put(xmlnsPrefix, xmlnsUri);
                }
            }
        }
    }

    public static XmlDocumentProperties getDocProps(Cur cur, boolean z) {
        cur.push();
        do {
        } while (cur.toParent());
        DocProps docProps = (DocProps) cur.getBookmark(DocProps.class);
        if (docProps == null && z) {
            docProps = new DocProps();
            cur.setBookmark(DocProps.class, docProps);
        }
        cur.pop();
        return docProps;
    }

    public static Locale getLocale(SchemaTypeLoader schemaTypeLoader, XmlOptions xmlOptions) {
        Locale locale;
        if (schemaTypeLoader == null) {
            schemaTypeLoader = XmlBeans.getContextTypeLoader();
        }
        XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
        Object useSameLocale = maskNull.getUseSameLocale();
        if (useSameLocale == null) {
            return new Locale(schemaTypeLoader, maskNull);
        }
        if (useSameLocale instanceof Locale) {
            locale = (Locale) useSameLocale;
        } else {
            if (!(useSameLocale instanceof XmlTokenSource)) {
                throw new IllegalArgumentException("Source locale not understood: " + useSameLocale);
            }
            locale = (Locale) ((XmlTokenSource) useSameLocale).monitor();
        }
        if (locale._schemaTypeLoader != schemaTypeLoader) {
            throw new IllegalArgumentException("Source locale does not support same schema type loader");
        }
        Saaj saaj = locale._saaj;
        if (saaj != null && saaj != maskNull.getSaaj()) {
            throw new IllegalArgumentException("Source locale does not support same saaj");
        }
        if (!locale._validateOnSet || maskNull.isValidateOnSet()) {
            return locale;
        }
        throw new IllegalArgumentException("Source locale does not support same validate on set");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static SaxLoader getSaxLoader(XmlOptions xmlOptions) throws XmlException {
        XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
        EntityResolver entityResolver = null;
        Object[] objArr = 0;
        if (!maskNull.isLoadUseDefaultResolver()) {
            EntityResolver entityResolver2 = maskNull.getEntityResolver();
            if (entityResolver2 == null) {
                entityResolver2 = ResolverUtil.getGlobalEntityResolver();
            }
            if (entityResolver2 == null) {
                entityResolver2 = new DefaultEntityResolver();
            }
            entityResolver = entityResolver2;
        }
        XMLReader loadUseXMLReader = maskNull.getLoadUseXMLReader();
        if (loadUseXMLReader == null) {
            try {
                loadUseXMLReader = SAXHelper.newXMLReader(new XmlOptions(maskNull));
            } catch (Exception e) {
                throw new XmlException("Problem creating XMLReader", e);
            }
        }
        XmlReaderSaxLoader xmlReaderSaxLoader = new XmlReaderSaxLoader(loadUseXMLReader);
        if (entityResolver != null) {
            loadUseXMLReader.setEntityResolver(entityResolver);
        }
        return xmlReaderSaxLoader;
    }

    public static ScrubBuffer getScrubBuffer(int i) {
        ThreadLocal<SoftReference<ScrubBuffer>> threadLocal = tl_scrubBuffer;
        ScrubBuffer scrubBuffer = threadLocal.get().get();
        if (scrubBuffer == null) {
            scrubBuffer = new ScrubBuffer();
            threadLocal.set(new SoftReference<>(scrubBuffer));
        }
        scrubBuffer.init(i);
        return scrubBuffer;
    }

    public static String getTextValue(Cur cur) {
        if (!cur.hasChildren()) {
            return cur.getValueAsString();
        }
        StringBuffer stringBuffer = new StringBuffer();
        cur.push();
        while (true) {
            cur.next();
            if (!cur.isAtEndOfLastPush()) {
                if (cur.isText() && ((!cur._xobj.isComment() && !cur._xobj.isProcinst()) || cur._pos >= cur._xobj._cchValue)) {
                    CharUtil.getString(stringBuffer, cur.getChars(-1), cur._offSrc, cur._cchSrc);
                }
            } else {
                cur.pop();
                return stringBuffer.toString();
            }
        }
    }

    public static boolean isFragment(Cur cur, Cur cur2) {
        boolean z;
        int kind;
        cur.push();
        cur2.push();
        int i = 0;
        while (!cur.isSamePos(cur2) && (kind = cur.kind()) != 3) {
            if ((kind == 0 && !isWhiteSpace(cur.getCharsAsString())) || (kind == 2 && (i = i + 1) > 1)) {
                z = true;
                break;
            }
            if (kind != 0) {
                cur.toEnd();
            }
            cur.next();
        }
        z = false;
        cur.pop();
        cur2.pop();
        return z || i != 1;
    }

    public static boolean isFragmentQName(QName qName) {
        return qName.equals(_openuriFragment) || qName.equals(_xmlFragment);
    }

    public static boolean isWhiteSpace(String str) {
        int length = str.length();
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!CharUtil.isWhiteSpace(str.charAt(i))) {
                return false;
            }
            length = i;
        }
    }

    public static boolean isXmlns(QName qName) {
        String prefix = qName.getPrefix();
        if (prefix.equals("xmlns")) {
            return true;
        }
        return prefix.length() == 0 && qName.getLocalPart().equals("xmlns");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlObject lambda$newInstance$0(XmlOptions xmlOptions, SchemaType schemaType, Locale locale) throws XmlException, IOException {
        Cur tempCur = locale.tempCur();
        SchemaType documentType = XmlOptions.maskNull(xmlOptions).getDocumentType();
        if (documentType == null) {
            if (schemaType == null) {
                schemaType = XmlObject.type;
            }
            documentType = schemaType;
        }
        if (documentType.isDocumentType()) {
            tempCur.createDomDocumentRoot();
        } else {
            tempCur.createRoot();
        }
        tempCur.setType(documentType);
        XmlObject xmlObject = (XmlObject) tempCur.getUser();
        tempCur.release();
        return xmlObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlSaxHandlerImpl lambda$newSaxHandler$6(SchemaType schemaType, XmlOptions xmlOptions, Locale locale) throws XmlException, IOException {
        return new XmlSaxHandlerImpl(locale, schemaType, xmlOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlObject lambda$parseToXmlObject$1(String str, XmlOptions xmlOptions, SchemaType schemaType, Locale locale) throws XmlException, IOException {
        StringReader stringReader = new StringReader(str);
        try {
            Cur load = getSaxLoader(xmlOptions).load(locale, new InputSource(stringReader), xmlOptions);
            autoTypeDocument(load, schemaType, xmlOptions);
            XmlObject xmlObject = (XmlObject) load.getUser();
            load.release();
            stringReader.close();
            return xmlObject;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    stringReader.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlObject lambda$parseToXmlObject$2(XMLStreamReader xMLStreamReader, XmlOptions xmlOptions, SchemaType schemaType, Locale locale) throws XmlException, IOException {
        try {
            Cur loadXMLStreamReader = locale.loadXMLStreamReader(xMLStreamReader, xmlOptions);
            autoTypeDocument(loadXMLStreamReader, schemaType, xmlOptions);
            XmlObject xmlObject = (XmlObject) loadXMLStreamReader.getUser();
            loadXMLStreamReader.release();
            return xmlObject;
        } catch (XMLStreamException e) {
            throw new XmlException(e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlObject lambda$parseToXmlObject$3(XmlOptions xmlOptions, InputStream inputStream, SchemaType schemaType, Locale locale) throws XmlException, IOException {
        Cur load = getSaxLoader(xmlOptions).load(locale, new InputSource(inputStream), xmlOptions);
        autoTypeDocument(load, schemaType, xmlOptions);
        XmlObject xmlObject = (XmlObject) load.getUser();
        load.release();
        return xmlObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlObject lambda$parseToXmlObject$4(XmlOptions xmlOptions, Reader reader, SchemaType schemaType, Locale locale) throws XmlException, IOException {
        Cur load = getSaxLoader(xmlOptions).load(locale, new InputSource(reader), xmlOptions);
        autoTypeDocument(load, schemaType, xmlOptions);
        XmlObject xmlObject = (XmlObject) load.getUser();
        load.release();
        return xmlObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlObject lambda$parseToXmlObject$5(XmlOptions xmlOptions, Node node, SchemaType schemaType, Locale locale) throws XmlException, IOException {
        Cur.CurLoadContext curLoadContext = new Cur.CurLoadContext(locale, xmlOptions);
        locale.loadNode(node, curLoadContext);
        Cur finish = curLoadContext.finish();
        associateSourceName(finish, xmlOptions);
        autoTypeDocument(finish, schemaType, xmlOptions);
        XmlObject xmlObject = (XmlObject) finish.getUser();
        finish.release();
        return xmlObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SoftReference lambda$static$7() {
        return new SoftReference(new ScrubBuffer());
    }

    private static void lineNumber(XMLStreamReader xMLStreamReader, LoadContext loadContext) {
        Location location = xMLStreamReader.getLocation();
        if (location != null) {
            loadContext.lineNumber(location.getLineNumber(), location.getColumnNumber(), location.getCharacterOffset());
        }
    }

    private DomImpl.Dom load(InputSource inputSource, XmlOptions xmlOptions) throws XmlException, IOException {
        return getSaxLoader(xmlOptions).load(this, inputSource, xmlOptions).getDom();
    }

    private void loadNodeChildren(Node node, LoadContext loadContext) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            loadNode(firstChild, loadContext);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0016. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.apache.xmlbeans.impl.store.Cur loadXMLStreamReader(javax.xml.stream.XMLStreamReader r10, org.apache.xmlbeans.XmlOptions r11) throws javax.xml.stream.XMLStreamException {
        /*
            r9 = this;
            org.apache.xmlbeans.XmlOptions r11 = org.apache.xmlbeans.XmlOptions.maskNull(r11)
            boolean r0 = r11.isLoadLineNumbers()
            org.apache.xmlbeans.impl.store.Cur$CurLoadContext r1 = new org.apache.xmlbeans.impl.store.Cur$CurLoadContext
            r1.<init>(r9, r11)
            int r2 = r10.getEventType()
            r3 = 0
            r4 = 0
            r5 = r4
            r6 = r5
            r4 = r3
        L16:
            switch(r2) {
                case 1: goto L9f;
                case 2: goto L94;
                case 3: goto L83;
                case 4: goto L6e;
                case 5: goto L61;
                case 6: goto Lb3;
                case 7: goto L4a;
                case 8: goto L43;
                case 9: goto L3a;
                case 10: goto L35;
                case 11: goto Lb3;
                case 12: goto L6e;
                case 13: goto L30;
                default: goto L19;
            }
        L19:
            java.lang.RuntimeException r9 = new java.lang.RuntimeException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "Unhandled xml event type: "
            r10.append(r11)
            r10.append(r2)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L30:
            r9.doNamespaces(r10, r1)
            goto Lb3
        L35:
            r9.doAttributes(r10, r1)
            goto Lb3
        L3a:
            java.lang.String r2 = r10.getText()
            r1.text(r2)
            goto Lb3
        L43:
            if (r0 == 0) goto Lc2
            lineNumber(r10, r1)
            goto Lc2
        L4a:
            int r5 = r5 + 1
            java.lang.String r2 = r10.getCharacterEncodingScheme()
            java.lang.String r3 = r10.getVersion()
            boolean r4 = r10.isStandalone()
            if (r0 == 0) goto L5d
            lineNumber(r10, r1)
        L5d:
            r6 = r4
            r4 = r3
            r3 = r2
            goto Lb3
        L61:
            java.lang.String r2 = r10.getText()
            r1.comment(r2)
            if (r0 == 0) goto Lb3
            lineNumber(r10, r1)
            goto Lb3
        L6e:
            char[] r2 = r10.getTextCharacters()
            int r7 = r10.getTextStart()
            int r8 = r10.getTextLength()
            r1.text(r2, r7, r8)
            if (r0 == 0) goto Lb3
            lineNumber(r10, r1)
            goto Lb3
        L83:
            java.lang.String r2 = r10.getPITarget()
            java.lang.String r7 = r10.getPIData()
            r1.procInst(r2, r7)
            if (r0 == 0) goto Lb3
            lineNumber(r10, r1)
            goto Lb3
        L94:
            int r5 = r5 + (-1)
            r1.endElement()
            if (r0 == 0) goto Lb3
            lineNumber(r10, r1)
            goto Lb3
        L9f:
            int r5 = r5 + 1
            javax.xml.namespace.QName r2 = r10.getName()
            r1.startElement(r2)
            if (r0 == 0) goto Lad
            lineNumber(r10, r1)
        Lad:
            r9.doAttributes(r10, r1)
            r9.doNamespaces(r10, r1)
        Lb3:
            boolean r2 = r10.hasNext()
            if (r2 == 0) goto Lc2
            if (r5 > 0) goto Lbc
            goto Lc2
        Lbc:
            int r2 = r10.next()
            goto L16
        Lc2:
            org.apache.xmlbeans.impl.store.Cur r9 = r1.finish()
            associateSourceName(r9, r11)
            r10 = 1
            org.apache.xmlbeans.XmlDocumentProperties r10 = getDocProps(r9, r10)
            r10.setEncoding(r3)
            r10.setVersion(r4)
            r10.setStandalone(r6)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Locale.loadXMLStreamReader(javax.xml.stream.XMLStreamReader, org.apache.xmlbeans.XmlOptions):org.apache.xmlbeans.impl.store.Cur");
    }

    private static boolean namespacesSame(QName qName, QName qName2) {
        if (qName == qName2) {
            return true;
        }
        if (qName == null || qName2 == null) {
            return false;
        }
        return Objects.equals(qName.getNamespaceURI(), qName2.getNamespaceURI());
    }

    public static DOMImplementation newDomImplementation(SchemaTypeLoader schemaTypeLoader, XmlOptions xmlOptions) {
        return getLocale(schemaTypeLoader, xmlOptions);
    }

    public static XmlObject newInstance(SchemaTypeLoader schemaTypeLoader, final SchemaType schemaType, final XmlOptions xmlOptions) {
        try {
            return (XmlObject) syncWrap(schemaTypeLoader, xmlOptions, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.c0
                @Override // org.apache.xmlbeans.impl.store.Locale.SyncWrapFun
                public final Object parse(Locale locale) {
                    XmlObject lambda$newInstance$0;
                    lambda$newInstance$0 = Locale.lambda$newInstance$0(XmlOptions.this, schemaType, locale);
                    return lambda$newInstance$0;
                }
            });
        } catch (IOException | XmlException e) {
            throw new RuntimeException(e);
        }
    }

    public static XmlSaxHandler newSaxHandler(SchemaTypeLoader schemaTypeLoader, final SchemaType schemaType, final XmlOptions xmlOptions) {
        try {
            return (XmlSaxHandler) syncWrap(schemaTypeLoader, xmlOptions, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.a0
                @Override // org.apache.xmlbeans.impl.store.Locale.SyncWrapFun
                public final Object parse(Locale locale) {
                    Locale.XmlSaxHandlerImpl lambda$newSaxHandler$6;
                    lambda$newSaxHandler$6 = Locale.lambda$newSaxHandler$6(SchemaType.this, xmlOptions, locale);
                    return lambda$newSaxHandler$6;
                }
            });
        } catch (IOException | XmlException e) {
            throw new RuntimeException(e);
        }
    }

    public static XmlCursor nodeToCursor(Node node) {
        return DomImpl._getXmlCursor(checkNode(node));
    }

    public static XmlObject nodeToXmlObject(Node node) {
        return DomImpl._getXmlObject(checkNode(node));
    }

    public static XMLStreamReader nodeToXmlStream(Node node) {
        return DomImpl._getXmlStreamReader(checkNode(node));
    }

    public static XmlObject parseToXmlObject(SchemaTypeLoader schemaTypeLoader, final String str, final SchemaType schemaType, final XmlOptions xmlOptions) throws XmlException {
        try {
            return (XmlObject) syncWrap(schemaTypeLoader, xmlOptions, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.z
                @Override // org.apache.xmlbeans.impl.store.Locale.SyncWrapFun
                public final Object parse(Locale locale) {
                    XmlObject lambda$parseToXmlObject$1;
                    lambda$parseToXmlObject$1 = Locale.lambda$parseToXmlObject$1(str, xmlOptions, schemaType, locale);
                    return lambda$parseToXmlObject$1;
                }
            });
        } catch (IOException e) {
            throw new XmlException(e.getMessage(), e);
        }
    }

    private void pollQueue() {
        if (this._refQueue == null) {
            return;
        }
        while (true) {
            Ref ref = (Ref) this._refQueue.poll();
            if (ref == null) {
                return;
            }
            Cur cur = ref._cur;
            if (cur != null) {
                cur.release();
            }
        }
    }

    public static String processWhiteSpaceRule(String str, int i) {
        ScrubBuffer scrubBuffer = getScrubBuffer(i);
        scrubBuffer.scrub(str, 0, str.length());
        return scrubBuffer.getResultAsString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0022, code lost:
    
        r3.pop();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0026, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean pushToContainer(org.apache.xmlbeans.impl.store.Cur r3) {
        /*
            r3.push()
        L3:
            int r0 = r3.kind()
            r1 = -2
            if (r0 == r1) goto L22
            r1 = -1
            if (r0 == r1) goto L22
            r1 = 1
            if (r0 == r1) goto L21
            r2 = 2
            if (r0 == r2) goto L21
            r1 = 4
            if (r0 == r1) goto L1d
            r1 = 5
            if (r0 == r1) goto L1d
            r3.nextWithAttrs()
            goto L3
        L1d:
            r3.skip()
            goto L3
        L21:
            return r1
        L22:
            r3.pop()
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Locale.pushToContainer(org.apache.xmlbeans.impl.store.Cur):boolean");
    }

    public static Node streamToNode(XMLStreamReader xMLStreamReader) {
        return Jsr173.nodeFromStream(xMLStreamReader);
    }

    private static <T> T syncWrap(SchemaTypeLoader schemaTypeLoader, XmlOptions xmlOptions, SyncWrapFun<T> syncWrapFun) throws XmlException, IOException {
        T parse;
        Locale locale = getLocale(schemaTypeLoader, xmlOptions);
        if (locale.noSync()) {
            locale.enter();
            try {
                return syncWrapFun.parse(locale);
            } finally {
            }
        }
        synchronized (locale) {
            locale.enter();
            try {
                parse = syncWrapFun.parse(locale);
            } finally {
            }
        }
        return parse;
    }

    public static boolean toChild(Cur cur, QName qName, int i) {
        if (i < 0 || !pushToContainer(cur)) {
            return false;
        }
        Xobj findNthChildElem = cur._locale.findNthChildElem(cur._xobj, qName, null, i);
        cur.pop();
        if (findNthChildElem == null) {
            return false;
        }
        cur.moveTo(findNthChildElem);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x003b, code lost:
    
        r6.moveTo(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x003e, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean toFirstChildElement(org.apache.xmlbeans.impl.store.Cur r6) {
        /*
            org.apache.xmlbeans.impl.store.Xobj r0 = r6._xobj
            int r1 = r6._pos
        L4:
            int r2 = r6.kind()
            r3 = -2
            r4 = 0
            if (r2 == r3) goto L3b
            r3 = -1
            if (r2 == r3) goto L3b
            r3 = 1
            if (r2 == r3) goto L23
            r5 = 2
            if (r2 == r5) goto L23
            r3 = 4
            if (r2 == r3) goto L1f
            r3 = 5
            if (r2 == r3) goto L1f
            r6.nextWithAttrs()
            goto L4
        L1f:
            r6.skip()
            goto L4
        L23:
            boolean r2 = r6.toFirstChild()
            if (r2 == 0) goto L37
            boolean r2 = r6.isElem()
            if (r2 != 0) goto L36
            boolean r2 = toNextSiblingElement(r6)
            if (r2 != 0) goto L36
            goto L37
        L36:
            return r3
        L37:
            r6.moveTo(r0, r1)
            return r4
        L3b:
            r6.moveTo(r0, r1)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Locale.toFirstChildElement(org.apache.xmlbeans.impl.store.Cur):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x000f, code lost:
    
        r1.popButStay();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        r1.pop();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0007, code lost:
    
        if (r1.toFirstAttr() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000d, code lost:
    
        if (r1.isXmlns() != false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
    
        if (r1.toNextAttr() != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean toFirstNormalAttr(org.apache.xmlbeans.impl.store.Cur r1) {
        /*
            r1.push()
            boolean r0 = r1.toFirstAttr()
            if (r0 == 0) goto L1a
        L9:
            boolean r0 = r1.isXmlns()
            if (r0 != 0) goto L14
            r1.popButStay()
            r1 = 1
            return r1
        L14:
            boolean r0 = r1.toNextAttr()
            if (r0 != 0) goto L9
        L1a:
            r1.pop()
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Locale.toFirstNormalAttr(org.apache.xmlbeans.impl.store.Cur):boolean");
    }

    public static boolean toLastChildElement(Cur cur) {
        if (!pushToContainer(cur)) {
            return false;
        }
        if (cur.toLastChild() && (cur.isElem() || toPrevSiblingElement(cur))) {
            cur.popButStay();
            return true;
        }
        cur.pop();
        return false;
    }

    public static boolean toNextNormalAttr(Cur cur) {
        cur.push();
        while (cur.toNextAttr()) {
            if (!cur.isXmlns()) {
                cur.popButStay();
                return true;
            }
        }
        cur.pop();
        return false;
    }

    public static boolean toNextSiblingElement(Cur cur) {
        if (!cur.hasParent()) {
            return false;
        }
        cur.push();
        int kind = cur.kind();
        if (kind == 3) {
            cur.toParent();
            cur.next();
        } else if (kind == 2) {
            cur.skip();
        }
        while (true) {
            int kind2 = cur.kind();
            if (kind2 < 0) {
                cur.pop();
                return false;
            }
            if (kind2 == 2) {
                cur.popButStay();
                return true;
            }
            if (kind2 > 0) {
                cur.toEnd();
            }
            cur.next();
        }
    }

    public static boolean toPrevNormalAttr(Cur cur) {
        if (!cur.isAttr()) {
            return false;
        }
        cur.push();
        while (cur.prev()) {
            cur.prev();
            if (!cur.isAttr()) {
                cur.prev();
            }
            if (cur.isNormalAttr()) {
                cur.popButStay();
                return true;
            }
        }
        cur.pop();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        if (r2 == 1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if (r2 != 2) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
    
        if (r0.kind() != (-2)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        r0.toParent();
        r5.moveToCur(r0);
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0033, code lost:
    
        r0.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0036, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0011, code lost:
    
        if (r0.kind() != 3) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
    
        if (r0.prev() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        r2 = r0.kind();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean toPrevSiblingElement(org.apache.xmlbeans.impl.store.Cur r5) {
        /*
            boolean r0 = r5.hasParent()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            org.apache.xmlbeans.impl.store.Cur r0 = r5.tempCur()
            int r2 = r0.kind()
            r3 = 3
            if (r2 == r3) goto L33
        L13:
            boolean r2 = r0.prev()
            if (r2 != 0) goto L1a
            goto L33
        L1a:
            int r2 = r0.kind()
            r3 = 1
            if (r2 == r3) goto L33
            r4 = 2
            if (r2 != r4) goto L25
            goto L33
        L25:
            int r2 = r0.kind()
            r4 = -2
            if (r2 != r4) goto L13
            r0.toParent()
            r5.moveToCur(r0)
            r1 = r3
        L33:
            r0.release()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Locale.toPrevSiblingElement(org.apache.xmlbeans.impl.store.Cur):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a4 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a8 A[Catch: all -> 0x00bf, TRY_ENTER, TryCatch #0 {all -> 0x00bf, blocks: (B:3:0x0003, B:6:0x000c, B:9:0x0014, B:11:0x001e, B:14:0x003f, B:19:0x00a8, B:20:0x00be, B:22:0x0051, B:24:0x0057, B:25:0x0071, B:27:0x0085, B:30:0x009f), top: B:2:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void verifyAttributeType(org.apache.xmlbeans.impl.store.Cur r6, javax.xml.namespace.QName r7) throws org.apache.xmlbeans.XmlException {
        /*
            r6.push()
            boolean r0 = toFirstNormalAttr(r6)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r1 = "The document is not a "
            r2 = 0
            if (r0 == 0) goto L85
            boolean r0 = toNextNormalAttr(r6)     // Catch: java.lang.Throwable -> Lbf
            if (r0 == 0) goto L14
            goto L85
        L14:
            javax.xml.namespace.QName r0 = r6.getName()     // Catch: java.lang.Throwable -> Lbf
            boolean r3 = r0.equals(r7)     // Catch: java.lang.Throwable -> Lbf
            if (r3 != 0) goto L83
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbf
            r3.<init>()     // Catch: java.lang.Throwable -> Lbf
            r3.append(r1)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r1 = org.apache.xmlbeans.impl.common.QNameHelper.pretty(r7)     // Catch: java.lang.Throwable -> Lbf
            r3.append(r1)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r1 = r7.getLocalPart()     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r4 = r0.getLocalPart()     // Catch: java.lang.Throwable -> Lbf
            boolean r1 = r1.equals(r4)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r4 = " got "
            java.lang.String r5 = "expected "
            if (r1 == 0) goto L51
            java.lang.String r1 = ": attribute namespace mismatch "
            r3.append(r1)     // Catch: java.lang.Throwable -> Lbf
            r3.append(r5)     // Catch: java.lang.Throwable -> Lbf
            addNamespace(r3, r7)     // Catch: java.lang.Throwable -> Lbf
            r3.append(r4)     // Catch: java.lang.Throwable -> Lbf
            addNamespace(r3, r0)     // Catch: java.lang.Throwable -> Lbf
            goto La2
        L51:
            boolean r1 = namespacesSame(r7, r0)     // Catch: java.lang.Throwable -> Lbf
            if (r1 == 0) goto L71
            java.lang.String r1 = ": attribute local name mismatch "
            r3.append(r1)     // Catch: java.lang.Throwable -> Lbf
            r3.append(r5)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r7 = r7.getLocalPart()     // Catch: java.lang.Throwable -> Lbf
            r3.append(r7)     // Catch: java.lang.Throwable -> Lbf
            r3.append(r4)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r7 = r0.getLocalPart()     // Catch: java.lang.Throwable -> Lbf
            r3.append(r7)     // Catch: java.lang.Throwable -> Lbf
            goto La2
        L71:
            java.lang.String r7 = ": attribute element mismatch "
            r3.append(r7)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r7 = "got "
            r3.append(r7)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r7 = org.apache.xmlbeans.impl.common.QNameHelper.pretty(r0)     // Catch: java.lang.Throwable -> Lbf
            r3.append(r7)     // Catch: java.lang.Throwable -> Lbf
            goto La2
        L83:
            r3 = r2
            goto La2
        L85:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbf
            r3.<init>()     // Catch: java.lang.Throwable -> Lbf
            r3.append(r1)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r7 = org.apache.xmlbeans.impl.common.QNameHelper.pretty(r7)     // Catch: java.lang.Throwable -> Lbf
            r3.append(r7)     // Catch: java.lang.Throwable -> Lbf
            boolean r7 = r6.isRoot()     // Catch: java.lang.Throwable -> Lbf
            if (r7 == 0) goto L9d
            java.lang.String r7 = ": no attributes"
            goto L9f
        L9d:
            java.lang.String r7 = ": multiple attributes"
        L9f:
            r3.append(r7)     // Catch: java.lang.Throwable -> Lbf
        La2:
            if (r3 != 0) goto La8
            r6.pop()
            return
        La8:
            java.lang.String r7 = r3.toString()     // Catch: java.lang.Throwable -> Lbf
            org.apache.xmlbeans.impl.store.Cursor r0 = new org.apache.xmlbeans.impl.store.Cursor     // Catch: java.lang.Throwable -> Lbf
            r0.<init>(r6)     // Catch: java.lang.Throwable -> Lbf
            org.apache.xmlbeans.XmlError r7 = org.apache.xmlbeans.XmlError.forCursor(r7, r0)     // Catch: java.lang.Throwable -> Lbf
            org.apache.xmlbeans.XmlException r0 = new org.apache.xmlbeans.XmlException     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r1 = r7.toString()     // Catch: java.lang.Throwable -> Lbf
            r0.<init>(r1, r2, r7)     // Catch: java.lang.Throwable -> Lbf
            throw r0     // Catch: java.lang.Throwable -> Lbf
        Lbf:
            r7 = move-exception
            r6.pop()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Locale.verifyAttributeType(org.apache.xmlbeans.impl.store.Cur, javax.xml.namespace.QName):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x009b A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009f A[Catch: all -> 0x00b6, TRY_ENTER, TryCatch #0 {all -> 0x00b6, blocks: (B:3:0x0003, B:6:0x000c, B:9:0x0013, B:11:0x001d, B:14:0x003c, B:19:0x009f, B:20:0x00b5, B:22:0x0050, B:24:0x0056, B:25:0x006d, B:27:0x007c, B:30:0x0096), top: B:2:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void verifyDocumentType(org.apache.xmlbeans.impl.store.Cur r5, javax.xml.namespace.QName r6) throws org.apache.xmlbeans.XmlException {
        /*
            r5.push()
            boolean r0 = toFirstChildElement(r5)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r1 = "The document is not a "
            r2 = 0
            if (r0 == 0) goto L7c
            boolean r0 = toNextSiblingElement(r5)     // Catch: java.lang.Throwable -> Lb6
            if (r0 == 0) goto L13
            goto L7c
        L13:
            javax.xml.namespace.QName r0 = r5.getName()     // Catch: java.lang.Throwable -> Lb6
            boolean r3 = r0.equals(r6)     // Catch: java.lang.Throwable -> Lb6
            if (r3 != 0) goto L7a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb6
            r3.<init>()     // Catch: java.lang.Throwable -> Lb6
            r3.append(r1)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r1 = org.apache.xmlbeans.impl.common.QNameHelper.pretty(r6)     // Catch: java.lang.Throwable -> Lb6
            r3.append(r1)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r1 = r6.getLocalPart()     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r4 = r0.getLocalPart()     // Catch: java.lang.Throwable -> Lb6
            boolean r1 = r1.equals(r4)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r4 = " got "
            if (r1 == 0) goto L50
            java.lang.String r1 = ": document element namespace mismatch "
            r3.append(r1)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r1 = "expected "
            r3.append(r1)     // Catch: java.lang.Throwable -> Lb6
            addNamespace(r3, r6)     // Catch: java.lang.Throwable -> Lb6
            r3.append(r4)     // Catch: java.lang.Throwable -> Lb6
            addNamespace(r3, r0)     // Catch: java.lang.Throwable -> Lb6
            goto L99
        L50:
            boolean r1 = namespacesSame(r6, r0)     // Catch: java.lang.Throwable -> Lb6
            if (r1 == 0) goto L6d
            java.lang.String r1 = ": document element local name mismatch expected "
            r3.append(r1)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r6 = r6.getLocalPart()     // Catch: java.lang.Throwable -> Lb6
            r3.append(r6)     // Catch: java.lang.Throwable -> Lb6
            r3.append(r4)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r6 = r0.getLocalPart()     // Catch: java.lang.Throwable -> Lb6
            r3.append(r6)     // Catch: java.lang.Throwable -> Lb6
            goto L99
        L6d:
            java.lang.String r6 = ": document element mismatch got "
            r3.append(r6)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r6 = org.apache.xmlbeans.impl.common.QNameHelper.pretty(r0)     // Catch: java.lang.Throwable -> Lb6
            r3.append(r6)     // Catch: java.lang.Throwable -> Lb6
            goto L99
        L7a:
            r3 = r2
            goto L99
        L7c:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb6
            r3.<init>()     // Catch: java.lang.Throwable -> Lb6
            r3.append(r1)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r6 = org.apache.xmlbeans.impl.common.QNameHelper.pretty(r6)     // Catch: java.lang.Throwable -> Lb6
            r3.append(r6)     // Catch: java.lang.Throwable -> Lb6
            boolean r6 = r5.isRoot()     // Catch: java.lang.Throwable -> Lb6
            if (r6 == 0) goto L94
            java.lang.String r6 = ": no document element"
            goto L96
        L94:
            java.lang.String r6 = ": multiple document elements"
        L96:
            r3.append(r6)     // Catch: java.lang.Throwable -> Lb6
        L99:
            if (r3 != 0) goto L9f
            r5.pop()
            return
        L9f:
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> Lb6
            org.apache.xmlbeans.impl.store.Cursor r0 = new org.apache.xmlbeans.impl.store.Cursor     // Catch: java.lang.Throwable -> Lb6
            r0.<init>(r5)     // Catch: java.lang.Throwable -> Lb6
            org.apache.xmlbeans.XmlError r6 = org.apache.xmlbeans.XmlError.forCursor(r6, r0)     // Catch: java.lang.Throwable -> Lb6
            org.apache.xmlbeans.XmlException r0 = new org.apache.xmlbeans.XmlException     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r1 = r6.toString()     // Catch: java.lang.Throwable -> Lb6
            r0.<init>(r1, r2, r6)     // Catch: java.lang.Throwable -> Lb6
            throw r0     // Catch: java.lang.Throwable -> Lb6
        Lb6:
            r6 = move-exception
            r5.pop()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Locale.verifyDocumentType(org.apache.xmlbeans.impl.store.Cur, javax.xml.namespace.QName):void");
    }

    public static String xmlnsPrefix(QName qName) {
        return qName.getPrefix().equals("xmlns") ? qName.getLocalPart() : "";
    }

    public int count(Xobj xobj, QName qName, QNameSet qNameSet) {
        int i = 0;
        for (Xobj findNthChildElem = findNthChildElem(xobj, qName, qNameSet, 0); findNthChildElem != null; findNthChildElem = findNthChildElem._nextSibling) {
            if (findNthChildElem.isElem()) {
                if (qNameSet == null) {
                    if (!findNthChildElem._name.equals(qName)) {
                    }
                    i++;
                } else {
                    if (!qNameSet.contains(findNthChildElem._name)) {
                    }
                    i++;
                }
            }
        }
        return i;
    }

    public CdataNode createCdataNode() {
        return this._saaj == null ? new CdataNode(this) : new SaajCdataNode(this);
    }

    @Override // org.w3c.dom.DOMImplementation
    public Document createDocument(String str, String str2, DocumentType documentType) {
        return DomImpl._domImplementation_createDocument(this, str, str2, documentType);
    }

    @Override // org.w3c.dom.DOMImplementation
    public DocumentType createDocumentType(String str, String str2, String str3) {
        throw new RuntimeException("Not implemented");
    }

    @Override // org.apache.xmlbeans.impl.store.Saaj.SaajCallback
    public Element createSoapElement(QName qName, QName qName2) {
        return DomImpl.saajCallback_createSoapElement(this._ownerDoc, qName, qName2);
    }

    public TextNode createTextNode() {
        return this._saaj == null ? new TextNode(this) : new SaajTextNode(this);
    }

    public QName createXmlns(String str) {
        if (str == null) {
            str = "";
        }
        return str.length() == 0 ? makeQName("http://www.w3.org/2000/xmlns/", "xmlns", "") : makeQName("http://www.w3.org/2000/xmlns/", str, "xmlns");
    }

    public int domLength(DomImpl.Dom dom) {
        if (dom == null) {
            return 0;
        }
        int distance = this._domNthCache_A.distance(dom, 0);
        int distance2 = this._domNthCache_B.distance(dom, 0);
        int length = distance <= distance2 ? this._domNthCache_A.length(dom) : this._domNthCache_B.length(dom);
        if (distance == distance2) {
            domNthCache domnthcache = this._domNthCache_A;
            this._domNthCache_A = this._domNthCache_B;
            this._domNthCache_B = domnthcache;
        }
        return length;
    }

    public void embedCurs() {
        while (true) {
            Cur cur = this._registered;
            if (cur == null) {
                return;
            }
            this._registered = cur.listRemove(cur);
            Xobj xobj = cur._xobj;
            xobj._embedded = cur.listInsert(xobj._embedded);
            cur._state = 2;
        }
    }

    public void enter(Locale locale) {
        enter();
        if (locale != this) {
            locale.enter();
        }
    }

    public boolean entered() {
        return this._tempFrames.length - this._numTempFramesLeft > 0;
    }

    public void exit(Locale locale) {
        exit();
        if (locale != this) {
            locale.exit();
        }
    }

    public DomImpl.Dom findDomNthChild(DomImpl.Dom dom, int i) {
        DomImpl.Dom fetch;
        if (dom == null) {
            return null;
        }
        int distance = this._domNthCache_A.distance(dom, i);
        int distance2 = this._domNthCache_B.distance(dom, i);
        boolean z = distance2 - (this._domNthCache_B._len / 2) > 0 && (distance2 - (this._domNthCache_B._len / 2)) + (-40) > 0;
        boolean z2 = distance - (this._domNthCache_A._len / 2) > 0 && (distance - (this._domNthCache_A._len / 2)) + (-40) > 0;
        if (distance <= distance2) {
            if (z2) {
                this._domNthCache_B._version = -1L;
                fetch = this._domNthCache_B.fetch(dom, i);
            } else {
                fetch = this._domNthCache_A.fetch(dom, i);
            }
        } else if (z) {
            this._domNthCache_A._version = -1L;
            fetch = this._domNthCache_A.fetch(dom, i);
        } else {
            fetch = this._domNthCache_B.fetch(dom, i);
        }
        if (distance == distance2) {
            domNthCache domnthcache = this._domNthCache_A;
            this._domNthCache_A = this._domNthCache_B;
            this._domNthCache_B = domnthcache;
        }
        return fetch;
    }

    public Xobj findNthChildElem(Xobj xobj, QName qName, QNameSet qNameSet, int i) {
        if (xobj == null) {
            return null;
        }
        int distance = this._nthCache_A.distance(xobj, qName, qNameSet, i);
        int distance2 = this._nthCache_B.distance(xobj, qName, qNameSet, i);
        Xobj fetch = distance <= distance2 ? this._nthCache_A.fetch(xobj, qName, qNameSet, i) : this._nthCache_B.fetch(xobj, qName, qNameSet, i);
        if (distance == distance2) {
            nthCache nthcache = this._nthCache_A;
            this._nthCache_A = this._nthCache_B;
            this._nthCache_B = nthcache;
        }
        return fetch;
    }

    public CharUtil getCharUtil() {
        if (this._charUtil == null) {
            this._charUtil = new CharUtil(1024);
        }
        return this._charUtil;
    }

    public Cur getCur() {
        Cur cur = this._curPool;
        if (cur == null) {
            cur = new Cur(this);
        } else {
            this._curPool = cur.listRemove(cur);
            this._curPoolCount--;
        }
        this._registered = cur.listInsert(this._registered);
        cur._state = 1;
        return cur;
    }

    @Override // org.w3c.dom.DOMImplementation
    public Object getFeature(String str, String str2) {
        throw new RuntimeException("DOM Level 3 Not implemented");
    }

    @Override // org.apache.xmlbeans.impl.store.Saaj.SaajCallback
    public Object getSaajData(Node node) {
        return DomImpl.saajCallback_getSaajData((DomImpl.Dom) node);
    }

    public SchemaTypeLoader getSchemaTypeLoader() {
        return this._schemaTypeLoader;
    }

    @Override // org.w3c.dom.DOMImplementation
    public boolean hasFeature(String str, String str2) {
        return DomImpl._domImplementation_hasFeature(this, str, str2);
    }

    @Override // org.apache.xmlbeans.impl.store.Saaj.SaajCallback
    public Element importSoapElement(Document document, Element element, boolean z, QName qName) {
        return DomImpl.saajCallback_importSoapElement((DomImpl.Dom) document, element, z, qName);
    }

    public void invalidateDomCaches(DomImpl.Dom dom) {
        if (this._domNthCache_A._parent == dom) {
            this._domNthCache_A._version = -1L;
        }
        if (this._domNthCache_B._parent == dom) {
            this._domNthCache_B._version = -1L;
        }
    }

    public void loadNode(Node node, LoadContext loadContext) {
        switch (node.getNodeType()) {
            case 1:
                loadContext.startElement(makeQualifiedQName(node.getNamespaceURI(), node.getNodeName()));
                NamedNodeMap attributes = node.getAttributes();
                for (int i = 0; i < attributes.getLength(); i++) {
                    Node item = attributes.item(i);
                    String nodeName = item.getNodeName();
                    String nodeValue = item.getNodeValue();
                    if (!nodeName.toLowerCase(java.util.Locale.ROOT).startsWith("xmlns")) {
                        loadContext.attr(makeQualifiedQName(item.getNamespaceURI(), nodeName), nodeValue);
                    } else if (nodeName.length() == 5) {
                        loadContext.xmlns(null, nodeValue);
                    } else {
                        loadContext.xmlns(nodeName.substring(6), nodeValue);
                    }
                }
                loadNodeChildren(node, loadContext);
                loadContext.endElement();
                return;
            case 2:
                throw new RuntimeException("Unexpected node");
            case 3:
            case 4:
                loadContext.text(node.getNodeValue());
                return;
            case 5:
            case 9:
            case 11:
                loadNodeChildren(node, loadContext);
                return;
            case 6:
            case 10:
            case 12:
                Node nextSibling = node.getNextSibling();
                if (nextSibling != null) {
                    loadNode(nextSibling, loadContext);
                    return;
                }
                return;
            case 7:
                loadContext.procInst(node.getNodeName(), node.getNodeValue());
                return;
            case 8:
                loadContext.comment(node.getNodeValue());
                return;
            default:
                return;
        }
    }

    public QName makeQName(String str, String str2) {
        return this._qnameFactory.getQName(str, str2);
    }

    public QName makeQNameNoCheck(String str, String str2) {
        return this._qnameFactory.getQName(str, str2);
    }

    public QName makeQualifiedQName(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        int indexOf = str2.indexOf(58);
        return indexOf < 0 ? this._qnameFactory.getQName(str, str2) : this._qnameFactory.getQName(str, str2.substring(indexOf + 1), str2.substring(0, indexOf));
    }

    @Override // org.apache.xmlbeans.impl.common.XmlLocale
    public boolean noSync() {
        return this._noSync;
    }

    public void notifyChange() {
        while (true) {
            ChangeListener changeListener = this._changeListeners;
            if (changeListener == null) {
                this._locations.notifyChange();
                return;
            }
            changeListener.notifyChange();
            ChangeListener nextChangeListener = this._changeListeners.getNextChangeListener();
            ChangeListener changeListener2 = this._changeListeners;
            if (nextChangeListener == changeListener2) {
                changeListener2.setNextChangeListener(null);
            }
            ChangeListener nextChangeListener2 = this._changeListeners.getNextChangeListener();
            this._changeListeners.setNextChangeListener(null);
            this._changeListeners = nextChangeListener2;
        }
    }

    public final ReferenceQueue<Ref> refQueue() {
        if (this._refQueue == null) {
            this._refQueue = new ReferenceQueue<>();
        }
        return this._refQueue;
    }

    public void registerForChange(ChangeListener changeListener) {
        if (changeListener.getNextChangeListener() == null) {
            ChangeListener changeListener2 = this._changeListeners;
            if (changeListener2 == null) {
                changeListener.setNextChangeListener(changeListener);
            } else {
                changeListener.setNextChangeListener(changeListener2);
            }
            this._changeListeners = changeListener;
        }
    }

    @Override // org.apache.xmlbeans.impl.store.Saaj.SaajCallback
    public void setSaajData(Node node, Object obj) {
        DomImpl.saajCallback_setSaajData((DomImpl.Dom) node, obj);
    }

    @Override // org.apache.xmlbeans.impl.common.XmlLocale
    public boolean sync() {
        return !this._noSync;
    }

    public Cur tempCur() {
        return tempCur(null);
    }

    public long version() {
        return this._versionAll;
    }

    public Cur weakCur(Object obj) {
        Cur cur = getCur();
        cur._ref = new Ref(cur, obj);
        return cur;
    }

    public DomImpl.Dom load(Reader reader) throws XmlException, IOException {
        return load(reader, (XmlOptions) null);
    }

    public QName makeQName(String str, String str2, String str3) {
        QNameFactory qNameFactory = this._qnameFactory;
        if (str3 == null) {
            str3 = "";
        }
        return qNameFactory.getQName(str, str2, str3);
    }

    public Cur tempCur(String str) {
        Cur cur = getCur();
        Cur[] curArr = this._tempFrames;
        int length = (curArr.length - this._numTempFramesLeft) - 1;
        Cur cur2 = curArr[length];
        cur._nextTemp = cur2;
        if (cur2 != null) {
            cur2._prevTemp = cur;
        }
        curArr[length] = cur;
        cur._tempFrame = length;
        cur._id = str;
        return cur;
    }

    public static XmlObject parseToXmlObject(SchemaTypeLoader schemaTypeLoader, final XMLStreamReader xMLStreamReader, final SchemaType schemaType, final XmlOptions xmlOptions) throws XmlException {
        try {
            return (XmlObject) syncWrap(schemaTypeLoader, xmlOptions, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.d0
                @Override // org.apache.xmlbeans.impl.store.Locale.SyncWrapFun
                public final Object parse(Locale locale) {
                    XmlObject lambda$parseToXmlObject$2;
                    lambda$parseToXmlObject$2 = Locale.lambda$parseToXmlObject$2(XMLStreamReader.this, xmlOptions, schemaType, locale);
                    return lambda$parseToXmlObject$2;
                }
            });
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // org.apache.xmlbeans.impl.common.XmlLocale
    public void enter() {
        int i = this._numTempFramesLeft - 1;
        this._numTempFramesLeft = i;
        if (i <= 0) {
            Cur[] curArr = this._tempFrames;
            Cur[] curArr2 = new Cur[curArr.length * 2];
            this._numTempFramesLeft = curArr.length;
            System.arraycopy(curArr, 0, curArr2, 0, curArr.length);
            this._tempFrames = curArr2;
        }
        int i2 = this._entryCount + 1;
        this._entryCount = i2;
        if (i2 > 1000) {
            pollQueue();
            this._entryCount = 0;
        }
    }

    @Override // org.apache.xmlbeans.impl.common.XmlLocale
    public void exit() {
        int length = this._tempFrames.length;
        int i = this._numTempFramesLeft + 1;
        this._numTempFramesLeft = i;
        int i2 = length - i;
        while (true) {
            Cur cur = this._tempFrames[i2];
            if (cur == null) {
                return;
            } else {
                cur.release();
            }
        }
    }

    public DomImpl.Dom load(Reader reader, XmlOptions xmlOptions) throws XmlException, IOException {
        return load(new InputSource(reader), xmlOptions);
    }

    public DomImpl.Dom load(InputStream inputStream) throws XmlException, IOException {
        return load(inputStream, (XmlOptions) null);
    }

    public static XmlObject parseToXmlObject(SchemaTypeLoader schemaTypeLoader, final InputStream inputStream, final SchemaType schemaType, final XmlOptions xmlOptions) throws XmlException, IOException {
        return (XmlObject) syncWrap(schemaTypeLoader, xmlOptions, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.f0
            @Override // org.apache.xmlbeans.impl.store.Locale.SyncWrapFun
            public final Object parse(Locale locale) {
                XmlObject lambda$parseToXmlObject$3;
                lambda$parseToXmlObject$3 = Locale.lambda$parseToXmlObject$3(XmlOptions.this, inputStream, schemaType, locale);
                return lambda$parseToXmlObject$3;
            }
        });
    }

    public DomImpl.Dom load(InputStream inputStream, XmlOptions xmlOptions) throws XmlException, IOException {
        return load(new InputSource(inputStream), xmlOptions);
    }

    public static XmlObject parseToXmlObject(SchemaTypeLoader schemaTypeLoader, final Reader reader, final SchemaType schemaType, final XmlOptions xmlOptions) throws XmlException, IOException {
        return (XmlObject) syncWrap(schemaTypeLoader, xmlOptions, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.b0
            @Override // org.apache.xmlbeans.impl.store.Locale.SyncWrapFun
            public final Object parse(Locale locale) {
                XmlObject lambda$parseToXmlObject$4;
                lambda$parseToXmlObject$4 = Locale.lambda$parseToXmlObject$4(XmlOptions.this, reader, schemaType, locale);
                return lambda$parseToXmlObject$4;
            }
        });
    }

    public DomImpl.Dom load(String str) throws XmlException {
        return load(str, (XmlOptions) null);
    }

    public static XmlObject parseToXmlObject(SchemaTypeLoader schemaTypeLoader, final Node node, final SchemaType schemaType, final XmlOptions xmlOptions) throws XmlException {
        try {
            return (XmlObject) syncWrap(schemaTypeLoader, xmlOptions, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.e0
                @Override // org.apache.xmlbeans.impl.store.Locale.SyncWrapFun
                public final Object parse(Locale locale) {
                    XmlObject lambda$parseToXmlObject$5;
                    lambda$parseToXmlObject$5 = Locale.lambda$parseToXmlObject$5(XmlOptions.this, node, schemaType, locale);
                    return lambda$parseToXmlObject$5;
                }
            });
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public DomImpl.Dom load(String str, XmlOptions xmlOptions) throws XmlException {
        try {
            StringReader stringReader = new StringReader(str);
            try {
                DomImpl.Dom load = load(stringReader, xmlOptions);
                stringReader.close();
                return load;
            } finally {
            }
        } catch (IOException e) {
            throw new XmlException(e.getMessage(), e);
        }
    }

    public static int getTextValue(Cur cur, char[] cArr, int i, int i2) {
        String valueAsString = cur._xobj.getValueAsString(1);
        int length = valueAsString.length();
        if (length <= i2) {
            i2 = length;
        }
        if (i2 <= 0) {
            return 0;
        }
        valueAsString.getChars(0, i2, cArr, i);
        return i2;
    }

    public static boolean toNextSiblingElement(Cur cur, Xobj xobj) {
        Xobj xobj2 = cur._xobj;
        int i = cur._pos;
        int kind = cur.kind();
        if (kind == 3) {
            cur.moveTo(xobj);
            cur.next();
        } else if (kind == 2) {
            cur.skip();
        }
        while (true) {
            int kind2 = cur.kind();
            if (kind2 < 0) {
                cur.moveTo(xobj2, i);
                return false;
            }
            if (kind2 == 2) {
                return true;
            }
            if (kind2 > 0) {
                cur.toEnd();
            }
            cur.next();
        }
    }
}
