package com.sunia.HTREnginev2;

import java.io.Closeable;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.buffer;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final /* synthetic */ class nfk {
    @JvmName(name = "blackhole")
    @NotNull
    /* renamed from: a */
    public static final Sink m55739a() {
        return new C14208os();
    }

    @NotNull
    /* renamed from: b */
    public static final BufferedSink m55740b(@NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        return new buffer(sink);
    }

    @NotNull
    /* renamed from: c */
    public static final BufferedSource m55741c(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return new okio.buffer(source);
    }

    /* renamed from: d */
    public static final <T extends Closeable, R> R m55742d(T t, @NotNull Function1<? super T, ? extends R> block) {
        R r;
        Intrinsics.checkNotNullParameter(block, "block");
        Throwable th = null;
        try {
            r = block.invoke(t);
            InlineMarker.finallyStart(1);
            if (t != null) {
                try {
                    t.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            InlineMarker.finallyEnd(1);
        } catch (Throwable th3) {
            InlineMarker.finallyStart(1);
            if (t != null) {
                try {
                    t.close();
                } catch (Throwable th4) {
                    ExceptionsKt__ExceptionsKt.addSuppressed(th3, th4);
                }
            }
            InlineMarker.finallyEnd(1);
            th = th3;
            r = null;
        }
        if (th != null) {
            throw th;
        }
        Intrinsics.checkNotNull(r);
        return r;
    }
}
