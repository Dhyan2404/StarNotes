package org.apache.poi.ss.formula.functions;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public class Roman extends Fixed2ArgFunction {
    private static final int[] VALUES = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
    private static final String[] ROMAN = {"M", "CM", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "CD", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "XC", "L", "XL", "X", "IX", "V", "IV", "I"};
    private static final String[][] REPLACEMENTS = {new String[]{"XLV", "VL", "XCV", "VC", "CDL", "LD", "CML", "LM", "CMVC", "LMVL"}, new String[]{"CDXC", "LDXL", "CDVC", "LDVL", "CMXC", "LMXL", "XCIX", "VCIV", "XLIX", "VLIV"}, new String[]{"XLIX", "IL", "XCIX", "IC", "CDXC", "XD", "CDVC", "XDV", "CDIC", "XDIX", "LMVL", "XMV", "CMIC", "XMIX", "CMXC", "XM"}, new String[]{"XDV", "VD", "XDIX", "VDIV", "XMV", "VM", "XMIX", "VMIV"}, new String[]{"VDIV", "ID", "VMIV", "IM"}};

    private String integerToRoman(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 13; i2++) {
            while (true) {
                int i3 = VALUES[i2];
                if (i >= i3) {
                    i -= i3;
                    sb.append(ROMAN[i2]);
                }
            }
        }
        return sb.toString();
    }

    @Override // org.apache.poi.ss.formula.functions.Function2Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        try {
            int coerceValueToInt = OperandResolver.coerceValueToInt(OperandResolver.getSingleValue(valueEval, i, i2));
            if (coerceValueToInt >= 0 && coerceValueToInt <= 3999) {
                if (coerceValueToInt == 0) {
                    return new StringEval("");
                }
                try {
                    int coerceValueToInt2 = OperandResolver.coerceValueToInt(OperandResolver.getSingleValue(valueEval2, i, i2));
                    if (coerceValueToInt2 > 4 || coerceValueToInt2 < 0) {
                        return ErrorEval.VALUE_INVALID;
                    }
                    String integerToRoman = integerToRoman(coerceValueToInt);
                    return coerceValueToInt2 == 0 ? new StringEval(integerToRoman) : new StringEval(makeConcise(integerToRoman, coerceValueToInt2));
                } catch (EvaluationException unused) {
                    return ErrorEval.NUM_ERROR;
                }
            }
            return ErrorEval.VALUE_INVALID;
        } catch (EvaluationException unused2) {
            return ErrorEval.VALUE_INVALID;
        }
    }

    public String makeConcise(String str, int i) {
        for (int i2 = 0; i2 <= i && i2 <= 4 && i > 0; i2++) {
            if (i2 != 1 || i <= 1) {
                String[] strArr = REPLACEMENTS[i2];
                for (int i3 = 0; i3 < strArr.length - 1; i3 += 2) {
                    str = str.replace(strArr[i3], strArr[i3 + 1]);
                }
            }
        }
        return str;
    }
}
