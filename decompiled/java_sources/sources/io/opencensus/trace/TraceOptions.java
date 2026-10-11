package io.opencensus.trace;

import com.sunia.HTREnginev2.C14315qq;
import io.opencensus.internal.Utils;
import java.util.Arrays;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public final class TraceOptions {
    public static final TraceOptions DEFAULT = fromByte((byte) 0);
    public static final int SIZE = 1;

    /* renamed from: b */
    public static final byte f94871b = 0;

    /* renamed from: c */
    public static final byte f94872c = 1;

    /* renamed from: d */
    public static final int f94873d = 2;

    /* renamed from: a */
    public final byte f94874a;

    /* loaded from: classes10.dex */
    public static final class Builder {

        /* renamed from: a */
        public byte f94875a;

        public TraceOptions build() {
            return TraceOptions.fromByte(this.f94875a);
        }

        @Deprecated
        public Builder setIsSampled() {
            return setIsSampled(true);
        }

        public Builder(byte b) {
            this.f94875a = b;
        }

        public Builder setIsSampled(boolean z) {
            if (z) {
                this.f94875a = (byte) (this.f94875a | 1);
            } else {
                this.f94875a = (byte) (this.f94875a & (-2));
            }
            return this;
        }
    }

    public TraceOptions(byte b) {
        this.f94874a = b;
    }

    public static Builder builder() {
        return new Builder((byte) 0);
    }

    public static TraceOptions fromByte(byte b) {
        return new TraceOptions(b);
    }

    @Deprecated
    public static TraceOptions fromBytes(byte[] bArr) {
        Utils.checkNotNull(bArr, "buffer");
        Utils.checkArgument(bArr.length == 1, "Invalid size: expected %s, got %s", 1, Integer.valueOf(bArr.length));
        return fromByte(bArr[0]);
    }

    public static TraceOptions fromLowerBase16(CharSequence charSequence, int i) {
        return new TraceOptions(C14315qq.m56741c(charSequence, i));
    }

    /* renamed from: a */
    public byte m61066a() {
        return this.f94874a;
    }

    /* renamed from: b */
    public final boolean m61067b(int i) {
        return (this.f94874a & i) != 0;
    }

    public void copyBytesTo(byte[] bArr, int i) {
        Utils.checkIndex(i, bArr.length);
        bArr[i] = this.f94874a;
    }

    public void copyLowerBase16To(char[] cArr, int i) {
        C14315qq.m56743e(this.f94874a, cArr, i);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof TraceOptions) && this.f94874a == ((TraceOptions) obj).f94874a;
    }

    public byte getByte() {
        return this.f94874a;
    }

    @Deprecated
    public byte[] getBytes() {
        return new byte[]{this.f94874a};
    }

    public int hashCode() {
        return Arrays.hashCode(new byte[]{this.f94874a});
    }

    public boolean isSampled() {
        return m61067b(1);
    }

    public String toLowerBase16() {
        char[] cArr = new char[2];
        copyLowerBase16To(cArr, 0);
        return new String(cArr);
    }

    public String toString() {
        return "TraceOptions{sampled=" + isSampled() + "}";
    }

    public static Builder builder(TraceOptions traceOptions) {
        return new Builder(traceOptions.f94874a);
    }

    @Deprecated
    public static TraceOptions fromBytes(byte[] bArr, int i) {
        Utils.checkIndex(i, bArr.length);
        return fromByte(bArr[i]);
    }
}
