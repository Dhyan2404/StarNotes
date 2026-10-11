package io.opencensus.trace;

import com.google.errorprone.annotations.MustBeClosed;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.oie;
import io.opencensus.common.Scope;
import io.opencensus.internal.Utils;
import io.opencensus.trace.SpanBuilder;
import java.util.concurrent.Callable;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public abstract class Tracer {

    /* renamed from: a */
    public static final C17200b f94876a = new C17200b();

    /* renamed from: io.opencensus.trace.Tracer$b */
    /* loaded from: classes10.dex */
    public static final class C17200b extends Tracer {
        @Override // io.opencensus.trace.Tracer
        public SpanBuilder spanBuilderWithExplicitParent(String str, @Nullable Span span) {
            return SpanBuilder.C17195a.m61061a(str, span);
        }

        @Override // io.opencensus.trace.Tracer
        public SpanBuilder spanBuilderWithRemoteParent(String str, @Nullable SpanContext spanContext) {
            return SpanBuilder.C17195a.m61062b(str, spanContext);
        }

        public C17200b() {
        }
    }

    /* renamed from: a */
    public static Tracer m61068a() {
        return f94876a;
    }

    public final Span getCurrentSpan() {
        Span m55982b = oie.m55982b();
        return m55982b != null ? m55982b : BlankSpan.INSTANCE;
    }

    public final SpanBuilder spanBuilder(String str) {
        return spanBuilderWithExplicitParent(str, oie.m55982b());
    }

    public abstract SpanBuilder spanBuilderWithExplicitParent(String str, @Nullable Span span);

    public abstract SpanBuilder spanBuilderWithRemoteParent(String str, @Nullable SpanContext spanContext);

    @MustBeClosed
    public final Scope withSpan(Span span) {
        return oie.m55984d((Span) Utils.checkNotNull(span, gon.f71297s), false);
    }

    public final Runnable withSpan(Span span, Runnable runnable) {
        return oie.m55985e(span, false, runnable);
    }

    public final <C> Callable<C> withSpan(Span span, Callable<C> callable) {
        return oie.m55986f(span, false, callable);
    }
}
