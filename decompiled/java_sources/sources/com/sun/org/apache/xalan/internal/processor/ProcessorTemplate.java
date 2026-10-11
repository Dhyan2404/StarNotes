package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.ElemTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import org.xml.sax.SAXException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class ProcessorTemplate extends ProcessorTemplateElem {
    static final long serialVersionUID = -8457812845473603860L;

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem
    public void appendAndPush(StylesheetHandler stylesheetHandler, ElemTemplateElement elemTemplateElement) throws SAXException {
        super.appendAndPush(stylesheetHandler, elemTemplateElement);
        elemTemplateElement.setDOMBackPointer(stylesheetHandler.getOriginatingNode());
        stylesheetHandler.getStylesheet().setTemplate((ElemTemplate) elemTemplateElement);
    }
}
