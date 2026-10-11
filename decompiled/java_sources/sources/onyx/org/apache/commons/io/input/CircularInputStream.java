package onyx.org.apache.commons.io.input;

import java.io.InputStream;
import java.util.Objects;

/* loaded from: classes11.dex */
public class CircularInputStream extends InputStream {

    /* renamed from: e */
    public long f104305e;

    /* renamed from: f */
    public int f104306f = -1;

    /* renamed from: g */
    public final byte[] f104307g;

    /* renamed from: h */
    public final long f104308h;

    public CircularInputStream(byte[] bArr, long j) {
        this.f104307g = m65440f(bArr);
        if (bArr.length == 0) {
            throw new IllegalArgumentException("repeatContent is empty.");
        }
        this.f104308h = j;
    }

    /* renamed from: f */
    public static byte[] m65440f(byte[] bArr) {
        Objects.requireNonNull(bArr, "repeatContent");
        for (byte b : bArr) {
            if (b == -1) {
                throw new IllegalArgumentException("repeatContent contains the end-of-stream marker -1");
            }
        }
        return bArr;
    }

    @Override // java.io.InputStream
    public int read() {
        long j = this.f104308h;
        if (j >= 0) {
            long j2 = this.f104305e;
            if (j2 == j) {
                return -1;
            }
            this.f104305e = j2 + 1;
        }
        int i = this.f104306f + 1;
        byte[] bArr = this.f104307g;
        int length = i % bArr.length;
        this.f104306f = length;
        return bArr[length] & 255;
    }
}
