package net.p110sf.saxon.om;

import net.p110sf.saxon.expr.SingletonIntersectExpression;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.ma.zeno.ZenoChain;
import net.p110sf.saxon.ma.zeno.ZenoSequence;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface GroundedValue extends Sequence {
    default Iterable<? extends Item> asIterable() {
        return new GroundedValueAsIterable(this);
    }

    default GroundedValue concatenate(GroundedValue... groundedValueArr) {
        ZenoChain addAll = new ZenoChain().addAll(asIterable());
        for (GroundedValue groundedValue : groundedValueArr) {
            addAll = addAll.addAll(groundedValue.asIterable());
        }
        return new ZenoSequence(addAll);
    }

    default boolean containsNode(NodeInfo nodeInfo) throws XPathException {
        return SingletonIntersectExpression.containsNode(iterate(), nodeInfo);
    }

    default boolean effectiveBooleanValue() throws XPathException {
        return ExpressionTool.effectiveBooleanValue(iterate());
    }

    int getLength();

    String getStringValue() throws XPathException;

    UnicodeString getUnicodeStringValue() throws XPathException;

    @Override // net.p110sf.saxon.om.Sequence
    Item head();

    Item itemAt(int i);

    @Override // net.p110sf.saxon.om.Sequence
    SequenceIterator iterate();

    @Override // net.p110sf.saxon.om.Sequence
    default GroundedValue materialize() {
        return this;
    }

    default GroundedValue reduce() {
        return this;
    }

    GroundedValue subsequence(int i, int i2);

    default String toShortString() {
        return Err.depictSequence(this).toString();
    }
}
