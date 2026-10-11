package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.ElemParam;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import org.xml.sax.SAXException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class ProcessorGlobalParamDecl extends ProcessorTemplateElem {
    static final long serialVersionUID = 1900450872353587350L;

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem
    public void appendAndPush(StylesheetHandler stylesheetHandler, ElemTemplateElement elemTemplateElement) throws SAXException {
        stylesheetHandler.pushElemTemplateElement(elemTemplateElement);
    }

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem, com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void endElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3) throws SAXException {
        ElemParam elemParam = (ElemParam) stylesheetHandler.getElemTemplateElement();
        stylesheetHandler.getStylesheet().appendChild((ElemTemplateElement) elemParam);
        stylesheetHandler.getStylesheet().setParam(elemParam);
        super.endElement(stylesheetHandler, str, str2, str3);
    }
}
