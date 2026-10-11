package onyx.org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import onyx.org.apache.commons.io.ByteOrderMark;
import onyx.org.apache.commons.io.IOUtils;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.input.BOMInputStream;

/* loaded from: classes11.dex */
public class BOMInputStream extends ProxyInputStream {

    /* renamed from: m */
    public static final Comparator<ByteOrderMark> f104264m = Comparator.comparing(new Function() { // from class: com.sunia.HTREnginev2.yl
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return Integer.valueOf(((ByteOrderMark) obj).length());
        }
    }).reversed();

    /* renamed from: e */
    public final List<ByteOrderMark> f104265e;

    /* renamed from: f */
    public ByteOrderMark f104266f;

    /* renamed from: g */
    public int f104267g;

    /* renamed from: h */
    public int f104268h;

    /* renamed from: i */
    public int[] f104269i;

    /* renamed from: j */
    public final boolean f104270j;

    /* renamed from: k */
    public boolean f104271k;

    /* renamed from: l */
    public int f104272l;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<BOMInputStream, Builder> {

        /* renamed from: n */
        public static final ByteOrderMark[] f104273n = {ByteOrderMark.UTF_8};

        /* renamed from: l */
        public ByteOrderMark[] f104274l = f104273n;

        /* renamed from: m */
        public boolean f104275m;

        /* renamed from: h */
        public static ByteOrderMark m65401h() {
            return f104273n[0];
        }

        public Builder setByteOrderMarks(ByteOrderMark... byteOrderMarkArr) {
            this.f104274l = byteOrderMarkArr != null ? (ByteOrderMark[]) byteOrderMarkArr.clone() : f104273n;
            return this;
        }

        public Builder setInclude(boolean z) {
            this.f104275m = z;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public BOMInputStream get() throws IOException {
            return new BOMInputStream(getInputStream(), this.f104275m, this.f104274l);
        }
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream) {
        this(inputStream, false, Builder.f104273n);
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: H */
    public final int m65397H() throws IOException {
        getBOM();
        int i = this.f104267g;
        if (i >= this.f104268h) {
            return -1;
        }
        int[] iArr = this.f104269i;
        this.f104267g = i + 1;
        return iArr[i];
    }

    public ByteOrderMark getBOM() throws IOException {
        if (this.f104269i == null) {
            this.f104268h = 0;
            this.f104269i = new int[this.f104265e.get(0).length()];
            int i = 0;
            while (true) {
                int[] iArr = this.f104269i;
                if (i >= iArr.length) {
                    break;
                }
                iArr[i] = ((FilterInputStream) this).in.read();
                this.f104268h++;
                if (this.f104269i[i] < 0) {
                    break;
                }
                i++;
            }
            ByteOrderMark m65398j = m65398j();
            this.f104266f = m65398j;
            if (m65398j != null && !this.f104270j) {
                if (m65398j.length() < this.f104269i.length) {
                    this.f104267g = this.f104266f.length();
                } else {
                    this.f104268h = 0;
                }
            }
        }
        return this.f104266f;
    }

    public String getBOMCharsetName() throws IOException {
        getBOM();
        ByteOrderMark byteOrderMark = this.f104266f;
        if (byteOrderMark == null) {
            return null;
        }
        return byteOrderMark.getCharsetName();
    }

    public boolean hasBOM() throws IOException {
        return getBOM() != null;
    }

    /* renamed from: j */
    public final ByteOrderMark m65398j() {
        return this.f104265e.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.zl
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m65399w;
                m65399w = BOMInputStream.this.m65399w((ByteOrderMark) obj);
                return m65399w;
            }
        }).findFirst().orElse(null);
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.f104272l = this.f104267g;
        this.f104271k = this.f104269i == null;
        ((FilterInputStream) this).in.mark(i);
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int m65397H = m65397H();
        return m65397H >= 0 ? m65397H : ((FilterInputStream) this).in.read();
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f104267g = this.f104272l;
        if (this.f104271k) {
            this.f104269i = null;
        }
        ((FilterInputStream) this).in.reset();
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2;
        int i = 0;
        while (true) {
            j2 = i;
            if (j <= j2 || m65397H() < 0) {
                break;
            }
            i++;
        }
        return ((FilterInputStream) this).in.skip(j - j2) + j2;
    }

    /* renamed from: w */
    public final boolean m65399w(ByteOrderMark byteOrderMark) {
        for (int i = 0; i < byteOrderMark.length(); i++) {
            if (byteOrderMark.get(i) != this.f104269i[i]) {
                return false;
            }
        }
        return true;
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream, boolean z) {
        this(inputStream, z, Builder.f104273n);
    }

    public boolean hasBOM(ByteOrderMark byteOrderMark) throws IOException {
        if (this.f104265e.contains(byteOrderMark)) {
            return Objects.equals(getBOM(), byteOrderMark);
        }
        throw new IllegalArgumentException("Stream not configured to detect " + byteOrderMark);
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream, boolean z, ByteOrderMark... byteOrderMarkArr) {
        super(inputStream);
        if (IOUtils.length(byteOrderMarkArr) != 0) {
            this.f104270j = z;
            List<ByteOrderMark> asList = Arrays.asList(byteOrderMarkArr);
            asList.sort(f104264m);
            this.f104265e = asList;
            return;
        }
        throw new IllegalArgumentException("No BOMs specified");
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        int i4 = 0;
        while (i2 > 0 && i3 >= 0) {
            i3 = m65397H();
            if (i3 >= 0) {
                bArr[i] = (byte) (i3 & 255);
                i2--;
                i4++;
                i++;
            }
        }
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read >= 0) {
            return i4 + read;
        }
        if (i4 > 0) {
            return i4;
        }
        return -1;
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream, ByteOrderMark... byteOrderMarkArr) {
        this(inputStream, false, byteOrderMarkArr);
    }
}
