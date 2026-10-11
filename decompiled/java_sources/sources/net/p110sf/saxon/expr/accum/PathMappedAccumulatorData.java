package net.p110sf.saxon.expr.accum;

import java.util.Stack;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.tiny.TinyNodeImpl;
import net.p110sf.saxon.tree.util.Navigator;

/* loaded from: classes11.dex */
public class PathMappedAccumulatorData implements IAccumulatorData {

    /* renamed from: c */
    public static final /* synthetic */ boolean f99470c = false;

    /* renamed from: a */
    public final IAccumulatorData f99471a;

    /* renamed from: b */
    public final NodeInfo f99472b;

    public PathMappedAccumulatorData(IAccumulatorData iAccumulatorData, NodeInfo nodeInfo) {
        this.f99471a = iAccumulatorData;
        this.f99472b = nodeInfo;
    }

    /* renamed from: a */
    public final NodeInfo m62674a(NodeInfo nodeInfo) {
        if ((this.f99472b instanceof TinyNodeImpl) && (nodeInfo instanceof TinyNodeImpl)) {
            return ((TinyNodeImpl) this.f99472b).getTree().getNode(((TinyNodeImpl) nodeInfo).getNodeNumber() + ((TinyNodeImpl) this.f99472b).getNodeNumber());
        }
        Stack stack = new Stack();
        while (nodeInfo != null) {
            stack.push(Integer.valueOf(Navigator.getSiblingPosition(nodeInfo, AnyNodeTest.getInstance(), Integer.MAX_VALUE)));
            nodeInfo = nodeInfo.getParent();
        }
        NodeInfo nodeInfo2 = this.f99472b;
        while (!stack.isEmpty()) {
            int intValue = ((Integer) stack.pop()).intValue();
            AxisIterator iterateAxis = nodeInfo2.iterateAxis(3);
            while (true) {
                int i = intValue - 1;
                if (intValue > 0) {
                    nodeInfo2 = iterateAxis.next();
                    intValue = i;
                }
            }
        }
        return nodeInfo2;
    }

    @Override // net.p110sf.saxon.expr.accum.IAccumulatorData
    public Accumulator getAccumulator() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.accum.IAccumulatorData
    public Sequence getValue(NodeInfo nodeInfo, boolean z) throws XPathException {
        return this.f99471a.getValue(m62674a(nodeInfo), z);
    }
}
