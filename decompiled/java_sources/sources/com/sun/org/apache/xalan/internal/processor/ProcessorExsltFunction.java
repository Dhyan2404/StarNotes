package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.ElemApplyImport;
import com.sun.org.apache.xalan.internal.templates.ElemApplyTemplates;
import com.sun.org.apache.xalan.internal.templates.ElemAttribute;
import com.sun.org.apache.xalan.internal.templates.ElemCallTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemComment;
import com.sun.org.apache.xalan.internal.templates.ElemCopy;
import com.sun.org.apache.xalan.internal.templates.ElemCopyOf;
import com.sun.org.apache.xalan.internal.templates.ElemElement;
import com.sun.org.apache.xalan.internal.templates.ElemExsltFuncResult;
import com.sun.org.apache.xalan.internal.templates.ElemExsltFunction;
import com.sun.org.apache.xalan.internal.templates.ElemFallback;
import com.sun.org.apache.xalan.internal.templates.ElemLiteralResult;
import com.sun.org.apache.xalan.internal.templates.ElemMessage;
import com.sun.org.apache.xalan.internal.templates.ElemNumber;
import com.sun.org.apache.xalan.internal.templates.ElemPI;
import com.sun.org.apache.xalan.internal.templates.ElemParam;
import com.sun.org.apache.xalan.internal.templates.ElemTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.ElemText;
import com.sun.org.apache.xalan.internal.templates.ElemTextLiteral;
import com.sun.org.apache.xalan.internal.templates.ElemValueOf;
import com.sun.org.apache.xalan.internal.templates.ElemVariable;
import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ProcessorExsltFunction extends ProcessorTemplateElem {
    static final long serialVersionUID = 2411427965578315332L;

    public boolean ancestorIsOk(ElemTemplateElement elemTemplateElement) {
        while (elemTemplateElement.getParentElem() != null && !(elemTemplateElement.getParentElem() instanceof ElemExsltFunction)) {
            elemTemplateElement = elemTemplateElement.getParentElem();
            if ((elemTemplateElement instanceof ElemExsltFuncResult) || (elemTemplateElement instanceof ElemVariable) || (elemTemplateElement instanceof ElemParam) || (elemTemplateElement instanceof ElemMessage)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem
    public void appendAndPush(StylesheetHandler stylesheetHandler, ElemTemplateElement elemTemplateElement) throws SAXException {
        super.appendAndPush(stylesheetHandler, elemTemplateElement);
        elemTemplateElement.setDOMBackPointer(stylesheetHandler.getOriginatingNode());
        stylesheetHandler.getStylesheet().setTemplate((ElemTemplate) elemTemplateElement);
    }

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem, com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void endElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3) throws SAXException {
        ElemTemplateElement elemTemplateElement = stylesheetHandler.getElemTemplateElement();
        stylesheetHandler.getLocator();
        validate(elemTemplateElement, stylesheetHandler);
        super.endElement(stylesheetHandler, str, str2, str3);
    }

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem, com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (!(stylesheetHandler.getElemTemplateElement() instanceof Stylesheet)) {
            stylesheetHandler.error("func:function element must be top level.", new SAXException("func:function element must be top level."));
        }
        super.startElement(stylesheetHandler, str, str2, str3, attributes);
        String value = attributes.getValue("name");
        int indexOf = value.indexOf(":");
        if (indexOf <= 0) {
            stylesheetHandler.error("func:function name must have namespace", new SAXException("func:function name must have namespace"));
            return;
        }
        String substring = value.substring(0, indexOf);
        value.substring(indexOf + 1);
        stylesheetHandler.getNamespaceSupport().getURI(substring);
    }

    public void validate(ElemTemplateElement elemTemplateElement, StylesheetHandler stylesheetHandler) throws SAXException {
        while (elemTemplateElement != null) {
            if ((elemTemplateElement instanceof ElemExsltFuncResult) && elemTemplateElement.getNextSiblingElem() != null && !(elemTemplateElement.getNextSiblingElem() instanceof ElemFallback)) {
                stylesheetHandler.error("func:result has an illegal following sibling (only xsl:fallback allowed)", new SAXException("func:result has an illegal following sibling (only xsl:fallback allowed)"));
            }
            if (((elemTemplateElement instanceof ElemApplyImport) || (elemTemplateElement instanceof ElemApplyTemplates) || (elemTemplateElement instanceof ElemAttribute) || (elemTemplateElement instanceof ElemCallTemplate) || (elemTemplateElement instanceof ElemComment) || (elemTemplateElement instanceof ElemCopy) || (elemTemplateElement instanceof ElemCopyOf) || (elemTemplateElement instanceof ElemElement) || (elemTemplateElement instanceof ElemLiteralResult) || (elemTemplateElement instanceof ElemNumber) || (elemTemplateElement instanceof ElemPI) || (elemTemplateElement instanceof ElemText) || (elemTemplateElement instanceof ElemTextLiteral) || (elemTemplateElement instanceof ElemValueOf)) && !ancestorIsOk(elemTemplateElement)) {
                stylesheetHandler.error("misplaced literal result in a func:function container.", new SAXException("misplaced literal result in a func:function container."));
            }
            ElemTemplateElement elemTemplateElement2 = elemTemplateElement;
            elemTemplateElement = elemTemplateElement.getFirstChildElem();
            while (elemTemplateElement == null) {
                elemTemplateElement = elemTemplateElement2.getNextSiblingElem();
                if (elemTemplateElement == null) {
                    elemTemplateElement2 = elemTemplateElement2.getParentElem();
                }
                if (elemTemplateElement2 == null || (elemTemplateElement2 instanceof ElemExsltFunction)) {
                    return;
                }
            }
        }
    }
}
