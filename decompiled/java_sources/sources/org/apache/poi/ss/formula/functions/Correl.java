package org.apache.poi.ss.formula.functions;

import java.util.List;
import org.apache.commons.math3.stat.correlation.PearsonsCorrelation;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public class Correl extends Fixed2ArgFunction {
    public static final Correl instance = new Correl();

    private Correl() {
    }

    @Override // org.apache.poi.ss.formula.functions.Function2Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        try {
            List<DoubleList> numberArrays = ArrayFunctionUtils.getNumberArrays(valueEval, valueEval2);
            return new NumberEval(new PearsonsCorrelation().correlation(numberArrays.get(0).toArray(), numberArrays.get(1).toArray()));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        } catch (Exception unused) {
            return ErrorEval.f111531NA;
        }
    }
}
