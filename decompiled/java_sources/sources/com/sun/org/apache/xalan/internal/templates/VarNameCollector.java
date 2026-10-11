package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import com.sun.org.apache.xpath.internal.operations.Variable;
import java.util.Vector;

/* loaded from: classes10.dex */
public class VarNameCollector extends XPathVisitor {
    Vector m_refs = new Vector();

    public boolean doesOccur(QName qName) {
        return this.m_refs.contains(qName);
    }

    public int getVarCount() {
        return this.m_refs.size();
    }

    public void reset() {
        this.m_refs.removeAllElements();
    }

    @Override // com.sun.org.apache.xpath.internal.XPathVisitor
    public boolean visitVariableRef(ExpressionOwner expressionOwner, Variable variable) {
        this.m_refs.addElement(variable.getQName());
        return true;
    }
}
