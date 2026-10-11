package net.p110sf.saxon.jaxp;

import com.sunia.HTREnginev2.AbstractC13810h5;
import java.io.File;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
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
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.lib.CatalogResourceResolver;
import net.p110sf.saxon.lib.ErrorReporterToListener;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.FeatureKeys;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.ResourceResolverWrappingURIResolver;
import net.p110sf.saxon.lib.StandardErrorListener;
import net.p110sf.saxon.s9api.Processor;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.XsltCompiler;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.trans.ConfigurationReader;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.XMLFilter;
import org.xmlresolver.ResolverFeature;

/* loaded from: classes11.dex */
public class SaxonTransformerFactory extends SAXTransformerFactory implements Configuration.ApiProvider {

    /* renamed from: g */
    public static final String f100453g = "http://javax.xml.XMLConstants/feature/secure-processing";

    /* renamed from: e */
    public final Processor f100454e;

    /* renamed from: f */
    public ErrorListener f100455f;

    public SaxonTransformerFactory() {
        this.f100455f = new StandardErrorListener();
        this.f100454e = new Processor(true);
    }

    @Override // javax.xml.transform.TransformerFactory
    public Source getAssociatedStylesheet(Source source, String str, String str2, String str3) throws TransformerConfigurationException {
        try {
            XsltCompiler newXsltCompiler = this.f100454e.newXsltCompiler();
            ErrorListener errorListener = this.f100455f;
            if (errorListener != null) {
                newXsltCompiler.setErrorReporter(new ErrorReporterToListener(errorListener));
            }
            return newXsltCompiler.getAssociatedStylesheet(source, str, str2, str3);
        } catch (SaxonApiException e) {
            throw new TransformerConfigurationException(e);
        }
    }

    @Override // javax.xml.transform.TransformerFactory
    public Object getAttribute(String str) throws IllegalArgumentException {
        if (!str.equals("http://javax.xml.XMLConstants/property/accessExternalDTD")) {
            return str.equals("http://javax.xml.XMLConstants/property/accessExternalStylesheet") ? getConfiguration().getConfigurationProperty(Feature.ALLOWED_PROTOCOLS) : getConfiguration().getConfigurationProperty(str);
        }
        return getConfiguration().getConfigurationProperty(Feature.XML_PARSER_PROPERTY + "http://javax.xml.XMLConstants/property/accessExternalDTD");
    }

    public Configuration getConfiguration() {
        return this.f100454e.getUnderlyingConfiguration();
    }

    @Override // javax.xml.transform.TransformerFactory
    public ErrorListener getErrorListener() {
        return this.f100455f;
    }

