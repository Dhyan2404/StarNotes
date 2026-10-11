package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.Baseifs;
import org.apache.poi.ss.formula.functions.CountUtils;
import org.apache.poi.ss.formula.functions.Countif;

/* loaded from: classes13.dex */
public class AverageIf extends Baseifs {
    public static final FreeRefFunction instance = new AverageIf();

    public ValueEval aggregateMatchingCells(Baseifs.Aggregator aggregator, AreaEval areaEval, AreaEval areaEval2, CountUtils.I_MatchPredicate i_MatchPredicate) throws EvaluationException {
        int height = areaEval2.getHeight();
        int width = areaEval2.getWidth();
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                ValueEval relativeValue = areaEval2.getRelativeValue(i, i2);
                ValueEval relativeValue2 = areaEval.getRelativeValue(i, i2);
                if (i_MatchPredicate != null && i_MatchPredicate.matches(relativeValue)) {
                    if (relativeValue instanceof ErrorEval) {
                        throw new EvaluationException((ErrorEval) relativeValue);
                    }
                    aggregator.addValue(relativeValue2);
                }
            }
        }
        return aggregator.getResult();
    }

    @Override // org.apache.poi.ss.formula.functions.Baseifs
    public Baseifs.Aggregator createAggregator() {
        return new Baseifs.Aggregator() { // from class: org.apache.poi.ss.formula.functions.AverageIf.1
            Double sum = Double.valueOf(0.0d);
            Integer count = 0;

            @Override // org.apache.poi.ss.formula.functions.Baseifs.Aggregator
            public void addValue(ValueEval valueEval) {
                if (valueEval instanceof NumberEval) {
                    this.sum = Double.valueOf(this.sum.doubleValue() + ((NumberEval) valueEval).getNumberValue());
                    this.count = Integer.valueOf(this.count.intValue() + 1);
                }
            }

            @Override // org.apache.poi.ss.formula.functions.Baseifs.Aggregator
            public ValueEval getResult() {
                return this.count.intValue() == 0 ? ErrorEval.DIV_ZERO : new NumberEval(this.sum.doubleValue() / this.count.intValue());
            }
        };
    }

    @Override // org.apache.poi.ss.formula.functions.Baseifs, org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        if (valueEvalArr.length < 2) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            AreaEval convertRangeArg = Baseifs.convertRangeArg(valueEvalArr[0]);
            if (valueEvalArr.length == 3) {
                convertRangeArg = Baseifs.convertRangeArg(valueEvalArr[2]);
            }
            AreaEval convertRangeArg2 = Baseifs.convertRangeArg(valueEvalArr[0]);
            CountUtils.I_MatchPredicate createCriteriaPredicate = Countif.createCriteriaPredicate(valueEvalArr[1], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
            if (createCriteriaPredicate instanceof Countif.ErrorMatcher) {
                throw new EvaluationException(ErrorEval.valueOf(((Countif.ErrorMatcher) createCriteriaPredicate).getValue()));
            }
            return aggregateMatchingCells(createAggregator(), convertRangeArg, convertRangeArg2, createCriteriaPredicate);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    @Override // org.apache.poi.ss.formula.functions.Baseifs
    public boolean hasInitialRange() {
        return false;
    }
}
