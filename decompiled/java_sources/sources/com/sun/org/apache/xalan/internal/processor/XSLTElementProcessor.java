package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xml.internal.utils.IntStack;
import java.util.Vector;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes10.dex */
public class XSLTElementProcessor extends ElemTemplateElement {
    static final long serialVersionUID = 5597421564955304421L;
    private XSLTElementDef m_elemDef;
    private IntStack m_savedLastOrder;

    public void characters(StylesheetHandler stylesheetHandler, char[] cArr, int i, int i2) throws SAXException {
        stylesheetHandler.error("ER_CHARS_NOT_ALLOWED", null, null);
    }

    public void endElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3) throws SAXException {
        IntStack intStack = this.m_savedLastOrder;
        if (intStack != null && !intStack.empty()) {
            getElemDef().setLastOrder(this.m_savedLastOrder.pop());
        }
        if (getElemDef().getRequiredFound()) {
            return;
        }
        stylesheetHandler.error("ER_REQUIRED_ELEM_NOT_FOUND", new Object[]{getElemDef().getRequiredElem()}, null);
    }

    public XSLTElementDef getElemDef() {
        return this.m_elemDef;
    }

    public void ignorableWhitespace(StylesheetHandler stylesheetHandler, char[] cArr, int i, int i2) throws SAXException {
    }

    public void notationDecl(StylesheetHandler stylesheetHandler, String str, String str2, String str3) {
    }

    public void processingInstruction(StylesheetHandler stylesheetHandler, String str, String str2) throws SAXException {
    }

    public InputSource resolveEntity(StylesheetHandler stylesheetHandler, String str, String str2) throws SAXException {
        return null;
    }

    public void setElemDef(XSLTElementDef xSLTElementDef) {
        this.m_elemDef = xSLTElementDef;
    }

    public void setPropertiesFromAttributes(StylesheetHandler stylesheetHandler, String str, Attributes attributes, ElemTemplateElement elemTemplateElement) throws SAXException {
        setPropertiesFromAttributes(stylesheetHandler, str, attributes, elemTemplateElement, true);
    }

    public void skippedEntity(StylesheetHandler stylesheetHandler, String str) throws SAXException {
    }

    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (this.m_savedLastOrder == null) {
            this.m_savedLastOrder = new IntStack();
        }
        this.m_savedLastOrder.push(getElemDef().getLastOrder());
        getElemDef().setLastOrder(-1);
    }

    public void startNonText(StylesheetHandler stylesheetHandler) throws SAXException {
    }

    public void unparsedEntityDecl(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4) {
    }

    public Attributes setPropertiesFromAttributes(StylesheetHandler stylesheetHandler, String str, Attributes attributes, ElemTemplateElement elemTemplateElement, boolean z) throws SAXException {
        int i;
        int i2;
        Vector vector;
        Attributes attributes2 = attributes;
        XSLTElementDef elemDef = getElemDef();
        boolean z2 = (stylesheetHandler.getStylesheet() != null && stylesheetHandler.getStylesheet().getCompatibleMode()) || !z;
        Exception exc = null;
        AttributesImpl attributesImpl = z2 ? new AttributesImpl() : null;
        Vector vector2 = new Vector();
        Vector vector3 = new Vector();
        int length = attributes.getLength();
        int i3 = 0;
        while (i3 < length) {
            String uri = attributes2.getURI(i3);
            if (uri != null && uri.length() == 0 && (attributes2.getQName(i3).startsWith("xmlns:") || attributes2.getQName(i3).equals("xmlns"))) {
                uri = "http://www.w3.org/XML/1998/namespace";
            }
            String str2 = uri;
            String localName = attributes2.getLocalName(i3);
            XSLTAttributeDef attributeDef = elemDef.getAttributeDef(str2, localName);
            if (attributeDef != null) {
                i = i3;
                i2 = length;
                vector = vector3;
                if (attributeDef.setAttrValue(stylesheetHandler, str2, localName, attributes2.getQName(i), attributes2.getValue(i), elemTemplateElement)) {
                    vector2.addElement(attributeDef);
                } else {
                    vector.addElement(attributeDef);
                }
            } else if (!z2) {
                stylesheetHandler.error("ER_ATTR_NOT_ALLOWED", new Object[]{attributes2.getQName(i3), str}, exc);
                vector = vector3;
                i = i3;
                i2 = length;
            } else {
                i = i3;
                i2 = length;
                attributesImpl.addAttribute(str2, localName, attributes2.getQName(i3), attributes2.getType(i3), attributes2.getValue(i3));
                vector = vector3;
            }
            i3 = i + 1;
            attributes2 = attributes;
            vector3 = vector;
            length = i2;
            exc = null;
        }
        Vector vector4 = vector3;
        for (XSLTAttributeDef xSLTAttributeDef : elemDef.getAttributes()) {
            if (xSLTAttributeDef.getDefault() != null && !vector2.contains(xSLTAttributeDef)) {
                xSLTAttributeDef.setDefAttrValue(stylesheetHandler, elemTemplateElement);
            }
            if (xSLTAttributeDef.getRequired() && !vector2.contains(xSLTAttributeDef) && !vector4.contains(xSLTAttributeDef)) {
                stylesheetHandler.error(XSLMessages.createMessage("ER_REQUIRES_ATTRIB", new Object[]{str, xSLTAttributeDef.getName()}), null);
            }
        }
        return attributesImpl;
    }
}
