package javax.xml.transform;

import com.sunia.HTREnginev2.edm;
import javax.xml.transform.FactoryFinder;

/* loaded from: classes5.dex */
public abstract class TransformerFactory {
    public static TransformerFactory newInstance() throws TransformerFactoryConfigurationError {
        try {
            return (TransformerFactory) FactoryFinder.m61523b("javax.xml.transform.TransformerFactory", "org.apache.xalan.processor.TransformerFactoryImpl");
        } catch (FactoryFinder.ConfigurationError e) {
            throw new TransformerFactoryConfigurationError(e.getException(), e.getMessage());
        }
    }

    public abstract Source getAssociatedStylesheet(Source source, String str, String str2, String str3) throws TransformerConfigurationException;

    public abstract Object getAttribute(String str);

    public abstract ErrorListener getErrorListener();

    public abstract boolean getFeature(String str);

    public abstract URIResolver getURIResolver();

    public abstract Templates newTemplates(Source source) throws TransformerConfigurationException;

    public abstract Transformer newTransformer() throws TransformerConfigurationException;

    public abstract Transformer newTransformer(Source source) throws TransformerConfigurationException;

    public abstract void setAttribute(String str, Object obj);

    public abstract void setErrorListener(ErrorListener errorListener);

    public abstract void setFeature(String str, boolean z) throws TransformerConfigurationException;

    public abstract void setURIResolver(URIResolver uRIResolver);

    public static TransformerFactory newInstance(String str, ClassLoader classLoader) throws TransformerFactoryConfigurationError {
        if (str == null) {
            throw new TransformerFactoryConfigurationError("factoryClassName cannot be null.");
        }
        if (classLoader == null) {
            classLoader = edm.m53955b();
        }
        try {
            return (TransformerFactory) FactoryFinder.m61525d(str, classLoader, false);
        } catch (FactoryFinder.ConfigurationError e) {
            throw new TransformerFactoryConfigurationError(e.getException(), e.getMessage());
        }
    }
}
