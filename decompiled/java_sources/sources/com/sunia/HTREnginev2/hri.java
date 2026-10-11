package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import java.nio.Buffer;

@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class hri {
    /* renamed from: a */
    public static void m54615a(Buffer buffer) {
        buffer.clear();
    }

    /* renamed from: b */
    public static void m54616b(Buffer buffer) {
        buffer.flip();
    }

    /* renamed from: c */
    public static void m54617c(Buffer buffer, int i) {
        buffer.limit(i);
    }

    /* renamed from: d */
    public static void m54618d(Buffer buffer) {
        buffer.mark();
    }

    /* renamed from: e */
    public static void m54619e(Buffer buffer, int i) {
        buffer.position(i);
    }

    /* renamed from: f */
    public static void m54620f(Buffer buffer) {
        buffer.reset();
    }
}
