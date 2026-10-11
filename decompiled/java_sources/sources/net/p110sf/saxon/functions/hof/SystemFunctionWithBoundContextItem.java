package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.type.FunctionItemType;

/* loaded from: classes11.dex */
public class SystemFunctionWithBoundContextItem extends AbstractFunction {

    /* renamed from: e */
    public final SystemFunction f100398e;

    /* renamed from: f */
    public final Item f100399f;

    public SystemFunctionWithBoundContextItem(SystemFunction systemFunction, XPathContext xPathContext) {
        this.f100398e = systemFunction;
        Item contextItem = xPathContext.getContextItem();
        if ((contextItem instanceof NodeInfo) && contextItem.isStreamed()) {
            contextItem = null;
        }
        this.f100399f = contextItem;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        newMinorContext.setCurrentIterator(new ManualIterator(this.f100399f));
        return this.f100398e.call(newMinorContext, sequenceArr);
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return this.f100398e.getArity();
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return this.f100398e.getDescription();
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        return this.f100398e.getFunctionItemType();
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return this.f100398e.getFunctionName();
    }
}
