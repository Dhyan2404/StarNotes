package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.TwoDEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.CountUtils;
import org.apache.poi.ss.formula.functions.Counta;

/* loaded from: classes13.dex */
public final class Counta implements Function {
    private static final CountUtils.I_MatchPredicate defaultPredicate = new CountUtils.I_MatchPredicate() { // from class: com.sunia.HTREnginev2.iee
        @Override // org.apache.poi.ss.formula.functions.CountUtils.I_MatchPredicate
        public final boolean matches(ValueEval valueEval) {
            boolean lambda$static$0;
            lambda$static$0 = Counta.lambda$static$0(valueEval);
            return lambda$static$0;
        }
    };
    private static final CountUtils.I_MatchPredicate subtotalPredicate = new CountUtils.I_MatchAreaPredicate() { // from class: org.apache.poi.ss.formula.functions.Counta.1
        @Override // org.apache.poi.ss.formula.functions.CountUtils.I_MatchPredicate
        public boolean matches(ValueEval valueEval) {
            return Counta.defaultPredicate.matches(valueEval);
        }

        @Override // org.apache.poi.ss.formula.functions.CountUtils.I_MatchAreaPredicate
        public boolean matches(TwoDEval twoDEval, int i, int i2) {
            return !twoDEval.isSubTotal(i, i2);
        }
    };
    private static final CountUtils.I_MatchPredicate subtotalVisibleOnlyPredicate = new CountUtils.I_MatchAreaPredicate() { // from class: org.apache.poi.ss.formula.functions.Counta.2
        @Override // org.apache.poi.ss.formula.functions.CountUtils.I_MatchPredicate
        public boolean matches(ValueEval valueEval) {
            return Counta.defaultPredicate.matches(valueEval);
        }

        @Override // org.apache.poi.ss.formula.functions.CountUtils.I_MatchAreaPredicate
        public boolean matches(TwoDEval twoDEval, int i, int i2) {
            return (twoDEval.isSubTotal(i, i2) || twoDEval.isRowHidden(i)) ? false : true;
        }
    };
    private final CountUtils.I_MatchPredicate _predicate;

    public Counta() {
        this._predicate = defaultPredicate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$0(ValueEval valueEval) {
        return valueEval != BlankEval.instance;
    }

    public static Counta subtotalInstance(boolean z) {
        return new Counta(z ? subtotalPredicate : subtotalVisibleOnlyPredicate);
    }

    @Override // org.apache.poi.ss.formula.functions.Function
    public ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        int length = valueEvalArr.length;
        if (length >= 1 && length <= 30) {
            int i3 = 0;
            for (ValueEval valueEval : valueEvalArr) {
                i3 += CountUtils.countArg(valueEval, this._predicate);
            }
            return new NumberEval(i3);
        }
        return ErrorEval.VALUE_INVALID;
    }

    private Counta(CountUtils.I_MatchPredicate i_MatchPredicate) {
        this._predicate = i_MatchPredicate;
    }
}
