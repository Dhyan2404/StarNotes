package org.apache.poi.ss.formula;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.ss.formula.eval.FunctionNameEval;
import org.apache.poi.ss.formula.eval.NotImplementedFunctionException;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.ArrayFunction;
import org.apache.poi.ss.formula.functions.FreeRefFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class UserDefinedFunction implements FreeRefFunction {
    public static final FreeRefFunction instance = new UserDefinedFunction();

    private UserDefinedFunction() {
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        ValueEval evaluateArrayFunction;
        int length = valueEvalArr.length;
        if (length < 1) {
            throw new IllegalStateException("function name argument missing");
        }
        ValueEval valueEval = valueEvalArr[0];
        if (!(valueEval instanceof FunctionNameEval)) {
            throw new IllegalStateException("First argument should be a NameEval, but got (" + valueEval.getClass().getName() + MotionUtils.f31762d);
        }
        String functionName = ((FunctionNameEval) valueEval).getFunctionName();
        FreeRefFunction findUserDefinedFunction = operationEvaluationContext.findUserDefinedFunction(functionName);
        if (findUserDefinedFunction == null) {
            throw new NotImplementedFunctionException(functionName);
        }
        int i = length - 1;
        ValueEval[] valueEvalArr2 = new ValueEval[i];
        System.arraycopy(valueEvalArr, 1, valueEvalArr2, 0, i);
        return (!(findUserDefinedFunction instanceof ArrayFunction) || (evaluateArrayFunction = OperationEvaluatorFactory.evaluateArrayFunction((ArrayFunction) findUserDefinedFunction, valueEvalArr2, operationEvaluationContext)) == null) ? findUserDefinedFunction.evaluate(valueEvalArr2, operationEvaluationContext) : evaluateArrayFunction;
    }
}
