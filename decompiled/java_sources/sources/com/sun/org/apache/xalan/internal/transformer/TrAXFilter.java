package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import java.io.IOException;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Templates;
import javax.xml.transform.TransformerConfigurationException;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLFilterImpl;
import org.xml.sax.helpers.XMLReaderFactory;

/* loaded from: classes10.dex */
public class TrAXFilter extends XMLFilterImpl {
    private Templates m_templates;
    private TransformerImpl m_transformer;

    public TrAXFilter(Templates templates) throws TransformerConfigurationException {
        this.m_templates = templates;
        this.m_transformer = (TransformerImpl) templates.newTransformer();
    }

    private void setupParse() {
        XMLReader parent = getParent();
        if (parent == null) {
            throw new NullPointerException(XSLMessages.createMessage("ER_NO_PARENT_FOR_FILTER", null));
        }
        parent.setContentHandler(this.m_transformer.getInputContentHandler());
        parent.setEntityResolver(this);
        parent.setDTDHandler(this);
        parent.setErrorHandler(this);
    }

    public TransformerImpl getTransformer() {
        return this.m_transformer;
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public void parse(InputSource inputSource) throws SAXException, IOException {
        XMLReader xMLReader;
        if (getParent() == null) {
            try {
                try {
                    SAXParserFactory newInstance = SAXParserFactory.newInstance();
                    newInstance.setNamespaceAware(true);
                    if (this.m_transformer.getStylesheet().isSecureProcessing()) {
                        try {
                            newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                        } catch (SAXException unused) {
                        }
                    }
                    xMLReader = newInstance.newSAXParser().getXMLReader();
                } catch (AbstractMethodError | NoSuchMethodError unused2) {
                    xMLReader = null;
                }
                if (xMLReader == null) {
                    xMLReader = XMLReaderFactory.createXMLReader();
                }
                try {
                    xMLReader.setFeature("http://xml.org/sax/features/namespace-prefixes", true);
                } catch (SAXException unused3) {
                }
                setParent(xMLReader);
            } catch (FactoryConfigurationError e) {
                throw new SAXException(e.toString());
            } catch (ParserConfigurationException e2) {
                throw new SAXException(e2);
            }
        } else {
            setupParse();
        }
        if (this.m_transformer.getContentHandler() != null) {
            getParent().parse(inputSource);
            Exception exceptionThrown = this.m_transformer.getExceptionThrown();
            if (exceptionThrown != null) {
                if (exceptionThrown instanceof SAXException) {
                    throw ((SAXException) exceptionThrown);
                }
                throw new SAXException(exceptionThrown);
            }
            return;
        }
        throw new SAXException(XSLMessages.createMessage("ER_CANNOT_CALL_PARSE", null));
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public void setContentHandler(ContentHandler contentHandler) {
        this.m_transformer.setContentHandler(contentHandler);
    }

    public void setErrorListener(ErrorListener errorListener) {
        this.m_transformer.setErrorListener(errorListener);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLFilter
    public void setParent(XMLReader xMLReader) {
        super.setParent(xMLReader);
        if (xMLReader.getContentHandler() != null) {
            setContentHandler(xMLReader.getContentHandler());
        }
        setupParse();
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public void parse(String str) throws SAXException, IOException {
        parse(new InputSource(str));
    }
}
