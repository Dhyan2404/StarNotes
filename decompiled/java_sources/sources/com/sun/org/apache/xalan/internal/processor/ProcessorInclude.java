package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xml.internal.utils.DOM2Helper;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import com.sun.org.apache.xml.internal.utils.TreeWalker;
import java.io.IOException;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import org.w3c.dom.Node;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

/* loaded from: classes10.dex */
public class ProcessorInclude extends XSLTElementProcessor {
    static final long serialVersionUID = -4570078731972673481L;
    private String m_href = null;

    public String getHref() {
        return this.m_href;
    }

    public String getStylesheetInclErr() {
        return "ER_STYLESHEET_INCLUDES_ITSELF";
    }

    public int getStylesheetType() {
        return 2;
    }

    public void parse(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        Source resolve;
        URIResolver uRIResolver = stylesheetHandler.getStylesheetProcessor().getURIResolver();
        if (uRIResolver != null) {
            try {
                resolve = uRIResolver.resolve(getHref(), stylesheetHandler.getBaseIdentifier());
                if (resolve != null && (resolve instanceof DOMSource)) {
                    Node node = ((DOMSource) resolve).getNode();
                    String systemId = resolve.getSystemId();
                    if (systemId == null) {
                        systemId = SystemIDResolver.getAbsoluteURI(getHref(), stylesheetHandler.getBaseIdentifier());
                    }
                    try {
                        new TreeWalker(stylesheetHandler, new DOM2Helper(), systemId).traverse(node);
                        return;
                    } catch (SAXException e) {
                        throw new TransformerException(e);
                    }
                }
            } catch (IOException e2) {
                stylesheetHandler.error("ER_IOEXCEPTION", new Object[]{getHref()}, e2);
                return;
            } catch (TransformerException e3) {
                stylesheetHandler.error(e3.getMessage(), e3);
                return;
            }
        } else {
            resolve = null;
        }
        if (resolve == null) {
            resolve = new StreamSource(SystemIDResolver.getAbsoluteURI(getHref(), stylesheetHandler.getBaseIdentifier()));
        }
        Source processSource = processSource(stylesheetHandler, resolve);
        XMLReader xMLReader = processSource instanceof SAXSource ? ((SAXSource) processSource).getXMLReader() : null;
        InputSource sourceToInputSource = SAXSource.sourceToInputSource(processSource);
        if (xMLReader == null) {
            try {
                try {
                    SAXParserFactory newInstance = SAXParserFactory.newInstance();
                    newInstance.setNamespaceAware(true);
                    if (stylesheetHandler.getStylesheetProcessor().isSecureProcessing()) {
                        try {
                            newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                        } catch (SAXException unused) {
                        }
                    }
                    xMLReader = newInstance.newSAXParser().getXMLReader();
                } catch (AbstractMethodError | NoSuchMethodError unused2) {
                }
            } catch (FactoryConfigurationError e4) {
                throw new SAXException(e4.toString());
            } catch (ParserConfigurationException e5) {
                throw new SAXException(e5);
            }
        }
        if (xMLReader == null) {
            xMLReader = XMLReaderFactory.createXMLReader();
        }
        if (xMLReader != null) {
            xMLReader.setContentHandler(stylesheetHandler);
            stylesheetHandler.pushBaseIndentifier(sourceToInputSource.getSystemId());
            try {
                xMLReader.parse(sourceToInputSource);
                stylesheetHandler.popBaseIndentifier();
            } catch (Throwable th) {
                stylesheetHandler.popBaseIndentifier();
                throw th;
            }
        }
    }

    public Source processSource(StylesheetHandler stylesheetHandler, Source source) {
        return source;
    }

    public void setHref(String str) {
        this.m_href = str;
    }

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        setPropertiesFromAttributes(stylesheetHandler, str3, attributes, this);
        try {
            String absoluteURI = SystemIDResolver.getAbsoluteURI(getHref(), stylesheetHandler.getBaseIdentifier());
            if (stylesheetHandler.importStackContains(absoluteURI)) {
                throw new SAXException(XSLMessages.createMessage(getStylesheetInclErr(), new Object[]{absoluteURI}));
            }
            stylesheetHandler.pushImportURL(absoluteURI);
            int stylesheetType = stylesheetHandler.getStylesheetType();
            stylesheetHandler.setStylesheetType(getStylesheetType());
            stylesheetHandler.pushNewNamespaceSupport();
            try {
                parse(stylesheetHandler, str, str2, str3, attributes);
                stylesheetHandler.setStylesheetType(stylesheetType);
                stylesheetHandler.popImportURL();
                stylesheetHandler.popNamespaceSupport();
            } catch (Throwable th) {
                stylesheetHandler.setStylesheetType(stylesheetType);
                stylesheetHandler.popImportURL();
                stylesheetHandler.popNamespaceSupport();
                throw th;
            }
        } catch (TransformerException e) {
            stylesheetHandler.error(e.getMessage(), e);
        }
    }
}
