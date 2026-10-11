package org.apache.poi.ss.formula.functions;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.ss.formula.ThreeDEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.CountUtils;
import org.apache.poi.ss.formula.functions.Countblank;

/* loaded from: classes13.dex */
public final class Countblank extends Fixed1ArgFunction {
    private static final CountUtils.I_MatchPredicate predicate = new CountUtils.I_MatchPredicate() { // from class: com.sunia.HTREnginev2.jee
        @Override // org.apache.poi.ss.formula.functions.CountUtils.I_MatchPredicate
        public final boolean matches(ValueEval valueEval) {
            boolean lambda$static$0;
            lambda$static$0 = Countblank.lambda$static$0(valueEval);
            return lambda$static$0;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$0(ValueEval valueEval) {
        return valueEval == BlankEval.instance || ((valueEval instanceof StringEval) && ((StringEval) valueEval).getStringValue().isEmpty());
    }

    @Override // org.apache.poi.ss.formula.functions.Function1Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval) {
        int countMatchingCellsInArea;
        if (valueEval instanceof RefEval) {
            countMatchingCellsInArea = CountUtils.countMatchingCellsInRef((RefEval) valueEval, predicate);
        } else {
            if (!(valueEval instanceof ThreeDEval)) {
                throw new IllegalArgumentException("Bad range arg type (" + valueEval.getClass().getName() + MotionUtils.f31762d);
            }
            countMatchingCellsInArea = CountUtils.countMatchingCellsInArea((ThreeDEval) valueEval, predicate);
        }
        return new NumberEval(countMatchingCellsInArea);
    }
}
