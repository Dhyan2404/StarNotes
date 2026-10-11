package io.opencensus.trace.unsafe;

import io.grpc.Context;
import io.opencensus.internal.Utils;
import io.opencensus.trace.BlankSpan;
import io.opencensus.trace.Span;
import javax.annotation.Nullable;

@Deprecated
/* loaded from: classes10.dex */
public final class ContextUtils {

    /* renamed from: a */
    public static final Context.Key<Span> f94983a = Context.key("opencensus-trace-span-key");

    public static Span getValue(Context context) {
        Span span = f94983a.get((Context) Utils.checkNotNull(context, "context"));
        return span == null ? BlankSpan.INSTANCE : span;
    }

    public static Context withValue(Context context, @Nullable Span span) {
        return ((Context) Utils.checkNotNull(context, "context")).withValue(f94983a, span);
    }
}
