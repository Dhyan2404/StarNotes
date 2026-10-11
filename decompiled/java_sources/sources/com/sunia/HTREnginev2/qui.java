package com.sunia.HTREnginev2;

import com.twelvemonkeys.io.enc.DecodeException;
import com.twelvemonkeys.io.enc.Decoder;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public abstract class qui implements Decoder {

    /* renamed from: k */
    public static final int f82441k = 256;

    /* renamed from: l */
    public static final int f82442l = 257;

    /* renamed from: m */
    public static final int f82443m = 9;

    /* renamed from: n */
    public static final int f82444n = 12;

    /* renamed from: o */
    public static final int f82445o = 4096;

    /* renamed from: a */
    public final C14322c[] f82446a;

    /* renamed from: b */
    public int f82447b;

    /* renamed from: c */
    public int f82448c;

    /* renamed from: d */
    public int f82449d = 256;

    /* renamed from: e */
    public int f82450e;

    /* renamed from: f */
    public int f82451f;

    /* renamed from: g */
    public int f82452g;

    /* renamed from: h */
    public boolean f82453h;

    /* renamed from: i */
    public int f82454i;

    /* renamed from: j */
    public int f82455j;

    /* renamed from: com.sunia.HTREnginev2.qui$a */
    /* loaded from: classes10.dex */
    public static final class C14320a extends qui {
        public C14320a() {
            super(5120);
        }

        @Override // com.sunia.HTREnginev2.qui
        /* renamed from: d */
        public final int mo56770d(InputStream inputStream) throws IOException {
            if (this.f82453h) {
                return 257;
            }
            int read = inputStream.read();
            if (read < 0) {
                this.f82453h = true;
                return 257;
            }
            int i = this.f82454i;
            int i2 = this.f82455j;
            this.f82454i = (read << i2) | i;
            int i3 = i2 + 8;
            this.f82455j = i3;
            if (i3 < this.f82448c) {
                int read2 = inputStream.read();
                if (read2 < 0) {
                    this.f82453h = true;
                    return 257;
                }
                int i4 = this.f82454i;
                int i5 = this.f82455j;
                this.f82454i = (read2 << i5) | i4;
                this.f82455j = i5 + 8;
            }
            int i6 = this.f82454i;
            int i7 = this.f82451f & i6;
            int i8 = this.f82448c;
            this.f82454i = i6 >> i8;
            this.f82455j -= i8;
            return i7;
        }

        @Override // com.sunia.HTREnginev2.qui
        /* renamed from: h */
        public int mo56773h() {
            return this.f82451f;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.qui$b */
    /* loaded from: classes10.dex */
    public static final class C14321b extends qui {
        public C14321b() {
            super(4096);
        }

        @Override // com.sunia.HTREnginev2.qui
        /* renamed from: d */
        public final int mo56770d(InputStream inputStream) throws IOException {
            if (this.f82453h) {
                return 257;
            }
            int read = inputStream.read();
            if (read < 0) {
                this.f82453h = true;
                return 257;
            }
            this.f82454i = read | (this.f82454i << 8);
            int i = this.f82455j + 8;
            this.f82455j = i;
            if (i < this.f82448c) {
                int read2 = inputStream.read();
                if (read2 < 0) {
                    this.f82453h = true;
                    return 257;
                }
                this.f82454i = read2 | (this.f82454i << 8);
                this.f82455j += 8;
            }
            int i2 = this.f82454i;
            int i3 = this.f82455j;
            int i4 = this.f82448c;
            int i5 = (i2 >> (i3 - i4)) & this.f82451f;
            this.f82455j = i3 - i4;
            return i5;
        }

        @Override // com.sunia.HTREnginev2.qui
        /* renamed from: h */
        public int mo56773h() {
            return this.f82451f - 1;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.qui$c */
    /* loaded from: classes10.dex */
    public static final class C14322c implements Comparable<C14322c> {

        /* renamed from: i */
        public static final C14322c f82456i = new C14322c((byte) 0, (byte) 0, 0, null);

        /* renamed from: e */
        public final C14322c f82457e;

        /* renamed from: f */
        public final int f82458f;

        /* renamed from: g */
        public final byte f82459g;

        /* renamed from: h */
        public final byte f82460h;

        public C14322c(byte b) {
            this(b, b, 1, null);
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C14322c c14322c) {
            if (c14322c == this) {
                return 0;
            }
            int i = this.f82458f;
            int i2 = c14322c.f82458f;
            if (i != i2) {
                return i2 - i;
            }
            byte b = this.f82460h;
            byte b2 = c14322c.f82460h;
            if (b != b2) {
                return b2 - b;
            }
            for (int i3 = i - 1; i3 > 0; i3--) {
                byte b3 = this.f82459g;
                byte b4 = c14322c.f82459g;
                if (b3 != b4) {
                    return b4 - b3;
                }
                this = this.f82457e;
                c14322c = c14322c.f82457e;
            }
            return 0;
        }

        /* renamed from: b */
        public final C14322c m56775b(byte b) {
            return this == f82456i ? new C14322c(b) : new C14322c(b, this.f82460h, this.f82458f + 1, this);
        }

        /* renamed from: c */
        public final void m56776c(ByteBuffer byteBuffer) {
            int i = this.f82458f;
            if (i == 0) {
                return;
            }
            if (i == 1) {
                byteBuffer.put(this.f82459g);
                return;
            }
            int position = byteBuffer.position();
            C14322c c14322c = this;
            for (int i2 = this.f82458f - 1; i2 >= 0; i2--) {
                byteBuffer.put(position + i2, c14322c.f82459g);
                c14322c = c14322c.f82457e;
            }
            byteBuffer.position(position + this.f82458f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C14322c.class != obj.getClass()) {
                return false;
            }
            C14322c c14322c = (C14322c) obj;
            return this.f82460h == c14322c.f82460h && this.f82458f == c14322c.f82458f && this.f82459g == c14322c.f82459g && this.f82457e == c14322c.f82457e;
        }

        public int hashCode() {
            C14322c c14322c = this.f82457e;
            return ((((((c14322c != null ? c14322c.hashCode() : 0) * 31) + this.f82458f) * 31) + this.f82459g) * 31) + this.f82460h;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ZLWString[");
            int length = sb.length();
            for (int i = this.f82458f - 1; i >= 0; i--) {
                sb.insert(length, String.format("%2x", Byte.valueOf(this.f82459g)));
                this = this.f82457e;
            }
            sb.append(IteratorUtils.f104924b);
            return sb.toString();
        }

        public C14322c(byte b, byte b2, int i, C14322c c14322c) {
            this.f82459g = b;
            this.f82460h = b2;
            this.f82458f = i;
            this.f82457e = c14322c;
        }
    }

    public qui(int i) {
        this.f82446a = new C14322c[i];
        for (int i2 = 0; i2 < 256; i2++) {
            this.f82446a[i2] = new C14322c((byte) i2);
        }
        m56771e();
    }

    /* renamed from: b */
    public static int m56766b(int i) {
        return (1 << i) - 1;
    }

    /* renamed from: c */
    public static Decoder m56767c(boolean z) {
        return z ? new C14320a() : new C14321b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0010, code lost:
    
        if ((r1 & 1) == 1) goto L9;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m56768g(java.io.InputStream r2) throws java.io.IOException {
        /*
            r0 = 2
            r2.mark(r0)
            int r0 = r2.read()     // Catch: java.lang.Throwable -> L18
            int r1 = r2.read()     // Catch: java.lang.Throwable -> L18
            if (r0 != 0) goto L13
            r0 = 1
            r1 = r1 & r0
            if (r1 != r0) goto L13
            goto L14
        L13:
            r0 = 0
        L14:
            r2.reset()
            return r0
        L18:
            r0 = move-exception
            r2.reset()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.qui.m56768g(java.io.InputStream):boolean");
    }

    /* renamed from: a */
    public final void m56769a(C14322c c14322c) throws IOException {
        int i = this.f82447b;
        C14322c[] c14322cArr = this.f82446a;
        if (i > c14322cArr.length) {
            throw new DecodeException(String.format("TIFF LZW with more than %d bits per code encountered (table overflow)", 12));
        }
        int i2 = i + 1;
        this.f82447b = i2;
        c14322cArr[i] = c14322c;
        if (i2 > this.f82450e) {
            int i3 = this.f82448c + 1;
            this.f82448c = i3;
            if (i3 > 12) {
                this.f82448c = 12;
            }
            this.f82451f = m56766b(this.f82448c);
            this.f82450e = mo56773h();
        }
        int i4 = c14322c.f82458f;
        if (i4 > this.f82452g) {
            this.f82452g = i4;
        }
    }

    /* renamed from: d */
    public abstract int mo56770d(InputStream inputStream) throws IOException;

    @Override // com.twelvemonkeys.io.enc.Decoder
    public int decode(InputStream inputStream, ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new NullPointerException("buffer == null");
        }
        do {
            int mo56770d = mo56770d(inputStream);
            if (mo56770d == 257) {
                break;
            }
            if (mo56770d == 256) {
                m56771e();
                mo56770d = mo56770d(inputStream);
                if (mo56770d == 257) {
                    break;
                }
                C14322c c14322c = this.f82446a[mo56770d];
                if (c14322c == null) {
                    throw new DecodeException(String.format("Corrupted TIFF LZW: code %d (table size: %d)", Integer.valueOf(mo56770d), Integer.valueOf(this.f82447b)));
                }
                c14322c.m56776c(byteBuffer);
            } else {
                if (this.f82446a[this.f82449d] == null) {
                    throw new DecodeException(String.format("Corrupted TIFF LZW: code %d (table size: %d)", Integer.valueOf(this.f82449d), Integer.valueOf(this.f82447b)));
                }
                if (m56772f(mo56770d)) {
                    this.f82446a[mo56770d].m56776c(byteBuffer);
                    C14322c[] c14322cArr = this.f82446a;
                    m56769a(c14322cArr[this.f82449d].m56775b(c14322cArr[mo56770d].f82460h));
                } else {
                    C14322c c14322c2 = this.f82446a[this.f82449d];
                    C14322c m56775b = c14322c2.m56775b(c14322c2.f82460h);
                    m56775b.m56776c(byteBuffer);
                    m56769a(m56775b);
                }
            }
            this.f82449d = mo56770d;
        } while (byteBuffer.remaining() >= this.f82452g + 1);
        return byteBuffer.position();
    }

    /* renamed from: e */
    public final void m56771e() {
        this.f82447b = 258;
        this.f82448c = 9;
        this.f82451f = m56766b(9);
        this.f82450e = mo56773h();
        this.f82452g = 1;
    }

    /* renamed from: f */
    public final boolean m56772f(int i) {
        return i < this.f82447b;
    }

    /* renamed from: h */
    public abstract int mo56773h();
}
