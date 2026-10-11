package org.apache.poi.ss.formula.functions;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.NumericValueEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.util.NumberToTextConverter;

/* loaded from: classes13.dex */
public final class DVar implements IDStarAlgorithm {
    private final ArrayList<NumericValueEval> values = new ArrayList<>();

    @Override // org.apache.poi.ss.formula.functions.IDStarAlgorithm
    public ValueEval getResult() {
        double[] dArr = new double[this.values.size()];
        Iterator<NumericValueEval> it2 = this.values.iterator();
        int i = 0;
        while (it2.hasNext()) {
            dArr[i] = it2.next().getNumberValue();
            i++;
        }
        return new NumberEval(new BigDecimal(NumberToTextConverter.toText(StatsLib.var(dArr))).doubleValue());
    }

    @Override // org.apache.poi.ss.formula.functions.IDStarAlgorithm
    public boolean processMatch(ValueEval valueEval) {
        if (!(valueEval instanceof NumericValueEval)) {
            return true;
        }
        this.values.add((NumericValueEval) valueEval);
        return true;
    }
}
