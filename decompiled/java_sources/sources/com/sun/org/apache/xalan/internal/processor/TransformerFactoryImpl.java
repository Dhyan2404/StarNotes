package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xalan.internal.transformer.TrAXFilter;
import com.sun.org.apache.xalan.internal.transformer.TransformerIdentityImpl;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.DOM2Helper;
import com.sun.org.apache.xml.internal.utils.DefaultErrorHandler;
import com.sun.org.apache.xml.internal.utils.StopParseException;
import com.sun.org.apache.xml.internal.utils.StylesheetPIHandler;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import com.sun.org.apache.xml.internal.utils.TreeWalker;
import java.io.IOException;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.sax.SAXTransformerFactory;
import javax.xml.transform.sax.TemplatesHandler;
import javax.xml.transform.sax.TransformerHandler;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

/* loaded from: classes10.dex */
public class TransformerFactoryImpl extends SAXTransformerFactory {
    public static final String FEATURE_INCREMENTAL = "http://xml.apache.org/xalan/features/incremental";
    public static final String FEATURE_OPTIMIZE = "http://xml.apache.org/xalan/features/optimize";
    public static final String FEATURE_SOURCE_LOCATION = "http://xml.apache.org/xalan/properties/source-location";
    public static final String XSLT_PROPERTIES = "com/sun/org/apache/xalan/internal/res/XSLTInfo.properties";
    URIResolver m_uriResolver;
    private boolean m_isSecureProcessing = false;
    private String m_DOMsystemID = null;
    private boolean m_optimize = true;
    private boolean m_source_location = false;
    private boolean m_incremental = false;
    private ErrorListener m_errorListener = new DefaultErrorHandler(false);

    @Override // javax.xml.transform.TransformerFactory
    public Source getAssociatedStylesheet(Source source, String str, String str2, String str3) throws TransformerConfigurationException {
        Node node;
        InputSource inputSource;
        String systemId;
        XMLReader xMLReader = null;
        if (source instanceof DOMSource) {
            DOMSource dOMSource = (DOMSource) source;
            Node node2 = dOMSource.getNode();
            systemId = dOMSource.getSystemId();
            node = node2;
            inputSource = null;
        } else {
            InputSource sourceToInputSource = SAXSource.sourceToInputSource(source);
            node = null;
            inputSource = sourceToInputSource;
            systemId = sourceToInputSource.getSystemId();
        }
        StylesheetPIHandler stylesheetPIHandler = new StylesheetPIHandler(systemId, str, str2, str3);
        URIResolver uRIResolver = this.m_uriResolver;
        if (uRIResolver != null) {
            stylesheetPIHandler.setURIResolver(uRIResolver);
        }
        try {
            try {
                if (node != null) {
                    new TreeWalker(stylesheetPIHandler, new DOM2Helper(), systemId).traverse(node);
                } else {
                    try {
                        try {
                            SAXParserFactory newInstance = SAXParserFactory.newInstance();
                            newInstance.setNamespaceAware(true);
                            if (this.m_isSecureProcessing) {
                                try {
                                    newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                                } catch (SAXException unused) {
                                }
                            }
                            xMLReader = newInstance.newSAXParser().getXMLReader();
                        } catch (AbstractMethodError | NoSuchMethodError unused2) {
                        }
                        if (xMLReader == null) {
                            xMLReader = XMLReaderFactory.createXMLReader();
                        }
                        xMLReader.setContentHandler(stylesheetPIHandler);
                        xMLReader.parse(inputSource);
                    } catch (FactoryConfigurationError e) {
                        throw new SAXException(e.toString());
                    } catch (ParserConfigurationException e2) {
                        throw new SAXException(e2);
                    }
                }
            } catch (IOException e3) {
                throw new TransformerConfigurationException("getAssociatedStylesheets failed", e3);
            }
        } catch (StopParseException unused3) {
        } catch (SAXException e4) {
            throw new TransformerConfigurationException("getAssociatedStylesheets failed", e4);
        }
        return stylesheetPIHandler.getAssociatedStylesheet();
    }

