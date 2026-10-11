package com.sun.org.apache.xpath.internal.axes;

import com.sun.org.apache.xpath.internal.compiler.Compiler;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class AttributeIterator extends ChildTestIterator {
    static final long serialVersionUID = -8417986700712229686L;

    public AttributeIterator(Compiler compiler, int i, int i2) throws TransformerException {
        super(compiler, i, i2);
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ChildTestIterator, com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getAxis() {
        return 2;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ChildTestIterator, com.sun.org.apache.xpath.internal.axes.BasicTestIterator
    public int getNextNode() {
        int i = this.m_lastFetched;
        int firstAttribute = -1 == i ? this.m_cdtm.getFirstAttribute(this.m_context) : this.m_cdtm.getNextAttribute(i);
        this.m_lastFetched = firstAttribute;
        return firstAttribute;
    }
}
