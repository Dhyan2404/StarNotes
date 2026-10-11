package io.opencensus.trace.propagation;

import io.opencensus.internal.Utils;
import io.opencensus.trace.SpanContext;
import java.text.ParseException;
import org.mortbay.jetty.HttpHeaderValues;

/* loaded from: classes10.dex */
public abstract class BinaryFormat {

    /* renamed from: a */
    public static final C17236b f94976a = new C17236b();

    /* renamed from: io.opencensus.trace.propagation.BinaryFormat$b */
    /* loaded from: classes10.dex */
    public static final class C17236b extends BinaryFormat {
        @Override // io.opencensus.trace.propagation.BinaryFormat
        public SpanContext fromByteArray(byte[] bArr) {
            Utils.checkNotNull(bArr, HttpHeaderValues.BYTES);
            return SpanContext.INVALID;
        }

        @Override // io.opencensus.trace.propagation.BinaryFormat
        public byte[] toByteArray(SpanContext spanContext) {
            Utils.checkNotNull(spanContext, "spanContext");
            return new byte[0];
        }

        public C17236b() {
        }
    }

    /* renamed from: a */
    public static BinaryFormat m61081a() {
        return f94976a;
    }

    @Deprecated
    public SpanContext fromBinaryValue(byte[] bArr) throws ParseException {
        try {
            return fromByteArray(bArr);
        } catch (SpanContextParseException e) {
            throw new ParseException(e.toString(), 0);
        }
    }

    public SpanContext fromByteArray(byte[] bArr) throws SpanContextParseException {
        try {
            return fromBinaryValue(bArr);
        } catch (ParseException e) {
            throw new SpanContextParseException("Error while parsing.", e);
        }
    }

    @Deprecated
    public byte[] toBinaryValue(SpanContext spanContext) {
        return toByteArray(spanContext);
    }

    public byte[] toByteArray(SpanContext spanContext) {
        return toBinaryValue(spanContext);
    }
}
