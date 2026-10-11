package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.KeyDeclaration;
import java.util.Vector;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class ProcessorKey extends XSLTElementProcessor {
    static final long serialVersionUID = 4285205417566822979L;

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void setPropertiesFromAttributes(StylesheetHandler stylesheetHandler, String str, Attributes attributes, ElemTemplateElement elemTemplateElement) throws SAXException {
        XSLTElementDef elemDef = getElemDef();
        Vector vector = new Vector();
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            String uri = attributes.getURI(i);
            String localName = attributes.getLocalName(i);
            XSLTAttributeDef attributeDef = elemDef.getAttributeDef(uri, localName);
            if (attributeDef == null) {
                stylesheetHandler.error(attributes.getQName(i) + "attribute is not allowed on the " + str + " element!", null);
            } else {
                if (attributes.getValue(i).indexOf("key(") >= 0) {
                    stylesheetHandler.error(XSLMessages.createMessage("ER_INVALID_KEY_CALL", null), null);
                }
                vector.addElement(attributeDef);
                attributeDef.setAttrValue(stylesheetHandler, uri, localName, attributes.getQName(i), attributes.getValue(i), elemTemplateElement);
            }
        }
        for (XSLTAttributeDef xSLTAttributeDef : elemDef.getAttributes()) {
            if (xSLTAttributeDef.getDefault() != null && !vector.contains(xSLTAttributeDef)) {
                xSLTAttributeDef.setDefAttrValue(stylesheetHandler, elemTemplateElement);
            }
            if (xSLTAttributeDef.getRequired() && !vector.contains(xSLTAttributeDef)) {
                stylesheetHandler.error(XSLMessages.createMessage("ER_REQUIRES_ATTRIB", new Object[]{str, xSLTAttributeDef.getName()}), null);
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        KeyDeclaration keyDeclaration = new KeyDeclaration(stylesheetHandler.getStylesheet(), stylesheetHandler.nextUid());
        keyDeclaration.setDOMBackPointer(stylesheetHandler.getOriginatingNode());
        keyDeclaration.setLocaterInfo(stylesheetHandler.getLocator());
        setPropertiesFromAttributes(stylesheetHandler, str3, attributes, keyDeclaration);
        stylesheetHandler.getStylesheet().setKey(keyDeclaration);
    }
}
