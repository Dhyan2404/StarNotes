package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.XPathFactory;
import com.sun.org.apache.xpath.internal.compiler.XPathParser;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class AVTPartXPath extends AVTPart {
    static final long serialVersionUID = -4460373807550527675L;
    private XPath m_xpath;

    public AVTPartXPath(XPath xPath) {
        this.m_xpath = xPath;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.XSLTVisitable
    public void callVisitors(XSLTVisitor xSLTVisitor) {
        this.m_xpath.getExpression().callVisitors(this.m_xpath, xSLTVisitor);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.AVTPart
    public boolean canTraverseOutsideSubtree() {
        return this.m_xpath.getExpression().canTraverseOutsideSubtree();
    }

    @Override // com.sun.org.apache.xalan.internal.templates.AVTPart
    public void evaluate(XPathContext xPathContext, FastStringBuffer fastStringBuffer, int i, PrefixResolver prefixResolver) throws TransformerException {
        XObject execute = this.m_xpath.execute(xPathContext, i, prefixResolver);
        if (execute != null) {
            execute.appendToFsb(fastStringBuffer);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.AVTPart
    public void fixupVariables(Vector vector, int i) {
        this.m_xpath.fixupVariables(vector, i);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.AVTPart
    public String getSimpleString() {
        return "{" + this.m_xpath.getPatternString() + "}";
    }

    public AVTPartXPath(String str, PrefixResolver prefixResolver, XPathParser xPathParser, XPathFactory xPathFactory, XPathContext xPathContext) throws TransformerException {
        this.m_xpath = new XPath(str, null, prefixResolver, 0, xPathContext.getErrorListener());
    }
}
