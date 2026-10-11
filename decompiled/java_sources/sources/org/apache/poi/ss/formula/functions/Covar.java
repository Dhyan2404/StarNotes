package org.apache.poi.ss.formula.functions;

import java.util.List;
import org.apache.commons.math3.stat.correlation.Covariance;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public class Covar extends Fixed2ArgFunction implements FreeRefFunction {
    public static final Covar instanceP = new Covar(false);
    public static final Covar instanceS = new Covar(true);
    private final boolean sampleBased;

    private Covar(boolean z) {
        this.sampleBased = z;
    }

    @Override // org.apache.poi.ss.formula.functions.Function2Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        try {
            List<DoubleList> numberArrays = ArrayFunctionUtils.getNumberArrays(valueEval, valueEval2);
            return new NumberEval(new Covariance().covariance(numberArrays.get(0).toArray(), numberArrays.get(1).toArray(), this.sampleBased));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        } catch (Exception unused) {
            return ErrorEval.f111531NA;
        }
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        if (valueEvalArr.length != 2) {
            return ErrorEval.VALUE_INVALID;
        }
        return evaluate(operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex(), valueEvalArr[0], valueEvalArr[1]);
    }
}
