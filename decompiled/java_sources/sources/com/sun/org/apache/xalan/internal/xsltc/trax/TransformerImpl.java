package com.sun.org.apache.xalan.internal.xsltc.trax;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.DOMCache;
import com.sun.org.apache.xalan.internal.xsltc.StripFilter;
import com.sun.org.apache.xalan.internal.xsltc.Translet;
import com.sun.org.apache.xalan.internal.xsltc.TransletException;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.dom.DOMWSFilter;
import com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager;
import com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet;
import com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable;
import com.sun.org.apache.xalan.internal.xsltc.runtime.output.TransletOutputHandlerFactory;
import com.sun.org.apache.xml.internal.serializer.OutputPropertiesFactory;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import com.sun.org.apache.xml.internal.utils.XMLReaderManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownServiceException;
import java.util.Enumeration;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stax.StAXResult;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.mortbay.util.URIUtil;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes10.dex */
public final class TransformerImpl extends Transformer implements DOMCache, ErrorListener {
    private static final String EMPTY_STRING = "";
    private static final String LEXICAL_HANDLER_PROPERTY = "http://xml.org/sax/properties/lexical-handler";
    private static final String NAMESPACE_FEATURE = "http://xml.org/sax/features/namespaces";
    private static final String NAMESPACE_PREFIXES_FEATURE = "http://xml.org/sax/features/namespace-prefixes";
    private static final String NO_STRING = "no";
    private static final String XML_STRING = "xml";
    private static final String YES_STRING = "yes";
    private DOM _dom;
    private XSLTCDTMManager _dtmManager;
    private String _encoding;
    private ErrorListener _errorListener;
    private int _indentNumber;
    private boolean _isIdentity;
    private boolean _isSecureProcessing;
    private String _method;
    private OutputStream _ostream;
    private Hashtable _parameters;
    private Properties _properties;
    private Properties _propertiesClone;
    private XMLReaderManager _readerManager;
    private String _sourceSystemId;
    private TransformerFactoryImpl _tfactory;
    private TransletOutputHandlerFactory _tohFactory;
    private AbstractTranslet _translet;
    private URIResolver _uriResolver;

    /* loaded from: classes10.dex */
    public static class MessageHandler extends com.sun.org.apache.xalan.internal.xsltc.runtime.MessageHandler {
        private ErrorListener _errorListener;

        public MessageHandler(ErrorListener errorListener) {
            this._errorListener = errorListener;
        }

        @Override // com.sun.org.apache.xalan.internal.xsltc.runtime.MessageHandler
        public void displayMessage(String str) {
            ErrorListener errorListener = this._errorListener;
            if (errorListener == null) {
                System.err.println(str);
            } else {
                try {
                    errorListener.warning(new TransformerException(str));
                } catch (TransformerException unused) {
                }
            }
        }
    }

    public TransformerImpl(Properties properties, int i, TransformerFactoryImpl transformerFactoryImpl) {
        this(null, properties, i, transformerFactoryImpl);
        this._isIdentity = true;
    }

    private Properties createOutputProperties(Properties properties) {
        Properties properties2 = new Properties();
        setDefaults(properties2, "xml");
        Properties properties3 = new Properties(properties2);
        if (properties != null) {
            Enumeration<?> propertyNames = properties.propertyNames();
            while (propertyNames.hasMoreElements()) {
                String str = (String) propertyNames.nextElement();
                properties3.setProperty(str, properties.getProperty(str));
            }
        } else {
            properties3.setProperty("encoding", this._translet._encoding);
            String str2 = this._translet._method;
            if (str2 != null) {
                properties3.setProperty("method", str2);
            }
        }
        String property = properties3.getProperty("method");
        if (property != null) {
            if (property.equals("html")) {
                setDefaults(properties2, "html");
            } else if (property.equals("text")) {
                setDefaults(properties2, "text");
            }
        }
        return properties3;
    }

