package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import javax.xml.transform.TransformerException;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ProcessorTemplateElem extends XSLTElementProcessor {
    static final long serialVersionUID = 8344994001943407235L;

    public void appendAndPush(StylesheetHandler stylesheetHandler, ElemTemplateElement elemTemplateElement) throws SAXException {
        ElemTemplateElement elemTemplateElement2 = stylesheetHandler.getElemTemplateElement();
        if (elemTemplateElement2 != null) {
            elemTemplateElement2.appendChild(elemTemplateElement);
            stylesheetHandler.pushElemTemplateElement(elemTemplateElement);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void endElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3) throws SAXException {
        super.endElement(stylesheetHandler, str, str2, str3);
        stylesheetHandler.popElemTemplateElement().setEndLocaterInfo(stylesheetHandler.getLocator());
    }

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        ElemTemplateElement elemTemplateElement;
        super.startElement(stylesheetHandler, str, str2, str3, attributes);
        try {
            try {
                elemTemplateElement = (ElemTemplateElement) getElemDef().getClassObject().newInstance();
                try {
                    elemTemplateElement.setDOMBackPointer(stylesheetHandler.getOriginatingNode());
                    elemTemplateElement.setLocaterInfo(stylesheetHandler.getLocator());
                    elemTemplateElement.setPrefixes(stylesheetHandler.getNamespaceSupport());
                } catch (IllegalAccessException e) {
                    e = e;
                    stylesheetHandler.error("ER_FAILED_CREATING_ELEMTMPL", null, e);
                    setPropertiesFromAttributes(stylesheetHandler, str3, attributes, elemTemplateElement);
                    appendAndPush(stylesheetHandler, elemTemplateElement);
                } catch (InstantiationException e2) {
                    e = e2;
                    stylesheetHandler.error("ER_FAILED_CREATING_ELEMTMPL", null, e);
                    setPropertiesFromAttributes(stylesheetHandler, str3, attributes, elemTemplateElement);
                    appendAndPush(stylesheetHandler, elemTemplateElement);
                }
            } catch (IllegalAccessException e3) {
                e = e3;
                elemTemplateElement = null;
            } catch (InstantiationException e4) {
                e = e4;
                elemTemplateElement = null;
            }
            setPropertiesFromAttributes(stylesheetHandler, str3, attributes, elemTemplateElement);
            appendAndPush(stylesheetHandler, elemTemplateElement);
        } catch (TransformerException e5) {
            throw new SAXException(e5);
        }
    }
}
