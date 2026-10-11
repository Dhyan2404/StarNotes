package com.sunia.HTREnginev2;

import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Objects;

/* loaded from: classes12.dex */
public final class c6j {

    /* renamed from: a */
    public static PrintWriter f66505a = new PrintWriter((OutputStream) System.err, true);

    /* renamed from: a */
    public static void m53394a(final String message) {
        if (message != null) {
            f66505a.println(message);
        }
    }

    /* renamed from: b */
    public static void m53395b(final String message, final Throwable exception) {
        m53394a(message);
        m53396c(exception);
    }

    /* renamed from: c */
    public static void m53396c(final Throwable exception) {
        if (exception != null) {
            exception.printStackTrace(f66505a);
        }
    }

    /* renamed from: d */
    public static void m53397d(final OutputStream out) {
        Objects.requireNonNull(out);
        f66505a = new PrintWriter(out, true);
    }

    /* renamed from: e */
    public static void m53398e(final Writer writer) {
        Objects.requireNonNull(writer);
        f66505a = new PrintWriter(writer, true);
    }
}
