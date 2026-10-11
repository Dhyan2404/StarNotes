package com.sun.org.apache.regexp.internal;

/* loaded from: classes10.dex */
public class REUtil {
    private static final String complexPrefix = "complex:";

    public static C13245RE createRE(String str, int i) throws RESyntaxException {
        if (str.startsWith(complexPrefix)) {
            return new C13245RE(str.substring(8), i);
        }
        return new C13245RE(C13245RE.simplePatternToFullRegularExpression(str), i);
    }

    public static C13245RE createRE(String str) throws RESyntaxException {
        return createRE(str, 0);
    }
}
