package org.apache.xerces.xni.grammars;

import java.io.IOException;
import java.util.Locale;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public interface XMLGrammarLoader {
    XMLEntityResolver getEntityResolver();

    XMLErrorHandler getErrorHandler();

    boolean getFeature(String str) throws XMLConfigurationException;

    Locale getLocale();

    Object getProperty(String str) throws XMLConfigurationException;

    String[] getRecognizedFeatures();

    String[] getRecognizedProperties();

    Grammar loadGrammar(XMLInputSource xMLInputSource) throws IOException, XNIException;

    void setEntityResolver(XMLEntityResolver xMLEntityResolver);

    void setErrorHandler(XMLErrorHandler xMLErrorHandler);

    void setFeature(String str, boolean z) throws XMLConfigurationException;

    void setLocale(Locale locale);

    void setProperty(String str, Object obj) throws XMLConfigurationException;
}
