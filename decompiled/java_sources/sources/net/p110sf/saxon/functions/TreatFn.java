package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.CardinalityCheckingIterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.LazySequence;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class TreatFn extends SystemFunction implements Callable {

    /* loaded from: classes11.dex */
    public static class ExactlyOne extends TreatFn {
        @Override // net.p110sf.saxon.functions.TreatFn, net.p110sf.saxon.functions.SystemFunction
        public String getErrorCodeForTypeErrors() {
            return "FORG0005";
        }

        @Override // net.p110sf.saxon.functions.TreatFn
        public int getRequiredCardinality() {
            return 16384;
        }
    }

    /* loaded from: classes11.dex */
    public static class OneOrMore extends TreatFn {
        @Override // net.p110sf.saxon.functions.TreatFn, net.p110sf.saxon.functions.SystemFunction
        public String getErrorCodeForTypeErrors() {
            return "FORG0004";
        }

        @Override // net.p110sf.saxon.functions.TreatFn
        public int getRequiredCardinality() {
            return 49152;
        }
    }

    /* loaded from: classes11.dex */
    public static class ZeroOrOne extends TreatFn {
        @Override // net.p110sf.saxon.functions.TreatFn, net.p110sf.saxon.functions.SystemFunction
        public String getErrorCodeForTypeErrors() {
            return "FORG0003";
        }

        @Override // net.p110sf.saxon.functions.TreatFn
        public int getRequiredCardinality() {
            return 24576;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return new LazySequence(new CardinalityCheckingIterator(sequenceArr[0].iterate(), getRequiredCardinality(), makeRoleDiagnostic(), null));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public abstract String getErrorCodeForTypeErrors();

    public abstract int getRequiredCardinality();

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "TreatFn";
    }

    public RoleDiagnostic makeRoleDiagnostic() {
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(0, getFunctionName().getDisplayName(), 0);
        roleDiagnostic.setErrorCode(getErrorCodeForTypeErrors());
        return roleDiagnostic;
    }
}
