package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import com.sun.org.apache.xpath.internal.functions.FuncExtFunction;
import com.sun.org.apache.xpath.internal.functions.FuncExtFunctionAvailable;
import com.sun.org.apache.xpath.internal.functions.Function;

/* loaded from: classes10.dex */
public class ExpressionVisitor extends XPathVisitor {
    private StylesheetRoot m_sroot;

    public ExpressionVisitor(StylesheetRoot stylesheetRoot) {
        this.m_sroot = stylesheetRoot;
    }

    @Override // com.sun.org.apache.xpath.internal.XPathVisitor
    public boolean visitFunction(ExpressionOwner expressionOwner, Function function) {
        if (function instanceof FuncExtFunction) {
            this.m_sroot.getExtensionNamespacesManager().registerExtension(((FuncExtFunction) function).getNamespace());
            return true;
        }
        if (!(function instanceof FuncExtFunctionAvailable)) {
            return true;
        }
        String obj = ((FuncExtFunctionAvailable) function).getArg0().toString();
        if (obj.indexOf(":") <= 0) {
            return true;
        }
        this.m_sroot.getExtensionNamespacesManager().registerExtension(this.m_sroot.getNamespaceForPrefix(obj.substring(0, obj.indexOf(":"))));
        return true;
    }
}
