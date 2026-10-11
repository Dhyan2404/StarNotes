package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceSupport;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespacesManager;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.StringVector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemExtensionDecl extends ElemTemplateElement {
    static final long serialVersionUID = -4692738885172766789L;
    private String m_prefix = null;
    private StringVector m_functions = new StringVector();
    private StringVector m_elements = null;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        String prefix = getPrefix();
        String namespaceForPrefix = getNamespaceForPrefix(prefix);
        if (namespaceForPrefix == null) {
            throw new TransformerException(XSLMessages.createMessage("ER_NO_NAMESPACE_DECL", new Object[]{prefix}));
        }
        ExtensionNamespaceSupport extensionNamespaceSupport = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        for (ElemTemplateElement firstChildElem = getFirstChildElem(); firstChildElem != null; firstChildElem = firstChildElem.getNextSiblingElem()) {
            if (86 == firstChildElem.getXSLToken()) {
                ElemExtensionScript elemExtensionScript = (ElemExtensionScript) firstChildElem;
                String lang = elemExtensionScript.getLang();
                str2 = elemExtensionScript.getSrc();
                ElemTemplateElement firstChildElem2 = elemExtensionScript.getFirstChildElem();
                if (firstChildElem2 != null && 78 == firstChildElem2.getXSLToken()) {
                    str3 = new String(((ElemTextLiteral) firstChildElem2).getChars());
                    if (str3.trim().length() == 0) {
                        str3 = null;
                    }
                }
                str = lang;
            }
        }
        String str4 = str == null ? "javaclass" : str;
        if (str4.equals("javaclass") && str3 != null) {
            throw new TransformerException(XSLMessages.createMessage("ER_ELEM_CONTENT_NOT_ALLOWED", new Object[]{str3}));
        }
        ExtensionNamespacesManager extensionNamespacesManager = stylesheetRoot.getExtensionNamespacesManager();
        if (extensionNamespacesManager.namespaceIndex(namespaceForPrefix, extensionNamespacesManager.getExtensions()) == -1) {
            if (!str4.equals("javaclass")) {
                extensionNamespaceSupport = new ExtensionNamespaceSupport(namespaceForPrefix, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerGeneral", new Object[]{namespaceForPrefix, this.m_elements, this.m_functions, str4, str2, str3, getSystemId()});
            } else if (str2 == null) {
                extensionNamespaceSupport = extensionNamespacesManager.defineJavaNamespace(namespaceForPrefix);
            } else if (extensionNamespacesManager.namespaceIndex(str2, extensionNamespacesManager.getExtensions()) == -1) {
                extensionNamespaceSupport = extensionNamespacesManager.defineJavaNamespace(namespaceForPrefix, str2);
            }
        }
        if (extensionNamespaceSupport != null) {
            extensionNamespacesManager.registerExtension(extensionNamespaceSupport);
        }
    }

    public String getElement(int i) throws ArrayIndexOutOfBoundsException {
        StringVector stringVector = this.m_elements;
        if (stringVector != null) {
            return stringVector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getElementCount() {
        StringVector stringVector = this.m_elements;
        if (stringVector != null) {
            return stringVector.size();
        }
        return 0;
    }

    public StringVector getElements() {
        return this.m_elements;
    }

    public String getFunction(int i) throws ArrayIndexOutOfBoundsException {
        StringVector stringVector = this.m_functions;
        if (stringVector != null) {
            return stringVector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getFunctionCount() {
        StringVector stringVector = this.m_functions;
        if (stringVector != null) {
            return stringVector.size();
        }
        return 0;
    }

    public StringVector getFunctions() {
        return this.m_functions;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getPrefix() {
        return this.m_prefix;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 85;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void runtimeInit(TransformerImpl transformerImpl) throws TransformerException {
    }

    public void setElements(StringVector stringVector) {
        this.m_elements = stringVector;
    }

    public void setFunctions(StringVector stringVector) {
        this.m_functions = stringVector;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public void setPrefix(String str) {
        this.m_prefix = str;
    }
}
