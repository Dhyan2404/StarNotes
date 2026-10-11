package com.sun.org.apache.xpath.internal.axes;

import com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xpath.internal.compiler.Compiler;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ChildTestIterator extends BasicTestIterator {
    static final long serialVersionUID = -7936835957960705722L;
    protected transient DTMAxisTraverser m_traverser;

    public ChildTestIterator(Compiler compiler, int i, int i2) throws TransformerException {
        super(compiler, i, i2);
    }

    @Override // com.sun.org.apache.xpath.internal.axes.BasicTestIterator, com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public DTMIterator cloneWithReset() throws CloneNotSupportedException {
        ChildTestIterator childTestIterator = (ChildTestIterator) super.cloneWithReset();
        childTestIterator.m_traverser = this.m_traverser;
        return childTestIterator;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void detach() {
        if (this.m_allowDetach) {
            this.m_traverser = null;
            super.detach();
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getAxis() {
        return 3;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.BasicTestIterator
    public int getNextNode() {
        int i = this.m_lastFetched;
        int first = -1 == i ? this.m_traverser.first(this.m_context) : this.m_traverser.next(this.m_context, i);
        this.m_lastFetched = first;
        return first;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setRoot(int i, Object obj) {
        super.setRoot(i, obj);
        this.m_traverser = this.m_cdtm.getAxisTraverser(3);
    }

    public ChildTestIterator(DTMAxisTraverser dTMAxisTraverser) {
        super(null);
        this.m_traverser = dTMAxisTraverser;
    }
}
