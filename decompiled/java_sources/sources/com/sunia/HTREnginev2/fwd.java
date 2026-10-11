package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.primitives.UnsignedInts;
import com.google.common.primitives.UnsignedLongs;
import io.opencensus.trace.SpanContext;
import io.opencensus.trace.SpanId;
import io.opencensus.trace.TraceId;
import io.opencensus.trace.TraceOptions;
import io.opencensus.trace.Tracestate;
import io.opencensus.trace.propagation.SpanContextParseException;
import io.opencensus.trace.propagation.TextFormat;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* loaded from: classes10.dex */
public final class fwd extends TextFormat {

    /* renamed from: d */
    public static final char f70443d = '/';

    /* renamed from: e */
    public static final String f70444e = ";o=";

    /* renamed from: f */
    public static final String f70445f = "1";

    /* renamed from: g */
    public static final String f70446g = "0";

    /* renamed from: j */
    public static final int f70449j = 32;

    /* renamed from: l */
    public static final int f70451l = 33;

    /* renamed from: m */
    public static final int f70452m = 34;

    /* renamed from: n */
    public static final int f70453n = 1;

    /* renamed from: b */
    public static final String f70441b = "X-Cloud-Trace-Context";

    /* renamed from: c */
    public static final List<String> f70442c = Collections.singletonList(f70441b);

    /* renamed from: h */
    public static final TraceOptions f70447h = TraceOptions.builder().setIsSampled(true).build();

    /* renamed from: i */
    public static final TraceOptions f70448i = TraceOptions.DEFAULT;

    /* renamed from: k */
    public static final int f70450k = 3;

    /* renamed from: o */
    public static final Tracestate f70454o = Tracestate.builder().build();

    /* renamed from: b */
    public static SpanId m54203b(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.putLong(j);
        return SpanId.fromBytes(allocate.array());
    }

    /* renamed from: c */
    public static long m54204c(SpanId spanId) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.put(spanId.getBytes());
        return allocate.getLong(0);
    }

    @Override // io.opencensus.trace.propagation.TextFormat
    public <C> SpanContext extract(C c, TextFormat.Getter<C> getter) throws SpanContextParseException {
        Preconditions.checkNotNull(c, "carrier");
        Preconditions.checkNotNull(getter, "getter");
        try {
            String str = getter.get(c, f70441b);
            if (str == null || str.length() < 34) {
                throw new SpanContextParseException("Missing or too short header: X-Cloud-Trace-Context");
            }
            Preconditions.checkArgument(str.charAt(32) == '/', "Invalid TRACE_ID size");
            TraceId fromLowerBase16 = TraceId.fromLowerBase16(str.subSequence(0, 32));
            int indexOf = str.indexOf(f70444e, 32);
            SpanId m54203b = m54203b(UnsignedLongs.parseUnsignedLong(str.subSequence(33, indexOf < 0 ? str.length() : indexOf).toString(), 10));
            TraceOptions traceOptions = f70448i;
            if (indexOf > 0 && (UnsignedInts.parseUnsignedInt(str.substring(indexOf + f70450k), 10) & 1) != 0) {
                traceOptions = f70447h;
            }
            return SpanContext.create(fromLowerBase16, m54203b, traceOptions, f70454o);
        } catch (IllegalArgumentException e) {
            throw new SpanContextParseException("Invalid input", e);
        }
    }

    @Override // io.opencensus.trace.propagation.TextFormat
    public List<String> fields() {
        return f70442c;
    }

    @Override // io.opencensus.trace.propagation.TextFormat
    public <C> void inject(SpanContext spanContext, C c, TextFormat.Setter<C> setter) {
        Preconditions.checkNotNull(spanContext, "spanContext");
        Preconditions.checkNotNull(setter, "setter");
        Preconditions.checkNotNull(c, "carrier");
        StringBuilder sb = new StringBuilder();
        sb.append(spanContext.getTraceId().toLowerBase16());
        sb.append('/');
        sb.append(UnsignedLongs.toString(m54204c(spanContext.getSpanId())));
        sb.append(f70444e);
        sb.append(spanContext.getTraceOptions().isSampled() ? "1" : "0");
        setter.put(c, f70441b, sb.toString());
    }
}
