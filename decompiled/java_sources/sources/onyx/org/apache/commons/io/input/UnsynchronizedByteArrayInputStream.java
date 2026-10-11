package onyx.org.apache.commons.io.input;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public class UnsynchronizedByteArrayInputStream extends InputStream {
    public static final int END_OF_STREAM = -1;

    /* renamed from: e */
    public final byte[] f104432e;

    /* renamed from: f */
    public final int f104433f;

    /* renamed from: g */
    public int f104434g;

    /* renamed from: h */
    public int f104435h;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<UnsynchronizedByteArrayInputStream, Builder> {

        /* renamed from: l */
        public int f104436l;

        /* renamed from: m */
        public int f104437m;

        public Builder setLength(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("length cannot be negative");
            }
            this.f104437m = i;
            return this;
        }

        public Builder setOffset(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("offset cannot be negative");
            }
            this.f104436l = i;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public UnsynchronizedByteArrayInputStream get() throws IOException {
            return new UnsynchronizedByteArrayInputStream(checkOrigin().getByteArray(), this.f104436l, this.f104437m);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOriginSupplier
        public Builder setByteArray(byte[] bArr) {
            Objects.requireNonNull(bArr, "origin");
            this.f104437m = bArr.length;
            return (Builder) super.setByteArray(bArr);
        }
    }

    @Deprecated
    public UnsynchronizedByteArrayInputStream(byte[] bArr) {
        this(bArr, bArr.length, 0, 0);
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: f */
    public static int m65570f(byte[] bArr, int i) {
        m65571j(i, "defaultValue");
        return Math.min(i, bArr.length > 0 ? bArr.length : i);
    }

    /* renamed from: j */
    public static int m65571j(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " cannot be negative");
    }

    @Override // java.io.InputStream
    public int available() {
        int i = this.f104434g;
        int i2 = this.f104433f;
        if (i < i2) {
            return i2 - i;
        }
        return 0;
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f104435h = this.f104434g;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        int i = this.f104434g;
        if (i >= this.f104433f) {
            return -1;
        }
        byte[] bArr = this.f104432e;
        this.f104434g = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.f104434g = this.f104435h;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Skipping backward is not supported");
        }
        int i = this.f104433f;
        int i2 = this.f104434g;
        long j2 = i - i2;
        if (j < j2) {
            j2 = j;
        }
        this.f104434g = Math.addExact(i2, Math.toIntExact(j));
        return j2;
    }

    @Deprecated
    public UnsynchronizedByteArrayInputStream(byte[] bArr, int i) {
        this(bArr, bArr.length, Math.min(m65571j(i, TypedValues.CycleType.S_WAVE_OFFSET), m65570f(bArr, i)), m65570f(bArr, i));
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        Objects.requireNonNull(bArr, "dest");
        return read(bArr, 0, bArr.length);
    }

    @Deprecated
    public UnsynchronizedByteArrayInputStream(byte[] bArr, int i, int i2) {
        m65571j(i, TypedValues.CycleType.S_WAVE_OFFSET);
        m65571j(i2, "length");
        Objects.requireNonNull(bArr, "data");
        this.f104432e = bArr;
        this.f104433f = Math.min(m65570f(bArr, i) + i2, bArr.length);
        this.f104434g = m65570f(bArr, i);
        this.f104435h = m65570f(bArr, i);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "dest");
        if (i >= 0 && i2 >= 0 && i + i2 <= bArr.length) {
            int i3 = this.f104434g;
            int i4 = this.f104433f;
            if (i3 >= i4) {
                return -1;
            }
            int i5 = i4 - i3;
            if (i2 >= i5) {
                i2 = i5;
            }
            if (i2 <= 0) {
                return 0;
            }
            System.arraycopy(this.f104432e, i3, bArr, i, i2);
            this.f104434g += i2;
            return i2;
        }
        throw new IndexOutOfBoundsException();
    }

    public UnsynchronizedByteArrayInputStream(byte[] bArr, int i, int i2, int i3) {
        Objects.requireNonNull(bArr, "data");
        this.f104432e = bArr;
        this.f104433f = i;
        this.f104434g = i2;
        this.f104435h = i3;
    }
}
