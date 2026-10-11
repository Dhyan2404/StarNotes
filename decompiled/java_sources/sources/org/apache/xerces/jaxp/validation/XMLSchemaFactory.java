package org.apache.xerces.jaxp.validation;

import com.sunia.HTREnginev2.AbstractC13980k5;
import com.sunia.HTREnginev2.cdl;
import com.sunia.HTREnginev2.ehf;
import com.sunia.HTREnginev2.epf;
import com.sunia.HTREnginev2.fzn;
import com.sunia.HTREnginev2.oqi;
import com.sunia.HTREnginev2.slo;
import com.sunia.HTREnginev2.t5o;
import com.sunia.HTREnginev2.zsm;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import javax.xml.stream.XMLEventReader;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stax.StAXSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import org.apache.xerces.impl.Constants;
import org.apache.xerces.impl.p117xs.XMLSchemaLoader;
import org.apache.xerces.util.DOMEntityResolverWrapper;
import org.apache.xerces.util.DOMInputSource;
import org.apache.xerces.util.ErrorHandlerWrapper;
import org.apache.xerces.util.SAXInputSource;
import org.apache.xerces.util.SAXMessageFormatter;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.util.StAXInputSource;
import org.apache.xerces.util.XMLGrammarPoolImpl;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.SAXParseException;

/* loaded from: classes13.dex */
public final class XMLSchemaFactory extends SchemaFactory {

    /* renamed from: i */
    public static final String f113331i = "http://javax.xml.transform";

    /* renamed from: j */
    public static final String f113332j = "http://apache.org/xml/features/validation/schema-full-checking";

    /* renamed from: k */
    public static final String f113333k = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";

    /* renamed from: l */
    public static final String f113334l = "http://apache.org/xml/properties/internal/grammar-pool";

    /* renamed from: m */
    public static final String f113335m = "http://apache.org/xml/properties/security-manager";

    /* renamed from: a */
    public final XMLSchemaLoader f113336a;

    /* renamed from: b */
    public ErrorHandler f113337b;

    /* renamed from: c */
    public LSResourceResolver f113338c;

    /* renamed from: d */
    public final DOMEntityResolverWrapper f113339d;

    /* renamed from: e */
    public final ErrorHandlerWrapper f113340e;

    /* renamed from: f */
    public SecurityManager f113341f;

    /* renamed from: g */
    public final C20072b f113342g;

    /* renamed from: h */
    public boolean f113343h;

    /* renamed from: org.apache.xerces.jaxp.validation.XMLSchemaFactory$a */
    /* loaded from: classes13.dex */
    public static class C20071a extends XMLGrammarPoolImpl {
        public C20071a() {
        }

        /* renamed from: a */
        public int m70519a() {
            return this.fGrammarCount;
        }

        public C20071a(int i) {
            super(i);
        }
    }

    /* renamed from: org.apache.xerces.jaxp.validation.XMLSchemaFactory$b */
    /* loaded from: classes13.dex */
    public static class C20072b implements XMLGrammarPool {

        /* renamed from: a */
        public XMLGrammarPool f113344a;

        /* renamed from: a */
        public XMLGrammarPool m70520a() {
            return this.f113344a;
        }

