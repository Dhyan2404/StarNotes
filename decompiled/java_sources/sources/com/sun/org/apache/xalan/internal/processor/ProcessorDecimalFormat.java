package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.DecimalFormatProperties;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class ProcessorDecimalFormat extends XSLTElementProcessor {
    static final long serialVersionUID = -5052904382662921627L;

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        DecimalFormatProperties decimalFormatProperties = new DecimalFormatProperties(stylesheetHandler.nextUid());
        decimalFormatProperties.setDOMBackPointer(stylesheetHandler.getOriginatingNode());
        decimalFormatProperties.setLocaterInfo(stylesheetHandler.getLocator());
        setPropertiesFromAttributes(stylesheetHandler, str3, attributes, decimalFormatProperties);
        stylesheetHandler.getStylesheet().setDecimalFormat(decimalFormatProperties);
        stylesheetHandler.getStylesheet().appendChild((ElemTemplateElement) decimalFormatProperties);
    }
}
