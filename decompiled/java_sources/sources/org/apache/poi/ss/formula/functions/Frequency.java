package org.apache.poi.ss.formula.functions;

import java.util.Arrays;
import java.util.function.IntFunction;
import org.apache.poi.ss.formula.CacheAreaEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.Frequency;
import org.apache.poi.ss.formula.functions.MatrixFunction;

/* loaded from: classes13.dex */
public class Frequency extends Fixed2ArgFunction {
    public static final Function instance = new Frequency();

    private Frequency() {
    }

    public static int findBin(double d, double[] dArr) {
        int binarySearch = Arrays.binarySearch(dArr, d);
        return binarySearch >= 0 ? binarySearch + 1 : -binarySearch;
    }

    public static int[] histogram(double[] dArr, double[] dArr2) {
        int[] iArr = new int[dArr2.length + 1];
        for (double d : dArr) {
            int findBin = findBin(d, dArr2) - 1;
            iArr[findBin] = iArr[findBin] + 1;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ NumberEval[] lambda$evaluate$0(int i) {
        return new NumberEval[i];
    }

    @Override // org.apache.poi.ss.formula.functions.Function2Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        MatrixFunction.MutableValueCollector mutableValueCollector = new MatrixFunction.MutableValueCollector(false, false);
        try {
            return new CacheAreaEval(i, i2, (r7.length + i) - 1, i2, (NumberEval[]) Arrays.stream(histogram(mutableValueCollector.collectValues(valueEval), mutableValueCollector.collectValues(valueEval2))).boxed().map(new java.util.function.Function() { // from class: com.sunia.HTREnginev2.ewg
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new NumberEval(((Integer) obj).intValue());
                }
            }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.fwg
                @Override // java.util.function.IntFunction
                public final Object apply(int i3) {
                    NumberEval[] lambda$evaluate$0;
                    lambda$evaluate$0 = Frequency.lambda$evaluate$0(i3);
                    return lambda$evaluate$0;
                }
            }));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
