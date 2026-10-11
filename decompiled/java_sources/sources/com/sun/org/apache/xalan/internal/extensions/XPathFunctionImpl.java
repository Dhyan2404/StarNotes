package com.sun.org.apache.xalan.internal.extensions;

import java.util.List;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.XPathFunction;
import javax.xml.xpath.XPathFunctionException;

/* loaded from: classes10.dex */
public class XPathFunctionImpl implements XPathFunction {
    private String m_funcName;
    private ExtensionHandler m_handler;

    public XPathFunctionImpl(ExtensionHandler extensionHandler, String str) {
        this.m_handler = extensionHandler;
        this.m_funcName = str;
    }

    private static Vector listToVector(List list) {
        if (list == null) {
            return null;
        }
        if (list instanceof Vector) {
            return (Vector) list;
        }
        Vector vector = new Vector();
        vector.addAll(list);
        return vector;
    }

    @Override // javax.xml.xpath.XPathFunction
    public Object evaluate(List list) throws XPathFunctionException {
        try {
            return this.m_handler.callFunction(this.m_funcName, listToVector(list), null, null);
        } catch (TransformerException e) {
            throw new XPathFunctionException(e);
        }
    }
}
