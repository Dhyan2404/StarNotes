package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.ElemExsltFuncResult;
import com.sun.org.apache.xalan.internal.templates.ElemExsltFunction;
import com.sun.org.apache.xalan.internal.templates.ElemParam;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.ElemVariable;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ProcessorExsltFuncResult extends ProcessorTemplateElem {
    static final long serialVersionUID = 6451230911473482423L;

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem, com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        super.startElement(stylesheetHandler, str, str2, str3, attributes);
        ElemTemplateElement parentElem = stylesheetHandler.getElemTemplateElement().getParentElem();
        while (parentElem != null && !(parentElem instanceof ElemExsltFunction)) {
            if ((parentElem instanceof ElemVariable) || (parentElem instanceof ElemParam) || (parentElem instanceof ElemExsltFuncResult)) {
                stylesheetHandler.error("func:result cannot appear within a variable, parameter, or another func:result.", new SAXException("func:result cannot appear within a variable, parameter, or another func:result."));
            }
            parentElem = parentElem.getParentElem();
        }
        if (parentElem == null) {
            stylesheetHandler.error("func:result must appear in a func:function element", new SAXException("func:result must appear in a func:function element"));
        }
    }
}
