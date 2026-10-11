package org.apache.commons.io.input;

/* loaded from: classes12.dex */
class UnsupportedOperationExceptions {
    private static final String MARK_RESET = "mark/reset";

    public static UnsupportedOperationException mark() {
        return method("mark/reset");
    }

    public static UnsupportedOperationException method(String str) {
        return new UnsupportedOperationException(str + " not supported");
    }

    public static UnsupportedOperationException reset() {
        return method("mark/reset");
    }
}
