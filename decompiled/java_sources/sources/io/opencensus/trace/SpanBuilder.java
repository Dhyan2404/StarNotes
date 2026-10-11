package io.opencensus.trace;

import com.google.errorprone.annotations.MustBeClosed;
import com.sunia.HTREnginev2.oie;
import io.opencensus.common.Scope;
import io.opencensus.internal.Utils;
import io.opencensus.trace.Span;
import java.util.List;
import java.util.concurrent.Callable;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public abstract class SpanBuilder {

    /* renamed from: io.opencensus.trace.SpanBuilder$a */
    /* loaded from: classes10.dex */
    public static final class C17195a extends SpanBuilder {
        public C17195a(String str) {
            Utils.checkNotNull(str, "name");
        }

        /* renamed from: a */
        public static C17195a m61061a(String str, @Nullable Span span) {
            return new C17195a(str);
        }

        /* renamed from: b */
        public static C17195a m61062b(String str, @Nullable SpanContext spanContext) {
            return new C17195a(str);
        }

        @Override // io.opencensus.trace.SpanBuilder
        public SpanBuilder setParentLinks(List<Span> list) {
            return this;
        }

        @Override // io.opencensus.trace.SpanBuilder
        public SpanBuilder setRecordEvents(boolean z) {
            return this;
        }

        @Override // io.opencensus.trace.SpanBuilder
        public SpanBuilder setSampler(@Nullable Sampler sampler) {
            return this;
        }

        @Override // io.opencensus.trace.SpanBuilder
        public SpanBuilder setSpanKind(@Nullable Span.Kind kind) {
            return this;
        }

        @Override // io.opencensus.trace.SpanBuilder
        public Span startSpan() {
            return BlankSpan.INSTANCE;
        }
    }

    public abstract SpanBuilder setParentLinks(List<Span> list);

    public abstract SpanBuilder setRecordEvents(boolean z);

    public abstract SpanBuilder setSampler(Sampler sampler);

    public SpanBuilder setSpanKind(@Nullable Span.Kind kind) {
        return this;
    }

    @MustBeClosed
    public final Scope startScopedSpan() {
        return oie.m55984d(startSpan(), true);
    }

    public abstract Span startSpan();

    public final <V> V startSpanAndCall(Callable<V> callable) throws Exception {
        return (V) oie.m55986f(startSpan(), true, callable).call();
    }

    public final void startSpanAndRun(Runnable runnable) {
        oie.m55985e(startSpan(), true, runnable).run();
    }
}
