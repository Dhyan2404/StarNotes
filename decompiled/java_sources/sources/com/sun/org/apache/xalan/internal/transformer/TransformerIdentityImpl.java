package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xalan.internal.templates.OutputProperties;
import com.sun.org.apache.xml.internal.serializer.Serializer;
import com.sun.org.apache.xml.internal.serializer.SerializerFactory;
import com.sun.org.apache.xml.internal.utils.DOMBuilder;
import com.sun.org.apache.xml.internal.utils.DefaultErrorHandler;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Properties;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.sax.TransformerHandler;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Node;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes10.dex */
public class TransformerIdentityImpl extends Transformer implements TransformerHandler, DeclHandler {
    URIResolver m_URIResolver;
    private ErrorListener m_errorListener;
    boolean m_flushedStartDoc;
    boolean m_foundFirstElement;
    private boolean m_isSecureProcessing;
    private OutputProperties m_outputFormat;
    private FileOutputStream m_outputStream;
    private Hashtable m_params;
    private Result m_result;
    private ContentHandler m_resultContentHandler;
    private DTDHandler m_resultDTDHandler;
    private DeclHandler m_resultDeclHandler;
    private LexicalHandler m_resultLexicalHandler;
    private Serializer m_serializer;
    private String m_systemID;

    public TransformerIdentityImpl(boolean z) {
        this.m_flushedStartDoc = false;
        this.m_outputStream = null;
        this.m_errorListener = new DefaultErrorHandler(false);
        this.m_isSecureProcessing = false;
        this.m_outputFormat = new OutputProperties("xml");
        this.m_isSecureProcessing = z;
    }

