package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import java.nio.Buffer;

@GwtIncompatible
@wnf
/* loaded from: classes6.dex */
public final class gri {
    /* renamed from: a */
    public static void m54338a(Buffer buffer) {
        buffer.clear();
    }

    /* renamed from: b */
    public static void m54339b(Buffer buffer) {
        buffer.flip();
    }

    /* renamed from: c */
    public static void m54340c(Buffer buffer, int i) {
        buffer.limit(i);
    }

    /* renamed from: d */
    public static void m54341d(Buffer buffer, int i) {
        buffer.position(i);
    }
}
