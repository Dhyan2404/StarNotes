package org.xml.sax.helpers;

import com.google.android.exoplayer2.database.VersionTable;
import java.io.IOException;
import java.util.Enumeration;
import org.xml.sax.AttributeList;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.DocumentHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;

/* loaded from: classes16.dex */
public class ParserAdapter implements XMLReader, DocumentHandler {
    private static final String FEATURES = "http://xml.org/sax/features/";
    private static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    private static final String NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
    private static final String XMLNS_URIs = "http://xml.org/sax/features/xmlns-uris";
    private AttributeListAdapter attAdapter;
    private AttributesImpl atts;
    ContentHandler contentHandler;
    DTDHandler dtdHandler;
    EntityResolver entityResolver;
    ErrorHandler errorHandler;
    Locator locator;
    private String[] nameParts;
    private boolean namespaces;
    private NamespaceSupport nsSupport;
    private Parser parser;
    private boolean parsing;
    private boolean prefixes;
    private boolean uris;

    /* loaded from: classes16.dex */
    public final class AttributeListAdapter implements Attributes {
        private AttributeList qAtts;

        public AttributeListAdapter() {
        }

        @Override // org.xml.sax.Attributes
        public int getIndex(String str) {
            int length = ParserAdapter.this.atts.getLength();
            for (int i = 0; i < length; i++) {
                if (this.qAtts.getName(i).equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // org.xml.sax.Attributes
        public int getLength() {
            return this.qAtts.getLength();
        }

        @Override // org.xml.sax.Attributes
        public String getLocalName(int i) {
            return "";
        }

        @Override // org.xml.sax.Attributes
        public String getQName(int i) {
            return this.qAtts.getName(i).intern();
        }

        @Override // org.xml.sax.Attributes
        public String getType(int i) {
            return this.qAtts.getType(i).intern();
        }

        @Override // org.xml.sax.Attributes
        public String getURI(int i) {
            return "";
        }

        @Override // org.xml.sax.Attributes
        public String getValue(int i) {
            return this.qAtts.getValue(i);
        }

        public void setAttributeList(AttributeList attributeList) {
            this.qAtts = attributeList;
        }

        @Override // org.xml.sax.Attributes
        public int getIndex(String str, String str2) {
            return -1;
        }

        @Override // org.xml.sax.Attributes
        public String getType(String str) {
            return this.qAtts.getType(str).intern();
        }

        @Override // org.xml.sax.Attributes
        public String getValue(String str) {
            return this.qAtts.getValue(str);
        }

        @Override // org.xml.sax.Attributes
        public String getType(String str, String str2) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public String getValue(String str, String str2) {
            return null;
        }
    }

    public ParserAdapter() throws SAXException {
        this.parsing = false;
        this.nameParts = new String[3];
        this.parser = null;
        this.atts = null;
        this.namespaces = true;
        this.prefixes = false;
        this.uris = false;
        this.entityResolver = null;
        this.dtdHandler = null;
        this.contentHandler = null;
        this.errorHandler = null;
        String property = System.getProperty("org.xml.sax.parser");
        try {
            setup(ParserFactory.makeParser());
        } catch (ClassCastException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("SAX1 driver class ");
            stringBuffer.append(property);
            stringBuffer.append(" does not implement org.xml.sax.Parser");
            throw new SAXException(stringBuffer.toString());
        } catch (ClassNotFoundException e) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Cannot find SAX1 driver class ");
            stringBuffer2.append(property);
            throw new SAXException(stringBuffer2.toString(), e);
        } catch (IllegalAccessException e2) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("SAX1 driver class ");
            stringBuffer3.append(property);
            stringBuffer3.append(" found but cannot be loaded");
            throw new SAXException(stringBuffer3.toString(), e2);
        } catch (InstantiationException e3) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("SAX1 driver class ");
            stringBuffer4.append(property);
            stringBuffer4.append(" loaded but cannot be instantiated");
            throw new SAXException(stringBuffer4.toString(), e3);
        } catch (NullPointerException unused2) {
            throw new SAXException("System property org.xml.sax.parser not specified");
        }
    }

