package io.opencensus.trace;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sunia.HTREnginev2.C14315qq;
import io.opencensus.internal.Utils;
import java.util.Random;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public final class SpanId implements Comparable<SpanId> {
    public static final SpanId INVALID = new SpanId(0);
    public static final int SIZE = 8;

    /* renamed from: f */
    public static final int f94858f = 16;

    /* renamed from: g */
    public static final long f94859g = 0;

    /* renamed from: e */
    public final long f94860e;

    public SpanId(long j) {
        this.f94860e = j;
    }

    public static SpanId fromBytes(byte[] bArr) {
        Utils.checkNotNull(bArr, Constant.SRC_TAG);
        Utils.checkArgument(bArr.length == 8, "Invalid size: expected %s, got %s", 8, Integer.valueOf(bArr.length));
        return fromBytes(bArr, 0);
    }

    public static SpanId fromLowerBase16(CharSequence charSequence) {
        Utils.checkNotNull(charSequence, Constant.SRC_TAG);
        Utils.checkArgument(charSequence.length() == 16, "Invalid size: expected %s, got %s", 16, Integer.valueOf(charSequence.length()));
        return fromLowerBase16(charSequence, 0);
    }

    public static SpanId generateRandomId(Random random) {
        long nextLong;
        do {
            nextLong = random.nextLong();
        } while (nextLong == 0);
        return new SpanId(nextLong);
    }

    public void copyBytesTo(byte[] bArr, int i) {
        C14315qq.m56748j(this.f94860e, bArr, i);
    }

    public void copyLowerBase16To(char[] cArr, int i) {
        C14315qq.m56747i(this.f94860e, cArr, i);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof SpanId) && this.f94860e == ((SpanId) obj).f94860e;
    }

    public byte[] getBytes() {
        byte[] bArr = new byte[8];
        C14315qq.m56748j(this.f94860e, bArr, 0);
        return bArr;
    }

    public int hashCode() {
        long j = this.f94860e;
        return (int) (j ^ (j >>> 32));
    }

    public boolean isValid() {
        return this.f94860e != 0;
    }

    public String toLowerBase16() {
        char[] cArr = new char[16];
        copyLowerBase16To(cArr, 0);
        return new String(cArr);
    }

    public String toString() {
        return "SpanId{spanId=" + toLowerBase16() + "}";
    }

    @Override // java.lang.Comparable
    public int compareTo(SpanId spanId) {
        long j = this.f94860e;
        long j2 = spanId.f94860e;
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public static SpanId fromBytes(byte[] bArr, int i) {
        Utils.checkNotNull(bArr, Constant.SRC_TAG);
        return new SpanId(C14315qq.m56746h(bArr, i));
    }

    public static SpanId fromLowerBase16(CharSequence charSequence, int i) {
        Utils.checkNotNull(charSequence, Constant.SRC_TAG);
        return new SpanId(C14315qq.m56745g(charSequence, i));
    }
}
