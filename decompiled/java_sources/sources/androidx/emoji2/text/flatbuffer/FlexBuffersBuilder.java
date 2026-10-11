package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.FlexBuffers;
import com.fasterxml.jackson.core.base.ParserBase;
import com.sunia.HTREnginev2.ddl;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class FlexBuffersBuilder {
    public static final int BUILDER_FLAG_NONE = 0;
    public static final int BUILDER_FLAG_SHARE_ALL = 7;
    public static final int BUILDER_FLAG_SHARE_KEYS = 1;
    public static final int BUILDER_FLAG_SHARE_KEYS_AND_STRINGS = 3;
    public static final int BUILDER_FLAG_SHARE_KEY_VECTORS = 4;
    public static final int BUILDER_FLAG_SHARE_STRINGS = 2;

    /* renamed from: h */
    public static final int f7092h = 0;

    /* renamed from: i */
    public static final int f7093i = 1;

    /* renamed from: j */
    public static final int f7094j = 2;

    /* renamed from: k */
    public static final int f7095k = 3;

    /* renamed from: l */
    public static final /* synthetic */ boolean f7096l = false;

    /* renamed from: a */
    public final ddl f7097a;

    /* renamed from: b */
    public final ArrayList<C1049b> f7098b;

    /* renamed from: c */
    public final HashMap<String, Integer> f7099c;

    /* renamed from: d */
    public final HashMap<String, Integer> f7100d;

    /* renamed from: e */
    public final int f7101e;

    /* renamed from: f */
    public boolean f7102f;

    /* renamed from: g */
    public Comparator<C1049b> f7103g;

    /* renamed from: androidx.emoji2.text.flatbuffer.FlexBuffersBuilder$a */
    /* loaded from: classes3.dex */
    public class C1048a implements Comparator<C1049b> {
        public C1048a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C1049b c1049b, C1049b c1049b2) {
            byte b;
            byte b2;
            int i = c1049b.f7110e;
            int i2 = c1049b2.f7110e;
            do {
                b = FlexBuffersBuilder.this.f7097a.get(i);
                b2 = FlexBuffersBuilder.this.f7097a.get(i2);
                if (b == 0) {
                    return b - b2;
                }
                i++;
                i2++;
            } while (b == b2);
            return b - b2;
        }
    }

    public FlexBuffersBuilder(int i) {
        this(new ArrayReadWriteBuf(i), 1);
    }

    /* renamed from: h */
    public static int m4323h(long j) {
        if (j <= FlexBuffers.C1047c.m4319a((byte) -1)) {
            return 0;
        }
        if (j <= FlexBuffers.C1047c.m4321c((short) -1)) {
            return 1;
        }
        return j <= FlexBuffers.C1047c.m4320b(-1) ? 2 : 3;
    }

    /* renamed from: b */
    public final int m4324b(int i) {
        int i2 = 1 << i;
        int m4352q = C1049b.m4352q(this.f7097a.writePosition(), i2);
        while (true) {
            int i3 = m4352q - 1;
            if (m4352q == 0) {
                return i2;
            }
            this.f7097a.put((byte) 0);
            m4352q = i3;
        }
    }

    /* renamed from: c */
    public final C1049b m4325c(int i, int i2) {
        long j = i2;
        int max = Math.max(0, m4323h(j));
        int i3 = i;
        while (i3 < this.f7098b.size()) {
            i3++;
            max = Math.max(max, C1049b.m4344i(4, 0, this.f7098b.get(i3).f7110e, this.f7097a.writePosition(), i3));
        }
        int m4324b = m4324b(max);
        m4333l(j, m4324b);
        int writePosition = this.f7097a.writePosition();
        while (i < this.f7098b.size()) {
            int i4 = this.f7098b.get(i).f7110e;
            m4334m(this.f7098b.get(i).f7110e, m4324b);
            i++;
        }
        return new C1049b(-1, FlexBuffers.m4312o(4, 0), max, writePosition);
    }

    /* renamed from: d */
    public final C1049b m4326d(int i, int i2, int i3, boolean z, boolean z2, C1049b c1049b) {
        int i4;
        int i5;
        int i6 = i3;
        long j = i6;
        int max = Math.max(0, m4323h(j));
        if (c1049b != null) {
            max = Math.max(max, c1049b.m4357h(this.f7097a.writePosition(), 0));
            i4 = 3;
        } else {
            i4 = 1;
        }
        int i7 = 4;
        int i8 = max;
        for (int i9 = i2; i9 < this.f7098b.size(); i9++) {
            i8 = Math.max(i8, this.f7098b.get(i9).m4357h(this.f7097a.writePosition(), i9 + i4));
            if (z && i9 == i2) {
                i7 = this.f7098b.get(i9).f7106a;
                if (!FlexBuffers.m4307j(i7)) {
                    throw new FlexBuffers.FlexBufferException("TypedVector does not support this element type");
                }
            }
        }
        int i10 = i2;
        int m4324b = m4324b(i8);
        if (c1049b != null) {
            m4334m(c1049b.f7109d, m4324b);
            m4333l(1 << c1049b.f7107b, m4324b);
        }
        if (!z2) {
            m4333l(j, m4324b);
        }
        int writePosition = this.f7097a.writePosition();
        for (int i11 = i10; i11 < this.f7098b.size(); i11++) {
            m4330i(this.f7098b.get(i11), m4324b);
        }
        if (!z) {
            while (i10 < this.f7098b.size()) {
                this.f7097a.put(this.f7098b.get(i10).m4359s(i8));
                i10++;
            }
        }
        if (c1049b != null) {
            i5 = 9;
        } else if (z) {
            if (!z2) {
                i6 = 0;
            }
            i5 = FlexBuffers.m4312o(i7, i6);
        } else {
            i5 = 10;
        }
        return new C1049b(i, i5, i8, writePosition);
    }

    /* renamed from: e */
    public final int m4327e(String str) {
        if (str == null) {
            return -1;
        }
        int writePosition = this.f7097a.writePosition();
        if ((this.f7101e & 1) == 0) {
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            this.f7097a.put(bytes, 0, bytes.length);
            this.f7097a.put((byte) 0);
            this.f7099c.put(str, Integer.valueOf(writePosition));
            return writePosition;
        }
        Integer num = this.f7099c.get(str);
        if (num != null) {
            return num.intValue();
        }
        byte[] bytes2 = str.getBytes(StandardCharsets.UTF_8);
        this.f7097a.put(bytes2, 0, bytes2.length);
        this.f7097a.put((byte) 0);
        this.f7099c.put(str, Integer.valueOf(writePosition));
        return writePosition;
    }

    public int endMap(String str, int i) {
        int m4327e = m4327e(str);
        ArrayList<C1049b> arrayList = this.f7098b;
        Collections.sort(arrayList.subList(i, arrayList.size()), this.f7103g);
        C1049b m4326d = m4326d(m4327e, i, this.f7098b.size() - i, false, false, m4325c(i, this.f7098b.size() - i));
        while (this.f7098b.size() > i) {
            this.f7098b.remove(r0.size() - 1);
        }
        this.f7098b.add(m4326d);
        return (int) m4326d.f7109d;
    }

    public int endVector(String str, int i, boolean z, boolean z2) {
        C1049b m4326d = m4326d(m4327e(str), i, this.f7098b.size() - i, z, z2, null);
        while (this.f7098b.size() > i) {
            this.f7098b.remove(r10.size() - 1);
        }
        this.f7098b.add(m4326d);
        return (int) m4326d.f7109d;
    }

    /* renamed from: f */
    public final void m4328f(String str, long j) {
        int m4327e = m4327e(str);
        int m4323h = m4323h(j);
        this.f7098b.add(m4323h == 0 ? C1049b.m4356x(m4327e, (int) j) : m4323h == 1 ? C1049b.m4353u(m4327e, (int) j) : m4323h == 2 ? C1049b.m4354v(m4327e, (int) j) : C1049b.m4355w(m4327e, j));
    }

    public ByteBuffer finish() {
        int m4324b = m4324b(this.f7098b.get(0).m4357h(this.f7097a.writePosition(), 0));
        m4330i(this.f7098b.get(0), m4324b);
        this.f7097a.put(this.f7098b.get(0).m4358r());
        this.f7097a.put((byte) m4324b);
        this.f7102f = true;
        return ByteBuffer.wrap(this.f7097a.data(), 0, this.f7097a.writePosition());
    }

    /* renamed from: g */
    public final void m4329g(String str, long j) {
        this.f7098b.add(C1049b.m4355w(m4327e(str), j));
    }

    public ddl getBuffer() {
        return this.f7097a;
    }

    /* renamed from: i */
    public final void m4330i(C1049b c1049b, int i) {
        int i2 = c1049b.f7106a;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            if (i2 == 3) {
                m4332k(c1049b.f7108c, i);
                return;
            } else if (i2 != 26) {
                m4334m(c1049b.f7109d, i);
                return;
            }
        }
        m4333l(c1049b.f7109d, i);
    }

    /* renamed from: j */
    public final C1049b m4331j(int i, byte[] bArr, int i2, boolean z) {
        int m4323h = m4323h(bArr.length);
        m4333l(bArr.length, m4324b(m4323h));
        int writePosition = this.f7097a.writePosition();
        this.f7097a.put(bArr, 0, bArr.length);
        if (z) {
            this.f7097a.put((byte) 0);
        }
        return C1049b.m4342f(i, writePosition, i2, m4323h);
    }

    /* renamed from: k */
    public final void m4332k(double d, int i) {
        if (i == 4) {
            this.f7097a.putFloat((float) d);
        } else if (i == 8) {
            this.f7097a.putDouble(d);
        }
    }

    /* renamed from: l */
    public final void m4333l(long j, int i) {
        if (i == 1) {
            this.f7097a.put((byte) j);
            return;
        }
        if (i == 2) {
            this.f7097a.putShort((short) j);
        } else if (i == 4) {
            this.f7097a.putInt((int) j);
        } else {
            if (i != 8) {
                return;
            }
            this.f7097a.putLong(j);
        }
    }

    /* renamed from: m */
    public final void m4334m(long j, int i) {
        m4333l((int) (this.f7097a.writePosition() - j), i);
    }

    /* renamed from: n */
    public final C1049b m4335n(int i, String str) {
        return m4331j(i, str.getBytes(StandardCharsets.UTF_8), 5, true);
    }

    public int putBlob(byte[] bArr) {
        return putBlob(null, bArr);
    }

    public void putBoolean(boolean z) {
        putBoolean(null, z);
    }

    public void putFloat(float f) {
        putFloat((String) null, f);
    }

    public void putInt(int i) {
        putInt((String) null, i);
    }

    public int putString(String str) {
        return putString(null, str);
    }

    public void putUInt(int i) {
        m4328f(null, i);
    }

    public void putUInt64(BigInteger bigInteger) {
        m4329g(null, bigInteger.longValue());
    }

    public int startMap() {
        return this.f7098b.size();
    }

    public int startVector() {
        return this.f7098b.size();
    }

    public FlexBuffersBuilder() {
        this(256);
    }

    public int putBlob(String str, byte[] bArr) {
        C1049b m4331j = m4331j(m4327e(str), bArr, 25, false);
        this.f7098b.add(m4331j);
        return (int) m4331j.f7109d;
    }

    public void putBoolean(String str, boolean z) {
        this.f7098b.add(C1049b.m4343g(m4327e(str), z));
    }

    public void putFloat(String str, float f) {
        this.f7098b.add(C1049b.m4345j(m4327e(str), f));
    }

    public void putInt(String str, int i) {
        putInt(str, i);
    }

    public int putString(String str, String str2) {
        int m4327e = m4327e(str);
        if ((this.f7101e & 2) != 0) {
            Integer num = this.f7100d.get(str2);
            if (num == null) {
                C1049b m4335n = m4335n(m4327e, str2);
                this.f7100d.put(str2, Integer.valueOf((int) m4335n.f7109d));
                this.f7098b.add(m4335n);
                return (int) m4335n.f7109d;
            }
            this.f7098b.add(C1049b.m4342f(m4327e, num.intValue(), 5, m4323h(str2.length())));
            return num.intValue();
        }
        C1049b m4335n2 = m4335n(m4327e, str2);
        this.f7098b.add(m4335n2);
        return (int) m4335n2.f7109d;
    }

    public void putUInt(long j) {
        m4328f(null, j);
    }

    @Deprecated
    public FlexBuffersBuilder(ByteBuffer byteBuffer, int i) {
        this(new ArrayReadWriteBuf(byteBuffer.array()), i);
    }

    public void putFloat(double d) {
        putFloat((String) null, d);
    }

    public void putInt(String str, long j) {
        int m4327e = m4327e(str);
        if (-128 <= j && j <= 127) {
            this.f7098b.add(C1049b.m4350o(m4327e, (int) j));
            return;
        }
        if (-32768 <= j && j <= 32767) {
            this.f7098b.add(C1049b.m4347l(m4327e, (int) j));
        } else if (ParserBase.f21225q <= j && j <= 2147483647L) {
            this.f7098b.add(C1049b.m4348m(m4327e, (int) j));
        } else {
            this.f7098b.add(C1049b.m4349n(m4327e, j));
        }
    }

    public FlexBuffersBuilder(ddl ddlVar, int i) {
        this.f7098b = new ArrayList<>();
        this.f7099c = new HashMap<>();
        this.f7100d = new HashMap<>();
        this.f7102f = false;
        this.f7103g = new C1048a();
        this.f7097a = ddlVar;
        this.f7101e = i;
    }

    public void putFloat(String str, double d) {
        this.f7098b.add(C1049b.m4346k(m4327e(str), d));
    }

    /* renamed from: androidx.emoji2.text.flatbuffer.FlexBuffersBuilder$b */
    /* loaded from: classes3.dex */
    public static class C1049b {

        /* renamed from: f */
        public static final /* synthetic */ boolean f7105f = false;

        /* renamed from: a */
        public final int f7106a;

        /* renamed from: b */
        public final int f7107b;

        /* renamed from: c */
        public final double f7108c;

        /* renamed from: d */
        public long f7109d;

        /* renamed from: e */
        public int f7110e;

        public C1049b(int i, int i2, int i3, long j) {
            this.f7110e = i;
            this.f7106a = i2;
            this.f7107b = i3;
            this.f7109d = j;
            this.f7108c = Double.MIN_VALUE;
        }

        /* renamed from: f */
        public static C1049b m4342f(int i, int i2, int i3, int i4) {
            return new C1049b(i, i3, i4, i2);
        }

        /* renamed from: g */
        public static C1049b m4343g(int i, boolean z) {
            return new C1049b(i, 26, 0, z ? 1L : 0L);
        }

        /* renamed from: i */
        public static int m4344i(int i, int i2, long j, int i3, int i4) {
            if (FlexBuffers.m4305h(i)) {
                return i2;
            }
            for (int i5 = 1; i5 <= 32; i5 *= 2) {
                int m4323h = FlexBuffersBuilder.m4323h((int) (((m4352q(i3, i5) + i3) + (i4 * i5)) - j));
                if ((1 << m4323h) == i5) {
                    return m4323h;
                }
            }
            return 3;
        }

        /* renamed from: j */
        public static C1049b m4345j(int i, float f) {
            return new C1049b(i, 3, 2, f);
        }

        /* renamed from: k */
        public static C1049b m4346k(int i, double d) {
            return new C1049b(i, 3, 3, d);
        }

        /* renamed from: l */
        public static C1049b m4347l(int i, int i2) {
            return new C1049b(i, 1, 1, i2);
        }

        /* renamed from: m */
        public static C1049b m4348m(int i, int i2) {
            return new C1049b(i, 1, 2, i2);
        }

        /* renamed from: n */
        public static C1049b m4349n(int i, long j) {
            return new C1049b(i, 1, 3, j);
        }

        /* renamed from: o */
        public static C1049b m4350o(int i, int i2) {
            return new C1049b(i, 1, 0, i2);
        }

        /* renamed from: p */
        public static byte m4351p(int i, int i2) {
            return (byte) (i | (i2 << 2));
        }

        /* renamed from: q */
        public static int m4352q(int i, int i2) {
            return ((~i) + 1) & (i2 - 1);
        }

        /* renamed from: u */
        public static C1049b m4353u(int i, int i2) {
            return new C1049b(i, 2, 1, i2);
        }

        /* renamed from: v */
        public static C1049b m4354v(int i, int i2) {
            return new C1049b(i, 2, 2, i2);
        }

        /* renamed from: w */
        public static C1049b m4355w(int i, long j) {
            return new C1049b(i, 2, 3, j);
        }

        /* renamed from: x */
        public static C1049b m4356x(int i, int i2) {
            return new C1049b(i, 2, 0, i2);
        }

        /* renamed from: h */
        public final int m4357h(int i, int i2) {
            return m4344i(this.f7106a, this.f7107b, this.f7109d, i, i2);
        }

        /* renamed from: r */
        public final byte m4358r() {
            return m4359s(0);
        }

        /* renamed from: s */
        public final byte m4359s(int i) {
            return m4351p(m4360t(i), this.f7106a);
        }

        /* renamed from: t */
        public final int m4360t(int i) {
            return FlexBuffers.m4305h(this.f7106a) ? Math.max(this.f7107b, i) : this.f7107b;
        }

        public C1049b(int i, int i2, int i3, double d) {
            this.f7110e = i;
            this.f7106a = i2;
            this.f7107b = i3;
            this.f7108c = d;
            this.f7109d = Long.MIN_VALUE;
        }
    }

    public void putInt(long j) {
        putInt((String) null, j);
    }

    public FlexBuffersBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, 1);
    }
}
