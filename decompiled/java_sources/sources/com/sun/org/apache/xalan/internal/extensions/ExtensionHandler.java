package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xpath.internal.functions.FuncExtFunction;
import java.io.IOException;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public abstract class ExtensionHandler {
    protected String m_namespaceUri;
    protected String m_scriptLang;

    public ExtensionHandler(String str, String str2) {
        this.m_namespaceUri = str;
        this.m_scriptLang = str2;
    }

    public static Class getClassForName(String str) throws ClassNotFoundException {
        if (str.equals("com.sun.org.apache.xalan.internal.xslt.extensions.Redirect")) {
            str = "com.sun.org.apache.xalan.internal.lib.Redirect";
        }
        return ObjectFactory.findProviderClass(str, ObjectFactory.findClassLoader(), true);
    }

    public abstract Object callFunction(FuncExtFunction funcExtFunction, Vector vector, ExpressionContext expressionContext) throws TransformerException;

    public abstract Object callFunction(String str, Vector vector, Object obj, ExpressionContext expressionContext) throws TransformerException;

    public abstract boolean isElementAvailable(String str);

    public abstract boolean isFunctionAvailable(String str);

    public abstract void processElement(String str, ElemTemplateElement elemTemplateElement, TransformerImpl transformerImpl, Stylesheet stylesheet, Object obj) throws TransformerException, IOException;
}
