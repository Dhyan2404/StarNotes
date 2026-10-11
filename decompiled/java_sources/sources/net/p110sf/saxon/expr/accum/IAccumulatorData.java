package net.p110sf.saxon.expr.accum;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface IAccumulatorData {
    Accumulator getAccumulator();

    Sequence getValue(NodeInfo nodeInfo, boolean z) throws XPathException;
}
