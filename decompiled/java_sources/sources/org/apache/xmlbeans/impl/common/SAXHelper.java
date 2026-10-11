package org.apache.xmlbeans.impl.common;

import java.io.IOException;
import java.io.StringReader;
import java.util.concurrent.TimeUnit;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.common.SAXHelper;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/* loaded from: classes13.dex */
public final class SAXHelper {
    private static long lastLog;
    private static final Logger LOG = LogManager.getLogger((Class<?>) SAXHelper.class);
    public static final EntityResolver IGNORING_ENTITY_RESOLVER = new EntityResolver() { // from class: com.sunia.HTREnginev2.eyl
        @Override // org.xml.sax.EntityResolver
        public final InputSource resolveEntity(String str, String str2) {
            InputSource lambda$static$0;
            lambda$static$0 = SAXHelper.lambda$static$0(str, str2);
            return lambda$static$0;
        }
    };

    private SAXHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InputSource lambda$static$0(String str, String str2) throws SAXException, IOException {
        return new InputSource(new StringReader(""));
    }

    public static XMLReader newXMLReader(XmlOptions xmlOptions) throws SAXException, ParserConfigurationException {
        XMLReader xMLReader = saxFactory(xmlOptions).newSAXParser().getXMLReader();
        xMLReader.setEntityResolver(IGNORING_ENTITY_RESOLVER);
        trySetSAXFeature(xMLReader, "http://javax.xml.XMLConstants/feature/secure-processing");
        trySetXercesSecurityManager(xMLReader, xmlOptions);
        return xMLReader;
    }

    public static SAXParserFactory saxFactory() {
        return saxFactory(new XmlOptions());
    }

    private static void trySetSAXFeature(SAXParserFactory sAXParserFactory, String str, boolean z) {
        try {
            sAXParserFactory.setFeature(str, z);
        } catch (AbstractMethodError e) {
            LOG.atWarn().withThrowable(e).log("Cannot set SAX feature {} because outdated XML parser in classpath", str);
        } catch (Exception e2) {
            LOG.atWarn().withThrowable(e2).log("SAX Feature unsupported: {}", str);
        }
    }

    private static void trySetXercesSecurityManager(XMLReader xMLReader, XmlOptions xmlOptions) {
        Class<?> cls;
        try {
            cls = Class.forName(new String[]{"org.apache.xerces.util.SecurityManager"}[0]);
        } catch (Throwable unused) {
        }
        try {
            Object newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            cls.getMethod("setEntityExpansionLimit", Integer.TYPE).invoke(newInstance, Integer.valueOf(xmlOptions.getEntityExpansionLimit()));
            xMLReader.setProperty("http://apache.org/xml/properties/security-manager", newInstance);
        } catch (Throwable th) {
            if (System.currentTimeMillis() > lastLog + TimeUnit.MINUTES.toMillis(5L)) {
                LOG.atWarn().withThrowable(th).log("SAX Security Manager could not be setup [log suppressed for 5 minutes]");
                lastLog = System.currentTimeMillis();
            }
            try {
                xMLReader.setProperty(XMLBeansConstants.ENTITY_EXPANSION_LIMIT, Integer.valueOf(xmlOptions.getEntityExpansionLimit()));
            } catch (SAXException e) {
                if (System.currentTimeMillis() > lastLog + TimeUnit.MINUTES.toMillis(5L)) {
                    LOG.atWarn().withThrowable(e).log("SAX Security Manager could not be setup [log suppressed for 5 minutes]");
                    lastLog = System.currentTimeMillis();
                }
            }
        }
    }

    public static SAXParserFactory saxFactory(XmlOptions xmlOptions) {
        SAXParserFactory newInstance = SAXParserFactory.newInstance();
        newInstance.setValidating(false);
        newInstance.setNamespaceAware(true);
        trySetSAXFeature(newInstance, "http://javax.xml.XMLConstants/feature/secure-processing", true);
        trySetSAXFeature(newInstance, XMLBeansConstants.FEATURE_LOAD_DTD_GRAMMAR, xmlOptions.isLoadDTDGrammar());
        trySetSAXFeature(newInstance, "http://apache.org/xml/features/nonvalidating/load-external-dtd", xmlOptions.isLoadExternalDTD());
        trySetSAXFeature(newInstance, "http://apache.org/xml/features/disallow-doctype-decl", xmlOptions.disallowDocTypeDeclaration());
        return newInstance;
    }

    private static void trySetSAXFeature(XMLReader xMLReader, String str) {
        try {
            xMLReader.setFeature(str, true);
        } catch (AbstractMethodError e) {
            LOG.atWarn().withThrowable(e).log("Cannot set SAX feature {} because outdated XML parser in classpath", str);
        } catch (Exception e2) {
            LOG.atWarn().withThrowable(e2).log("SAX Feature unsupported: {}", str);
        }
    }
}
