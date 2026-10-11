package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.XML11Char;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemAttribute extends ElemElement {
    static final long serialVersionUID = 8817220961566919187L;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        int xSLToken = elemTemplateElement.getXSLToken();
        if (xSLToken != 9 && xSLToken != 17 && xSLToken != 28 && xSLToken != 30 && xSLToken != 42 && xSLToken != 50 && xSLToken != 78) {
            switch (xSLToken) {
                case 35:
                case 36:
                case 37:
                    break;
                default:
                    switch (xSLToken) {
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            break;
                        default:
                            error("ER_CANNOT_ADD", new Object[]{elemTemplateElement.getNodeName(), getNodeName()});
                            break;
                    }
            }
        }
        return super.appendChild(elemTemplateElement);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemElement
    public void constructNode(String str, String str2, String str3, TransformerImpl transformerImpl) throws TransformerException {
        if (str == null || str.length() <= 0) {
            return;
        }
        SerializationHandler serializationHandler = transformerImpl.getSerializationHandler();
        String transformToString = transformerImpl.transformToString(this);
        try {
            String localPart = QName.getLocalPart(str);
            if (str2 == null || str2.length() <= 0) {
                serializationHandler.addAttribute("", localPart, str, "CDATA", transformToString, true);
            } else {
                serializationHandler.addAttribute(str3, localPart, str, "CDATA", transformToString, true);
            }
        } catch (SAXException unused) {
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemElement, com.sun.org.apache.xalan.internal.templates.ElemUse, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        transformerImpl.getSerializationHandler();
        super.execute(transformerImpl);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemElement, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "attribute";
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemElement, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 48;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemElement
    public String resolvePrefix(SerializationHandler serializationHandler, String str, String str2) throws TransformerException {
        if (str == null) {
            return str;
        }
        if (str.length() != 0 && !str.equals("xmlns")) {
            return str;
        }
        String prefix = serializationHandler.getPrefix(str2);
        return (prefix == null || prefix.length() == 0 || prefix.equals("xmlns")) ? str2.length() > 0 ? serializationHandler.getNamespaceMappings().generateNextPrefix() : "" : prefix;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemElement
    public void setName(AVT avt) {
        if (avt.isSimple() && avt.getSimpleString().equals("xmlns")) {
            throw new IllegalArgumentException();
        }
        super.setName(avt);
    }

    public boolean validateNodeName(String str) {
        if (str == null || str.equals("xmlns")) {
            return false;
        }
        return XML11Char.isXML11ValidQName(str);
    }
}