    private DOM getDOM(Source source) throws TransformerException {
        DOM dom;
        DOMWSFilter dOMWSFilter = null;
        try {
            if (source != null) {
                AbstractTranslet abstractTranslet = this._translet;
                if (abstractTranslet != null && (abstractTranslet instanceof StripFilter)) {
                    dOMWSFilter = new DOMWSFilter(abstractTranslet);
                }
                DOMWSFilter dOMWSFilter2 = dOMWSFilter;
                AbstractTranslet abstractTranslet2 = this._translet;
                boolean hasIdCall = abstractTranslet2 != null ? abstractTranslet2.hasIdCall() : false;
                if (this._dtmManager == null) {
                    this._dtmManager = (XSLTCDTMManager) this._tfactory.getDTMManagerClass().newInstance();
                }
                dom = (DOM) this._dtmManager.getDTM(source, false, dOMWSFilter2, true, false, false, 0, hasIdCall);
            } else {
                dom = this._dom;
                if (dom == null) {
                    return null;
                }
                this._dom = null;
            }
            if (!this._isIdentity) {
                this._translet.prepassDocument(dom);
            }
            return dom;
        } catch (Exception e) {
            if (this._errorListener != null) {
                postErrorToListener(e.getMessage());
            }
            throw new TransformerException(e);
        }
    }

    private boolean isDefaultProperty(String str, Properties properties) {
        return properties.get(str) == null;
    }

    private String makeCDATAString(Hashtable hashtable) {
        if (hashtable == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration keys = hashtable.keys();
        if (keys.hasMoreElements()) {
            stringBuffer.append((String) keys.nextElement());
            while (keys.hasMoreElements()) {
                String str = (String) keys.nextElement();
                stringBuffer.append(' ');
                stringBuffer.append(str);
            }
        }
        return stringBuffer.toString();
    }

    private void postErrorToListener(String str) {
        try {
            this._errorListener.error(new TransformerException(str));
        } catch (TransformerException unused) {
        }
    }

    private void postWarningToListener(String str) {
        try {
            this._errorListener.warning(new TransformerException(str));
        } catch (TransformerException unused) {
        }
    }

    private void setDefaults(Properties properties, String str) {
        Properties defaultMethodProperties = OutputPropertiesFactory.getDefaultMethodProperties(str);
        Enumeration<?> propertyNames = defaultMethodProperties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str2 = (String) propertyNames.nextElement();
            properties.setProperty(str2, defaultMethodProperties.getProperty(str2));
        }
    }

