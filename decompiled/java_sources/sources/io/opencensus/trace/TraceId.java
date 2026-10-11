package io.opencensus.trace;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sunia.HTREnginev2.C14315qq;
import io.opencensus.internal.Utils;
import java.util.Random;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public final class TraceId implements Comparable<TraceId> {
    public static final TraceId INVALID = new TraceId(0, 0);
    public static final int SIZE = 16;

    /* renamed from: g */
    public static final int f94867g = 32;

    /* renamed from: h */
    public static final long f94868h = 0;

    /* renamed from: e */
    public final long f94869e;

    /* renamed from: f */
    public final long f94870f;

    public TraceId(long j, long j2) {
        this.f94869e = j;
        this.f94870f = j2;
    }

    public static TraceId fromBytes(byte[] bArr) {
        Utils.checkNotNull(bArr, Constant.SRC_TAG);
        Utils.checkArgument(bArr.length == 16, "Invalid size: expected %s, got %s", 16, Integer.valueOf(bArr.length));
        return fromBytes(bArr, 0);
    }

    public static TraceId fromLowerBase16(CharSequence charSequence) {
        Utils.checkNotNull(charSequence, Constant.SRC_TAG);
        Utils.checkArgument(charSequence.length() == 32, "Invalid size: expected %s, got %s", 32, Integer.valueOf(charSequence.length()));
        return fromLowerBase16(charSequence, 0);
    }

    public static TraceId generateRandomId(Random random) {
        long nextLong;
        long nextLong2;
        do {
            nextLong = random.nextLong();
            nextLong2 = random.nextLong();
            if (nextLong != 0) {
                break;
            }
        } while (nextLong2 == 0);
        return new TraceId(nextLong, nextLong2);
    }

    public void copyBytesTo(byte[] bArr, int i) {
        C14315qq.m56748j(this.f94869e, bArr, i);
        C14315qq.m56748j(this.f94870f, bArr, i + 8);
    }

    public void copyLowerBase16To(char[] cArr, int i) {
        C14315qq.m56747i(this.f94869e, cArr, i);
        C14315qq.m56747i(this.f94870f, cArr, i + 16);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TraceId)) {
            return false;
        }
        TraceId traceId = (TraceId) obj;
        return this.f94869e == traceId.f94869e && this.f94870f == traceId.f94870f;
    }

    public byte[] getBytes() {
        byte[] bArr = new byte[16];
        C14315qq.m56748j(this.f94869e, bArr, 0);
        C14315qq.m56748j(this.f94870f, bArr, 8);
        return bArr;
    }

    public long getLowerLong() {
        long j = this.f94869e;
        return j < 0 ? -j : j;
    }

    public int hashCode() {
        long j = this.f94869e;
        int i = (((int) (j ^ (j >>> 32))) + 31) * 31;
        long j2 = this.f94870f;
        return i + ((int) ((j2 >>> 32) ^ j2));
    }

    public boolean isValid() {
        return (this.f94869e == 0 && this.f94870f == 0) ? false : true;
    }

    public String toLowerBase16() {
        char[] cArr = new char[32];
        copyLowerBase16To(cArr, 0);
        return new String(cArr);
    }

    public String toString() {
        return "TraceId{traceId=" + toLowerBase16() + "}";
    }

    @Override // java.lang.Comparable
    public int compareTo(TraceId traceId) {
        long j = this.f94869e;
        long j2 = traceId.f94869e;
        if (j != j2) {
            return j < j2 ? -1 : 1;
        }
        long j3 = this.f94870f;
        long j4 = traceId.f94870f;
        if (j3 == j4) {
            return 0;
        }
        return j3 < j4 ? -1 : 1;
    }

    public static TraceId fromBytes(byte[] bArr, int i) {
        Utils.checkNotNull(bArr, Constant.SRC_TAG);
        return new TraceId(C14315qq.m56746h(bArr, i), C14315qq.m56746h(bArr, i + 8));
    }

    public static TraceId fromLowerBase16(CharSequence charSequence, int i) {
        Utils.checkNotNull(charSequence, Constant.SRC_TAG);
        return new TraceId(C14315qq.m56745g(charSequence, i), C14315qq.m56745g(charSequence, i + 16));
    }
}