    private void checkNotParsing(String str, String str2) throws SAXNotSupportedException {
        if (this.parsing) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Cannot change ");
            stringBuffer.append(str);
            stringBuffer.append(' ');
            stringBuffer.append(str2);
            stringBuffer.append(" while parsing");
            throw new SAXNotSupportedException(stringBuffer.toString());
        }
    }

    private SAXParseException makeException(String str) {
        return this.locator != null ? new SAXParseException(str, this.locator) : new SAXParseException(str, null, null, -1, -1);
    }

    private String[] processName(String str, boolean z, boolean z2) throws SAXException {
        String[] processName = this.nsSupport.processName(str, this.nameParts, z);
        if (processName != null) {
            return processName;
        }
        if (z2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Undeclared prefix: ");
            stringBuffer.append(str);
            throw makeException(stringBuffer.toString());
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Undeclared prefix: ");
        stringBuffer2.append(str);
        reportError(stringBuffer2.toString());
        return new String[]{"", "", str.intern()};
    }

    private void setup(Parser parser) {
        if (parser == null) {
            throw new NullPointerException("Parser argument must not be null");
        }
        this.parser = parser;
        this.atts = new AttributesImpl();
        this.nsSupport = new NamespaceSupport();
        this.attAdapter = new AttributeListAdapter();
    }

    private void setupParser() {
        if (!this.prefixes && !this.namespaces) {
            throw new IllegalStateException();
        }
        this.nsSupport.reset();
        if (this.uris) {
            this.nsSupport.setNamespaceDeclUris(true);
        }
        EntityResolver entityResolver = this.entityResolver;
        if (entityResolver != null) {
            this.parser.setEntityResolver(entityResolver);
        }
        DTDHandler dTDHandler = this.dtdHandler;
        if (dTDHandler != null) {
            this.parser.setDTDHandler(dTDHandler);
        }
        ErrorHandler errorHandler = this.errorHandler;
        if (errorHandler != null) {
            this.parser.setErrorHandler(errorHandler);
        }
        this.parser.setDocumentHandler(this);
        this.locator = null;
    }

    @Override // org.xml.sax.DocumentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        ContentHandler contentHandler = this.contentHandler;
        if (contentHandler != null) {
            contentHandler.characters(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void endDocument() throws SAXException {
        ContentHandler contentHandler = this.contentHandler;
        if (contentHandler != null) {
            contentHandler.endDocument();
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void endElement(String str) throws SAXException {
        if (!this.namespaces) {
            ContentHandler contentHandler = this.contentHandler;
            if (contentHandler != null) {
                contentHandler.endElement("", "", str.intern());
                return;
            }
            return;
        }
        String[] processName = processName(str, false, false);
        ContentHandler contentHandler2 = this.contentHandler;
        if (contentHandler2 != null) {
            contentHandler2.endElement(processName[0], processName[1], processName[2]);
            Enumeration declaredPrefixes = this.nsSupport.getDeclaredPrefixes();
            while (declaredPrefixes.hasMoreElements()) {
                this.contentHandler.endPrefixMapping((String) declaredPrefixes.nextElement());
            }
        }
        this.nsSupport.popContext();
    }

    @Override // org.xml.sax.XMLReader
    public ContentHandler getContentHandler() {
        return this.contentHandler;
    }

    @Override // org.xml.sax.XMLReader
    public DTDHandler getDTDHandler() {
        return this.dtdHandler;
    }

    @Override // org.xml.sax.XMLReader
    public EntityResolver getEntityResolver() {
        return this.entityResolver;
    }

    @Override // org.xml.sax.XMLReader
    public ErrorHandler getErrorHandler() {
        return this.errorHandler;
    }

    @Override // org.xml.sax.XMLReader
    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str.equals("http://xml.org/sax/features/namespaces")) {
            return this.namespaces;
        }
        if (str.equals("http://xml.org/sax/features/namespace-prefixes")) {
            return this.prefixes;
        }
        if (str.equals("http://xml.org/sax/features/xmlns-uris")) {
            return this.uris;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Feature: ");
        stringBuffer.append(str);
        throw new SAXNotRecognizedException(stringBuffer.toString());
    }

    @Override // org.xml.sax.XMLReader
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Property: ");
        stringBuffer.append(str);
        throw new SAXNotRecognizedException(stringBuffer.toString());
    }

    @Override // org.xml.sax.DocumentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        ContentHandler contentHandler = this.contentHandler;
        if (contentHandler != null) {
            contentHandler.ignorableWhitespace(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.XMLReader
    public void parse(String str) throws IOException, SAXException {
        parse(new InputSource(str));
    }

    @Override // org.xml.sax.DocumentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        ContentHandler contentHandler = this.contentHandler;
        if (contentHandler != null) {
            contentHandler.processingInstruction(str, str2);
        }
    }

    public void reportError(String str) throws SAXException {
        ErrorHandler errorHandler = this.errorHandler;
        if (errorHandler != null) {
            errorHandler.error(makeException(str));
        }
    }

    @Override // org.xml.sax.XMLReader
    public void setContentHandler(ContentHandler contentHandler) {
        this.contentHandler = contentHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setDTDHandler(DTDHandler dTDHandler) {
        this.dtdHandler = dTDHandler;
    }

    @Override // org.xml.sax.DocumentHandler
    public void setDocumentLocator(Locator locator) {
        this.locator = locator;
        ContentHandler contentHandler = this.contentHandler;
        if (contentHandler != null) {
            contentHandler.setDocumentLocator(locator);
        }
    }

    @Override // org.xml.sax.XMLReader
    public void setEntityResolver(EntityResolver entityResolver) {
        this.entityResolver = entityResolver;
    }

    @Override // org.xml.sax.XMLReader
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.errorHandler = errorHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str.equals("http://xml.org/sax/features/namespaces")) {
            checkNotParsing(VersionTable.f23321b, str);
            this.namespaces = z;
            if (z || this.prefixes) {
                return;
            }
            this.prefixes = true;
            return;
        }
        if (str.equals("http://xml.org/sax/features/namespace-prefixes")) {
            checkNotParsing(VersionTable.f23321b, str);
            this.prefixes = z;
            if (z || this.namespaces) {
                return;
            }
            this.namespaces = true;
            return;
        }
        if (str.equals("http://xml.org/sax/features/xmlns-uris")) {
            checkNotParsing(VersionTable.f23321b, str);
            this.uris = z;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Feature: ");
            stringBuffer.append(str);
            throw new SAXNotRecognizedException(stringBuffer.toString());
        }
    }

    @Override // org.xml.sax.XMLReader
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Property: ");
        stringBuffer.append(str);
        throw new SAXNotRecognizedException(stringBuffer.toString());
    }

    @Override // org.xml.sax.DocumentHandler
    public void startDocument() throws SAXException {
        ContentHandler contentHandler = this.contentHandler;
        if (contentHandler != null) {
            contentHandler.startDocument();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:37|(3:39|(1:(1:56)(1:57))(1:43)|(3:45|(1:54)(4:47|(1:49)(1:53)|50|51)|52))|58|59|61|52|35) */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00da, code lost:
    
        if (r12 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00dc, code lost:
    
        r12 = new java.util.Vector();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e2, code lost:
    
        r12.addElement(r0);
        r24.atts.addAttribute("", r15, r15, r22, r23);
     */
    @Override // org.xml.sax.DocumentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(java.lang.String r25, org.xml.sax.AttributeList r26) throws org.xml.sax.SAXException {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xml.sax.helpers.ParserAdapter.startElement(java.lang.String, org.xml.sax.AttributeList):void");
    }

    public ParserAdapter(Parser parser) {
        this.parsing = false;
        this.nameParts = new String[3];
        this.parser = null;
        this.atts = null;
        this.namespaces = true;
        this.prefixes = false;
        this.uris = false;
        this.entityResolver = null;
        this.dtdHandler = null;
        this.contentHandler = null;
        this.errorHandler = null;
        setup(parser);
    }

    @Override // org.xml.sax.XMLReader
    public void parse(InputSource inputSource) throws IOException, SAXException {
        if (this.parsing) {
            throw new SAXException("Parser is already in use");
        }
        setupParser();
        this.parsing = true;
        try {
            this.parser.parse(inputSource);
        } finally {
            this.parsing = false;
        }
    }
}
