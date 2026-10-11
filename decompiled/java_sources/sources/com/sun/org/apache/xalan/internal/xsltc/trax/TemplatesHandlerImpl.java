package com.sun.org.apache.xalan.internal.xsltc.trax;

import com.sun.org.apache.xalan.internal.xsltc.compiler.CompilerException;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Parser;
import com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
import com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import java.util.Vector;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.TemplatesHandler;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class TemplatesHandlerImpl implements ContentHandler, TemplatesHandler, SourceLoader {
    private int _indentNumber;
    private Parser _parser;
    private String _systemId;
    private TransformerFactoryImpl _tfactory;
    private URIResolver _uriResolver = null;
    private TemplatesImpl _templates = null;

    public TemplatesHandlerImpl(int i, TransformerFactoryImpl transformerFactoryImpl) {
        this._parser = null;
        this._indentNumber = i;
        this._tfactory = transformerFactoryImpl;
        XSLTC xsltc = new XSLTC();
        if (transformerFactoryImpl.getFeature("http://javax.xml.XMLConstants/feature/secure-processing")) {
            xsltc.setSecureProcessing(true);
        }
        this._parser = xsltc.getParser();
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        this._parser.characters(cArr, i, i2);
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        this._parser.endDocument();
        try {
            XSLTC xsltc = this._parser.getXSLTC();
            String str = this._systemId;
            xsltc.setClassName(str != null ? Util.baseName(str) : (String) this._tfactory.getAttribute(TransformerFactoryImpl.TRANSLET_NAME));
            String className = xsltc.getClassName();
            SyntaxTreeNode documentRoot = this._parser.getDocumentRoot();
            Stylesheet stylesheet = null;
            if (!this._parser.errorsFound() && documentRoot != null) {
                Stylesheet makeStylesheet = this._parser.makeStylesheet(documentRoot);
                makeStylesheet.setSystemId(this._systemId);
                makeStylesheet.setParentStylesheet(null);
                if (this._uriResolver != null) {
                    makeStylesheet.setSourceLoader(this);
                }
                this._parser.setCurrentStylesheet(makeStylesheet);
                xsltc.setStylesheet(makeStylesheet);
                this._parser.createAST(makeStylesheet);
                stylesheet = makeStylesheet;
            }
            if (!this._parser.errorsFound() && stylesheet != null) {
                stylesheet.setMultiDocument(xsltc.isMultiDocument());
                stylesheet.setHasIdCall(xsltc.hasIdCall());
                synchronized (XSLTC.class) {
                    stylesheet.translate();
                }
            }
            if (!this._parser.errorsFound()) {
                if (xsltc.getBytecodes() != null) {
                    TemplatesImpl templatesImpl = new TemplatesImpl(xsltc.getBytecodes(), className, this._parser.getOutputProperties(), this._indentNumber, this._tfactory);
                    this._templates = templatesImpl;
                    URIResolver uRIResolver = this._uriResolver;
                    if (uRIResolver != null) {
                        templatesImpl.setURIResolver(uRIResolver);
                        return;
                    }
                    return;
                }
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            Vector errors = this._parser.getErrors();
            int size = errors.size();
            for (int i = 0; i < size; i++) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append('\n');
                }
                stringBuffer.append(errors.elementAt(i).toString());
            }
            throw new SAXException(ErrorMsg.JAXP_COMPILE_ERR, new TransformerException(stringBuffer.toString()));
        } catch (CompilerException e) {
            throw new SAXException(ErrorMsg.JAXP_COMPILE_ERR, e);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        this._parser.endElement(str, str2, str3);
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) {
        this._parser.endPrefixMapping(str);
    }

    @Override // javax.xml.transform.sax.TemplatesHandler
    public String getSystemId() {
        return this._systemId;
    }

    @Override // javax.xml.transform.sax.TemplatesHandler
    public Templates getTemplates() {
        return this._templates;
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) {
        this._parser.ignorableWhitespace(cArr, i, i2);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader
    public InputSource loadSource(String str, String str2, XSLTC xsltc) {
        try {
            Source resolve = this._uriResolver.resolve(str, str2);
            if (resolve != null) {
                return Util.getInputSource(xsltc, resolve);
            }
            return null;
        } catch (TransformerException unused) {
            return null;
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) {
        this._parser.processingInstruction(str, str2);
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        setSystemId(locator.getSystemId());
        this._parser.setDocumentLocator(locator);
    }

    @Override // javax.xml.transform.sax.TemplatesHandler
    public void setSystemId(String str) {
        this._systemId = str;
    }

    public void setURIResolver(URIResolver uRIResolver) {
        this._uriResolver = uRIResolver;
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) {
        this._parser.skippedEntity(str);
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() {
        XSLTC xsltc = this._parser.getXSLTC();
        xsltc.init();
        xsltc.setOutputType(2);
        this._parser.startDocument();
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        this._parser.startElement(str, str2, str3, attributes);
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) {
        this._parser.startPrefixMapping(str, str2);
    }
}
