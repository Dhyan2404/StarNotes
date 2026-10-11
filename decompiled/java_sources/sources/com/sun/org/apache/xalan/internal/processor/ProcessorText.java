package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.ElemText;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ProcessorText extends ProcessorTemplateElem {
    static final long serialVersionUID = 5170229307201307523L;

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem
    public void appendAndPush(StylesheetHandler stylesheetHandler, ElemTemplateElement elemTemplateElement) throws SAXException {
        ((ProcessorCharacters) stylesheetHandler.getProcessorFor(null, "text()", "text")).setXslTextElement((ElemText) elemTemplateElement);
        stylesheetHandler.getElemTemplateElement().appendChild(elemTemplateElement);
        elemTemplateElement.setDOMBackPointer(stylesheetHandler.getOriginatingNode());
    }

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem, com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void endElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3) throws SAXException {
        ((ProcessorCharacters) stylesheetHandler.getProcessorFor(null, "text()", "text")).setXslTextElement(null);
    }
}