        /* renamed from: b */
        public void m70521b(XMLGrammarPool xMLGrammarPool) {
            this.f113344a = xMLGrammarPool;
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void cacheGrammars(String str, Grammar[] grammarArr) {
            this.f113344a.cacheGrammars(str, grammarArr);
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void clear() {
            this.f113344a.clear();
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void lockPool() {
            this.f113344a.lockPool();
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            return this.f113344a.retrieveGrammar(xMLGrammarDescription);
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public Grammar[] retrieveInitialGrammarSet(String str) {
            return this.f113344a.retrieveInitialGrammarSet(str);
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void unlockPool() {
            this.f113344a.unlockPool();
        }
    }

    public XMLSchemaFactory() {
        XMLSchemaLoader xMLSchemaLoader = new XMLSchemaLoader();
        this.f113336a = xMLSchemaLoader;
        ErrorHandlerWrapper errorHandlerWrapper = new ErrorHandlerWrapper(ehf.m53960a());
        this.f113340e = errorHandlerWrapper;
        DOMEntityResolverWrapper dOMEntityResolverWrapper = new DOMEntityResolverWrapper();
        this.f113339d = dOMEntityResolverWrapper;
        C20072b c20072b = new C20072b();
        this.f113342g = c20072b;
        xMLSchemaLoader.setFeature(f113332j, true);
        xMLSchemaLoader.setProperty("http://apache.org/xml/properties/internal/grammar-pool", c20072b);
        xMLSchemaLoader.setEntityResolver(dOMEntityResolverWrapper);
        xMLSchemaLoader.setErrorHandler(errorHandlerWrapper);
        this.f113343h = true;
    }

    /* renamed from: a */
    public final void m70518a(AbstractC13980k5 abstractC13980k5) {
        abstractC13980k5.m55184a("http://javax.xml.XMLConstants/feature/secure-processing", this.f113341f != null);
        String[] recognizedFeatures = this.f113336a.getRecognizedFeatures();
        for (int i = 0; i < recognizedFeatures.length; i++) {
            abstractC13980k5.m55184a(recognizedFeatures[i], this.f113336a.getFeature(recognizedFeatures[i]));
        }
    }

    @Override // javax.xml.validation.SchemaFactory
    public ErrorHandler getErrorHandler() {
        return this.f113337b;
    }

    @Override // javax.xml.validation.SchemaFactory
    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f113336a.getLocale(), "FeatureNameNull", null));
        }
        if (str.startsWith("http://javax.xml.transform") && (str.equals(StreamSource.FEATURE) || str.equals(SAXSource.FEATURE) || str.equals(DOMSource.FEATURE) || str.equals(StAXSource.FEATURE))) {
            return true;
        }
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            return this.f113341f != null;
        }
        if (str.equals("http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only")) {
            return this.f113343h;
        }
        try {
            return this.f113336a.getFeature(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "feature-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "feature-not-supported", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.SchemaFactory
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f113336a.getLocale(), "ProperyNameNull", null));
        }
        if (str.equals("http://apache.org/xml/properties/security-manager")) {
            return this.f113341f;
        }
        if (str.equals("http://apache.org/xml/properties/internal/grammar-pool")) {
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "property-not-supported", new Object[]{str}));
        }
        try {
            return this.f113336a.getProperty(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "property-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "property-not-supported", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.SchemaFactory
    public LSResourceResolver getResourceResolver() {
        return this.f113338c;
    }

    @Override // javax.xml.validation.SchemaFactory
    public boolean isSchemaLanguageSupported(String str) {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f113336a.getLocale(), "SchemaLanguageNull", null));
        }
        if (str.length() != 0) {
            return str.equals("http://www.w3.org/2001/XMLSchema") || str.equals(Constants.W3C_XML_SCHEMA10_NS_URI);
        }
        throw new IllegalArgumentException(oqi.m56146a(this.f113336a.getLocale(), "SchemaLanguageLengthZero", null));
    }

    @Override // javax.xml.validation.SchemaFactory
    public Schema newSchema() throws SAXException {
        t5o t5oVar = new t5o();
        m70518a(t5oVar);
        return t5oVar;
    }

    @Override // javax.xml.validation.SchemaFactory
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.f113337b = errorHandler;
        ErrorHandlerWrapper errorHandlerWrapper = this.f113340e;
        if (errorHandler == null) {
            errorHandler = ehf.m53960a();
        }
        errorHandlerWrapper.setErrorHandler(errorHandler);
        this.f113336a.setErrorHandler(this.f113340e);
    }

    @Override // javax.xml.validation.SchemaFactory
    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f113336a.getLocale(), "FeatureNameNull", null));
        }
        if (str.startsWith("http://javax.xml.transform") && (str.equals(StreamSource.FEATURE) || str.equals(SAXSource.FEATURE) || str.equals(DOMSource.FEATURE) || str.equals(StAXSource.FEATURE))) {
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "feature-read-only", new Object[]{str}));
        }
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            SecurityManager securityManager = z ? new SecurityManager() : null;
            this.f113341f = securityManager;
            this.f113336a.setProperty("http://apache.org/xml/properties/security-manager", securityManager);
        } else {
            if (str.equals("http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only")) {
                this.f113343h = z;
                return;
            }
            try {
                this.f113336a.setFeature(str, z);
            } catch (XMLConfigurationException e) {
                String identifier = e.getIdentifier();
                if (e.getType() != 0) {
                    throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "feature-not-supported", new Object[]{identifier}));
                }
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "feature-not-recognized", new Object[]{identifier}));
            }
        }
    }

    @Override // javax.xml.validation.SchemaFactory
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f113336a.getLocale(), "ProperyNameNull", null));
        }
        if (str.equals("http://apache.org/xml/properties/security-manager")) {
            SecurityManager securityManager = (SecurityManager) obj;
            this.f113341f = securityManager;
            this.f113336a.setProperty("http://apache.org/xml/properties/security-manager", securityManager);
        } else {
            if (str.equals("http://apache.org/xml/properties/internal/grammar-pool")) {
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "property-not-supported", new Object[]{str}));
            }
            try {
                this.f113336a.setProperty(str, obj);
            } catch (XMLConfigurationException e) {
                String identifier = e.getIdentifier();
                if (e.getType() != 0) {
                    throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "property-not-supported", new Object[]{identifier}));
                }
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f113336a.getLocale(), "property-not-recognized", new Object[]{identifier}));
            }
        }
    }

    @Override // javax.xml.validation.SchemaFactory
    public void setResourceResolver(LSResourceResolver lSResourceResolver) {
        this.f113338c = lSResourceResolver;
        this.f113339d.setEntityResolver(lSResourceResolver);
        this.f113336a.setEntityResolver(this.f113339d);
    }

    public Schema newSchema(XMLGrammarPool xMLGrammarPool) throws SAXException {
        slo sloVar = this.f113343h ? new slo(new cdl(xMLGrammarPool)) : new slo(xMLGrammarPool, false);
        m70518a(sloVar);
        return sloVar;
    }

    @Override // javax.xml.validation.SchemaFactory
    public Schema newSchema(Source[] sourceArr) throws SAXException {
        C20071a c20071a = new C20071a();
        this.f113342g.m70521b(c20071a);
        XMLInputSource[] xMLInputSourceArr = new XMLInputSource[sourceArr.length];
        for (int i = 0; i < sourceArr.length; i++) {
            Source source = sourceArr[i];
            if (source instanceof StreamSource) {
                StreamSource streamSource = (StreamSource) source;
                String publicId = streamSource.getPublicId();
                String systemId = streamSource.getSystemId();
                InputStream inputStream = streamSource.getInputStream();
                Reader reader = streamSource.getReader();
                XMLInputSource xMLInputSource = new XMLInputSource(publicId, systemId, null);
                xMLInputSource.setByteStream(inputStream);
                xMLInputSource.setCharacterStream(reader);
                xMLInputSourceArr[i] = xMLInputSource;
            } else if (source instanceof SAXSource) {
                SAXSource sAXSource = (SAXSource) source;
                InputSource inputSource = sAXSource.getInputSource();
                if (inputSource == null) {
                    throw new SAXException(oqi.m56146a(this.f113336a.getLocale(), "SAXSourceNullInputSource", null));
                }
                xMLInputSourceArr[i] = new SAXInputSource(sAXSource.getXMLReader(), inputSource);
            } else if (source instanceof DOMSource) {
                DOMSource dOMSource = (DOMSource) source;
                xMLInputSourceArr[i] = new DOMInputSource(dOMSource.getNode(), dOMSource.getSystemId());
            } else {
                if (!(source instanceof StAXSource)) {
                    if (source == null) {
                        throw new NullPointerException(oqi.m56146a(this.f113336a.getLocale(), "SchemaSourceArrayMemberNull", null));
                    }
                    throw new IllegalArgumentException(oqi.m56146a(this.f113336a.getLocale(), "SchemaFactorySourceUnrecognized", new Object[]{source.getClass().getName()}));
                }
                StAXSource stAXSource = (StAXSource) source;
                XMLEventReader xMLEventReader = stAXSource.getXMLEventReader();
                if (xMLEventReader != null) {
                    xMLInputSourceArr[i] = new StAXInputSource(xMLEventReader);
                } else {
                    xMLInputSourceArr[i] = new StAXInputSource(stAXSource.getXMLStreamReader());
                }
            }
        }
        try {
            this.f113336a.loadGrammar(xMLInputSourceArr);
            this.f113342g.m70521b(null);
            int m70519a = c20071a.m70519a();
            AbstractC13980k5 sloVar = this.f113343h ? m70519a > 1 ? new slo(new cdl(c20071a)) : m70519a == 1 ? new zsm(c20071a.retrieveInitialGrammarSet("http://www.w3.org/2001/XMLSchema")[0]) : new epf() : new slo(new cdl(c20071a), false);
            m70518a(sloVar);
            return sloVar;
        } catch (IOException e) {
            SAXParseException sAXParseException = new SAXParseException(e.getMessage(), null, e);
            ErrorHandler errorHandler = this.f113337b;
            if (errorHandler == null) {
                throw sAXParseException;
            }
            errorHandler.error(sAXParseException);
            throw sAXParseException;
        } catch (XNIException e2) {
            throw fzn.m54211a(e2);
        }
    }
}
