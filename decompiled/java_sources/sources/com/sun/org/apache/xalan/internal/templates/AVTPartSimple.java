package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.util.Vector;

/* loaded from: classes10.dex */
public class AVTPartSimple extends AVTPart {
    static final long serialVersionUID = -3744957690598727913L;
    private String m_val;

    public AVTPartSimple(String str) {
        this.m_val = str;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.XSLTVisitable
    public void callVisitors(XSLTVisitor xSLTVisitor) {
    }

    @Override // com.sun.org.apache.xalan.internal.templates.AVTPart
    public void evaluate(XPathContext xPathContext, FastStringBuffer fastStringBuffer, int i, PrefixResolver prefixResolver) {
        fastStringBuffer.append(this.m_val);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.AVTPart
    public void fixupVariables(Vector vector, int i) {
    }

    @Override // com.sun.org.apache.xalan.internal.templates.AVTPart
    public String getSimpleString() {
        return this.m_val;
    }
}
