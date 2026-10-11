package org.apache.poi.ss.formula.functions;

import java.util.Date;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.usermodel.DateUtil;

/* loaded from: classes13.dex */
public final class Now {
    public static ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        return valueEvalArr.length != 0 ? ErrorEval.VALUE_INVALID : new NumberEval(DateUtil.getExcelDate(new Date(System.currentTimeMillis())));
    }
}
