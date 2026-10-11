package com.sun.org.apache.bcel.internal.verifier.exc;

import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes10.dex */
public final class Utility {
    private Utility() {
    }

    public static String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
