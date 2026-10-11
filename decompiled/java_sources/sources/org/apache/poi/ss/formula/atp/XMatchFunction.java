package org.apache.poi.ss.formula.atp;

import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.TwoDEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.FreeRefFunction;
import org.apache.poi.ss.formula.functions.LookupUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class XMatchFunction implements FreeRefFunction {
    public static final FreeRefFunction instance = new XMatchFunction(ArgumentsEvaluator.instance);
    private final ArgumentsEvaluator evaluator;

    private XMatchFunction(ArgumentsEvaluator argumentsEvaluator) {
        this.evaluator = argumentsEvaluator;
    }

    private ValueEval _evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length < 2) {
            return ErrorEval.VALUE_INVALID;
        }
        LookupUtils.MatchMode matchMode = LookupUtils.MatchMode.ExactMatch;
        if (valueEvalArr.length > 2) {
            try {
                matchMode = LookupUtils.matchMode(OperandResolver.coerceValueToInt(OperandResolver.getSingleValue(valueEvalArr[2], i, i2)));
            } catch (EvaluationException e) {
                return e.getErrorEval();
            } catch (Exception unused) {
                return ErrorEval.VALUE_INVALID;
            }
        }
        LookupUtils.MatchMode matchMode2 = matchMode;
        LookupUtils.SearchMode searchMode = LookupUtils.SearchMode.IterateForward;
        if (valueEvalArr.length > 3) {
            try {
                searchMode = LookupUtils.searchMode(OperandResolver.coerceValueToInt(OperandResolver.getSingleValue(valueEvalArr[3], i, i2)));
            } catch (EvaluationException e2) {
                return e2.getErrorEval();
            } catch (Exception unused2) {
                return ErrorEval.VALUE_INVALID;
            }
        }
        return evaluate(i, i2, valueEvalArr[0], valueEvalArr[1], matchMode2, searchMode);
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        return _evaluate(valueEvalArr, operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
    }

    private ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2, LookupUtils.MatchMode matchMode, LookupUtils.SearchMode searchMode) {
        LookupUtils.ValueVector createRowVector;
        try {
            ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
            TwoDEval resolveTableArrayArg = LookupUtils.resolveTableArrayArg(valueEval2);
            if (resolveTableArrayArg.isColumn()) {
                createRowVector = LookupUtils.createColumnVector(resolveTableArrayArg, 0);
            } else {
                createRowVector = LookupUtils.createRowVector(resolveTableArrayArg, 0);
            }
            return new NumberEval(LookupUtils.xlookupIndexOfValue(singleValue, createRowVector, matchMode, searchMode) + 1.0d);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
