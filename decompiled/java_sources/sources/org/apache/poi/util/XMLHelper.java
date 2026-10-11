package org.apache.poi.util;

import com.caverock.androidsvg.SVGParser;
import com.sunia.HTREnginev2.qlo;
import java.io.StringReader;
import java.util.concurrent.TimeUnit;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.validation.SchemaFactory;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;

@Internal
/* loaded from: classes13.dex */
public final class XMLHelper {
    static final String FEATURE_DISALLOW_DOCTYPE_DECL = "http://apache.org/xml/features/disallow-doctype-decl";
    static final String FEATURE_EXTERNAL_ENTITIES = "http://xml.org/sax/features/external-general-entities";
    static final String FEATURE_LOAD_DTD_GRAMMAR = "http://apache.org/xml/features/nonvalidating/load-dtd-grammar";
    static final String FEATURE_LOAD_EXTERNAL_DTD = "http://apache.org/xml/features/nonvalidating/load-external-dtd";
    static final String FEATURE_PARAMETER_ENTITIES = "http://xml.org/sax/features/external-parameter-entities";
    static final String METHOD_ENTITY_EXPANSION_XERCES = "setEntityExpansionLimit";
    static final String PROPERTY_ENTITY_EXPANSION_LIMIT = "http://www.oracle.com/xml/jaxp/properties/entityExpansionLimit";
    static final String PROPERTY_SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    private static long lastLog;
    static final String[] SECURITY_MANAGERS = {"org.apache.xerces.util.SecurityManager"};
    private static final Logger LOG = LogManager.getLogger((Class<?>) XMLHelper.class);
    private static final DocumentBuilderFactory documentBuilderFactory = getDocumentBuilderFactory();
    private static final SAXParserFactory saxFactory = getSaxParserFactory();

    /* loaded from: classes13.dex */
    public static class DocHelperErrorHandler implements ErrorHandler {
        private DocHelperErrorHandler() {
        }

        private void printError(Level level, SAXParseException sAXParseException) {
            int lastIndexOf;
            String systemId = sAXParseException.getSystemId();
            if (systemId != null && (lastIndexOf = systemId.lastIndexOf(47)) != -1) {
                systemId = systemId.substring(lastIndexOf + 1);
            }
            StringBuilder sb = new StringBuilder();
            if (systemId == null) {
                systemId = "";
            }
            sb.append(systemId);
            sb.append(':');
            sb.append(sAXParseException.getLineNumber());
            sb.append(':');
            sb.append(sAXParseException.getColumnNumber());
            sb.append(':');
            sb.append(sAXParseException.getMessage());
            XMLHelper.LOG.atLevel(level).withThrowable(sAXParseException).log(sb.toString());
        }

        @Override // org.xml.sax.ErrorHandler
        public void error(SAXParseException sAXParseException) {
            printError(Level.ERROR, sAXParseException);
        }

        @Override // org.xml.sax.ErrorHandler
        public void fatalError(SAXParseException sAXParseException) throws SAXException {
            printError(Level.FATAL, sAXParseException);
            throw sAXParseException;
        }

        @Override // org.xml.sax.ErrorHandler
        public void warning(SAXParseException sAXParseException) {
            printError(Level.WARN, sAXParseException);
        }

        public /* synthetic */ DocHelperErrorHandler(C198631 c198631) {
            this();
        }
    }

    @FunctionalInterface
    /* loaded from: classes13.dex */
    public interface SecurityFeature {
        void accept(String str, boolean z) throws ParserConfigurationException, SAXException, TransformerException;
    }

    @FunctionalInterface
    /* loaded from: classes13.dex */
    public interface SecurityProperty {
        void accept(String str, Object obj) throws SAXException;
    }

    private XMLHelper() {
    }

