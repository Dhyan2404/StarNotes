package com.sun.org.apache.xpath.internal.compiler;

import com.sun.org.apache.xpath.internal.compiler.ObjectFactory;
import com.sun.org.apache.xpath.internal.functions.Function;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class FuncLoader {
    private int m_funcID;
    private String m_funcName;

    public FuncLoader(String str, int i) {
        this.m_funcID = i;
        this.m_funcName = str;
    }

    public Function getFunction() throws TransformerException {
        try {
            String str = this.m_funcName;
            if (str.indexOf(".") < 0) {
                str = "com.sun.org.apache.xpath.internal.functions." + str;
            }
            String substring = str.substring(0, str.lastIndexOf(46));
            if (!substring.equals("com.sun.org.apache.xalan.internal.templates") && !substring.equals("com.sun.org.apache.xpath.internal.functions")) {
                throw new TransformerException("Application can't install his own xpath function.");
            }
            return (Function) ObjectFactory.newInstance(str, ObjectFactory.findClassLoader(), true);
        } catch (ObjectFactory.ConfigurationError e) {
            throw new TransformerException(e.getException());
        }
    }

    public String getName() {
        return this.m_funcName;
    }
}
