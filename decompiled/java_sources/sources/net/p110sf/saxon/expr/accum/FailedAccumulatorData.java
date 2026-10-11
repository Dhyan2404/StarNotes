package net.p110sf.saxon.expr.accum;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class FailedAccumulatorData implements IAccumulatorData {

    /* renamed from: a */
    public final Accumulator f99468a;

    /* renamed from: b */
    public final XPathException f99469b;

    public FailedAccumulatorData(Accumulator accumulator, XPathException xPathException) {
        this.f99468a = accumulator;
        this.f99469b = xPathException;
    }

    @Override // net.p110sf.saxon.expr.accum.IAccumulatorData
    public Accumulator getAccumulator() {
        return this.f99468a;
    }

    @Override // net.p110sf.saxon.expr.accum.IAccumulatorData
    public Sequence getValue(NodeInfo nodeInfo, boolean z) throws XPathException {
        throw this.f99469b;
    }
}
