package com.sun.org.apache.xpath.internal.jaxp;

import com.sun.org.apache.xpath.internal.res.XPATHErrorResources;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;
import javax.xml.xpath.XPathFactoryConfigurationException;
import javax.xml.xpath.XPathFunctionResolver;
import javax.xml.xpath.XPathVariableResolver;

/* loaded from: classes10.dex */
public class XPathFactoryImpl extends XPathFactory {
    private static final String CLASS_NAME = "XPathFactoryImpl";
    private XPathFunctionResolver xPathFunctionResolver = null;
    private XPathVariableResolver xPathVariableResolver = null;
    private boolean featureSecureProcessing = false;

    @Override // javax.xml.xpath.XPathFactory
    public boolean getFeature(String str) throws XPathFactoryConfigurationException {
        if (str == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_GETTING_NULL_FEATURE, new Object[]{CLASS_NAME}));
        }
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            return this.featureSecureProcessing;
        }
        throw new XPathFactoryConfigurationException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_GETTING_UNKNOWN_FEATURE, new Object[]{str, CLASS_NAME}));
    }

    @Override // javax.xml.xpath.XPathFactory
    public boolean isObjectModelSupported(String str) {
        if (str == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_OBJECT_MODEL_NULL, new Object[]{getClass().getName()}));
        }
        if (str.length() != 0) {
            return str.equals("http://java.sun.com/jaxp/xpath/dom");
        }
        throw new IllegalArgumentException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_OBJECT_MODEL_EMPTY, new Object[]{getClass().getName()}));
    }

    @Override // javax.xml.xpath.XPathFactory
    public XPath newXPath() {
        return new XPathImpl(this.xPathVariableResolver, this.xPathFunctionResolver, this.featureSecureProcessing);
    }

    @Override // javax.xml.xpath.XPathFactory
    public void setFeature(String str, boolean z) throws XPathFactoryConfigurationException {
        if (str == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_FEATURE_NAME_NULL, new Object[]{CLASS_NAME, new Boolean(z)}));
        }
        if (!str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            throw new XPathFactoryConfigurationException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_FEATURE_UNKNOWN, new Object[]{str, CLASS_NAME, new Boolean(z)}));
        }
        this.featureSecureProcessing = z;
    }

    @Override // javax.xml.xpath.XPathFactory
    public void setXPathFunctionResolver(XPathFunctionResolver xPathFunctionResolver) {
        if (xPathFunctionResolver == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_NULL_XPATH_FUNCTION_RESOLVER, new Object[]{CLASS_NAME}));
        }
        this.xPathFunctionResolver = xPathFunctionResolver;
    }

    @Override // javax.xml.xpath.XPathFactory
    public void setXPathVariableResolver(XPathVariableResolver xPathVariableResolver) {
        if (xPathVariableResolver == null) {
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_NULL_XPATH_VARIABLE_RESOLVER, new Object[]{CLASS_NAME}));
        }
        this.xPathVariableResolver = xPathVariableResolver;
    }
}
