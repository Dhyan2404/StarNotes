package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.BoolEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.RefListEval;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.LogicalFunction;

/* loaded from: classes13.dex */
public abstract class LogicalFunction extends Fixed1ArgFunction implements ArrayFunction {
    public static final Function ISLOGICAL = new LogicalFunction() { // from class: org.apache.poi.ss.formula.functions.LogicalFunction.1
        @Override // org.apache.poi.ss.formula.functions.LogicalFunction
        public boolean evaluate(ValueEval valueEval) {
            return valueEval instanceof BoolEval;
        }
    };
    public static final Function ISNONTEXT = new LogicalFunction() { // from class: org.apache.poi.ss.formula.functions.LogicalFunction.2
        @Override // org.apache.poi.ss.formula.functions.LogicalFunction
        public boolean evaluate(ValueEval valueEval) {
            return !(valueEval instanceof StringEval);
        }
    };
    public static final Function ISNUMBER = new LogicalFunction() { // from class: org.apache.poi.ss.formula.functions.LogicalFunction.3
        @Override // org.apache.poi.ss.formula.functions.LogicalFunction
        public boolean evaluate(ValueEval valueEval) {
            return valueEval instanceof NumberEval;
        }
    };
    public static final Function ISTEXT = new LogicalFunction() { // from class: org.apache.poi.ss.formula.functions.LogicalFunction.4
        @Override // org.apache.poi.ss.formula.functions.LogicalFunction
        public boolean evaluate(ValueEval valueEval) {
            return valueEval instanceof StringEval;
        }
    };
    public static final Function ISBLANK = new LogicalFunction() { // from class: org.apache.poi.ss.formula.functions.LogicalFunction.5
        @Override // org.apache.poi.ss.formula.functions.LogicalFunction
        public boolean evaluate(ValueEval valueEval) {
            return valueEval instanceof BlankEval;
        }
    };
    public static final Function ISERROR = new LogicalFunction() { // from class: org.apache.poi.ss.formula.functions.LogicalFunction.6
        @Override // org.apache.poi.ss.formula.functions.LogicalFunction
        public boolean evaluate(ValueEval valueEval) {
            return valueEval instanceof ErrorEval;
        }
    };
    public static final Function ISERR = new LogicalFunction() { // from class: org.apache.poi.ss.formula.functions.LogicalFunction.7
        @Override // org.apache.poi.ss.formula.functions.LogicalFunction
        public boolean evaluate(ValueEval valueEval) {
            return (valueEval instanceof ErrorEval) && valueEval != ErrorEval.f111531NA;
        }
    };
    public static final Function ISNA = new LogicalFunction() { // from class: org.apache.poi.ss.formula.functions.LogicalFunction.8
        @Override // org.apache.poi.ss.formula.functions.LogicalFunction
        public boolean evaluate(ValueEval valueEval) {
            return valueEval == ErrorEval.f111531NA;
        }
    };
    public static final Function ISREF = new Fixed1ArgFunction() { // from class: org.apache.poi.ss.formula.functions.LogicalFunction.9
        @Override // org.apache.poi.ss.formula.functions.Function1Arg
        /* renamed from: evaluate */
        public ValueEval lambda$evaluateArray$0(int i, int i2, ValueEval valueEval) {
            return ((valueEval instanceof RefEval) || (valueEval instanceof AreaEval) || (valueEval instanceof RefListEval)) ? BoolEval.TRUE : BoolEval.FALSE;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ValueEval lambda$evaluateArray$0(ValueEval valueEval) {
        return BoolEval.valueOf(evaluate(valueEval));
    }

    @Override // org.apache.poi.ss.formula.functions.Function1Arg
    /* renamed from: evaluate */
    public ValueEval lambda$evaluateArray$0(int i, int i2, ValueEval valueEval) {
        ValueEval errorEval;
        try {
            errorEval = OperandResolver.getSingleValue(valueEval, i, i2);
        } catch (EvaluationException e) {
            errorEval = e.getErrorEval();
        }
        return BoolEval.valueOf(evaluate(errorEval));
    }

    public abstract boolean evaluate(ValueEval valueEval);

    @Override // org.apache.poi.ss.formula.functions.ArrayFunction
    public ValueEval evaluateArray(ValueEval[] valueEvalArr, int i, int i2) {
        return valueEvalArr.length != 1 ? ErrorEval.VALUE_INVALID : evaluateOneArrayArg(valueEvalArr[0], i, i2, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.n3j
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ValueEval lambda$evaluateArray$0;
                lambda$evaluateArray$0 = LogicalFunction.this.lambda$evaluateArray$0((ValueEval) obj);
                return lambda$evaluateArray$0;
            }
        });
    }
}
