package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.util.Removal;

@Removal(version = "6.0.0")
@Deprecated
/* loaded from: classes13.dex */
public interface Function0Arg extends Function {
    ValueEval evaluate(int i, int i2);
}