    public static DocumentBuilderFactory getDocumentBuilderFactory() {
        final DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance("com.sun.org.apache.xerces.internal.jaxp.DocumentBuilderFactoryImpl", null);
        newInstance.setNamespaceAware(true);
        newInstance.setExpandEntityReferences(false);
        newInstance.setValidating(false);
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.g
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                DocumentBuilderFactory.this.setFeature(str, z);
            }
        }, "http://javax.xml.XMLConstants/feature/secure-processing", true);
        quietSet(new SecurityProperty() { // from class: org.apache.poi.util.h
            @Override // org.apache.poi.util.XMLHelper.SecurityProperty
            public final void accept(String str, Object obj) {
                DocumentBuilderFactory.this.setAttribute(str, obj);
            }
        }, "http://javax.xml.XMLConstants/property/accessExternalSchema", "");
        quietSet(new SecurityProperty() { // from class: org.apache.poi.util.h
            @Override // org.apache.poi.util.XMLHelper.SecurityProperty
            public final void accept(String str, Object obj) {
                DocumentBuilderFactory.this.setAttribute(str, obj);
            }
        }, "http://javax.xml.XMLConstants/property/accessExternalDTD", "");
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.g
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                DocumentBuilderFactory.this.setFeature(str, z);
            }
        }, "http://xml.org/sax/features/external-general-entities", false);
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.g
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                DocumentBuilderFactory.this.setFeature(str, z);
            }
        }, "http://xml.org/sax/features/external-parameter-entities", false);
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.g
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                DocumentBuilderFactory.this.setFeature(str, z);
            }
        }, "http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.g
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                DocumentBuilderFactory.this.setFeature(str, z);
            }
        }, "http://apache.org/xml/features/nonvalidating/load-dtd-grammar", false);
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.g
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                DocumentBuilderFactory.this.setFeature(str, z);
            }
        }, "http://apache.org/xml/features/disallow-doctype-decl", true);
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.i
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                DocumentBuilderFactory.this.setXIncludeAware(z);
            }
        }, "XIncludeAware", false);
        Object xercesSecurityManager = getXercesSecurityManager();
        if (xercesSecurityManager == null || !trySet(new SecurityProperty() { // from class: org.apache.poi.util.h
            @Override // org.apache.poi.util.XMLHelper.SecurityProperty
            public final void accept(String str, Object obj) {
                DocumentBuilderFactory.this.setAttribute(str, obj);
            }
        }, "http://apache.org/xml/properties/security-manager", xercesSecurityManager)) {
            trySet(new SecurityProperty() { // from class: org.apache.poi.util.h
                @Override // org.apache.poi.util.XMLHelper.SecurityProperty
                public final void accept(String str, Object obj) {
                    DocumentBuilderFactory.this.setAttribute(str, obj);
                }
            }, "http://www.oracle.com/xml/jaxp/properties/entityExpansionLimit", (Object) 1);
        }
        return newInstance;
    }

    public static SAXParserFactory getSaxParserFactory() {
        try {
            final SAXParserFactory newInstance = SAXParserFactory.newInstance("com.sun.org.apache.xerces.internal.jaxp.SAXParserFactoryImpl", null);
            newInstance.setValidating(false);
            newInstance.setNamespaceAware(true);
            trySet(new SecurityFeature() { // from class: org.apache.poi.util.a
                @Override // org.apache.poi.util.XMLHelper.SecurityFeature
                public final void accept(String str, boolean z) {
                    SAXParserFactory.this.setFeature(str, z);
                }
            }, "http://javax.xml.XMLConstants/feature/secure-processing", true);
            trySet(new SecurityFeature() { // from class: org.apache.poi.util.a
                @Override // org.apache.poi.util.XMLHelper.SecurityFeature
                public final void accept(String str, boolean z) {
                    SAXParserFactory.this.setFeature(str, z);
                }
            }, "http://apache.org/xml/features/nonvalidating/load-dtd-grammar", false);
            trySet(new SecurityFeature() { // from class: org.apache.poi.util.a
                @Override // org.apache.poi.util.XMLHelper.SecurityFeature
                public final void accept(String str, boolean z) {
                    SAXParserFactory.this.setFeature(str, z);
                }
            }, "http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
            trySet(new SecurityFeature() { // from class: org.apache.poi.util.a
                @Override // org.apache.poi.util.XMLHelper.SecurityFeature
                public final void accept(String str, boolean z) {
                    SAXParserFactory.this.setFeature(str, z);
                }
            }, "http://xml.org/sax/features/external-general-entities", false);
            trySet(new SecurityFeature() { // from class: org.apache.poi.util.a
                @Override // org.apache.poi.util.XMLHelper.SecurityFeature
                public final void accept(String str, boolean z) {
                    SAXParserFactory.this.setFeature(str, z);
                }
            }, "http://apache.org/xml/features/disallow-doctype-decl", true);
            return newInstance;
        } catch (Error | RuntimeException e) {
            logThrowable(e, "Failed to create SAXParserFactory", "-");
            throw e;
        } catch (Exception e2) {
            logThrowable(e2, "Failed to create SAXParserFactory", "-");
            throw new IllegalStateException("Failed to create SAXParserFactory", e2);
        }
    }

    public static SchemaFactory getSchemaFactory() {
        final SchemaFactory newInstance = SchemaFactory.newInstance("http://www.w3.org/2001/XMLSchema");
        newInstance.getClass();
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.e
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                SchemaFactory.this.setFeature(str, z);
            }
        }, "http://javax.xml.XMLConstants/feature/secure-processing", true);
        quietSet(new SecurityProperty() { // from class: org.apache.poi.util.f
            @Override // org.apache.poi.util.XMLHelper.SecurityProperty
            public final void accept(String str, Object obj) {
                SchemaFactory.this.setProperty(str, obj);
            }
        }, "http://javax.xml.XMLConstants/property/accessExternalDTD", "");
        quietSet(new SecurityProperty() { // from class: org.apache.poi.util.f
            @Override // org.apache.poi.util.XMLHelper.SecurityProperty
            public final void accept(String str, Object obj) {
                SchemaFactory.this.setProperty(str, obj);
            }
        }, "http://javax.xml.XMLConstants/property/accessExternalStylesheet", "");
        quietSet(new SecurityProperty() { // from class: org.apache.poi.util.f
            @Override // org.apache.poi.util.XMLHelper.SecurityProperty
            public final void accept(String str, Object obj) {
                SchemaFactory.this.setProperty(str, obj);
            }
        }, "http://javax.xml.XMLConstants/property/accessExternalSchema", "");
        return newInstance;
    }

    public static TransformerFactory getTransformerFactory() {
        final TransformerFactory newInstance = TransformerFactory.newInstance();
        newInstance.getClass();
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.k
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                TransformerFactory.this.setFeature(str, z);
            }
        }, "http://javax.xml.XMLConstants/feature/secure-processing", true);
        quietSet(new SecurityProperty() { // from class: org.apache.poi.util.l
            @Override // org.apache.poi.util.XMLHelper.SecurityProperty
            public final void accept(String str, Object obj) {
                TransformerFactory.this.setAttribute(str, obj);
            }
        }, "http://javax.xml.XMLConstants/property/accessExternalDTD", "");
        quietSet(new SecurityProperty() { // from class: org.apache.poi.util.l
            @Override // org.apache.poi.util.XMLHelper.SecurityProperty
            public final void accept(String str, Object obj) {
                TransformerFactory.this.setAttribute(str, obj);
            }
        }, "http://javax.xml.XMLConstants/property/accessExternalStylesheet", "");
        quietSet(new SecurityProperty() { // from class: org.apache.poi.util.l
            @Override // org.apache.poi.util.XMLHelper.SecurityProperty
            public final void accept(String str, Object obj) {
                TransformerFactory.this.setAttribute(str, obj);
            }
        }, "http://javax.xml.XMLConstants/property/accessExternalSchema", "");
        return newInstance;
    }

    private static Object getXercesSecurityManager() {
        for (String str : SECURITY_MANAGERS) {
            try {
                Object newInstance = Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                newInstance.getClass().getMethod(METHOD_ENTITY_EXPANSION_XERCES, Integer.TYPE).invoke(newInstance, 1);
                return newInstance;
            } catch (ClassNotFoundException unused) {
            } catch (Throwable th) {
                logThrowable(th, "SAX Feature unsupported", str);
            }
        }
        return null;
    }

    public static InputSource ignoreEntity(String str, String str2) {
        return new InputSource(new StringReader(""));
    }

    private static void logThrowable(Throwable th, String str, String str2) {
        if (System.currentTimeMillis() > lastLog + TimeUnit.MINUTES.toMillis(5L)) {
            LOG.atWarn().withThrowable(th).log("{} [log suppressed for 5 minutes] {}", str, str2);
            lastLog = System.currentTimeMillis();
        }
    }

    public static DocumentBuilder newDocumentBuilder() {
        try {
            DocumentBuilder newDocumentBuilder = documentBuilderFactory.newDocumentBuilder();
            newDocumentBuilder.setEntityResolver(new qlo());
            newDocumentBuilder.setErrorHandler(new DocHelperErrorHandler());
            return newDocumentBuilder;
        } catch (ParserConfigurationException e) {
            throw new IllegalStateException("cannot create a DocumentBuilder", e);
        }
    }

    public static Transformer newTransformer() throws TransformerConfigurationException {
        Transformer newTransformer = getTransformerFactory().newTransformer();
        newTransformer.setOutputProperty("encoding", "UTF-8");
        newTransformer.setOutputProperty("indent", SVGParser.f16048t);
        newTransformer.setOutputProperty("method", "xml");
        return newTransformer;
    }

    public static XMLEventFactory newXMLEventFactory() {
        return XMLEventFactory.newInstance();
    }

    public static XMLInputFactory newXMLInputFactory() {
        final XMLInputFactory newInstance = XMLInputFactory.newInstance();
        newInstance.getClass();
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.d
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                XMLInputFactory.this.setProperty(str, Boolean.valueOf(z));
            }
        }, XMLInputFactory.IS_NAMESPACE_AWARE, true);
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.d
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                XMLInputFactory.this.setProperty(str, Boolean.valueOf(z));
            }
        }, XMLInputFactory.IS_VALIDATING, false);
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.d
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                XMLInputFactory.this.setProperty(str, Boolean.valueOf(z));
            }
        }, XMLInputFactory.SUPPORT_DTD, false);
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.d
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                XMLInputFactory.this.setProperty(str, Boolean.valueOf(z));
            }
        }, XMLInputFactory.IS_SUPPORTING_EXTERNAL_ENTITIES, false);
        return newInstance;
    }

    public static XMLOutputFactory newXMLOutputFactory() {
        final XMLOutputFactory newInstance = XMLOutputFactory.newInstance();
        newInstance.getClass();
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.j
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                XMLOutputFactory.this.setProperty(str, Boolean.valueOf(z));
            }
        }, XMLOutputFactory.IS_REPAIRING_NAMESPACES, true);
        return newInstance;
    }

    public static XMLReader newXMLReader() throws SAXException, ParserConfigurationException {
        final XMLReader xMLReader = saxFactory.newSAXParser().getXMLReader();
        xMLReader.setEntityResolver(new qlo());
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.b
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                XMLReader.this.setFeature(str, z);
            }
        }, "http://javax.xml.XMLConstants/feature/secure-processing", true);
        trySet(new SecurityFeature() { // from class: org.apache.poi.util.b
            @Override // org.apache.poi.util.XMLHelper.SecurityFeature
            public final void accept(String str, boolean z) {
                XMLReader.this.setFeature(str, z);
            }
        }, "http://xml.org/sax/features/external-general-entities", false);
        Object xercesSecurityManager = getXercesSecurityManager();
        if (xercesSecurityManager == null || !trySet(new SecurityProperty() { // from class: org.apache.poi.util.c
            @Override // org.apache.poi.util.XMLHelper.SecurityProperty
            public final void accept(String str, Object obj) {
                XMLReader.this.setProperty(str, obj);
            }
        }, "http://apache.org/xml/properties/security-manager", xercesSecurityManager)) {
            trySet(new SecurityProperty() { // from class: org.apache.poi.util.c
                @Override // org.apache.poi.util.XMLHelper.SecurityProperty
                public final void accept(String str, Object obj) {
                    XMLReader.this.setProperty(str, obj);
                }
            }, "http://www.oracle.com/xml/jaxp/properties/entityExpansionLimit", (Object) 1);
        }
        return xMLReader;
    }

    private static boolean quietSet(SecurityProperty securityProperty, String str, Object obj) {
        try {
            securityProperty.accept(str, obj);
            return true;
        } catch (Error | Exception unused) {
            return false;
        }
    }

    private static boolean trySet(SecurityFeature securityFeature, String str, boolean z) {
        try {
            securityFeature.accept(str, z);
            return true;
        } catch (Error e) {
            logThrowable(e, "Cannot set SAX feature because outdated XML parser in classpath", str);
            return false;
        } catch (Exception e2) {
            logThrowable(e2, "SAX Feature unsupported", str);
            return false;
        }
    }

    private static boolean trySet(SecurityProperty securityProperty, String str, Object obj) {
        try {
            securityProperty.accept(str, obj);
            return true;
        } catch (Error e) {
            logThrowable(e, "Cannot set SAX feature because outdated XML parser in classpath", str);
            return false;
        } catch (Exception e2) {
            logThrowable(e2, "SAX Feature unsupported", str);
            return false;
        }
    }
}
