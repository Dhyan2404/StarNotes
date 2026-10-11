package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.ElemAttributeSet;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import javax.xml.transform.TransformerException;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class ProcessorAttributeSet extends XSLTElementProcessor {
    static final long serialVersionUID = -6473739251316787552L;

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void endElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3) throws SAXException {
        stylesheetHandler.popElemTemplateElement();
    }

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        ElemAttributeSet elemAttributeSet = new ElemAttributeSet();
        elemAttributeSet.setLocaterInfo(stylesheetHandler.getLocator());
        try {
            elemAttributeSet.setPrefixes(stylesheetHandler.getNamespaceSupport());
            elemAttributeSet.setDOMBackPointer(stylesheetHandler.getOriginatingNode());
            setPropertiesFromAttributes(stylesheetHandler, str3, attributes, elemAttributeSet);
            stylesheetHandler.getStylesheet().setAttributeSet(elemAttributeSet);
            stylesheetHandler.getElemTemplateElement().appendChild((ElemTemplateElement) elemAttributeSet);
            stylesheetHandler.pushElemTemplateElement(elemAttributeSet);
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }
}
