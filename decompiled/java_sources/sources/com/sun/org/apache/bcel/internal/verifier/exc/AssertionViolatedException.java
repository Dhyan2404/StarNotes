package com.sun.org.apache.bcel.internal.verifier.exc;

/* loaded from: classes10.dex */
public final class AssertionViolatedException extends RuntimeException {
    private String detailMessage;

    public AssertionViolatedException() {
    }

    public static void _main(String[] strArr) {
        AssertionViolatedException assertionViolatedException = new AssertionViolatedException("Oops!");
        assertionViolatedException.extendMessage("\nFOUND:\n\t", "\nExiting!!\n");
        throw assertionViolatedException;
    }

    public void extendMessage(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (this.detailMessage == null) {
            this.detailMessage = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        this.detailMessage = str + this.detailMessage + str2;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.detailMessage;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AssertionViolatedException(java.lang.String r3) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "INTERNAL ERROR: "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            r2.<init>(r3)
            r2.detailMessage = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException.<init>(java.lang.String):void");
    }
}
