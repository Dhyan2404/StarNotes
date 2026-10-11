package com.sun.org.apache.xalan.internal.xsltc.trax;

import com.sun.org.apache.xml.internal.utils.XMLReaderManager;
import java.io.IOException;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.sax.SAXResult;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLFilterImpl;
import org.xml.sax.helpers.XMLReaderFactory;

/* loaded from: classes10.dex */
public class TrAXFilter extends XMLFilterImpl {
    private Templates _templates;
    private TransformerImpl _transformer;
    private TransformerHandlerImpl _transformerHandler;

    public TrAXFilter(Templates templates) throws TransformerConfigurationException {
        this._templates = templates;
        TransformerImpl transformerImpl = (TransformerImpl) templates.newTransformer();
        this._transformer = transformerImpl;
        this._transformerHandler = new TransformerHandlerImpl(transformerImpl);
    }

    private void createParent() throws SAXException {
        try {
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            if (this._transformer.isSecureProcessing()) {
                try {
                    newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                } catch (SAXException unused) {
                }
            }
            XMLReader xMLReader = newInstance.newSAXParser().getXMLReader();
            if (xMLReader == null) {
                xMLReader = XMLReaderFactory.createXMLReader();
            }
            setParent(xMLReader);
        } catch (FactoryConfigurationError e) {
            throw new SAXException(e.toString());
        } catch (ParserConfigurationException e2) {
            throw new SAXException(e2);
        }
    }

    public Transformer getTransformer() {
        return this._transformer;
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public void parse(InputSource inputSource) throws SAXException, IOException {
        XMLReader xMLReader = null;
        try {
            if (getParent() == null) {
                try {
                    xMLReader = XMLReaderManager.getInstance().getXMLReader();
                    setParent(xMLReader);
                } catch (SAXException e) {
                    throw new SAXException(e.toString());
                }
            }
            getParent().parse(inputSource);
        } finally {
            if (xMLReader != null) {
                XMLReaderManager.getInstance().releaseXMLReader(xMLReader);
            }
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public void setContentHandler(ContentHandler contentHandler) {
        this._transformerHandler.setResult(new SAXResult(contentHandler));
        if (getParent() == null) {
            try {
                createParent();
            } catch (SAXException unused) {
                return;
            }
        }
        getParent().setContentHandler(this._transformerHandler);
    }

    public void setErrorListener(ErrorListener errorListener) {
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public void parse(String str) throws SAXException, IOException {
        parse(new InputSource(str));
    }
}
