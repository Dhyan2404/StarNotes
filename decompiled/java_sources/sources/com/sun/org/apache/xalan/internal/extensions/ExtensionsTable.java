package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xpath.internal.XPathProcessorException;
import com.sun.org.apache.xpath.internal.functions.FuncExtFunction;
import java.util.Hashtable;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ExtensionsTable {
    public Hashtable m_extensionFunctionNamespaces = new Hashtable();
    private StylesheetRoot m_sroot;

    public ExtensionsTable(StylesheetRoot stylesheetRoot) throws TransformerException {
        this.m_sroot = stylesheetRoot;
        Vector extensions = stylesheetRoot.getExtensions();
        for (int i = 0; i < extensions.size(); i++) {
            ExtensionNamespaceSupport extensionNamespaceSupport = (ExtensionNamespaceSupport) extensions.elementAt(i);
            ExtensionHandler launch = extensionNamespaceSupport.launch();
            if (launch != null) {
                addExtensionNamespace(extensionNamespaceSupport.getNamespace(), launch);
            }
        }
    }

    public void addExtensionNamespace(String str, ExtensionHandler extensionHandler) {
        this.m_extensionFunctionNamespaces.put(str, extensionHandler);
    }

    public boolean elementAvailable(String str, String str2) throws TransformerException {
        ExtensionHandler extensionHandler;
        if (str == null || (extensionHandler = (ExtensionHandler) this.m_extensionFunctionNamespaces.get(str)) == null) {
            return false;
        }
        return extensionHandler.isElementAvailable(str2);
    }

    public Object extFunction(String str, String str2, Vector vector, Object obj, ExpressionContext expressionContext) throws TransformerException {
        if (str == null) {
            return null;
        }
        ExtensionHandler extensionHandler = (ExtensionHandler) this.m_extensionFunctionNamespaces.get(str);
        if (extensionHandler != null) {
            try {
                return extensionHandler.callFunction(str2, vector, obj, expressionContext);
            } catch (TransformerException e) {
                throw e;
            } catch (Exception e2) {
                throw new TransformerException(e2);
            }
        }
        throw new XPathProcessorException(XSLMessages.createMessage("ER_EXTENSION_FUNC_UNKNOWN", new Object[]{str, str2}));
    }

    public boolean functionAvailable(String str, String str2) throws TransformerException {
        ExtensionHandler extensionHandler;
        if (str == null || (extensionHandler = (ExtensionHandler) this.m_extensionFunctionNamespaces.get(str)) == null) {
            return false;
        }
        return extensionHandler.isFunctionAvailable(str2);
    }

    public ExtensionHandler get(String str) {
        return (ExtensionHandler) this.m_extensionFunctionNamespaces.get(str);
    }

    public Object extFunction(FuncExtFunction funcExtFunction, Vector vector, ExpressionContext expressionContext) throws TransformerException {
        String namespace = funcExtFunction.getNamespace();
        if (namespace == null) {
            return null;
        }
        ExtensionHandler extensionHandler = (ExtensionHandler) this.m_extensionFunctionNamespaces.get(namespace);
        if (extensionHandler != null) {
            try {
                return extensionHandler.callFunction(funcExtFunction, vector, expressionContext);
            } catch (TransformerException e) {
                throw e;
            } catch (Exception e2) {
                throw new TransformerException(e2);
            }
        }
        throw new XPathProcessorException(XSLMessages.createMessage("ER_EXTENSION_FUNC_UNKNOWN", new Object[]{namespace, funcExtFunction.getFunctionName()}));
    }
}
