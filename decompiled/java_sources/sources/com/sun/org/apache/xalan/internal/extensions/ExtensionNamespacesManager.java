package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xml.internal.utils.Constants;
import java.util.Vector;

/* loaded from: classes10.dex */
public class ExtensionNamespacesManager {
    private Vector m_extensions = new Vector();
    private Vector m_predefExtensions = new Vector(7);
    private Vector m_unregisteredExtensions = new Vector();

    public ExtensionNamespacesManager() {
        setPredefinedNamespaces();
    }

    private void setPredefinedNamespaces() {
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport("http://xml.apache.org/xalan/java", "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaPackage", new Object[]{"http://xml.apache.org/xalan/java", "javapackage", ""}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport(Constants.S_EXTENSIONS_OLD_JAVA_URL, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaPackage", new Object[]{Constants.S_EXTENSIONS_OLD_JAVA_URL, "javapackage", ""}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport(Constants.S_EXTENSIONS_LOTUSXSL_JAVA_URL, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaPackage", new Object[]{Constants.S_EXTENSIONS_LOTUSXSL_JAVA_URL, "javapackage", ""}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport("http://xml.apache.org/xalan", "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{"http://xml.apache.org/xalan", "javaclass", "com.sun.org.apache.xalan.internal.lib.Extensions"}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport(Constants.S_BUILTIN_OLD_EXTENSIONS_URL, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{Constants.S_BUILTIN_OLD_EXTENSIONS_URL, "javaclass", "com.sun.org.apache.xalan.internal.lib.Extensions"}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport("http://xml.apache.org/xalan/redirect", "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{"http://xml.apache.org/xalan/redirect", "javaclass", "com.sun.org.apache.xalan.internal.lib.Redirect"}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport(Constants.S_EXTENSIONS_PIPE_URL, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{Constants.S_EXTENSIONS_PIPE_URL, "javaclass", "com.sun.org.apache.xalan.internal.lib.PipeDocument"}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport(Constants.S_EXTENSIONS_SQL_URL, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{Constants.S_EXTENSIONS_SQL_URL, "javaclass", "com.sun.org.apache.xalan.internal.lib.sql.XConnection"}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport("http://exslt.org/common", "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{"http://exslt.org/common", "javaclass", "com.sun.org.apache.xalan.internal.lib.ExsltCommon"}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport("http://exslt.org/math", "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{"http://exslt.org/math", "javaclass", "com.sun.org.apache.xalan.internal.lib.ExsltMath"}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport("http://exslt.org/sets", "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{"http://exslt.org/sets", "javaclass", "com.sun.org.apache.xalan.internal.lib.ExsltSets"}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport("http://exslt.org/dates-and-times", "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{"http://exslt.org/dates-and-times", "javaclass", "com.sun.org.apache.xalan.internal.lib.ExsltDatetime"}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport("http://exslt.org/dynamic", "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{"http://exslt.org/dynamic", "javaclass", "com.sun.org.apache.xalan.internal.lib.ExsltDynamic"}));
        this.m_predefExtensions.addElement(new ExtensionNamespaceSupport("http://exslt.org/strings", "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{"http://exslt.org/strings", "javaclass", "com.sun.org.apache.xalan.internal.lib.ExsltStrings"}));
    }

    public ExtensionNamespaceSupport defineJavaNamespace(String str) {
        return defineJavaNamespace(str, str);
    }

    public Vector getExtensions() {
        return this.m_extensions;
    }

    public int namespaceIndex(String str, Vector vector) {
        for (int i = 0; i < vector.size(); i++) {
            if (((ExtensionNamespaceSupport) vector.elementAt(i)).getNamespace().equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public void registerExtension(String str) {
        if (namespaceIndex(str, this.m_extensions) == -1) {
            int namespaceIndex = namespaceIndex(str, this.m_predefExtensions);
            if (namespaceIndex != -1) {
                this.m_extensions.addElement(this.m_predefExtensions.elementAt(namespaceIndex));
            } else {
                if (this.m_unregisteredExtensions.contains(str)) {
                    return;
                }
                this.m_unregisteredExtensions.addElement(str);
            }
        }
    }

    public void registerUnregisteredNamespaces() {
        for (int i = 0; i < this.m_unregisteredExtensions.size(); i++) {
            ExtensionNamespaceSupport defineJavaNamespace = defineJavaNamespace((String) this.m_unregisteredExtensions.elementAt(i));
            if (defineJavaNamespace != null) {
                this.m_extensions.addElement(defineJavaNamespace);
            }
        }
    }

    public ExtensionNamespaceSupport defineJavaNamespace(String str, String str2) {
        if (str == null || str.trim().length() == 0) {
            return null;
        }
        if (str2.startsWith("class:")) {
            str2 = str2.substring(6);
        }
        int lastIndexOf = str2.lastIndexOf("/");
        if (-1 != lastIndexOf) {
            str2 = str2.substring(lastIndexOf + 1);
        }
        if (str2 == null || str2.trim().length() == 0) {
            return null;
        }
        try {
            ExtensionHandler.getClassForName(str2);
            return new ExtensionNamespaceSupport(str, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass", new Object[]{str, "javaclass", str2});
        } catch (ClassNotFoundException unused) {
            return new ExtensionNamespaceSupport(str, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaPackage", new Object[]{str, "javapackage", str2 + "."});
        }
    }

    public void registerExtension(ExtensionNamespaceSupport extensionNamespaceSupport) {
        String namespace = extensionNamespaceSupport.getNamespace();
        if (namespaceIndex(namespace, this.m_extensions) == -1) {
            this.m_extensions.addElement(extensionNamespaceSupport);
            if (this.m_unregisteredExtensions.contains(namespace)) {
                this.m_unregisteredExtensions.removeElement(namespace);
            }
        }
    }
}
