package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes11.dex */
public class FunctionArity extends SystemFunction {
    @Override // net.p110sf.saxon.functions.SystemFunction
    public IntegerValue[] getIntegerBounds() {
        return new IntegerValue[]{Int64Value.ZERO, Int64Value.makeIntegerValue(WebSocketProtocol.PAYLOAD_SHORT_MAX)};
    }

    @Override // net.p110sf.saxon.expr.Callable
    public IntegerValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return Int64Value.makeIntegerValue(((Function) sequenceArr[0].head()).getArity());
    }
}
