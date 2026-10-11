package com.sun.org.apache.xalan.internal.xsltc.trax;

import com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import java.io.InputStream;
import java.io.Reader;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stax.StAXSource;
import javax.xml.transform.stream.StreamSource;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

/* loaded from: classes10.dex */
public final class Util {
    public static String baseName(String str) {
        return com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util.baseName(str);
    }

    public static InputSource getInputSource(XSLTC xsltc, Source source) throws TransformerConfigurationException {
        InputSource inputSource;
        InputSource inputSource2;
        String systemId = source.getSystemId();
        try {
            if (source instanceof SAXSource) {
                SAXSource sAXSource = (SAXSource) source;
                inputSource2 = sAXSource.getInputSource();
                try {
                    XMLReader xMLReader = sAXSource.getXMLReader();
                    if (xMLReader == null) {
                        try {
                            try {
                                xMLReader = XMLReaderFactory.createXMLReader();
                            } catch (Exception unused) {
                                SAXParserFactory newInstance = SAXParserFactory.newInstance();
                                newInstance.setNamespaceAware(true);
                                if (xsltc.isSecureProcessing()) {
                                    try {
                                        newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                                    } catch (SAXException unused2) {
                                    }
                                }
                                xMLReader = newInstance.newSAXParser().getXMLReader();
                            }
                        } catch (ParserConfigurationException e) {
                            throw new TransformerConfigurationException("ParserConfigurationException", e);
                        }
                    }
                    xMLReader.setFeature("http://xml.org/sax/features/namespaces", true);
                    xMLReader.setFeature("http://xml.org/sax/features/namespace-prefixes", false);
                    xsltc.setXMLReader(xMLReader);
                } catch (SAXNotRecognizedException e2) {
                    throw new TransformerConfigurationException("SAXNotRecognizedException ", e2);
                } catch (SAXNotSupportedException e3) {
                    throw new TransformerConfigurationException("SAXNotSupportedException ", e3);
                } catch (SAXException e4) {
                    throw new TransformerConfigurationException("SAXException ", e4);
                }
            } else {
                if (source instanceof DOMSource) {
                    DOMSource dOMSource = (DOMSource) source;
                    xsltc.setXMLReader(new DOM2SAX((Document) dOMSource.getNode()));
                    inputSource = SAXSource.sourceToInputSource(source);
                    if (inputSource == null) {
                        inputSource = new InputSource(dOMSource.getSystemId());
                    }
                } else if (source instanceof StAXSource) {
                    StAXSource stAXSource = (StAXSource) source;
                    if (stAXSource.getXMLEventReader() != null) {
                        xsltc.setXMLReader(new StAXEvent2SAX(stAXSource.getXMLEventReader()));
                    } else if (stAXSource.getXMLStreamReader() != null) {
                        xsltc.setXMLReader(new StAXStream2SAX(stAXSource.getXMLStreamReader()));
                    }
                    inputSource = SAXSource.sourceToInputSource(source);
                    if (inputSource == null) {
                        inputSource = new InputSource(stAXSource.getSystemId());
                    }
                } else {
                    if (!(source instanceof StreamSource)) {
                        throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.JAXP_UNKNOWN_SOURCE_ERR).toString());
                    }
                    StreamSource streamSource = (StreamSource) source;
                    InputStream inputStream = streamSource.getInputStream();
                    Reader reader = streamSource.getReader();
                    xsltc.setXMLReader(null);
                    inputSource = inputStream != null ? new InputSource(inputStream) : reader != null ? new InputSource(reader) : new InputSource(systemId);
                }
                inputSource2 = inputSource;
            }
            inputSource2.setSystemId(systemId);
            return inputSource2;
        } catch (NullPointerException unused3) {
            throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.JAXP_NO_SOURCE_ERR, "TransformerFactory.newTemplates()").toString());
        } catch (SecurityException unused4) {
            throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.FILE_ACCESS_ERR, systemId).toString());
        }
    }

    public static String noExtName(String str) {
        return com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util.noExtName(str);
    }

    public static String toJavaName(String str) {
        return com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util.toJavaName(str);
    }
}
