package com.sun.org.apache.xpath.internal.jaxp;

import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.res.XPATHErrorResources;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import java.io.IOException;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFunctionException;
import javax.xml.xpath.XPathFunctionResolver;
import javax.xml.xpath.XPathVariableResolver;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class XPathImpl implements XPath {

    /* renamed from: d */
    private static Document f64125d;
    private boolean featureSecureProcessing;
    private XPathFunctionResolver functionResolver;
    private NamespaceContext namespaceContext;
    private XPathFunctionResolver origFunctionResolver;
    private XPathVariableResolver origVariableResolver;
    private JAXPPrefixResolver prefixResolver;
    private XPathVariableResolver variableResolver;

    public XPathImpl(XPathVariableResolver xPathVariableResolver, XPathFunctionResolver xPathFunctionResolver) {
        this.namespaceContext = null;
        this.featureSecureProcessing = false;
        this.variableResolver = xPathVariableResolver;
        this.origVariableResolver = xPathVariableResolver;
        this.functionResolver = xPathFunctionResolver;
        this.origFunctionResolver = xPathFunctionResolver;
    }

    private XObject eval(String str, Object obj) throws TransformerException {
        com.sun.org.apache.xpath.internal.XPath xPath = new com.sun.org.apache.xpath.internal.XPath(str, null, this.prefixResolver, 0);
        XPathFunctionResolver xPathFunctionResolver = this.functionResolver;
        XPathContext xPathContext = xPathFunctionResolver != null ? new XPathContext(new JAXPExtensionsProvider(xPathFunctionResolver, this.featureSecureProcessing)) : new XPathContext();
        xPathContext.setVarStack(new JAXPVariableStack(this.variableResolver));
        return obj instanceof Node ? xPath.execute(xPathContext, (Node) obj, this.prefixResolver) : xPath.execute(xPathContext, -1, this.prefixResolver);
    }

    private static Document getDummyDocument() {
        if (f64125d == null) {
            f64125d = getParser().getDOMImplementation().createDocument("http://java.sun.com/jaxp/xpath", "dummyroot", null);
        }
        return f64125d;
    }

    private static DocumentBuilder getParser() {
        try {
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
            newInstance.setValidating(false);
            return newInstance.newDocumentBuilder();
        } catch (ParserConfigurationException e) {
            throw new Error(e);
        }
    }

    private Object getResultAsType(XObject xObject, QName qName) throws TransformerException {
        if (qName.equals(XPathConstants.STRING)) {
            return xObject.str();
        }
        if (qName.equals(XPathConstants.NUMBER)) {
            return new Double(xObject.num());
        }
        if (qName.equals(XPathConstants.BOOLEAN)) {
            return new Boolean(xObject.bool());
        }
        if (qName.equals(XPathConstants.NODESET)) {
            return xObject.nodelist();
        }
        if (qName.equals(XPathConstants.NODE)) {
            return xObject.nodeset().nextNode();
        }
        throw new IllegalArgumentException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_UNSUPPORTED_RETURN_TYPE, new Object[]{qName.toString()}));
    }

    private boolean isSupported(QName qName) {
        return qName.equals(XPathConstants.STRING) || qName.equals(XPathConstants.NUMBER) || qName.equals(XPathConstants.BOOLEAN) || qName.equals(XPathConstants.NODE) || qName.equals(XPathConstants.NODESET);
    }

    @Override // javax.xml.xpath.XPath
    public XPathExpression compile(String str) throws XPathExpressionException {
        if (str == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"XPath expression"}));
        }
        try {
            return new XPathExpressionImpl(new com.sun.org.apache.xpath.internal.XPath(str, null, this.prefixResolver, 0), this.prefixResolver, this.functionResolver, this.variableResolver, this.featureSecureProcessing);
        } catch (TransformerException e) {
            throw new XPathExpressionException(e);
        }
    }

    @Override // javax.xml.xpath.XPath
    public Object evaluate(String str, Object obj, QName qName) throws XPathExpressionException {
        if (str == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"XPath expression"}));
        }
        if (qName != null) {
            if (isSupported(qName)) {
                try {
                    return getResultAsType(eval(str, obj), qName);
                } catch (NullPointerException e) {
                    throw new XPathExpressionException(e);
                } catch (TransformerException e2) {
                    Throwable exception = e2.getException();
                    if (exception instanceof XPathFunctionException) {
                        throw ((XPathFunctionException) exception);
                    }
                    throw new XPathExpressionException(e2);
                }
            }
            throw new IllegalArgumentException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_UNSUPPORTED_RETURN_TYPE, new Object[]{qName.toString()}));
        }
        throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"returnType"}));
    }

    @Override // javax.xml.xpath.XPath
    public NamespaceContext getNamespaceContext() {
        return this.namespaceContext;
    }

    @Override // javax.xml.xpath.XPath
    public XPathFunctionResolver getXPathFunctionResolver() {
        return this.functionResolver;
    }

    @Override // javax.xml.xpath.XPath
    public XPathVariableResolver getXPathVariableResolver() {
        return this.variableResolver;
    }

    @Override // javax.xml.xpath.XPath
    public void reset() {
        this.variableResolver = this.origVariableResolver;
        this.functionResolver = this.origFunctionResolver;
        this.namespaceContext = null;
    }

    @Override // javax.xml.xpath.XPath
    public void setNamespaceContext(NamespaceContext namespaceContext) {
        if (namespaceContext == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"NamespaceContext"}));
        }
        this.namespaceContext = namespaceContext;
        this.prefixResolver = new JAXPPrefixResolver(namespaceContext);
    }

    @Override // javax.xml.xpath.XPath
    public void setXPathFunctionResolver(XPathFunctionResolver xPathFunctionResolver) {
        if (xPathFunctionResolver == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"XPathFunctionResolver"}));
        }
        this.functionResolver = xPathFunctionResolver;
    }

    @Override // javax.xml.xpath.XPath
    public void setXPathVariableResolver(XPathVariableResolver xPathVariableResolver) {
        if (xPathVariableResolver == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"XPathVariableResolver"}));
        }
        this.variableResolver = xPathVariableResolver;
    }

    public XPathImpl(XPathVariableResolver xPathVariableResolver, XPathFunctionResolver xPathFunctionResolver, boolean z) {
        this.namespaceContext = null;
        this.variableResolver = xPathVariableResolver;
        this.origVariableResolver = xPathVariableResolver;
        this.functionResolver = xPathFunctionResolver;
        this.origFunctionResolver = xPathFunctionResolver;
        this.featureSecureProcessing = z;
    }

    @Override // javax.xml.xpath.XPath
    public String evaluate(String str, Object obj) throws XPathExpressionException {
        return (String) evaluate(str, obj, XPathConstants.STRING);
    }

    @Override // javax.xml.xpath.XPath
    public Object evaluate(String str, InputSource inputSource, QName qName) throws XPathExpressionException {
        if (inputSource == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"source"}));
        }
        if (str == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"XPath expression"}));
        }
        if (qName != null) {
            if (isSupported(qName)) {
                try {
                    return getResultAsType(eval(str, getParser().parse(inputSource)), qName);
                } catch (IOException e) {
                    throw new XPathExpressionException(e);
                } catch (TransformerException e2) {
                    Throwable exception = e2.getException();
                    if (exception instanceof XPathFunctionException) {
                        throw ((XPathFunctionException) exception);
                    }
                    throw new XPathExpressionException(e2);
                } catch (SAXException e3) {
                    throw new XPathExpressionException(e3);
                }
            }
            throw new IllegalArgumentException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_UNSUPPORTED_RETURN_TYPE, new Object[]{qName.toString()}));
        }
        throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"returnType"}));
    }

    @Override // javax.xml.xpath.XPath
    public String evaluate(String str, InputSource inputSource) throws XPathExpressionException {
        return (String) evaluate(str, inputSource, XPathConstants.STRING);
    }
}
