package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.io.Serializable;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public abstract class AVTPart implements Serializable, XSLTVisitable {
    static final long serialVersionUID = -1747749903613916025L;

    public boolean canTraverseOutsideSubtree() {
        return false;
    }

    public abstract void evaluate(XPathContext xPathContext, FastStringBuffer fastStringBuffer, int i, PrefixResolver prefixResolver) throws TransformerException;

    public abstract void fixupVariables(Vector vector, int i);

    public abstract String getSimpleString();

    public void setXPathSupport(XPathContext xPathContext) {
    }
}
