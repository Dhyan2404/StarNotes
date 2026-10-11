package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.ElemVariable;
import org.xml.sax.SAXException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class ProcessorGlobalVariableDecl extends ProcessorTemplateElem {
    static final long serialVersionUID = -5954332402269819582L;

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem
    public void appendAndPush(StylesheetHandler stylesheetHandler, ElemTemplateElement elemTemplateElement) throws SAXException {
        stylesheetHandler.pushElemTemplateElement(elemTemplateElement);
    }

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem, com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void endElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3) throws SAXException {
        ElemVariable elemVariable = (ElemVariable) stylesheetHandler.getElemTemplateElement();
        stylesheetHandler.getStylesheet().appendChild((ElemTemplateElement) elemVariable);
        stylesheetHandler.getStylesheet().setVariable(elemVariable);
        super.endElement(stylesheetHandler, str, str2, str3);
    }
}
