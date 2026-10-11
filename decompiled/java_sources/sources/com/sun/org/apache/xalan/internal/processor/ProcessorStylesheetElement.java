package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.templates.StylesheetComposed;
import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ProcessorStylesheetElement extends XSLTElementProcessor {
    static final long serialVersionUID = -877798927447840792L;

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void endElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3) throws SAXException {
        super.endElement(stylesheetHandler, str, str2, str3);
        stylesheetHandler.popElemTemplateElement();
        stylesheetHandler.popStylesheet();
    }

    public Stylesheet getStylesheetRoot(StylesheetHandler stylesheetHandler) throws TransformerConfigurationException {
        StylesheetRoot stylesheetRoot = new StylesheetRoot(stylesheetHandler.getSchema(), stylesheetHandler.getStylesheetProcessor().getErrorListener());
        if (stylesheetHandler.getStylesheetProcessor().isSecureProcessing()) {
            stylesheetRoot.setSecureProcessing(true);
        }
        return stylesheetRoot;
    }

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        Stylesheet stylesheet;
        super.startElement(stylesheetHandler, str, str2, str3, attributes);
        try {
            int stylesheetType = stylesheetHandler.getStylesheetType();
            if (stylesheetType == 1) {
                try {
                    stylesheet = getStylesheetRoot(stylesheetHandler);
                } catch (TransformerConfigurationException e) {
                    throw new TransformerException(e);
                }
            } else {
                Stylesheet stylesheet2 = stylesheetHandler.getStylesheet();
                if (stylesheetType == 3) {
                    StylesheetComposed stylesheetComposed = new StylesheetComposed(stylesheet2);
                    stylesheet2.setImport(stylesheetComposed);
                    stylesheet = stylesheetComposed;
                } else {
                    Stylesheet stylesheet3 = new Stylesheet(stylesheet2);
                    stylesheet2.setInclude(stylesheet3);
                    stylesheet = stylesheet3;
                }
            }
            stylesheet.setDOMBackPointer(stylesheetHandler.getOriginatingNode());
            stylesheet.setLocaterInfo(stylesheetHandler.getLocator());
            stylesheet.setPrefixes(stylesheetHandler.getNamespaceSupport());
            stylesheetHandler.pushStylesheet(stylesheet);
            setPropertiesFromAttributes(stylesheetHandler, str3, attributes, stylesheetHandler.getStylesheet());
            stylesheetHandler.pushElemTemplateElement(stylesheetHandler.getStylesheet());
        } catch (TransformerException e2) {
            throw new SAXException(e2);
        }
    }
}
