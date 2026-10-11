package org.apache.xerces.parsers;

import com.sunia.HTREnginev2.zzn;
import java.io.CharConversionException;
import java.io.IOException;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.util.EntityResolver2Wrapper;
import org.apache.xerces.util.EntityResolverWrapper;
import org.apache.xerces.util.ErrorHandlerWrapper;
import org.apache.xerces.util.SAXMessageFormatter;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLParseException;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
import org.w3c.dom.Node;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.SAXParseException;
import org.xml.sax.ext.EntityResolver2;
import org.xml.sax.helpers.LocatorImpl;

/* loaded from: classes13.dex */
public class DOMParser extends AbstractDOMParser {
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String USE_ENTITY_RESOLVER2 = "http://xml.org/sax/features/use-entity-resolver2";
    protected static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";

    /* renamed from: m */
    public static final String[] f113358m = {"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/grammar-pool"};
    protected boolean fUseEntityResolver2;

    public DOMParser() {
        this(null, null);
    }

    public EntityResolver getEntityResolver() {
        EntityResolver entityResolver;
        try {
            XMLEntityResolver xMLEntityResolver = (XMLEntityResolver) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
            if (xMLEntityResolver == null) {
                return null;
            }
            if (xMLEntityResolver instanceof EntityResolverWrapper) {
                entityResolver = ((EntityResolverWrapper) xMLEntityResolver).getEntityResolver();
            } else {
                if (!(xMLEntityResolver instanceof EntityResolver2Wrapper)) {
                    return null;
                }
                entityResolver = ((EntityResolver2Wrapper) xMLEntityResolver).getEntityResolver();
            }
            return entityResolver;
        } catch (XMLConfigurationException unused) {
            return null;
        }
    }

