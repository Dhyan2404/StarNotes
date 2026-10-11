package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemMapper;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.CopyOf;
import net.p110sf.saxon.functions.CopyOfFn;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.LazySequence;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.wrapper.VirtualCopy;

/* loaded from: classes11.dex */
public class CopyOfFn extends SystemFunction {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Item m62969b(Item item) throws XPathException {
        if (!(item instanceof NodeInfo)) {
            return item;
        }
        VirtualCopy makeVirtualCopy = VirtualCopy.makeVirtualCopy((NodeInfo) item);
        if (getRetainedStaticContext().getPackageData().isXSLT()) {
            makeVirtualCopy.getTreeInfo().setCopyAccumulators(true);
        }
        return makeVirtualCopy;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return new LazySequence(ItemMappingIterator.map((sequenceArr.length == 0 ? xPathContext.getContextItem() : sequenceArr[0]).iterate(), new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.nce
            @Override // net.sf.saxon.expr.ItemMapper.Lambda
            public final Item map(Item item) {
                Item m62969b;
                m62969b = CopyOfFn.this.m62969b(item);
                return m62969b;
            }
        }));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        return expressionArr[0].getCardinality();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        CopyOf copyOf = new CopyOf(expressionArr.length == 0 ? new ContextItemExpression() : expressionArr[0], true, 3, null, false);
        copyOf.setCopyAccumulators(true);
        copyOf.setSchemaAware(false);
        return copyOf;
    }
}
