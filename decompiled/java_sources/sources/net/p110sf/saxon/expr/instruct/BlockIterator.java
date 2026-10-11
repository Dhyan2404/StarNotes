package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class BlockIterator extends AbstractBlockIterator {

    /* renamed from: f */
    public final Operand[] f99635f;

    public BlockIterator(Operand[] operandArr, XPathContext xPathContext) {
        super(operandArr.length, xPathContext);
        this.f99635f = operandArr;
    }

    @Override // net.p110sf.saxon.expr.instruct.AbstractBlockIterator
    public SequenceIterator getNthChildIterator(int i) throws XPathException {
        return this.f99635f[i].getChildExpression().iterate(this.context);
    }
}
