package onyx.org.apache.commons.io.input.buffer;

import java.util.Objects;
import onyx.org.apache.commons.io.IOUtils;

/* loaded from: classes11.dex */
public class CircularByteBuffer {

    /* renamed from: a */
    public final byte[] f104468a;

    /* renamed from: b */
    public int f104469b;

    /* renamed from: c */
    public int f104470c;

    /* renamed from: d */
    public int f104471d;

    public CircularByteBuffer() {
        this(8192);
    }

    public void add(byte b) {
        int i = this.f104471d;
        byte[] bArr = this.f104468a;
        if (i < bArr.length) {
            int i2 = this.f104470c;
            bArr[i2] = b;
            this.f104471d = i + 1;
            int i3 = i2 + 1;
            this.f104470c = i3;
            if (i3 == bArr.length) {
                this.f104470c = 0;
                return;
            }
            return;
        }
        throw new IllegalStateException("No space available");
    }

    public void clear() {
        this.f104469b = 0;
        this.f104470c = 0;
        this.f104471d = 0;
    }

    public int getCurrentNumberOfBytes() {
        return this.f104471d;
    }

    public int getSpace() {
        return this.f104468a.length - this.f104471d;
    }

    public boolean hasBytes() {
        return this.f104471d > 0;
    }

    public boolean hasSpace() {
        return this.f104471d < this.f104468a.length;
    }

    public boolean peek(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "Buffer");
        if (i < 0 || i >= bArr.length) {
            throw new IllegalArgumentException("Illegal offset: " + i);
        }
        if (i2 < 0 || i2 > this.f104468a.length) {
            throw new IllegalArgumentException("Illegal length: " + i2);
        }
        if (i2 < this.f104471d) {
            return false;
        }
        int i3 = this.f104469b;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr2 = this.f104468a;
            if (bArr2[i3] != bArr[i4 + i]) {
                return false;
            }
            i3++;
            if (i3 == bArr2.length) {
                i3 = 0;
            }
        }
        return true;
    }

    public byte read() {
        int i = this.f104471d;
        if (i > 0) {
            byte[] bArr = this.f104468a;
            int i2 = this.f104469b;
            byte b = bArr[i2];
            this.f104471d = i - 1;
            int i3 = i2 + 1;
            this.f104469b = i3;
            if (i3 == bArr.length) {
                this.f104469b = 0;
            }
            return b;
        }
        throw new IllegalStateException("No bytes available.");
    }

    public CircularByteBuffer(int i) {
        this.f104468a = IOUtils.byteArray(i);
        this.f104469b = 0;
        this.f104470c = 0;
        this.f104471d = 0;
    }

    public boolean hasSpace(int i) {
        return this.f104471d + i <= this.f104468a.length;
    }

    public void add(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "Buffer");
        if (i < 0 || i >= bArr.length) {
            throw new IllegalArgumentException("Illegal offset: " + i);
        }
        if (i2 >= 0) {
            if (this.f104471d + i2 <= this.f104468a.length) {
                for (int i3 = 0; i3 < i2; i3++) {
                    byte[] bArr2 = this.f104468a;
                    int i4 = this.f104470c;
                    bArr2[i4] = bArr[i + i3];
                    int i5 = i4 + 1;
                    this.f104470c = i5;
                    if (i5 == bArr2.length) {
                        this.f104470c = 0;
                    }
                }
                this.f104471d += i2;
                return;
            }
            throw new IllegalStateException("No space available");
        }
        throw new IllegalArgumentException("Illegal length: " + i2);
    }

    public void read(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "targetBuffer");
        if (i >= 0 && i < bArr.length) {
            if (i2 >= 0 && i2 <= this.f104468a.length) {
                int i3 = i + i2;
                if (i3 <= bArr.length) {
                    if (this.f104471d < i2) {
                        throw new IllegalStateException("Currently, there are only " + this.f104471d + "in the buffer, not " + i2);
                    }
                    int i4 = 0;
                    while (i4 < i2) {
                        int i5 = i + 1;
                        byte[] bArr2 = this.f104468a;
                        int i6 = this.f104469b;
                        bArr[i] = bArr2[i6];
                        this.f104471d--;
                        int i7 = i6 + 1;
                        this.f104469b = i7;
                        if (i7 == bArr2.length) {
                            this.f104469b = 0;
                        }
                        i4++;
                        i = i5;
                    }
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("The supplied byte array contains only ");
                sb.append(bArr.length);
                sb.append(" bytes, but offset, and length would require ");
                sb.append(i3 - 1);
                throw new IllegalArgumentException(sb.toString());
            }
            throw new IllegalArgumentException("Illegal length: " + i2);
        }
        throw new IllegalArgumentException("Illegal offset: " + i);
    }
}
