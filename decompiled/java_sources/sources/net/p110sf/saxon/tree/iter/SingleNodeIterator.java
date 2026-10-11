package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;

/* loaded from: classes11.dex */
public class SingleNodeIterator implements AxisIterator, ReversibleIterator, LastPositionFinder, GroundedIterator, LookaheadIterator {

    /* renamed from: e */
    public final NodeInfo f102458e;

    /* renamed from: f */
    public int f102459f = 0;

    public SingleNodeIterator(NodeInfo nodeInfo) {
        this.f102458e = nodeInfo;
    }

    public static AxisIterator makeIterator(NodeInfo nodeInfo) {
        return nodeInfo == null ? EmptyIterator.ofNodes() : new SingleNodeIterator(nodeInfo);
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return 1;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue getResidue() {
        return SequenceTool.itemOrEmpty(this.f102458e);
    }

    @Override // net.p110sf.saxon.tree.iter.ReversibleIterator
    public SequenceIterator getReverseIterator() {
        return new SingleNodeIterator(this.f102458e);
    }

    public NodeInfo getValue() {
        return this.f102458e;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f102459f == 0;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue materialize() {
        return SequenceTool.itemOrEmpty(this.f102458e);
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        int i = this.f102459f;
        if (i == 0) {
            this.f102459f = 1;
            return this.f102458e;
        }
        if (i == 1) {
            this.f102459f = -1;
        }
        return null;
    }
}
