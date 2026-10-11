package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.TwoDEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.LookupUtils;

/* loaded from: classes13.dex */
public final class Lookup extends Var2or3ArgFunction {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    private static LookupUtils.ValueVector createVector(TwoDEval twoDEval) {
        LookupUtils.ValueVector createVector = LookupUtils.createVector(twoDEval);
        if (createVector != null) {
            return createVector;
        }
        throw new IllegalStateException("non-vector lookup or result areas not supported yet");
    }

    @Override // org.apache.poi.ss.formula.functions.Function2Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        LookupUtils.ValueVector createVector;
        LookupUtils.ValueVector createVector2;
        try {
            ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
            TwoDEval resolveTableArrayArg = LookupUtils.resolveTableArrayArg(valueEval2);
            if (resolveTableArrayArg.getWidth() > resolveTableArrayArg.getHeight()) {
                createVector = createVector(resolveTableArrayArg.getRow(0));
                createVector2 = createVector(resolveTableArrayArg.getRow(resolveTableArrayArg.getHeight() - 1));
            } else {
                createVector = createVector(resolveTableArrayArg.getColumn(0));
                createVector2 = createVector(resolveTableArrayArg.getColumn(resolveTableArrayArg.getWidth() - 1));
            }
            return createVector2.getItem(LookupUtils.lookupFirstIndexOfValue(singleValue, createVector, true));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    @Override // org.apache.poi.ss.formula.functions.Function3Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2, ValueEval valueEval3) {
        try {
            ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
            TwoDEval resolveTableArrayArg = LookupUtils.resolveTableArrayArg(valueEval2);
            TwoDEval resolveTableArrayArg2 = LookupUtils.resolveTableArrayArg(valueEval3);
            LookupUtils.ValueVector createVector = createVector(resolveTableArrayArg);
            LookupUtils.ValueVector createVector2 = createVector(resolveTableArrayArg2);
            if (createVector.getSize() <= createVector2.getSize()) {
                return createVector2.getItem(LookupUtils.lookupFirstIndexOfValue(singleValue, createVector, true));
            }
            throw new IllegalStateException("Lookup vector and result vector of differing sizes not supported yet");
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
