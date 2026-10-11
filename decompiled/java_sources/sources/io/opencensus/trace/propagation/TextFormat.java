package io.opencensus.trace.propagation;

import io.opencensus.internal.Utils;
import io.opencensus.trace.SpanContext;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public abstract class TextFormat {

    /* renamed from: a */
    public static final C17240b f94978a = new C17240b();

    /* loaded from: classes10.dex */
    public static abstract class Getter<C> {
        @Nullable
        public abstract String get(C c, String str);
    }

    /* loaded from: classes10.dex */
    public static abstract class Setter<C> {
        public abstract void put(C c, String str, String str2);
    }

    /* renamed from: io.opencensus.trace.propagation.TextFormat$b */
    /* loaded from: classes10.dex */
    public static final class C17240b extends TextFormat {
        @Override // io.opencensus.trace.propagation.TextFormat
        public <C> SpanContext extract(C c, Getter<C> getter) {
            Utils.checkNotNull(c, "carrier");
            Utils.checkNotNull(getter, "getter");
            return SpanContext.INVALID;
        }

        @Override // io.opencensus.trace.propagation.TextFormat
        public List<String> fields() {
            return Collections.emptyList();
        }

        @Override // io.opencensus.trace.propagation.TextFormat
        public <C> void inject(SpanContext spanContext, C c, Setter<C> setter) {
            Utils.checkNotNull(spanContext, "spanContext");
            Utils.checkNotNull(c, "carrier");
            Utils.checkNotNull(setter, "setter");
        }

        public C17240b() {
        }
    }

    /* renamed from: a */
    public static TextFormat m61082a() {
        return f94978a;
    }

    public abstract <C> SpanContext extract(C c, Getter<C> getter) throws SpanContextParseException;

    public abstract List<String> fields();

    public abstract <C> void inject(SpanContext spanContext, C c, Setter<C> setter);
}
