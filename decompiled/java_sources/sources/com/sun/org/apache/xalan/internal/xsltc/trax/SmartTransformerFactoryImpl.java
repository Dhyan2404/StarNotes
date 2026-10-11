package com.sun.org.apache.xalan.internal.xsltc.trax;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
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
import org.xml.sax.XMLFilter;

/* loaded from: classes10.dex */
public class SmartTransformerFactoryImpl extends SAXTransformerFactory {
    private static final String CLASS_NAME = "SmartTransformerFactoryImpl";
    private SAXTransformerFactory _xsltcFactory = null;
    private SAXTransformerFactory _xalanFactory = null;
    private SAXTransformerFactory _currFactory = null;
    private ErrorListener _errorlistener = null;
    private URIResolver _uriresolver = null;
    private boolean featureSecureProcessing = false;

    private void createXSLTCTransformerFactory() {
        TransformerFactoryImpl transformerFactoryImpl = new TransformerFactoryImpl();
        this._xsltcFactory = transformerFactoryImpl;
        this._currFactory = transformerFactoryImpl;
    }

    private void createXalanTransformerFactory() {
        try {
            this._xalanFactory = (SAXTransformerFactory) ObjectFactory.findProviderClass("com.sun.org.apache.xalan.internal.processor.TransformerFactoryImpl", ObjectFactory.findClassLoader(), true).newInstance();
        } catch (ClassNotFoundException unused) {
            System.err.println("com.sun.org.apache.xalan.internal.xsltc.trax.SmartTransformerFactoryImpl could not create an com.sun.org.apache.xalan.internal.processor.TransformerFactoryImpl.");
        } catch (IllegalAccessException unused2) {
            System.err.println("com.sun.org.apache.xalan.internal.xsltc.trax.SmartTransformerFactoryImpl could not create an com.sun.org.apache.xalan.internal.processor.TransformerFactoryImpl.");
        } catch (InstantiationException unused3) {
            System.err.println("com.sun.org.apache.xalan.internal.xsltc.trax.SmartTransformerFactoryImpl could not create an com.sun.org.apache.xalan.internal.processor.TransformerFactoryImpl.");
        }
        this._currFactory = this._xalanFactory;
    }

    @Override // javax.xml.transform.TransformerFactory
    public Source getAssociatedStylesheet(Source source, String str, String str2, String str3) throws TransformerConfigurationException {
        if (this._currFactory == null) {
            createXSLTCTransformerFactory();
        }
        return this._currFactory.getAssociatedStylesheet(source, str, str2, str3);
    }

    @Override // javax.xml.transform.TransformerFactory
    public Object getAttribute(String str) throws IllegalArgumentException {
        if (str.equals(TransformerFactoryImpl.TRANSLET_NAME) || str.equals("debug")) {
            if (this._xsltcFactory == null) {
                createXSLTCTransformerFactory();
            }
            return this._xsltcFactory.getAttribute(str);
        }
        if (this._xalanFactory == null) {
            createXalanTransformerFactory();
        }
        return this._xalanFactory.getAttribute(str);
    }

    @Override // javax.xml.transform.TransformerFactory
    public ErrorListener getErrorListener() {
        return this._errorlistener;
    }

