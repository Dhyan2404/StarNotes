package net.p110sf.saxon.resource;

import com.onegravity.rteditor.converter.tagsoup.Parser;
import java.io.IOException;
import java.util.Map;
import java.util.function.Consumer;
import javax.xml.transform.sax.SAXSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceivingContentHandler;
import net.p110sf.saxon.expr.number.Numberer_en;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.StandardErrorHandler;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;

/* loaded from: classes11.dex */
public class ActiveSAXSource extends SAXSource implements ActiveSource {

    /* renamed from: g */
    public Consumer<XMLReader> f101270g;

    public ActiveSAXSource(XMLReader xMLReader, InputSource inputSource) {
        super(xMLReader, inputSource);
    }

    /* renamed from: a */
    public static String m63613a(XMLReader xMLReader) {
        return "Selected XML parser " + xMLReader.getClass().getName();
    }

    public static void configureParser(XMLReader xMLReader) throws XPathException {
        try {
            xMLReader.setFeature("http://xml.org/sax/features/namespaces", true);
            try {
                xMLReader.setFeature("http://xml.org/sax/features/namespace-prefixes", false);
            } catch (SAXNotRecognizedException e) {
                throw new XPathException("The SAX2 parser " + xMLReader.getClass().getName() + " does not support setting the 'namespace-prefixes' feature to false", e);
            } catch (SAXNotSupportedException e2) {
                throw new XPathException("The SAX2 parser " + xMLReader.getClass().getName() + " does not recognize the 'namespace-prefixes' feature", e2);
            }
        } catch (SAXNotRecognizedException e3) {
            throw new XPathException("The SAX2 parser " + xMLReader.getClass().getName() + " does not support setting the 'namespaces' feature to true", e3);
        } catch (SAXNotSupportedException e4) {
            throw new XPathException("The SAX2 parser " + xMLReader.getClass().getName() + " does not recognize the 'namespaces' feature", e4);
        }
    }

