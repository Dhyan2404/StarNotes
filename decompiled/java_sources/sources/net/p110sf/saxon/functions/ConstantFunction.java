package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public class ConstantFunction extends SystemFunction {
    public GroundedValue value;

    /* loaded from: classes11.dex */
    public static class False extends ConstantFunction {
        public False() {
            super(BooleanValue.FALSE);
        }
    }

    /* loaded from: classes11.dex */
    public static class True extends ConstantFunction {
        public True() {
            super(BooleanValue.TRUE);
        }
    }

    public ConstantFunction(GroundedValue groundedValue) {
        this.value = groundedValue;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return this.value;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public IntegerValue[] getIntegerBounds() {
        GroundedValue groundedValue = this.value;
        if (groundedValue instanceof IntegerValue) {
            return new IntegerValue[]{(IntegerValue) groundedValue, (IntegerValue) groundedValue};
        }
        return null;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return Literal.makeLiteral(this.value);
    }
}