    @Override // javax.xml.transform.TransformerFactory
    public boolean getFeature(String str) {
        String[] strArr = {DOMSource.FEATURE, DOMResult.FEATURE, SAXSource.FEATURE, SAXResult.FEATURE, StreamSource.FEATURE, StreamResult.FEATURE};
        if (str == null) {
            throw new NullPointerException(new ErrorMsg(ErrorMsg.JAXP_GET_FEATURE_NULL_NAME).toString());
        }
        for (int i = 0; i < 6; i++) {
            if (str.equals(strArr[i])) {
                return true;
            }
        }
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            return this.featureSecureProcessing;
        }
        return false;
    }

    @Override // javax.xml.transform.TransformerFactory
    public URIResolver getURIResolver() {
        return this._uriresolver;
    }

    @Override // javax.xml.transform.TransformerFactory
    public Templates newTemplates(Source source) throws TransformerConfigurationException {
        if (this._xsltcFactory == null) {
            createXSLTCTransformerFactory();
        }
        ErrorListener errorListener = this._errorlistener;
        if (errorListener != null) {
            this._xsltcFactory.setErrorListener(errorListener);
        }
        URIResolver uRIResolver = this._uriresolver;
        if (uRIResolver != null) {
            this._xsltcFactory.setURIResolver(uRIResolver);
        }
        SAXTransformerFactory sAXTransformerFactory = this._xsltcFactory;
        this._currFactory = sAXTransformerFactory;
        return sAXTransformerFactory.newTemplates(source);
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TemplatesHandler newTemplatesHandler() throws TransformerConfigurationException {
        if (this._xsltcFactory == null) {
            createXSLTCTransformerFactory();
        }
        ErrorListener errorListener = this._errorlistener;
        if (errorListener != null) {
            this._xsltcFactory.setErrorListener(errorListener);
        }
        URIResolver uRIResolver = this._uriresolver;
        if (uRIResolver != null) {
            this._xsltcFactory.setURIResolver(uRIResolver);
        }
        return this._xsltcFactory.newTemplatesHandler();
    }

    @Override // javax.xml.transform.TransformerFactory
    public Transformer newTransformer() throws TransformerConfigurationException {
        if (this._xalanFactory == null) {
            createXalanTransformerFactory();
        }
        ErrorListener errorListener = this._errorlistener;
        if (errorListener != null) {
            this._xalanFactory.setErrorListener(errorListener);
        }
        URIResolver uRIResolver = this._uriresolver;
        if (uRIResolver != null) {
            this._xalanFactory.setURIResolver(uRIResolver);
        }
        SAXTransformerFactory sAXTransformerFactory = this._xalanFactory;
        this._currFactory = sAXTransformerFactory;
        return sAXTransformerFactory.newTransformer();
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler() throws TransformerConfigurationException {
        if (this._xalanFactory == null) {
            createXalanTransformerFactory();
        }
        ErrorListener errorListener = this._errorlistener;
        if (errorListener != null) {
            this._xalanFactory.setErrorListener(errorListener);
        }
        URIResolver uRIResolver = this._uriresolver;
        if (uRIResolver != null) {
            this._xalanFactory.setURIResolver(uRIResolver);
        }
        return this._xalanFactory.newTransformerHandler();
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public XMLFilter newXMLFilter(Source source) throws TransformerConfigurationException {
        if (this._xsltcFactory == null) {
            createXSLTCTransformerFactory();
        }
        ErrorListener errorListener = this._errorlistener;
        if (errorListener != null) {
            this._xsltcFactory.setErrorListener(errorListener);
        }
        URIResolver uRIResolver = this._uriresolver;
        if (uRIResolver != null) {
            this._xsltcFactory.setURIResolver(uRIResolver);
        }
        Templates newTemplates = this._xsltcFactory.newTemplates(source);
        if (newTemplates == null) {
            return null;
        }
        return newXMLFilter(newTemplates);
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setAttribute(String str, Object obj) throws IllegalArgumentException {
        if (str.equals(TransformerFactoryImpl.TRANSLET_NAME) || str.equals("debug")) {
            if (this._xsltcFactory == null) {
                createXSLTCTransformerFactory();
            }
            this._xsltcFactory.setAttribute(str, obj);
        } else {
            if (this._xalanFactory == null) {
                createXalanTransformerFactory();
            }
            this._xalanFactory.setAttribute(str, obj);
        }
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        this._errorlistener = errorListener;
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setFeature(String str, boolean z) throws TransformerConfigurationException {
        if (str == null) {
            throw new NullPointerException(new ErrorMsg(ErrorMsg.JAXP_SET_FEATURE_NULL_NAME).toString());
        }
        if (!str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.JAXP_UNSUPPORTED_FEATURE, str).toString());
        }
        this.featureSecureProcessing = z;
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setURIResolver(URIResolver uRIResolver) {
        this._uriresolver = uRIResolver;
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler(Source source) throws TransformerConfigurationException {
        if (this._xalanFactory == null) {
            createXalanTransformerFactory();
        }
        ErrorListener errorListener = this._errorlistener;
        if (errorListener != null) {
            this._xalanFactory.setErrorListener(errorListener);
        }
        URIResolver uRIResolver = this._uriresolver;
        if (uRIResolver != null) {
            this._xalanFactory.setURIResolver(uRIResolver);
        }
        return this._xalanFactory.newTransformerHandler(source);
    }

    @Override // javax.xml.transform.TransformerFactory
    public Transformer newTransformer(Source source) throws TransformerConfigurationException {
        if (this._xalanFactory == null) {
            createXalanTransformerFactory();
        }
        ErrorListener errorListener = this._errorlistener;
        if (errorListener != null) {
            this._xalanFactory.setErrorListener(errorListener);
        }
        URIResolver uRIResolver = this._uriresolver;
        if (uRIResolver != null) {
            this._xalanFactory.setURIResolver(uRIResolver);
        }
        SAXTransformerFactory sAXTransformerFactory = this._xalanFactory;
        this._currFactory = sAXTransformerFactory;
        return sAXTransformerFactory.newTransformer(source);
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public XMLFilter newXMLFilter(Templates templates) throws TransformerConfigurationException {
        try {
            return new TrAXFilter(templates);
        } catch (TransformerConfigurationException e) {
            if (this._xsltcFactory == null) {
                createXSLTCTransformerFactory();
            }
            ErrorListener errorListener = this._xsltcFactory.getErrorListener();
            if (errorListener != null) {
                try {
                    errorListener.fatalError(e);
                    return null;
                } catch (TransformerException e2) {
                    new TransformerConfigurationException(e2);
                    throw e;
                }
            }
            throw e;
        }
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler(Templates templates) throws TransformerConfigurationException {
        if (this._xsltcFactory == null) {
            createXSLTCTransformerFactory();
        }
        ErrorListener errorListener = this._errorlistener;
        if (errorListener != null) {
            this._xsltcFactory.setErrorListener(errorListener);
        }
        URIResolver uRIResolver = this._uriresolver;
        if (uRIResolver != null) {
            this._xsltcFactory.setURIResolver(uRIResolver);
        }
        return this._xsltcFactory.newTransformerHandler(templates);
    }
}
