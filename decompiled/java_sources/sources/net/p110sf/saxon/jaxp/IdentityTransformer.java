package net.p110sf.saxon.jaxp;

import java.util.Objects;
import java.util.Properties;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.lib.ErrorReporterToListener;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import org.xml.sax.SAXParseException;

/* loaded from: classes11.dex */
public class IdentityTransformer extends Transformer {

    /* renamed from: e */
    public final Configuration f100445e;

    /* renamed from: f */
    public Properties f100446f;

    /* renamed from: g */
    public URIResolver f100447g;

    /* renamed from: h */
    public ErrorListener f100448h;

    public IdentityTransformer(Configuration configuration) {
        this.f100445e = configuration;
    }

    /* renamed from: a */
    public final void m63253a() {
        this.f100446f = new Properties();
    }

    @Override // javax.xml.transform.Transformer
    public void clearParameters() {
    }

    public Configuration getConfiguration() {
        return this.f100445e;
    }

    @Override // javax.xml.transform.Transformer
    public ErrorListener getErrorListener() {
        return this.f100448h;
    }

    public Properties getLocalOutputProperties() {
        if (this.f100446f == null) {
            m63253a();
        }
        return this.f100446f;
    }

    @Override // javax.xml.transform.Transformer
    public Properties getOutputProperties() {
        Properties properties = new Properties();
        Properties stylesheetOutputProperties = getStylesheetOutputProperties();
        for (String str : stylesheetOutputProperties.stringPropertyNames()) {
            properties.setProperty(str, stylesheetOutputProperties.getProperty(str));
        }
        Properties properties2 = this.f100446f;
        if (properties2 != null) {
            for (String str2 : properties2.stringPropertyNames()) {
                properties.setProperty(str2, this.f100446f.getProperty(str2));
            }
        }
        return properties;
    }

    @Override // javax.xml.transform.Transformer
    public String getOutputProperty(String str) throws IllegalArgumentException {
        try {
            getConfiguration().getSerializerFactory().checkOutputProperty(str, null);
            Properties properties = this.f100446f;
            String property = properties != null ? properties.getProperty(str) : null;
            return property == null ? getStylesheetOutputProperties().getProperty(str) : property;
        } catch (XPathException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    @Override // javax.xml.transform.Transformer
    public Object getParameter(String str) {
        return null;
    }

    public Properties getStylesheetOutputProperties() {
        return new Properties();
    }

    @Override // javax.xml.transform.Transformer
    public URIResolver getURIResolver() {
        return this.f100447g;
    }

    public void reportFatalError(XPathException xPathException) {
        try {
            ErrorListener errorListener = this.f100448h;
            if (errorListener != null) {
                errorListener.error(xPathException);
            } else {
                getConfiguration().makeErrorReporter().report(new XmlProcessingException(xPathException));
            }
        } catch (TransformerException unused) {
        }
    }

    @Override // javax.xml.transform.Transformer
    public void reset() {
        this.f100446f = null;
        this.f100447g = null;
        this.f100448h = null;
    }

    @Override // javax.xml.transform.Transformer
    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        Objects.requireNonNull(errorListener);
        this.f100448h = errorListener;
    }

    @Override // javax.xml.transform.Transformer
    public void setOutputProperties(Properties properties) {
        if (properties == null) {
            this.f100446f = null;
            return;
        }
        for (String str : properties.stringPropertyNames()) {
            setOutputProperty(str, properties.getProperty(str));
        }
    }

    @Override // javax.xml.transform.Transformer
    public void setOutputProperty(String str, String str2) throws IllegalArgumentException {
        if (this.f100446f == null) {
            m63253a();
        }
        try {
            this.f100446f.setProperty(str, getConfiguration().getSerializerFactory().checkOutputProperty(str, str2));
        } catch (XPathException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    @Override // javax.xml.transform.Transformer
    public void setParameter(String str, Object obj) {
    }

    @Override // javax.xml.transform.Transformer
    public void setURIResolver(URIResolver uRIResolver) {
        this.f100447g = uRIResolver;
    }

    @Override // javax.xml.transform.Transformer
    public void transform(Source source, Result result) throws TransformerException {
        try {
            Receiver receiver = getConfiguration().getSerializerFactory().getReceiver(result, new SerializationProperties(getOutputProperties()));
            ParseOptions parseOptions = receiver.getPipelineConfiguration().getParseOptions();
            ErrorListener errorListener = this.f100448h;
            if (errorListener != null) {
                parseOptions.setErrorReporter(new ErrorReporterToListener(errorListener));
            }
            parseOptions.setContinueAfterValidationErrors(true);
            Sender.send(source, receiver, parseOptions);
        } catch (XPathException e) {
            Throwable exception = e.getException();
            if (!(exception instanceof SAXParseException)) {
                reportFatalError(e);
            } else if (((SAXParseException) exception).getException() instanceof RuntimeException) {
                reportFatalError(e);
            }
            throw e;
        }
    }
}