    public ErrorHandler getErrorHandler() {
        try {
            XMLErrorHandler xMLErrorHandler = (XMLErrorHandler) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/error-handler");
            if (xMLErrorHandler == null || !(xMLErrorHandler instanceof ErrorHandlerWrapper)) {
                return null;
            }
            return ((ErrorHandlerWrapper) xMLErrorHandler).getErrorHandler();
        } catch (XMLConfigurationException unused) {
            return null;
        }
    }

    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        try {
            return str.equals("http://xml.org/sax/features/use-entity-resolver2") ? this.fUseEntityResolver2 : this.fConfiguration.getFeature(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-supported", new Object[]{identifier}));
        }
    }

    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        boolean z;
        if (!str.equals(zzn.f92354n)) {
            try {
                return this.fConfiguration.getProperty(str);
            } catch (XMLConfigurationException e) {
                String identifier = e.getIdentifier();
                if (e.getType() == 0) {
                    throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-recognized", new Object[]{identifier}));
                }
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-supported", new Object[]{identifier}));
            }
        }
        try {
            z = getFeature("http://apache.org/xml/features/dom/defer-node-expansion");
        } catch (XMLConfigurationException unused) {
            z = false;
        }
        if (z) {
            throw new SAXNotSupportedException(DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "CannotQueryDeferredNode", null));
        }
        Node node = this.fCurrentNode;
        if (node == null || node.getNodeType() != 1) {
            return null;
        }
        return this.fCurrentNode;
    }

    public XMLParserConfiguration getXMLParserConfiguration() {
        return this.fConfiguration;
    }

    public void parse(String str) throws SAXException, IOException {
        try {
            parse(new XMLInputSource(null, str, null));
        } catch (XMLParseException e) {
            Exception exception = e.getException();
            if (exception != null && !(exception instanceof CharConversionException)) {
                if (exception instanceof SAXException) {
                    throw ((SAXException) exception);
                }
                if (!(exception instanceof IOException)) {
                    throw new SAXException(exception);
                }
                throw ((IOException) exception);
            }
            LocatorImpl locatorImpl = new LocatorImpl();
            locatorImpl.setPublicId(e.getPublicId());
            locatorImpl.setSystemId(e.getExpandedSystemId());
            locatorImpl.setLineNumber(e.getLineNumber());
            locatorImpl.setColumnNumber(e.getColumnNumber());
            if (exception != null) {
                throw new SAXParseException(e.getMessage(), locatorImpl, exception);
            }
        } catch (XNIException e2) {
            e2.printStackTrace();
            Exception exception2 = e2.getException();
            if (exception2 == null) {
                throw new SAXException(e2.getMessage());
            }
            if (exception2 instanceof SAXException) {
                throw ((SAXException) exception2);
            }
            if (!(exception2 instanceof IOException)) {
                throw new SAXException(exception2);
            }
            throw ((IOException) exception2);
        }
    }

    public void setEntityResolver(EntityResolver entityResolver) {
        XMLParserConfiguration xMLParserConfiguration;
        Object entityResolverWrapper;
        try {
            XMLEntityResolver xMLEntityResolver = (XMLEntityResolver) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
            if (this.fUseEntityResolver2 && (entityResolver instanceof EntityResolver2)) {
                if (xMLEntityResolver instanceof EntityResolver2Wrapper) {
                    ((EntityResolver2Wrapper) xMLEntityResolver).setEntityResolver((EntityResolver2) entityResolver);
                    return;
                } else {
                    xMLParserConfiguration = this.fConfiguration;
                    entityResolverWrapper = new EntityResolver2Wrapper((EntityResolver2) entityResolver);
                }
            } else if (xMLEntityResolver instanceof EntityResolverWrapper) {
                ((EntityResolverWrapper) xMLEntityResolver).setEntityResolver(entityResolver);
                return;
            } else {
                xMLParserConfiguration = this.fConfiguration;
                entityResolverWrapper = new EntityResolverWrapper(entityResolver);
            }
            xMLParserConfiguration.setProperty("http://apache.org/xml/properties/internal/entity-resolver", entityResolverWrapper);
        } catch (XMLConfigurationException unused) {
        }
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        try {
            XMLErrorHandler xMLErrorHandler = (XMLErrorHandler) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/error-handler");
            if (xMLErrorHandler instanceof ErrorHandlerWrapper) {
                ((ErrorHandlerWrapper) xMLErrorHandler).setErrorHandler(errorHandler);
            } else {
                this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/error-handler", new ErrorHandlerWrapper(errorHandler));
            }
        } catch (XMLConfigurationException unused) {
        }
    }

    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        try {
            if (!str.equals("http://xml.org/sax/features/use-entity-resolver2")) {
                this.fConfiguration.setFeature(str, z);
            } else if (z != this.fUseEntityResolver2) {
                this.fUseEntityResolver2 = z;
                setEntityResolver(getEntityResolver());
            }
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() != 0) {
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-supported", new Object[]{identifier}));
            }
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-recognized", new Object[]{identifier}));
        }
    }

    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        try {
            this.fConfiguration.setProperty(str, obj);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() != 0) {
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-supported", new Object[]{identifier}));
            }
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-recognized", new Object[]{identifier}));
        }
    }

    public DOMParser(SymbolTable symbolTable) {
        this(symbolTable, null);
    }

    public void parse(InputSource inputSource) throws SAXException, IOException {
        try {
            XMLInputSource xMLInputSource = new XMLInputSource(inputSource.getPublicId(), inputSource.getSystemId(), null);
            xMLInputSource.setByteStream(inputSource.getByteStream());
            xMLInputSource.setCharacterStream(inputSource.getCharacterStream());
            xMLInputSource.setEncoding(inputSource.getEncoding());
            parse(xMLInputSource);
        } catch (XMLParseException e) {
            Exception exception = e.getException();
            if (exception != null && !(exception instanceof CharConversionException)) {
                if (exception instanceof SAXException) {
                    throw ((SAXException) exception);
                }
                if (!(exception instanceof IOException)) {
                    throw new SAXException(exception);
                }
                throw ((IOException) exception);
            }
            LocatorImpl locatorImpl = new LocatorImpl();
            locatorImpl.setPublicId(e.getPublicId());
            locatorImpl.setSystemId(e.getExpandedSystemId());
            locatorImpl.setLineNumber(e.getLineNumber());
            locatorImpl.setColumnNumber(e.getColumnNumber());
            if (exception != null) {
                throw new SAXParseException(e.getMessage(), locatorImpl, exception);
            }
        } catch (XNIException e2) {
            Exception exception2 = e2.getException();
            if (exception2 == null) {
                throw new SAXException(e2.getMessage());
            }
            if (exception2 instanceof SAXException) {
                throw ((SAXException) exception2);
            }
            if (!(exception2 instanceof IOException)) {
                throw new SAXException(exception2);
            }
            throw ((IOException) exception2);
        }
    }

    public DOMParser(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        super((XMLParserConfiguration) ObjectFactory.m70533a("org.apache.xerces.xni.parser.XMLParserConfiguration", "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"));
        this.fUseEntityResolver2 = true;
        this.fConfiguration.addRecognizedProperties(f113358m);
        if (symbolTable != null) {
            this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
        }
        if (xMLGrammarPool != null) {
            this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/grammar-pool", xMLGrammarPool);
        }
    }

    public DOMParser(XMLParserConfiguration xMLParserConfiguration) {
        super(xMLParserConfiguration);
        this.fUseEntityResolver2 = true;
    }
}
