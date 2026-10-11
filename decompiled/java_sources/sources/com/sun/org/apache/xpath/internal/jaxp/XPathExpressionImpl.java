package com.sun.org.apache.xpath.internal.jaxp;

import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.res.XPATHErrorResources;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFunctionException;
import javax.xml.xpath.XPathFunctionResolver;
import javax.xml.xpath.XPathVariableResolver;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;

/* loaded from: classes10.dex */
public class XPathExpressionImpl implements XPathExpression {

    /* renamed from: d */
    static Document f64123d;

    /* renamed from: db */
    static DocumentBuilder f64124db;
    static DocumentBuilderFactory dbf;
    private boolean featureSecureProcessing;
    private XPathFunctionResolver functionResolver;
    private JAXPPrefixResolver prefixResolver;
    private XPathVariableResolver variableResolver;
    private XPath xpath;

    public XPathExpressionImpl() {
        this.featureSecureProcessing = false;
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

    public Object eval(Object obj, QName qName) throws TransformerException {
        return getResultAsType(eval(obj), qName);
    }

    @Override // javax.xml.xpath.XPathExpression
    public Object evaluate(Object obj, QName qName) throws XPathExpressionException {
        if (qName != null) {
            if (isSupported(qName)) {
                try {
                    return eval(obj, qName);
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

    public void setXPath(XPath xPath) {
        this.xpath = xPath;
    }

    public XPathExpressionImpl(XPath xPath, JAXPPrefixResolver jAXPPrefixResolver, XPathFunctionResolver xPathFunctionResolver, XPathVariableResolver xPathVariableResolver) {
        this.xpath = xPath;
        this.prefixResolver = jAXPPrefixResolver;
        this.functionResolver = xPathFunctionResolver;
        this.variableResolver = xPathVariableResolver;
        this.featureSecureProcessing = false;
    }

    private XObject eval(Object obj) throws TransformerException {
        XPathContext xPathContext;
        XPathFunctionResolver xPathFunctionResolver = this.functionResolver;
        if (xPathFunctionResolver != null) {
            xPathContext = new XPathContext(new JAXPExtensionsProvider(xPathFunctionResolver, this.featureSecureProcessing));
        } else {
            xPathContext = new XPathContext();
        }
        xPathContext.setVarStack(new JAXPVariableStack(this.variableResolver));
        Node node = (Node) obj;
        if (node == null) {
            return this.xpath.execute(xPathContext, -1, this.prefixResolver);
        }
        return this.xpath.execute(xPathContext, node, this.prefixResolver);
    }

    public XPathExpressionImpl(XPath xPath, JAXPPrefixResolver jAXPPrefixResolver, XPathFunctionResolver xPathFunctionResolver, XPathVariableResolver xPathVariableResolver, boolean z) {
        this.xpath = xPath;
        this.prefixResolver = jAXPPrefixResolver;
        this.functionResolver = xPathFunctionResolver;
        this.variableResolver = xPathVariableResolver;
        this.featureSecureProcessing = z;
    }

    @Override // javax.xml.xpath.XPathExpression
    public String evaluate(Object obj) throws XPathExpressionException {
        return (String) evaluate(obj, XPathConstants.STRING);
    }

    @Override // javax.xml.xpath.XPathExpression
    public Object evaluate(InputSource inputSource, QName qName) throws XPathExpressionException {
        if (inputSource != null && qName != null) {
            if (isSupported(qName)) {
                try {
                    if (dbf == null) {
                        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
                        dbf = newInstance;
                        newInstance.setNamespaceAware(true);
                        dbf.setValidating(false);
                    }
                    DocumentBuilder newDocumentBuilder = dbf.newDocumentBuilder();
                    f64124db = newDocumentBuilder;
                    return eval(newDocumentBuilder.parse(inputSource), qName);
                } catch (Exception e) {
                    throw new XPathExpressionException(e);
                }
            }
            throw new IllegalArgumentException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_UNSUPPORTED_RETURN_TYPE, new Object[]{qName.toString()}));
        }
        throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_SOURCE_RETURN_TYPE_CANNOT_BE_NULL, null));
    }

    @Override // javax.xml.xpath.XPathExpression
    public String evaluate(InputSource inputSource) throws XPathExpressionException {
        return (String) evaluate(inputSource, XPathConstants.STRING);
    }
}
