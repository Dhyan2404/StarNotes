package org.apache.poi.ss.formula.eval;

/* loaded from: classes13.dex */
public final class NotImplementedFunctionException extends NotImplementedException {
    private static final long serialVersionUID = 1208119411557559057L;
    private String functionName;

    public NotImplementedFunctionException(String str) {
        super(str);
        this.functionName = str;
    }

    public String getFunctionName() {
        return this.functionName;
    }

    public NotImplementedFunctionException(String str, NotImplementedException notImplementedException) {
        super(str, notImplementedException);
        this.functionName = str;
    }
}
