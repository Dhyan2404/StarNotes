package net.p110sf.saxon.expr.accum;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.wrapper.VirtualCopy;

/* loaded from: classes11.dex */
public class VirtualAccumulatorData implements IAccumulatorData {

    /* renamed from: a */
    public final IAccumulatorData f99473a;

    public VirtualAccumulatorData(IAccumulatorData iAccumulatorData) {
        this.f99473a = iAccumulatorData;
    }

    @Override // net.p110sf.saxon.expr.accum.IAccumulatorData
    public Accumulator getAccumulator() {
        return this.f99473a.getAccumulator();
    }

    @Override // net.p110sf.saxon.expr.accum.IAccumulatorData
    public Sequence getValue(NodeInfo nodeInfo, boolean z) throws XPathException {
        return this.f99473a.getValue(((VirtualCopy) nodeInfo).getOriginalNode(), z);
    }
}