    @Override // net.p110sf.saxon.lib.ActiveSource
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        boolean z;
        boolean z2;
        try {
            try {
                Logger logger = receiver.getPipelineConfiguration().getConfiguration().getLogger();
                XMLReader xMLReader = getXMLReader();
                configureParser(xMLReader);
                ReceivingContentHandler receivingContentHandler = new ReceivingContentHandler();
                receivingContentHandler.setReceiver(receiver);
                receivingContentHandler.setPipelineConfiguration(receiver.getPipelineConfiguration());
                xMLReader.setContentHandler(receivingContentHandler);
                xMLReader.setDTDHandler(receivingContentHandler);
                xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", receivingContentHandler);
                ErrorHandler errorHandler = xMLReader.getErrorHandler();
                if (errorHandler == null) {
                    errorHandler = parseOptions.getErrorHandler();
                    if (errorHandler == null) {
                        errorHandler = parseOptions.getErrorReporter() != null ? new StandardErrorHandler(parseOptions.getErrorReporter()) : new StandardErrorHandler(receiver.getPipelineConfiguration().getConfiguration().makeErrorReporter());
                    }
                    xMLReader.setErrorHandler(errorHandler);
                }
                if (!parseOptions.isExpandAttributeDefaults()) {
                    try {
                        xMLReader.setFeature(Parser.useAttributes2Feature, true);
                    } catch (SAXNotRecognizedException | SAXNotSupportedException unused) {
                    }
                }
                boolean z3 = parseOptions.getDTDValidationMode() == 2;
                Map<String, Boolean> parserFeatures = parseOptions.getParserFeatures();
                Map<String, Object> parserProperties = parseOptions.getParserProperties();
                if (parserFeatures != null) {
                    for (Map.Entry<String, Boolean> entry : parserFeatures.entrySet()) {
                        try {
                            String key = entry.getKey();
                            boolean booleanValue = entry.getValue().booleanValue();
                            if (key.equals("http://apache.org/xml/features/xinclude")) {
                                try {
                                    xMLReader.setFeature(key, booleanValue);
                                    z2 = false;
                                } catch (SAXNotRecognizedException | SAXNotSupportedException unused2) {
                                    z2 = true;
                                }
                                if (z2) {
                                    try {
                                        xMLReader.setFeature(key + "-aware", booleanValue);
                                    } catch (SAXNotRecognizedException e) {
                                        throw new XPathException(m63613a(xMLReader) + " does not recognize request for XInclude processing", e);
                                    } catch (SAXNotSupportedException e2) {
                                        throw new XPathException(m63613a(xMLReader) + " does not support XInclude processing", e2);
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                xMLReader.setFeature(key, booleanValue);
                            }
                        } catch (SAXNotRecognizedException unused3) {
                            if (entry.getValue().booleanValue()) {
                                logger.warning(m63613a(xMLReader) + " does not recognize the feature " + entry.getKey());
                            }
                        } catch (SAXNotSupportedException unused4) {
                            if (entry.getValue().booleanValue()) {
                                logger.warning(m63613a(xMLReader) + " does not support the feature " + entry.getKey());
                            }
                        }
                    }
                }
                if (parserProperties != null) {
                    for (Map.Entry<String, Object> entry2 : parserProperties.entrySet()) {
                        try {
                            xMLReader.setProperty(entry2.getKey(), entry2.getValue());
                        } catch (SAXNotRecognizedException unused5) {
                            logger.warning(m63613a(xMLReader) + " does not recognize the property " + entry2.getKey());
                        } catch (SAXNotSupportedException unused6) {
                            logger.warning(m63613a(xMLReader) + " does not support the property " + entry2.getKey());
                        }
                    }
                }
                if (parseOptions.isXIncludeAware()) {
                    try {
                        xMLReader.setFeature("http://apache.org/xml/features/xinclude-aware", true);
                        z = false;
                    } catch (SAXNotRecognizedException | SAXNotSupportedException unused7) {
                        z = true;
                    }
                    if (z) {
                        try {
                            xMLReader.setFeature("http://apache.org/xml/features/xinclude", true);
                        } catch (SAXNotRecognizedException e3) {
                            throw new XPathException(m63613a(xMLReader) + " does not recognize request for XInclude processing", e3);
                        } catch (SAXNotSupportedException e4) {
                            throw new XPathException(m63613a(xMLReader) + " does not support XInclude processing", e4);
                        }
                    }
                }
                xMLReader.parse(getInputSource());
                if (errorHandler instanceof StandardErrorHandler) {
                    int fatalErrorCount = ((StandardErrorHandler) errorHandler).getFatalErrorCount();
                    if (fatalErrorCount > 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("The XML parser reported ");
                        sb.append(fatalErrorCount);
                        sb.append(fatalErrorCount == 1 ? " error" : " errors");
                        throw new XPathException(sb.toString());
                    }
                    int errorCount = ((StandardErrorHandler) errorHandler).getErrorCount();
                    if (errorCount > 0) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("The XML parser reported ");
                        sb2.append(new Numberer_en().toWords(errorCount).toLowerCase());
                        sb2.append(" validation error");
                        sb2.append(errorCount == 1 ? "" : "s");
                        String sb3 = sb2.toString();
                        if (!z3) {
                            throw new XPathException(sb3);
                        }
                        logger.warning(sb3 + ". Processing continues, because recovery from validation errors was requested");
                    }
                }
            } catch (IOException e5) {
                e = e5;
            }
            try {
                Consumer<XMLReader> consumer = this.f101270g;
                if (consumer != null) {
                    consumer.accept(getXMLReader());
                }
            } catch (IOException e6) {
                e = e6;
                throw new XPathException("I/O error reported by XML parser processing " + getSystemId(), e);
            }
        } catch (UncheckedXPathException e7) {
            throw new XPathException(e7);
        } catch (XPathException e8) {
            throw e8;
        } catch (SAXException e9) {
            Exception exception = e9.getException();
            if (exception instanceof XPathException) {
                throw ((XPathException) exception);
            }
            if (exception instanceof RuntimeException) {
                throw ((RuntimeException) exception);
            }
            XPathException xPathException = new XPathException(e9);
            xPathException.setErrorCode(SaxonErrorCode.SXXP0003);
            xPathException.setHasBeenReported(true);
            throw xPathException;
        } catch (Exception e10) {
            e10.printStackTrace();
            throw new IllegalStateException();
        }
    }

    public void setParserPool(Consumer<XMLReader> consumer) {
        this.f101270g = consumer;
    }

    public ActiveSAXSource(SAXSource sAXSource) throws IllegalArgumentException, XPathException {
        if (sAXSource.getXMLReader() != null) {
            setInputSource(sAXSource.getInputSource());
            setXMLReader(sAXSource.getXMLReader());
            setSystemId(sAXSource.getSystemId());
            return;
        }
        throw new IllegalArgumentException("Supplied SAXSource contains no XMLReader");
    }

    public ActiveSAXSource(InputSource inputSource, Configuration configuration) {
        setInputSource(inputSource);
        setXMLReader(configuration.getSourceParser());
        setSystemId(inputSource.getSystemId());
    }
}