    private void createResultContentHandler(Result result) throws TransformerException {
        short s;
        Document document;
        if (result instanceof SAXResult) {
            SAXResult sAXResult = (SAXResult) result;
            this.m_resultContentHandler = sAXResult.getHandler();
            this.m_resultLexicalHandler = sAXResult.getLexicalHandler();
            ContentHandler contentHandler = this.m_resultContentHandler;
            if (contentHandler instanceof Serializer) {
                this.m_serializer = (Serializer) contentHandler;
            }
        } else if (result instanceof DOMResult) {
            DOMResult dOMResult = (DOMResult) result;
            Node node = dOMResult.getNode();
            Node nextSibling = dOMResult.getNextSibling();
            if (node != null) {
                s = node.getNodeType();
                document = 9 == s ? (Document) node : node.getOwnerDocument();
            } else {
                try {
                    DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
                    newInstance.setNamespaceAware(true);
                    if (this.m_isSecureProcessing) {
                        try {
                            newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                        } catch (ParserConfigurationException unused) {
                        }
                    }
                    node = newInstance.newDocumentBuilder().newDocument();
                    short nodeType = node.getNodeType();
                    dOMResult.setNode(node);
                    s = nodeType;
                    document = node;
                } catch (ParserConfigurationException e) {
                    throw new TransformerException(e);
                }
            }
            DOMBuilder dOMBuilder = 11 == s ? new DOMBuilder(document, (DocumentFragment) node) : new DOMBuilder(document, node);
            if (nextSibling != null) {
                dOMBuilder.setNextSibling(nextSibling);
            }
            this.m_resultContentHandler = dOMBuilder;
            this.m_resultLexicalHandler = dOMBuilder;
        } else {
            if (!(result instanceof StreamResult)) {
                throw new TransformerException(XSLMessages.createMessage("ER_CANNOT_TRANSFORM_TO_RESULT_TYPE", new Object[]{result.getClass().getName()}));
            }
            StreamResult streamResult = (StreamResult) result;
            this.m_outputFormat.getProperty("method");
            try {
                Serializer serializer = SerializerFactory.getSerializer(this.m_outputFormat.getProperties());
                this.m_serializer = serializer;
                if (streamResult.getWriter() != null) {
                    serializer.setWriter(streamResult.getWriter());
                } else if (streamResult.getOutputStream() != null) {
                    serializer.setOutputStream(streamResult.getOutputStream());
                } else {
                    if (streamResult.getSystemId() == null) {
                        throw new TransformerException(XSLMessages.createMessage("ER_NO_OUTPUT_SPECIFIED", null));
                    }
                    String systemId = streamResult.getSystemId();
                    if (systemId.startsWith("file:///")) {
                        systemId = systemId.substring(8).indexOf(":") > 0 ? systemId.substring(8) : systemId.substring(7);
                    } else if (systemId.startsWith("file:/")) {
                        systemId = systemId.substring(6).indexOf(":") > 0 ? systemId.substring(6) : systemId.substring(5);
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(systemId);
                    this.m_outputStream = fileOutputStream;
                    serializer.setOutputStream(fileOutputStream);
                }
                this.m_resultContentHandler = serializer.asContentHandler();
            } catch (IOException e2) {
                throw new TransformerException(e2);
            }
        }
        ContentHandler contentHandler2 = this.m_resultContentHandler;
        if (contentHandler2 instanceof DTDHandler) {
            this.m_resultDTDHandler = (DTDHandler) contentHandler2;
        }
        if (contentHandler2 instanceof DeclHandler) {
            this.m_resultDeclHandler = (DeclHandler) contentHandler2;
        }
        if (contentHandler2 instanceof LexicalHandler) {
            this.m_resultLexicalHandler = (LexicalHandler) contentHandler2;
        }
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void attributeDecl(String str, String str2, String str3, String str4, String str5) throws SAXException {
        DeclHandler declHandler = this.m_resultDeclHandler;
        if (declHandler != null) {
            declHandler.attributeDecl(str, str2, str3, str4, str5);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        flushStartDoc();
        this.m_resultContentHandler.characters(cArr, i, i2);
    }

    @Override // javax.xml.transform.Transformer
    public void clearParameters() {
        Hashtable hashtable = this.m_params;
        if (hashtable == null) {
            return;
        }
        hashtable.clear();
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) throws SAXException {
        flushStartDoc();
        LexicalHandler lexicalHandler = this.m_resultLexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.comment(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void elementDecl(String str, String str2) throws SAXException {
        DeclHandler declHandler = this.m_resultDeclHandler;
        if (declHandler != null) {
            declHandler.elementDecl(str, str2);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endCDATA() throws SAXException {
        LexicalHandler lexicalHandler = this.m_resultLexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.endCDATA();
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endDTD() throws SAXException {
        LexicalHandler lexicalHandler = this.m_resultLexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.endDTD();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        flushStartDoc();
        this.m_resultContentHandler.endDocument();
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        this.m_resultContentHandler.endElement(str, str2, str3);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String str) throws SAXException {
        LexicalHandler lexicalHandler = this.m_resultLexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.endEntity(str);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
        flushStartDoc();
        this.m_resultContentHandler.endPrefixMapping(str);
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void externalEntityDecl(String str, String str2, String str3) throws SAXException {
        DeclHandler declHandler = this.m_resultDeclHandler;
        if (declHandler != null) {
            declHandler.externalEntityDecl(str, str2, str3);
        }
    }

    public final void flushStartDoc() throws SAXException {
        if (this.m_flushedStartDoc) {
            return;
        }
        if (this.m_resultContentHandler == null) {
            try {
                createResultContentHandler(this.m_result);
            } catch (TransformerException e) {
                throw new SAXException(e);
            }
        }
        this.m_resultContentHandler.startDocument();
        this.m_flushedStartDoc = true;
    }

    @Override // javax.xml.transform.Transformer
    public ErrorListener getErrorListener() {
        return this.m_errorListener;
    }

    @Override // javax.xml.transform.Transformer
    public Properties getOutputProperties() {
        return (Properties) this.m_outputFormat.getProperties().clone();
    }

    @Override // javax.xml.transform.Transformer
    public String getOutputProperty(String str) throws IllegalArgumentException {
        String property = this.m_outputFormat.getProperty(str);
        if (property != null || OutputProperties.isLegalPropertyKey(str)) {
            return property;
        }
        throw new IllegalArgumentException(XSLMessages.createMessage("ER_OUTPUT_PROPERTY_NOT_RECOGNIZED", new Object[]{str}));
    }

    @Override // javax.xml.transform.Transformer
    public Object getParameter(String str) {
        Hashtable hashtable = this.m_params;
        if (hashtable == null) {
            return null;
        }
        return hashtable.get(str);
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public String getSystemId() {
        return this.m_systemID;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public Transformer getTransformer() {
        return this;
    }

    @Override // javax.xml.transform.Transformer
    public URIResolver getURIResolver() {
        return this.m_URIResolver;
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        this.m_resultContentHandler.ignorableWhitespace(cArr, i, i2);
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void internalEntityDecl(String str, String str2) throws SAXException {
        DeclHandler declHandler = this.m_resultDeclHandler;
        if (declHandler != null) {
            declHandler.internalEntityDecl(str, str2);
        }
    }

    @Override // org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) throws SAXException {
        DTDHandler dTDHandler = this.m_resultDTDHandler;
        if (dTDHandler != null) {
            dTDHandler.notationDecl(str, str2, str3);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        flushStartDoc();
        this.m_resultContentHandler.processingInstruction(str, str2);
    }

    @Override // javax.xml.transform.Transformer
    public void reset() {
        this.m_flushedStartDoc = false;
        this.m_foundFirstElement = false;
        this.m_outputStream = null;
        this.m_params.clear();
        this.m_result = null;
        this.m_resultContentHandler = null;
        this.m_resultDeclHandler = null;
        this.m_resultDTDHandler = null;
        this.m_resultLexicalHandler = null;
        this.m_serializer = null;
        this.m_systemID = null;
        this.m_URIResolver = null;
        this.m_outputFormat = new OutputProperties("xml");
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        try {
            if (this.m_resultContentHandler == null) {
                createResultContentHandler(this.m_result);
            }
            this.m_resultContentHandler.setDocumentLocator(locator);
        } catch (TransformerException e) {
            throw new WrappedRuntimeException(e);
        }
    }

    @Override // javax.xml.transform.Transformer
    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        if (errorListener == null) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_NULL_ERROR_HANDLER", null));
        }
        this.m_errorListener = errorListener;
    }

    @Override // javax.xml.transform.Transformer
    public void setOutputProperties(Properties properties) throws IllegalArgumentException {
        if (properties == null) {
            this.m_outputFormat = null;
            return;
        }
        String str = (String) properties.get("method");
        if (str != null) {
            this.m_outputFormat = new OutputProperties(str);
        } else {
            this.m_outputFormat = new OutputProperties();
        }
        this.m_outputFormat.copyFrom(properties);
    }

    @Override // javax.xml.transform.Transformer
    public void setOutputProperty(String str, String str2) throws IllegalArgumentException {
        if (!OutputProperties.isLegalPropertyKey(str)) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_OUTPUT_PROPERTY_NOT_RECOGNIZED", new Object[]{str}));
        }
        this.m_outputFormat.setProperty(str, str2);
    }

    @Override // javax.xml.transform.Transformer
    public void setParameter(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(XSLMessages.createMessage(XSLTErrorResources.ER_INVALID_SET_PARAM_VALUE, new Object[]{str}));
        }
        if (this.m_params == null) {
            this.m_params = new Hashtable();
        }
        this.m_params.put(str, obj);
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public void setResult(Result result) throws IllegalArgumentException {
        if (result == null) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_RESULT_NULL", null));
        }
        this.m_result = result;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public void setSystemId(String str) {
        this.m_systemID = str;
    }

    @Override // javax.xml.transform.Transformer
    public void setURIResolver(URIResolver uRIResolver) {
        this.m_URIResolver = uRIResolver;
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
        flushStartDoc();
        this.m_resultContentHandler.skippedEntity(str);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startCDATA() throws SAXException {
        LexicalHandler lexicalHandler = this.m_resultLexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.startCDATA();
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startDTD(String str, String str2, String str3) throws SAXException {
        flushStartDoc();
        LexicalHandler lexicalHandler = this.m_resultLexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.startDTD(str, str2, str3);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        try {
            if (this.m_resultContentHandler == null) {
                createResultContentHandler(this.m_result);
            }
            this.m_flushedStartDoc = false;
            this.m_foundFirstElement = false;
        } catch (TransformerException e) {
            throw new SAXException(e.getMessage(), e);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (!this.m_foundFirstElement && this.m_serializer != null) {
            this.m_foundFirstElement = true;
            try {
                Serializer switchSerializerIfHTML = SerializerSwitcher.switchSerializerIfHTML(str, str2, this.m_outputFormat.getProperties(), this.m_serializer);
                if (switchSerializerIfHTML != this.m_serializer) {
                    try {
                        ContentHandler asContentHandler = switchSerializerIfHTML.asContentHandler();
                        this.m_resultContentHandler = asContentHandler;
                        if (asContentHandler instanceof DTDHandler) {
                            this.m_resultDTDHandler = (DTDHandler) asContentHandler;
                        }
                        if (asContentHandler instanceof LexicalHandler) {
                            this.m_resultLexicalHandler = (LexicalHandler) asContentHandler;
                        }
                        this.m_serializer = switchSerializerIfHTML;
                    } catch (IOException e) {
                        throw new SAXException(e);
                    }
                }
            } catch (TransformerException e2) {
                throw new SAXException(e2);
            }
        }
        flushStartDoc();
        this.m_resultContentHandler.startElement(str, str2, str3, attributes);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String str) throws SAXException {
        LexicalHandler lexicalHandler = this.m_resultLexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.startEntity(str);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        flushStartDoc();
        this.m_resultContentHandler.startPrefixMapping(str, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
    
        r7 = javax.xml.parsers.DocumentBuilderFactory.newInstance().newDocumentBuilder();
        r6 = r6.getSystemId();
        r0 = new javax.xml.transform.dom.DOMSource(r7.newDocument());
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0051, code lost:
    
        if (r6 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0053, code lost:
    
        r0.setSystemId(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0058, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0062, code lost:
    
        throw new javax.xml.transform.TransformerException(r5.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x002d, code lost:
    
        if (r7.getXMLReader() == null) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0056, code lost:
    
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x003a, code lost:
    
        if (((javax.xml.transform.dom.DOMSource) r6).getNode() == null) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
    
        if (r7.getReader() == null) goto L135;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x016c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v10, types: [org.xml.sax.XMLReader] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v20, types: [com.sun.org.apache.xml.internal.utils.XMLReaderManager] */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.xml.sax.InputSource] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.sun.org.apache.xml.internal.utils.XMLReaderManager] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v24, types: [org.xml.sax.XMLReader] */
    /* JADX WARN: Type inference failed for: r6v25, types: [org.xml.sax.XMLReader] */
    /* JADX WARN: Type inference failed for: r6v39 */
    @Override // javax.xml.transform.Transformer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void transform(javax.xml.transform.Source r6, javax.xml.transform.Result r7) throws javax.xml.transform.TransformerException {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.transformer.TransformerIdentityImpl.transform(javax.xml.transform.Source, javax.xml.transform.Result):void");
    }

    @Override // org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
        DTDHandler dTDHandler = this.m_resultDTDHandler;
        if (dTDHandler != null) {
            dTDHandler.unparsedEntityDecl(str, str2, str3, str4);
        }
    }

    public TransformerIdentityImpl() {
        this(false);
    }
}