    private void transferOutputProperties(AbstractTranslet abstractTranslet) {
        Properties properties = this._properties;
        if (properties == null) {
            return;
        }
        Enumeration<?> propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str = (String) propertyNames.nextElement();
            String str2 = (String) this._properties.get(str);
            if (str2 != null) {
                if (str.equals("encoding")) {
                    abstractTranslet._encoding = str2;
                } else if (str.equals("method")) {
                    abstractTranslet._method = str2;
                } else if (str.equals("doctype-public")) {
                    abstractTranslet._doctypePublic = str2;
                } else if (str.equals("doctype-system")) {
                    abstractTranslet._doctypeSystem = str2;
                } else if (str.equals("media-type")) {
                    abstractTranslet._mediaType = str2;
                } else if (str.equals("standalone")) {
                    abstractTranslet._standalone = str2;
                } else if (str.equals("version")) {
                    abstractTranslet._version = str2;
                } else {
                    if (str.equals("omit-xml-declaration")) {
                        abstractTranslet._omitHeader = str2.toLowerCase().equals(YES_STRING);
                    } else if (str.equals("indent")) {
                        abstractTranslet._indent = str2.toLowerCase().equals(YES_STRING);
                    } else if (str.equals("{http://xml.apache.org/xslt}indent-amount")) {
                        abstractTranslet._indentamount = Integer.parseInt(str2);
                    } else if (str.equals(OutputPropertiesFactory.S_KEY_INDENT_AMOUNT)) {
                        abstractTranslet._indentamount = Integer.parseInt(str2);
                    } else if (str.equals("cdata-section-elements")) {
                        abstractTranslet._cdata = null;
                        StringTokenizer stringTokenizer = new StringTokenizer(str2);
                        while (stringTokenizer.hasMoreTokens()) {
                            abstractTranslet.addCdataElement(stringTokenizer.nextToken());
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void transformIdentity(javax.xml.transform.Source r7, com.sun.org.apache.xml.internal.serializer.SerializationHandler r8) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.trax.TransformerImpl.transformIdentity(javax.xml.transform.Source, com.sun.org.apache.xml.internal.serializer.SerializationHandler):void");
    }

    private boolean validOutputProperty(String str) {
        return str.equals("encoding") || str.equals("method") || str.equals("indent") || str.equals("doctype-public") || str.equals("doctype-system") || str.equals("cdata-section-elements") || str.equals("media-type") || str.equals("omit-xml-declaration") || str.equals("standalone") || str.equals("version") || str.charAt(0) == '{';
    }

    @Override // javax.xml.transform.Transformer
    public void clearParameters() {
        Hashtable hashtable;
        if (!this._isIdentity || (hashtable = this._parameters) == null) {
            this._translet.clearParameters();
        } else {
            hashtable.clear();
        }
    }

    @Override // javax.xml.transform.ErrorListener
    public void error(TransformerException transformerException) throws TransformerException {
        Throwable exception = transformerException.getException();
        if (exception != null) {
            System.err.println(new ErrorMsg(ErrorMsg.ERROR_PLUS_WRAPPED_MSG, transformerException.getMessageAndLocation(), exception.getMessage()));
            throw transformerException;
        }
        System.err.println(new ErrorMsg(ErrorMsg.ERROR_MSG, transformerException.getMessageAndLocation()));
        throw transformerException;
    }

    @Override // javax.xml.transform.ErrorListener
    public void fatalError(TransformerException transformerException) throws TransformerException {
        Throwable exception = transformerException.getException();
        if (exception != null) {
            System.err.println(new ErrorMsg(ErrorMsg.FATAL_ERR_PLUS_WRAPPED_MSG, transformerException.getMessageAndLocation(), exception.getMessage()));
            throw transformerException;
        }
        System.err.println(new ErrorMsg(ErrorMsg.FATAL_ERR_MSG, transformerException.getMessageAndLocation()));
        throw transformerException;
    }

    @Override // javax.xml.transform.Transformer
    public ErrorListener getErrorListener() {
        return this._errorListener;
    }

    public SerializationHandler getOutputHandler(Result result) throws TransformerException {
        String str;
        URI uri;
        String str2 = "file:";
        this._method = (String) this._properties.get("method");
        this._encoding = this._properties.getProperty("encoding");
        TransletOutputHandlerFactory newInstance = TransletOutputHandlerFactory.newInstance();
        this._tohFactory = newInstance;
        newInstance.setEncoding(this._encoding);
        String str3 = this._method;
        if (str3 != null) {
            this._tohFactory.setOutputMethod(str3);
        }
        int i = this._indentNumber;
        if (i >= 0) {
            this._tohFactory.setIndentNumber(i);
        }
        try {
            if (result instanceof SAXResult) {
                SAXResult sAXResult = (SAXResult) result;
                this._tohFactory.setHandler(sAXResult.getHandler());
                LexicalHandler lexicalHandler = sAXResult.getLexicalHandler();
                if (lexicalHandler != null) {
                    this._tohFactory.setLexicalHandler(lexicalHandler);
                }
                this._tohFactory.setOutputType(1);
                return this._tohFactory.getSerializationHandler();
            }
            if (result instanceof StAXResult) {
                if (((StAXResult) result).getXMLEventWriter() != null) {
                    this._tohFactory.setXMLEventWriter(((StAXResult) result).getXMLEventWriter());
                } else if (((StAXResult) result).getXMLStreamWriter() != null) {
                    this._tohFactory.setXMLStreamWriter(((StAXResult) result).getXMLStreamWriter());
                }
                this._tohFactory.setOutputType(3);
                return this._tohFactory.getSerializationHandler();
            }
            if (result instanceof DOMResult) {
                this._tohFactory.setNode(((DOMResult) result).getNode());
                this._tohFactory.setNextSibling(((DOMResult) result).getNextSibling());
                this._tohFactory.setOutputType(2);
                return this._tohFactory.getSerializationHandler();
            }
            if (!(result instanceof StreamResult)) {
                return null;
            }
            StreamResult streamResult = (StreamResult) result;
            this._tohFactory.setOutputType(0);
            Writer writer = streamResult.getWriter();
            if (writer != null) {
                this._tohFactory.setWriter(writer);
                return this._tohFactory.getSerializationHandler();
            }
            OutputStream outputStream = streamResult.getOutputStream();
            if (outputStream != null) {
                this._tohFactory.setOutputStream(outputStream);
                return this._tohFactory.getSerializationHandler();
            }
            String systemId = result.getSystemId();
            if (systemId == null) {
                throw new TransformerException(new ErrorMsg(ErrorMsg.JAXP_NO_RESULT_ERR).toString());
            }
            if (!systemId.startsWith("file:")) {
                if (systemId.startsWith(URIUtil.HTTP_COLON)) {
                    URLConnection openConnection = new URL(systemId).openConnection();
                    TransletOutputHandlerFactory transletOutputHandlerFactory = this._tohFactory;
                    OutputStream outputStream2 = openConnection.getOutputStream();
                    this._ostream = outputStream2;
                    transletOutputHandlerFactory.setOutputStream(outputStream2);
                    return this._tohFactory.getSerializationHandler();
                }
                URL url = new File(systemId).toURL();
                TransletOutputHandlerFactory transletOutputHandlerFactory2 = this._tohFactory;
                FileOutputStream fileOutputStream = new FileOutputStream(url.getFile());
                this._ostream = fileOutputStream;
                transletOutputHandlerFactory2.setOutputStream(fileOutputStream);
                return this._tohFactory.getSerializationHandler();
            }
            try {
                uri = (URI) ObjectFactory.findProviderClass("java.net.URI", ObjectFactory.findClassLoader(), true).getConstructor(String.class).newInstance(systemId);
            } catch (ClassNotFoundException | Exception unused) {
                str2 = systemId;
            }
            try {
                String host = uri.getHost();
                String path = uri.getPath();
                if (path == null) {
                    path = "";
                }
                if (host != null) {
                    str = "file://" + host + path;
                } else {
                    str = "file:" + path;
                }
            } catch (ClassNotFoundException | Exception unused2) {
                str = str2;
                this._tohFactory.setOutputStream(new FileOutputStream(new URL(str).getFile()));
                return this._tohFactory.getSerializationHandler();
            }
            this._tohFactory.setOutputStream(new FileOutputStream(new URL(str).getFile()));
            return this._tohFactory.getSerializationHandler();
        } catch (UnknownServiceException e) {
            throw new TransformerException(e);
        } catch (IOException e2) {
            throw new TransformerException(e2);
        } catch (ParserConfigurationException e3) {
            throw new TransformerException(e3);
        }
    }

    @Override // javax.xml.transform.Transformer
    public Properties getOutputProperties() {
        return (Properties) this._properties.clone();
    }

    @Override // javax.xml.transform.Transformer
    public String getOutputProperty(String str) throws IllegalArgumentException {
        if (validOutputProperty(str)) {
            return this._properties.getProperty(str);
        }
        throw new IllegalArgumentException(new ErrorMsg(ErrorMsg.JAXP_UNKNOWN_PROP_ERR, str).toString());
    }

    @Override // javax.xml.transform.Transformer
    public final Object getParameter(String str) {
        if (!this._isIdentity) {
            return this._translet.getParameter(str);
        }
        Hashtable hashtable = this._parameters;
        if (hashtable != null) {
            return hashtable.get(str);
        }
        return null;
    }

    public TransformerFactoryImpl getTransformerFactory() {
        return this._tfactory;
    }

    public AbstractTranslet getTranslet() {
        return this._translet;
    }

    public TransletOutputHandlerFactory getTransletOutputHandlerFactory() {
        return this._tohFactory;
    }

    @Override // javax.xml.transform.Transformer
    public URIResolver getURIResolver() {
        return this._uriResolver;
    }

    public boolean isIdentity() {
        return this._isIdentity;
    }

    public boolean isSecureProcessing() {
        return this._isSecureProcessing;
    }

    @Override // javax.xml.transform.Transformer
    public void reset() {
        this._method = null;
        this._encoding = null;
        this._sourceSystemId = null;
        this._errorListener = this;
        this._uriResolver = null;
        this._dom = null;
        this._parameters = null;
        this._indentNumber = 0;
        setOutputProperties(null);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOMCache
    public DOM retrieveDocument(String str, String str2, Translet translet) {
        try {
            if (str2.length() == 0) {
                str2 = new String(str);
            }
            Source resolve = this._uriResolver.resolve(str2, str);
            return resolve == null ? getDOM(new StreamSource(SystemIDResolver.getAbsoluteURI(str2, str))) : getDOM(resolve);
        } catch (TransformerException e) {
            if (this._errorListener == null) {
                return null;
            }
            postErrorToListener("File not found: " + e.getMessage());
            return null;
        }
    }

    public void setDOM(DOM dom) {
        this._dom = dom;
    }

    @Override // javax.xml.transform.Transformer
    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        if (errorListener == null) {
            throw new IllegalArgumentException(new ErrorMsg(ErrorMsg.ERROR_LISTENER_NULL_ERR, "Transformer").toString());
        }
        this._errorListener = errorListener;
        AbstractTranslet abstractTranslet = this._translet;
        if (abstractTranslet != null) {
            abstractTranslet.setMessageHandler(new MessageHandler(errorListener));
        }
    }

    @Override // javax.xml.transform.Transformer
    public void setOutputProperties(Properties properties) throws IllegalArgumentException {
        if (properties == null) {
            this._properties = this._propertiesClone;
            return;
        }
        Enumeration<?> propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str = (String) propertyNames.nextElement();
            if (!isDefaultProperty(str, properties)) {
                if (!validOutputProperty(str)) {
                    throw new IllegalArgumentException(new ErrorMsg(ErrorMsg.JAXP_UNKNOWN_PROP_ERR, str).toString());
                }
                this._properties.setProperty(str, properties.getProperty(str));
            }
        }
    }

    @Override // javax.xml.transform.Transformer
    public void setOutputProperty(String str, String str2) throws IllegalArgumentException {
        if (!validOutputProperty(str)) {
            throw new IllegalArgumentException(new ErrorMsg(ErrorMsg.JAXP_UNKNOWN_PROP_ERR, str).toString());
        }
        this._properties.setProperty(str, str2);
    }

    @Override // javax.xml.transform.Transformer
    public void setParameter(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(new ErrorMsg(ErrorMsg.JAXP_INVALID_SET_PARAM_VALUE, str).toString());
        }
        if (!this._isIdentity) {
            this._translet.addParameter(str, obj);
            return;
        }
        if (this._parameters == null) {
            this._parameters = new Hashtable();
        }
        this._parameters.put(str, obj);
    }

    public void setSecureProcessing(boolean z) {
        this._isSecureProcessing = z;
    }

    @Override // javax.xml.transform.Transformer
    public void setURIResolver(URIResolver uRIResolver) {
        this._uriResolver = uRIResolver;
    }

    @Override // javax.xml.transform.Transformer
    public void transform(Source source, Result result) throws TransformerException {
        if (!this._isIdentity) {
            AbstractTranslet abstractTranslet = this._translet;
            if (abstractTranslet != null) {
                transferOutputProperties(abstractTranslet);
            } else {
                throw new TransformerException(new ErrorMsg(ErrorMsg.JAXP_NO_TRANSLET_ERR).toString());
            }
        }
        SerializationHandler outputHandler = getOutputHandler(result);
        if (outputHandler != null) {
            if (this._uriResolver != null && !this._isIdentity) {
                this._translet.setDOMCache(this);
            }
            if (this._isIdentity) {
                transferOutputProperties(outputHandler);
            }
            transform(source, outputHandler, this._encoding);
            try {
                if (result instanceof DOMResult) {
                    ((DOMResult) result).setNode(this._tohFactory.getNode());
                } else if (result instanceof StAXResult) {
                    if (((StAXResult) result).getXMLEventWriter() != null) {
                        this._tohFactory.getXMLEventWriter().flush();
                    } else if (((StAXResult) result).getXMLStreamWriter() != null) {
                        this._tohFactory.getXMLStreamWriter().flush();
                    }
                }
                return;
            } catch (Exception unused) {
                System.out.println("Result writing error");
                return;
            }
        }
        throw new TransformerException(new ErrorMsg(ErrorMsg.JAXP_NO_HANDLER_ERR).toString());
    }

    @Override // javax.xml.transform.ErrorListener
    public void warning(TransformerException transformerException) throws TransformerException {
        Throwable exception = transformerException.getException();
        if (exception != null) {
            System.err.println(new ErrorMsg(ErrorMsg.WARNING_PLUS_WRAPPED_MSG, transformerException.getMessageAndLocation(), exception.getMessage()));
        } else {
            System.err.println(new ErrorMsg(ErrorMsg.WARNING_MSG, transformerException.getMessageAndLocation()));
        }
    }

    public TransformerImpl(Translet translet, Properties properties, int i, TransformerFactoryImpl transformerFactoryImpl) {
        this._translet = null;
        this._method = null;
        this._encoding = null;
        this._sourceSystemId = null;
        this._errorListener = this;
        this._uriResolver = null;
        this._tohFactory = null;
        this._dom = null;
        this._tfactory = null;
        this._ostream = null;
        this._dtmManager = null;
        this._readerManager = XMLReaderManager.getInstance();
        this._isIdentity = false;
        this._isSecureProcessing = false;
        this._parameters = null;
        this._translet = (AbstractTranslet) translet;
        Properties createOutputProperties = createOutputProperties(properties);
        this._properties = createOutputProperties;
        this._propertiesClone = (Properties) createOutputProperties.clone();
        this._indentNumber = i;
        this._tfactory = transformerFactoryImpl;
    }

    private void transform(Source source, SerializationHandler serializationHandler, String str) throws TransformerException {
        try {
            try {
                try {
                    if (((source instanceof StreamSource) && source.getSystemId() == null && ((StreamSource) source).getInputStream() == null && ((StreamSource) source).getReader() == null) || (((source instanceof SAXSource) && ((SAXSource) source).getInputSource() == null && ((SAXSource) source).getXMLReader() == null) || ((source instanceof DOMSource) && ((DOMSource) source).getNode() == null))) {
                        DocumentBuilder newDocumentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                        String systemId = source.getSystemId();
                        DOMSource dOMSource = new DOMSource(newDocumentBuilder.newDocument());
                        if (systemId != null) {
                            dOMSource.setSystemId(systemId);
                        }
                        source = dOMSource;
                    }
                    if (this._isIdentity) {
                        transformIdentity(source, serializationHandler);
                    } else {
                        this._translet.transform(getDOM(source), serializationHandler);
                    }
                    this._dtmManager = null;
                    OutputStream outputStream = this._ostream;
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException unused) {
                        }
                        this._ostream = null;
                    }
                } catch (RuntimeException e) {
                    if (this._errorListener != null) {
                        postErrorToListener(e.getMessage());
                    }
                    throw new TransformerException(e);
                }
            } catch (TransletException e2) {
                if (this._errorListener != null) {
                    postErrorToListener(e2.getMessage());
                }
                throw new TransformerException(e2);
            } catch (Exception e3) {
                if (this._errorListener != null) {
                    postErrorToListener(e3.getMessage());
                }
                throw new TransformerException(e3);
            }
        } catch (Throwable th) {
            this._dtmManager = null;
            throw th;
        }
    }

