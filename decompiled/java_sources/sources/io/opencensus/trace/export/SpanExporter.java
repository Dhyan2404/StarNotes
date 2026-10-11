package io.opencensus.trace.export;

import java.util.Collection;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes10.dex */
public abstract class SpanExporter {

    /* renamed from: a */
    public static final SpanExporter f94915a = new C17217b();

    /* loaded from: classes10.dex */
    public static abstract class Handler {
        public abstract void export(Collection<SpanData> collection);
    }

    /* renamed from: io.opencensus.trace.export.SpanExporter$b */
    /* loaded from: classes10.dex */
    public static final class C17217b extends SpanExporter {
        public C17217b() {
        }

        @Override // io.opencensus.trace.export.SpanExporter
        public void registerHandler(String str, Handler handler) {
        }

        @Override // io.opencensus.trace.export.SpanExporter
        public void unregisterHandler(String str) {
        }
    }

    public static SpanExporter getNoopSpanExporter() {
        return f94915a;
    }

    public abstract void registerHandler(String str, Handler handler);

    public abstract void unregisterHandler(String str);
}
