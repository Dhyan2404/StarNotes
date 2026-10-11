package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.CountUtils;
import org.apache.poi.ss.formula.functions.Countif;

/* loaded from: classes13.dex */
abstract class Baseifs implements FreeRefFunction {

    /* loaded from: classes13.dex */
    public interface Aggregator {
        void addValue(ValueEval valueEval);

        ValueEval getResult();
    }

    private static ValueEval aggregateMatchingCells(Aggregator aggregator, AreaEval areaEval, AreaEval[] areaEvalArr, CountUtils.I_MatchPredicate[] i_MatchPredicateArr) throws EvaluationException {
        boolean z;
        int height = areaEvalArr[0].getHeight();
        int width = areaEvalArr[0].getWidth();
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                for (int i3 = 0; i3 < areaEvalArr.length; i3++) {
                    AreaEval areaEval2 = areaEvalArr[i3];
                    CountUtils.I_MatchPredicate i_MatchPredicate = i_MatchPredicateArr[i3];
                    if (i_MatchPredicate == null || !i_MatchPredicate.matches(areaEval2.getRelativeValue(i, i2))) {
                        z = false;
                        break;
                    }
                }
                z = true;
                if (z) {
                    if (areaEval != null) {
                        ValueEval relativeValue = areaEval.getRelativeValue(i, i2);
                        if (relativeValue instanceof ErrorEval) {
                            throw new EvaluationException((ErrorEval) relativeValue);
                        }
                        aggregator.addValue(relativeValue);
                    } else {
                        aggregator.addValue(null);
                    }
                }
            }
        }
        return aggregator.getResult();
    }

    public static AreaEval convertRangeArg(ValueEval valueEval) throws EvaluationException {
        if (valueEval instanceof AreaEval) {
            return (AreaEval) valueEval;
        }
        if (valueEval instanceof RefEval) {
            return ((RefEval) valueEval).offset(0, 0, 0, 0);
        }
        throw new EvaluationException(ErrorEval.VALUE_INVALID);
    }

    private static void validateCriteria(CountUtils.I_MatchPredicate[] i_MatchPredicateArr) throws EvaluationException {
        for (CountUtils.I_MatchPredicate i_MatchPredicate : i_MatchPredicateArr) {
            if (i_MatchPredicate instanceof Countif.ErrorMatcher) {
                throw new EvaluationException(ErrorEval.valueOf(((Countif.ErrorMatcher) i_MatchPredicate).getValue()));
            }
        }
    }

    private static void validateCriteriaRanges(AreaEval areaEval, AreaEval[] areaEvalArr) throws EvaluationException {
        int height = areaEvalArr[0].getHeight();
        int width = areaEvalArr[0].getWidth();
        if (areaEval != null && (areaEval.getHeight() != height || areaEval.getWidth() != width)) {
            throw EvaluationException.invalidValue();
        }
        for (AreaEval areaEval2 : areaEvalArr) {
            if (areaEval2.getHeight() != height || areaEval2.getWidth() != width) {
                throw EvaluationException.invalidValue();
            }
        }
    }

    public abstract Aggregator createAggregator();

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        AreaEval convertRangeArg;
        ?? hasInitialRange = hasInitialRange();
        if (valueEvalArr.length < hasInitialRange + 2 || valueEvalArr.length % 2 != hasInitialRange) {
            return ErrorEval.VALUE_INVALID;
        }
        int i = 0;
        if (hasInitialRange != 0) {
            try {
                convertRangeArg = convertRangeArg(valueEvalArr[0]);
            } catch (EvaluationException e) {
                return e.getErrorEval();
            }
        } else {
            convertRangeArg = null;
        }
        int length = (valueEvalArr.length - hasInitialRange) / 2;
        AreaEval[] areaEvalArr = new AreaEval[length];
        CountUtils.I_MatchPredicate[] i_MatchPredicateArr = new CountUtils.I_MatchPredicate[length];
        for (int i2 = hasInitialRange; i2 < valueEvalArr.length - 1; i2 += 2) {
            areaEvalArr[i] = convertRangeArg(valueEvalArr[i2]);
            i_MatchPredicateArr[i] = Countif.createCriteriaPredicate(valueEvalArr[i2 + 1], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
            i++;
        }
        validateCriteriaRanges(convertRangeArg, areaEvalArr);
        validateCriteria(i_MatchPredicateArr);
        return aggregateMatchingCells(createAggregator(), convertRangeArg, areaEvalArr, i_MatchPredicateArr);
    }

    public abstract boolean hasInitialRange();
}