    @Override // javax.xml.transform.TransformerFactory
    public boolean getFeature(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1895093573:
                if (str.equals(SAXTransformerFactory.FEATURE_XMLFILTER)) {
                    c = 0;
                    break;
                }
                break;
            case -1263869161:
                if (str.equals(DOMResult.FEATURE)) {
                    c = 1;
                    break;
                }
                break;
            case -1189751429:
                if (str.equals(SAXTransformerFactory.FEATURE)) {
                    c = 2;
                    break;
                }
                break;
            case -786616774:
                if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
                    c = 3;
                    break;
                }
                break;
            case -578736025:
                if (str.equals(SAXResult.FEATURE)) {
                    c = 4;
                    break;
                }
                break;
            case -238770923:
                if (str.equals(DOMSource.FEATURE)) {
                    c = 5;
                    break;
                }
                break;
            case 446362213:
                if (str.equals(SAXSource.FEATURE)) {
                    c = 6;
                    break;
                }
                break;
            case 927634095:
                if (str.equals(StreamResult.FEATURE)) {
                    c = 7;
                    break;
                }
                break;
            case 1952732333:
                if (str.equals(StreamSource.FEATURE)) {
                    c = '\b';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
                return true;
            case 3:
                return !getConfiguration().getBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS);
            default:
                try {
                    Object configurationProperty = getConfiguration().getConfigurationProperty(str);
                    if (configurationProperty instanceof Boolean) {
                        return ((Boolean) configurationProperty).booleanValue();
                    }
                    return false;
                } catch (IllegalArgumentException unused) {
                    return false;
                }
        }
    }

    public Processor getProcessor() {
        return this.f100454e;
    }

    @Override // javax.xml.transform.TransformerFactory
    public URIResolver getURIResolver() {
        if (getConfiguration().getResourceResolver() instanceof ResourceResolverWrappingURIResolver) {
            return ((ResourceResolverWrappingURIResolver) getConfiguration().getResourceResolver()).getWrappedURIResolver();
        }
        return null;
    }

    @Override // javax.xml.transform.TransformerFactory
    public synchronized Templates newTemplates(Source source) throws TransformerConfigurationException {
        XsltCompiler newXsltCompiler;
        try {
            newXsltCompiler = this.f100454e.newXsltCompiler();
            ErrorListener errorListener = this.f100455f;
            if (errorListener != null) {
                newXsltCompiler.setErrorReporter(new ErrorReporterToListener(errorListener));
            }
        } catch (SaxonApiException e) {
            throw new TransformerConfigurationException(e);
        }
        return new TemplatesImpl(this, newXsltCompiler.compile(source));
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TemplatesHandler newTemplatesHandler() {
        return new TemplatesHandlerImpl(this, this.f100454e);
    }

    @Override // javax.xml.transform.TransformerFactory
    public Transformer newTransformer(Source source) throws TransformerConfigurationException {
        return newTemplates(source).newTransformer();
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler(Source source) throws TransformerConfigurationException {
        return newTransformerHandler(newTemplates(source));
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public XMLFilter newXMLFilter(Source source) throws TransformerConfigurationException {
        return newXMLFilter(newTemplates(source));
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setAttribute(String str, Object obj) throws IllegalArgumentException {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1393676057:
                if (str.equals(FeatureKeys.CONFIGURATION)) {
                    c = 0;
                    break;
                }
                break;
            case -1387700574:
                if (str.equals(FeatureKeys.CONFIGURATION_FILE)) {
                    c = 1;
                    break;
                }
                break;
            case 797887457:
                if (str.equals("http://javax.xml.XMLConstants/property/accessExternalStylesheet")) {
                    c = 2;
                    break;
                }
                break;
            case 1298246561:
                if (str.equals("http://javax.xml.XMLConstants/property/accessExternalDTD")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                setConfiguration((Configuration) obj);
                return;
            case 1:
                try {
                    setConfiguration(new ConfigurationReader().makeConfiguration(new StreamSource(new File((String) obj))));
                    return;
                } catch (XPathException e) {
                    throw new IllegalArgumentException(e);
                }
            case 2:
                getConfiguration().setConfigurationProperty((Feature<Feature<Object>>) Feature.ALLOWED_PROTOCOLS, (Feature<Object>) obj.toString());
                ResourceResolver resourceResolver = getConfiguration().getResourceResolver();
                if (resourceResolver instanceof CatalogResourceResolver) {
                    CatalogResourceResolver catalogResourceResolver = (CatalogResourceResolver) resourceResolver;
                    catalogResourceResolver.setFeature(ResolverFeature.ACCESS_EXTERNAL_DOCUMENT, obj.toString());
                    catalogResourceResolver.setFeature(ResolverFeature.ACCESS_EXTERNAL_ENTITY, obj.toString());
                    return;
                }
                return;
            case 3:
                getConfiguration().setConfigurationProperty("http://saxon.sf.net/feature/parserProperty?uri=http://javax.xml.XMLConstants/property/accessExternalDTD", obj);
                return;
            default:
                getConfiguration().setConfigurationProperty(str, obj);
                return;
        }
    }

    public void setConfiguration(Configuration configuration) {
        this.f100454e.setConfigurationProperty((Feature<Feature<Configuration>>) Feature.CONFIGURATION, (Feature<Configuration>) configuration);
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        if (errorListener == null) {
            throw new IllegalArgumentException();
        }
        this.f100455f = errorListener;
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setFeature(String str, boolean z) throws TransformerConfigurationException {
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            getConfiguration().setBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS, !z);
            return;
        }
        try {
            getConfiguration().setBooleanProperty(str, z);
        } catch (IllegalArgumentException unused) {
            throw new TransformerConfigurationException("Unsupported TransformerFactory feature: " + str);
        }
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setURIResolver(URIResolver uRIResolver) {
        getConfiguration().setResourceResolver(new ResourceResolverWrappingURIResolver(uRIResolver));
    }

    @Override // javax.xml.transform.TransformerFactory
    public Transformer newTransformer() {
        return new IdentityTransformer(this.f100454e.getUnderlyingConfiguration());
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler(Templates templates) throws TransformerConfigurationException {
        if (templates instanceof TemplatesImpl) {
            return ((TransformerImpl) templates.newTransformer()).newTransformerHandler();
        }
        throw new TransformerConfigurationException("Templates object was not created by Saxon");
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public XMLFilter newXMLFilter(Templates templates) throws TransformerConfigurationException {
        if (templates instanceof TemplatesImpl) {
            return ((AbstractC13810h5) templates.newTransformer()).newXMLFilter();
        }
        throw new TransformerConfigurationException("Supplied Templates object was not created using Saxon");
    }

    public SaxonTransformerFactory(Configuration configuration) {
        this.f100455f = new StandardErrorListener();
        this.f100454e = new Processor(configuration);
    }

    public synchronized Templates newTemplates(Source source, CompilerInfo compilerInfo) throws TransformerConfigurationException {
        XsltCompiler newXsltCompiler;
        try {
            newXsltCompiler = this.f100454e.newXsltCompiler();
            newXsltCompiler.getUnderlyingCompilerInfo().copyFrom(compilerInfo);
        } catch (SaxonApiException e) {
            throw new TransformerConfigurationException(e);
        }
        return new TemplatesImpl(this, newXsltCompiler.compile(source));
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler() {
        return new IdentityTransformerHandler(new IdentityTransformer(getConfiguration()));
    }
}
