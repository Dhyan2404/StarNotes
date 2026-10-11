package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import java.nio.Buffer;

@GwtIncompatible
@aof
/* loaded from: classes6.dex */
public final class jri {
    /* renamed from: a */
    public static void m55026a(Buffer buffer) {
        buffer.clear();
    }

    /* renamed from: b */
    public static void m55027b(Buffer buffer) {
        buffer.flip();
    }

    /* renamed from: c */
    public static void m55028c(Buffer buffer, int i) {
        buffer.limit(i);
    }

    /* renamed from: d */
    public static void m55029d(Buffer buffer, int i) {
        buffer.position(i);
    }
}