    public void transferOutputProperties(SerializationHandler serializationHandler) {
        String str;
        Properties properties = this._properties;
        if (properties == null) {
            return;
        }
        Enumeration<?> propertyNames = properties.propertyNames();
        String str2 = null;
        String str3 = null;
        while (propertyNames.hasMoreElements()) {
            String str4 = (String) propertyNames.nextElement();
            String str5 = (String) this._properties.get(str4);
            if (str5 != null) {
                if (str4.equals("doctype-public")) {
                    str2 = str5;
                } else if (str4.equals("doctype-system")) {
                    str3 = str5;
                } else if (str4.equals("media-type")) {
                    serializationHandler.setMediaType(str5);
                } else if (str4.equals("standalone")) {
                    serializationHandler.setStandalone(str5);
                } else if (str4.equals("version")) {
                    serializationHandler.setVersion(str5);
                } else {
                    if (str4.equals("omit-xml-declaration")) {
                        serializationHandler.setOmitXMLDeclaration(str5.toLowerCase().equals(YES_STRING));
                    } else if (str4.equals("indent")) {
                        serializationHandler.setIndent(str5.toLowerCase().equals(YES_STRING));
                    } else if (str4.equals("{http://xml.apache.org/xslt}indent-amount")) {
                        serializationHandler.setIndentAmount(Integer.parseInt(str5));
                    } else if (str4.equals(OutputPropertiesFactory.S_KEY_INDENT_AMOUNT)) {
                        serializationHandler.setIndentAmount(Integer.parseInt(str5));
                    } else if (str4.equals("cdata-section-elements")) {
                        StringTokenizer stringTokenizer = new StringTokenizer(str5);
                        Vector vector = null;
                        while (stringTokenizer.hasMoreTokens()) {
                            String nextToken = stringTokenizer.nextToken();
                            int lastIndexOf = nextToken.lastIndexOf(58);
                            if (lastIndexOf > 0) {
                                str = nextToken.substring(0, lastIndexOf);
                                nextToken = nextToken.substring(lastIndexOf + 1);
                            } else {
                                str = null;
                            }
                            if (vector == null) {
                                vector = new Vector();
                            }
                            vector.addElement(str);
                            vector.addElement(nextToken);
                        }
                        serializationHandler.setCdataSectionElements(vector);
                    }
                }
            }
        }
        if (str2 == null && str3 == null) {
            return;
        }
        serializationHandler.setDoctype(str3, str2);
    }
}
