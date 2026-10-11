package com.sunia.HTREnginev2;

import java.io.IOException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stax.StAXResult;
import javax.xml.transform.stax.StAXSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Validator;
import org.apache.xerces.jaxp.validation.XSGrammarPoolContainer;
import org.apache.xerces.p118xs.AttributePSVI;
import org.apache.xerces.p118xs.ElementPSVI;
import org.apache.xerces.p118xs.PSVIProvider;
import org.apache.xerces.util.SAXMessageFormatter;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes13.dex */
public final class zzn extends Validator implements PSVIProvider {

    /* renamed from: m */
    public static final String f92353m = "http://javax.xml.transform";

    /* renamed from: n */
    public static final String f92354n = "http://apache.org/xml/properties/dom/current-element-node";

    /* renamed from: e */
    public final tlo f92355e;

    /* renamed from: f */
    public xzn f92356f;

    /* renamed from: g */
    public tqe f92357g;

    /* renamed from: h */
    public ixm f92358h;

    /* renamed from: i */
    public f0n f92359i;

    /* renamed from: j */
    public boolean f92360j = false;

    /* renamed from: k */
    public boolean f92361k = false;

    /* renamed from: l */
    public boolean f92362l = false;

    public zzn(XSGrammarPoolContainer xSGrammarPoolContainer) {
        this.f92355e = new tlo(xSGrammarPoolContainer);
        setErrorHandler(null);
        setResourceResolver(null);
    }

    @Override // org.apache.xerces.p118xs.PSVIProvider
    public AttributePSVI getAttributePSVI(int i) {
        xzn xznVar = this.f92356f;
        if (xznVar != null) {
            return xznVar.getAttributePSVI(i);
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.PSVIProvider
    public AttributePSVI getAttributePSVIByName(String str, String str2) {
        xzn xznVar = this.f92356f;
        if (xznVar != null) {
            return xznVar.getAttributePSVIByName(str, str2);
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.PSVIProvider
    public ElementPSVI getElementPSVI() {
        xzn xznVar = this.f92356f;
        if (xznVar != null) {
            return xznVar.getElementPSVI();
        }
        return null;
    }

    @Override // javax.xml.validation.Validator
    public ErrorHandler getErrorHandler() {
        return this.f92355e.m57391b();
    }

    @Override // javax.xml.validation.Validator
    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f92355e.getLocale(), "FeatureNameNull", null));
        }
        if (str.startsWith("http://javax.xml.transform") && (str.equals(StreamSource.FEATURE) || str.equals(SAXSource.FEATURE) || str.equals(DOMSource.FEATURE) || str.equals(StAXSource.FEATURE) || str.equals(StreamResult.FEATURE) || str.equals(SAXResult.FEATURE) || str.equals(DOMResult.FEATURE) || str.equals(StAXResult.FEATURE))) {
            return true;
        }
        try {
            return this.f92355e.getFeature(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f92355e.getLocale(), "feature-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f92355e.getLocale(), "feature-not-supported", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.Validator
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f92355e.getLocale(), "ProperyNameNull", null));
        }
        if (f92354n.equals(str)) {
            tqe tqeVar = this.f92357g;
            if (tqeVar != null) {
                return tqeVar.m57429h();
            }
            return null;
        }
        try {
            return this.f92355e.getProperty(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f92355e.getLocale(), "property-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f92355e.getLocale(), "property-not-supported", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.Validator
    public LSResourceResolver getResourceResolver() {
        return this.f92355e.m57392c();
    }

    @Override // javax.xml.validation.Validator
    public void reset() {
        if (this.f92360j) {
            this.f92355e.m57393d();
            setErrorHandler(null);
            setResourceResolver(null);
            this.f92360j = false;
            this.f92361k = false;
        } else {
            if (this.f92361k) {
                setErrorHandler(null);
                this.f92361k = false;
            }
            if (!this.f92362l) {
                return;
            } else {
                setResourceResolver(null);
            }
        }
        this.f92362l = false;
    }

    @Override // javax.xml.validation.Validator
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.f92361k = errorHandler != null;
        this.f92355e.m57394e(errorHandler);
    }

    @Override // javax.xml.validation.Validator
    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f92355e.getLocale(), "FeatureNameNull", null));
        }
        if (str.startsWith("http://javax.xml.transform") && (str.equals(StreamSource.FEATURE) || str.equals(SAXSource.FEATURE) || str.equals(DOMSource.FEATURE) || str.equals(StAXSource.FEATURE) || str.equals(StreamResult.FEATURE) || str.equals(SAXResult.FEATURE) || str.equals(DOMResult.FEATURE) || str.equals(StAXResult.FEATURE))) {
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f92355e.getLocale(), "feature-read-only", new Object[]{str}));
        }
        try {
            this.f92355e.setFeature(str, z);
            this.f92360j = true;
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() != 0) {
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f92355e.getLocale(), "feature-not-supported", new Object[]{identifier}));
            }
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f92355e.getLocale(), "feature-not-recognized", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.Validator
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f92355e.getLocale(), "ProperyNameNull", null));
        }
        if (f92354n.equals(str)) {
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f92355e.getLocale(), "property-read-only", new Object[]{str}));
        }
        try {
            this.f92355e.setProperty(str, obj);
            this.f92360j = true;
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() != 0) {
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f92355e.getLocale(), "property-not-supported", new Object[]{identifier}));
            }
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f92355e.getLocale(), "property-not-recognized", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.Validator
    public void setResourceResolver(LSResourceResolver lSResourceResolver) {
        this.f92362l = lSResourceResolver != null;
        this.f92355e.m57397h(lSResourceResolver);
    }

    @Override // javax.xml.validation.Validator
    public void validate(Source source, Result result) throws SAXException, IOException {
        if (source instanceof SAXSource) {
            if (this.f92356f == null) {
                this.f92356f = new xzn(this.f92355e);
            }
            this.f92356f.validate(source, result);
            return;
        }
        if (source instanceof DOMSource) {
            if (this.f92357g == null) {
                this.f92357g = new tqe(this.f92355e);
            }
            this.f92357g.validate(source, result);
        } else if (source instanceof StAXSource) {
            if (this.f92358h == null) {
                this.f92358h = new ixm(this.f92355e);
            }
            this.f92358h.validate(source, result);
        } else {
            if (!(source instanceof StreamSource)) {
                if (source != null) {
                    throw new IllegalArgumentException(oqi.m56146a(this.f92355e.getLocale(), "SourceNotAccepted", new Object[]{source.getClass().getName()}));
                }
                throw new NullPointerException(oqi.m56146a(this.f92355e.getLocale(), "SourceParameterNull", null));
            }
            if (this.f92359i == null) {
                this.f92359i = new f0n(this.f92355e);
            }
            this.f92359i.validate(source, result);
        }
    }
}
