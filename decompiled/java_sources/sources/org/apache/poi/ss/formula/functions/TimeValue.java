package org.apache.poi.ss.formula.functions;

import java.time.DateTimeException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.util.DateParser;

/* loaded from: classes13.dex */
public class TimeValue extends Fixed1ArgFunction {
    private static final Logger LOG = LogManager.getLogger((Class<?>) TimeValue.class);

    private NumberEval parseTimeFromDateTime(String str) throws EvaluationException {
        return new NumberEval(DateUtil.parseDateTime(str).doubleValue() - DateUtil.getExcelDate(DateParser.parseLocalDate(str)));
    }

    @Override // org.apache.poi.ss.formula.functions.Function1Arg
    /* renamed from: evaluate */
    public ValueEval lambda$evaluateArray$0(int i, int i2, ValueEval valueEval) {
        try {
            String coerceValueToString = OperandResolver.coerceValueToString(OperandResolver.getSingleValue(valueEval, i, i2));
            if (coerceValueToString == null || coerceValueToString.isEmpty()) {
                return BlankEval.instance;
            }
            try {
                try {
                    return parseTimeFromDateTime(coerceValueToString);
                } catch (Exception unused) {
                    DateParser.parseLocalDate(coerceValueToString);
                    return new NumberEval(0.0d);
                }
            } catch (Exception unused2) {
                return this.parseTimeFromDateTime("1/01/2000 " + coerceValueToString);
            }
        } catch (DateTimeException e) {
            LOG.atInfo().log("Failed to parse date/time", e);
            return ErrorEval.VALUE_INVALID;
        } catch (EvaluationException e2) {
            return e2.getErrorEval();
        }
    }
}