    @Override // javax.xml.transform.TransformerFactory
    public Object getAttribute(String str) throws IllegalArgumentException {
        if (str.equals(FEATURE_INCREMENTAL)) {
            return new Boolean(this.m_incremental);
        }
        if (str.equals(FEATURE_OPTIMIZE)) {
            return new Boolean(this.m_optimize);
        }
        if (str.equals("http://xml.apache.org/xalan/properties/source-location")) {
            return new Boolean(this.m_source_location);
        }
        throw new IllegalArgumentException(XSLMessages.createMessage("ER_ATTRIB_VALUE_NOT_RECOGNIZED", new Object[]{str}));
    }

    public String getDOMsystemID() {
        return this.m_DOMsystemID;
    }

    @Override // javax.xml.transform.TransformerFactory
    public ErrorListener getErrorListener() {
        return this.m_errorListener;
    }

    @Override // javax.xml.transform.TransformerFactory
    public boolean getFeature(String str) {
        if (str == null) {
            throw new NullPointerException(XSLMessages.createMessage(XSLTErrorResources.ER_GET_FEATURE_NULL_NAME, null));
        }
        if (DOMResult.FEATURE == str || DOMSource.FEATURE == str || SAXResult.FEATURE == str || SAXSource.FEATURE == str || StreamResult.FEATURE == str || StreamSource.FEATURE == str || SAXTransformerFactory.FEATURE == str || SAXTransformerFactory.FEATURE_XMLFILTER == str || DOMResult.FEATURE.equals(str) || DOMSource.FEATURE.equals(str) || SAXResult.FEATURE.equals(str) || SAXSource.FEATURE.equals(str) || StreamResult.FEATURE.equals(str) || StreamSource.FEATURE.equals(str) || SAXTransformerFactory.FEATURE.equals(str) || SAXTransformerFactory.FEATURE_XMLFILTER.equals(str)) {
            return true;
        }
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            return this.m_isSecureProcessing;
        }
        return false;
    }

    @Override // javax.xml.transform.TransformerFactory
    public URIResolver getURIResolver() {
        return this.m_uriResolver;
    }

    public boolean isSecureProcessing() {
        return this.m_isSecureProcessing;
    }

    @Override // javax.xml.transform.TransformerFactory
    public Templates newTemplates(Source source) throws TransformerConfigurationException {
        String systemId = source.getSystemId();
        if (systemId != null) {
            systemId = SystemIDResolver.getAbsoluteURI(systemId);
        }
        if (source instanceof DOMSource) {
            Node node = ((DOMSource) source).getNode();
            if (node != null) {
                return processFromNode(node, systemId);
            }
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_ILLEGAL_DOMSOURCE_INPUT", null));
        }
        TemplatesHandler newTemplatesHandler = newTemplatesHandler();
        newTemplatesHandler.setSystemId(systemId);
        try {
            try {
                InputSource sourceToInputSource = SAXSource.sourceToInputSource(source);
                sourceToInputSource.setSystemId(systemId);
                XMLReader xMLReader = source instanceof SAXSource ? ((SAXSource) source).getXMLReader() : null;
                if (xMLReader == null) {
                    try {
                        try {
                            SAXParserFactory newInstance = SAXParserFactory.newInstance();
                            newInstance.setNamespaceAware(true);
                            if (this.m_isSecureProcessing) {
                                try {
                                    newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                                } catch (SAXException unused) {
                                }
                            }
                            xMLReader = newInstance.newSAXParser().getXMLReader();
                        } catch (AbstractMethodError | NoSuchMethodError unused2) {
                        }
                    } catch (FactoryConfigurationError e) {
                        throw new SAXException(e.toString());
                    } catch (ParserConfigurationException e2) {
                        throw new SAXException(e2);
                    }
                }
                if (xMLReader == null) {
                    xMLReader = XMLReaderFactory.createXMLReader();
                }
                xMLReader.setContentHandler(newTemplatesHandler);
                xMLReader.parse(sourceToInputSource);
            } catch (Exception e3) {
                ErrorListener errorListener = this.m_errorListener;
                if (errorListener == null) {
                    throw new TransformerConfigurationException(e3.getMessage(), e3);
                }
                try {
                    errorListener.fatalError(new TransformerException(e3));
                    return null;
                } catch (TransformerConfigurationException e4) {
                    throw e4;
                } catch (TransformerException e5) {
                    throw new TransformerConfigurationException(e5);
                }
            }
        } catch (SAXException e6) {
            ErrorListener errorListener2 = this.m_errorListener;
            if (errorListener2 == null) {
                throw new TransformerConfigurationException(e6.getMessage(), e6);
            }
            try {
                errorListener2.fatalError(new TransformerException(e6));
            } catch (TransformerConfigurationException e7) {
                throw e7;
            } catch (TransformerException e8) {
                throw new TransformerConfigurationException(e8);
            }
        }
        return newTemplatesHandler.getTemplates();
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TemplatesHandler newTemplatesHandler() throws TransformerConfigurationException {
        return new StylesheetHandler(this);
    }

    @Override // javax.xml.transform.TransformerFactory
    public Transformer newTransformer(Source source) throws TransformerConfigurationException {
        try {
            Templates newTemplates = newTemplates(source);
            if (newTemplates == null) {
                return null;
            }
            Transformer newTransformer = newTemplates.newTransformer();
            newTransformer.setURIResolver(this.m_uriResolver);
            return newTransformer;
        } catch (TransformerConfigurationException e) {
            ErrorListener errorListener = this.m_errorListener;
            if (errorListener != null) {
                try {
                    errorListener.fatalError(e);
                    return null;
                } catch (TransformerConfigurationException e2) {
                    throw e2;
                } catch (TransformerException e3) {
                    throw new TransformerConfigurationException(e3);
                }
            }
            throw e;
        }
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler(Source source) throws TransformerConfigurationException {
        Templates newTemplates = newTemplates(source);
        if (newTemplates == null) {
            return null;
        }
        return newTransformerHandler(newTemplates);
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public XMLFilter newXMLFilter(Source source) throws TransformerConfigurationException {
        Templates newTemplates = newTemplates(source);
        if (newTemplates == null) {
            return null;
        }
        return newXMLFilter(newTemplates);
    }

    public Templates processFromNode(Node node) throws TransformerConfigurationException {
        try {
            TemplatesHandler newTemplatesHandler = newTemplatesHandler();
            new TreeWalker(newTemplatesHandler, new DOM2Helper(), newTemplatesHandler.getSystemId()).traverse(node);
            return newTemplatesHandler.getTemplates();
        } catch (TransformerConfigurationException e) {
            throw e;
        } catch (SAXException e2) {
            ErrorListener errorListener = this.m_errorListener;
            if (errorListener != null) {
                try {
                    errorListener.fatalError(new TransformerException(e2));
                    return null;
                } catch (TransformerConfigurationException e3) {
                    throw e3;
                } catch (TransformerException e4) {
                    throw new TransformerConfigurationException(e4);
                }
            }
            throw new TransformerConfigurationException(XSLMessages.createMessage("ER_PROCESSFROMNODE_FAILED", null), e2);
        } catch (Exception e5) {
            ErrorListener errorListener2 = this.m_errorListener;
            if (errorListener2 != null) {
                try {
                    errorListener2.fatalError(new TransformerException(e5));
                    return null;
                } catch (TransformerConfigurationException e6) {
                    throw e6;
                } catch (TransformerException e7) {
                    throw new TransformerConfigurationException(e7);
                }
            }
            throw new TransformerConfigurationException(XSLMessages.createMessage("ER_PROCESSFROMNODE_FAILED", null), e5);
        }
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setAttribute(String str, Object obj) throws IllegalArgumentException {
        if (str.equals(FEATURE_INCREMENTAL)) {
            if (obj instanceof Boolean) {
                this.m_incremental = ((Boolean) obj).booleanValue();
                return;
            } else {
                if (!(obj instanceof String)) {
                    throw new IllegalArgumentException(XSLMessages.createMessage("ER_BAD_VALUE", new Object[]{str, obj}));
                }
                this.m_incremental = new Boolean((String) obj).booleanValue();
                return;
            }
        }
        if (str.equals(FEATURE_OPTIMIZE)) {
            if (obj instanceof Boolean) {
                this.m_optimize = ((Boolean) obj).booleanValue();
                return;
            } else {
                if (!(obj instanceof String)) {
                    throw new IllegalArgumentException(XSLMessages.createMessage("ER_BAD_VALUE", new Object[]{str, obj}));
                }
                this.m_optimize = new Boolean((String) obj).booleanValue();
                return;
            }
        }
        if (!str.equals("http://xml.apache.org/xalan/properties/source-location")) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_NOT_SUPPORTED", new Object[]{str}));
        }
        if (obj instanceof Boolean) {
            this.m_source_location = ((Boolean) obj).booleanValue();
        } else {
            if (!(obj instanceof String)) {
                throw new IllegalArgumentException(XSLMessages.createMessage("ER_BAD_VALUE", new Object[]{str, obj}));
            }
            this.m_source_location = new Boolean((String) obj).booleanValue();
        }
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        if (errorListener == null) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_ERRORLISTENER", null));
        }
        this.m_errorListener = errorListener;
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setFeature(String str, boolean z) throws TransformerConfigurationException {
        if (str == null) {
            throw new NullPointerException(XSLMessages.createMessage(XSLTErrorResources.ER_SET_FEATURE_NULL_NAME, null));
        }
        if (!str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            throw new TransformerConfigurationException(XSLMessages.createMessage(XSLTErrorResources.ER_UNSUPPORTED_FEATURE, new Object[]{str}));
        }
        this.m_isSecureProcessing = z;
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setURIResolver(URIResolver uRIResolver) {
        this.m_uriResolver = uRIResolver;
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler(Templates templates) throws TransformerConfigurationException {
        try {
            TransformerImpl transformerImpl = (TransformerImpl) templates.newTransformer();
            transformerImpl.setURIResolver(this.m_uriResolver);
            return (TransformerHandler) transformerImpl.getInputContentHandler(true);
        } catch (TransformerConfigurationException e) {
            ErrorListener errorListener = this.m_errorListener;
            if (errorListener != null) {
                try {
                    errorListener.fatalError(e);
                    return null;
                } catch (TransformerConfigurationException e2) {
                    throw e2;
                } catch (TransformerException e3) {
                    throw new TransformerConfigurationException(e3);
                }
            }
            throw e;
        }
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public XMLFilter newXMLFilter(Templates templates) throws TransformerConfigurationException {
        try {
            return new TrAXFilter(templates);
        } catch (TransformerConfigurationException e) {
            ErrorListener errorListener = this.m_errorListener;
            if (errorListener != null) {
                try {
                    errorListener.fatalError(e);
                    return null;
                } catch (TransformerConfigurationException e2) {
                    throw e2;
                } catch (TransformerException e3) {
                    throw new TransformerConfigurationException(e3);
                }
            }
            throw e;
        }
    }

    @Override // javax.xml.transform.TransformerFactory
    public Transformer newTransformer() throws TransformerConfigurationException {
        return new TransformerIdentityImpl(this.m_isSecureProcessing);
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler() throws TransformerConfigurationException {
        return new TransformerIdentityImpl(this.m_isSecureProcessing);
    }

    public Templates processFromNode(Node node, String str) throws TransformerConfigurationException {
        this.m_DOMsystemID = str;
        return processFromNode(node);
    }
}
