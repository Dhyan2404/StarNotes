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
public class DateValue extends Fixed1ArgFunction {
    private static final Logger LOG = LogManager.getLogger((Class<?>) DateValue.class);

    @Override // org.apache.poi.ss.formula.functions.Function1Arg
    /* renamed from: evaluate */
    public ValueEval lambda$evaluateArray$0(int i, int i2, ValueEval valueEval) {
        try {
            String coerceValueToString = OperandResolver.coerceValueToString(OperandResolver.getSingleValue(valueEval, i, i2));
            if (coerceValueToString != null && !coerceValueToString.isEmpty()) {
                return new NumberEval(DateUtil.getExcelDate(DateParser.parseLocalDate(coerceValueToString)));
            }
            return BlankEval.instance;
        } catch (DateTimeException e) {
            LOG.atInfo().log("Failed to parse date", e);
            return ErrorEval.VALUE_INVALID;
        } catch (EvaluationException e2) {
            return e2.getErrorEval();
        }
    }
}
