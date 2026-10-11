package net.p110sf.saxon.str;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes11.dex */
public final class LargeTextBuffer {

    /* renamed from: d */
    public static final int f101666d = 16;

    /* renamed from: e */
    public static final int f101667e = 65536;

    /* renamed from: f */
    public static final int f101668f = 65535;

    /* renamed from: g */
    public static final /* synthetic */ boolean f101669g = false;

    /* renamed from: a */
    public final List<InterfaceC18510d> f101670a = new ArrayList(4);

    /* renamed from: b */
    public InterfaceC18510d f101671b = new C18509c(new byte[0]);

    /* renamed from: c */
    public int f101672c = 0;

    /* renamed from: net.sf.saxon.str.LargeTextBuffer$a */
    /* loaded from: classes11.dex */
    public static class C18507a implements InterfaceC18510d {

        /* renamed from: b */
        public static final /* synthetic */ boolean f101673b = false;

        /* renamed from: a */
        public char[] f101674a;

        public C18507a(char[] cArr) {
            this.f101674a = cArr;
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        /* renamed from: a */
        public UnicodeString mo63888a() {
            return new Twine16(this.f101674a);
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        /* renamed from: b */
        public InterfaceC18510d mo63889b(int i, int i2, int i3) {
            if (i3 > 16) {
                byte[] bArr = new byte[i2 * 3];
                StringTool.copy16to24(this.f101674a, 0, bArr, 0, i);
                return new C18508b(bArr);
            }
            char[] cArr = this.f101674a;
            if (i2 > cArr.length) {
                this.f101674a = Arrays.copyOf(cArr, Math.max(i2, Math.min(i * 2, 65536)));
            }
            return this;
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        public int getWidth() {
            return 16;
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        public UnicodeString substring(int i, int i2) {
            return new Slice16(this.f101674a, i, i2);
        }
    }

    /* renamed from: net.sf.saxon.str.LargeTextBuffer$b */
    /* loaded from: classes11.dex */
    public static class C18508b implements InterfaceC18510d {

        /* renamed from: b */
        public static final /* synthetic */ boolean f101675b = false;

        /* renamed from: a */
        public byte[] f101676a;

        public C18508b(byte[] bArr) {
            this.f101676a = bArr;
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        /* renamed from: a */
        public UnicodeString mo63888a() {
            return new Twine24(this.f101676a);
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        /* renamed from: b */
        public InterfaceC18510d mo63889b(int i, int i2, int i3) {
            int i4 = i2 * 3;
            byte[] bArr = this.f101676a;
            if (i4 > bArr.length) {
                this.f101676a = Arrays.copyOf(bArr, Math.max(i4, Math.min(i * 6, 196608)));
            }
            return this;
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        public int getWidth() {
            return 24;
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        public UnicodeString substring(int i, int i2) {
            return new Slice24(this.f101676a, i, i2);
        }
    }

    /* renamed from: net.sf.saxon.str.LargeTextBuffer$c */
    /* loaded from: classes11.dex */
    public static class C18509c implements InterfaceC18510d {

        /* renamed from: b */
        public static final /* synthetic */ boolean f101677b = false;

        /* renamed from: a */
        public byte[] f101678a;

        public C18509c(byte[] bArr) {
            this.f101678a = bArr;
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        /* renamed from: a */
        public UnicodeString mo63888a() {
            return new Twine8(this.f101678a);
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        /* renamed from: b */
        public InterfaceC18510d mo63889b(int i, int i2, int i3) {
            if (i3 <= 8) {
                byte[] bArr = this.f101678a;
                if (i2 > bArr.length) {
                    this.f101678a = Arrays.copyOf(bArr, Math.max(i2, Math.min(i * 2, 65536)));
                }
                return this;
            }
            if (i3 == 16) {
                char[] cArr = new char[i2];
                StringTool.copy8to16(this.f101678a, 0, cArr, 0, i);
                return new C18507a(cArr);
            }
            byte[] bArr2 = new byte[i2 * 3];
            StringTool.copy8to24(this.f101678a, 0, bArr2, 0, i);
            return new C18508b(bArr2);
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        public int getWidth() {
            return 8;
        }

        @Override // net.p110sf.saxon.str.LargeTextBuffer.InterfaceC18510d
        public UnicodeString substring(int i, int i2) {
            return new Slice8(this.f101678a, i, i2);
        }
    }

    /* renamed from: net.sf.saxon.str.LargeTextBuffer$d */
    /* loaded from: classes11.dex */
    public interface InterfaceC18510d {
        /* renamed from: a */
        UnicodeString mo63888a();

        /* renamed from: b */
        InterfaceC18510d mo63889b(int i, int i2, int i3);

        int getWidth();

        UnicodeString substring(int i, int i2);
    }

    /* renamed from: a */
    public final void m63884a(InterfaceC18510d interfaceC18510d) {
        this.f101670a.add(interfaceC18510d);
    }

    public void appendUnicodeString(UnicodeString unicodeString) {
        int i = 65536 - this.f101672c;
        long length = unicodeString.length();
        long j = i;
        if (length < j) {
            m63885b(unicodeString);
            return;
        }
        m63885b(unicodeString.substring(0L, j));
        long j2 = length - j;
        long j3 = j + 0;
        while (j2 > 65536) {
            long j4 = j3 + 65536;
            m63885b(unicodeString.substring(j3, j4));
            j2 -= 65536;
            j3 = j4;
        }
        if (j2 > 0) {
            m63885b(unicodeString.substring(j3, j2 + j3));
        }
    }

    /* renamed from: b */
    public final void m63885b(UnicodeString unicodeString) {
        InterfaceC18510d interfaceC18510d = this.f101671b;
        int i = this.f101672c;
        InterfaceC18510d mo63889b = interfaceC18510d.mo63889b(i, unicodeString.length32() + i, unicodeString.getWidth());
        this.f101671b = mo63889b;
        if (mo63889b instanceof C18509c) {
            unicodeString.mo63880c(((C18509c) mo63889b).f101678a, this.f101672c);
        } else if (mo63889b instanceof C18507a) {
            unicodeString.mo63878a(((C18507a) mo63889b).f101674a, this.f101672c);
        } else {
            unicodeString.mo63879b(((C18508b) mo63889b).f101676a, this.f101672c * 3);
        }
        int length32 = this.f101672c + unicodeString.length32();
        this.f101672c = length32;
        if (length32 == 65536) {
            m63884a(this.f101671b);
            this.f101671b = new C18509c(new byte[1024]);
            this.f101672c = 0;
        }
    }

    /* renamed from: c */
    public final InterfaceC18510d m63886c(int i) {
        return i == this.f101670a.size() ? this.f101671b : this.f101670a.get(i);
    }

    public void close() {
        InterfaceC18510d interfaceC18510d = this.f101671b;
        if (interfaceC18510d != null && this.f101672c > 0) {
            m63884a(interfaceC18510d);
        }
        this.f101671b = null;
    }

    /* renamed from: d */
    public final void m63887d() {
        StringBuilder sb = new StringBuilder();
        Iterator<InterfaceC18510d> it2 = this.f101670a.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().mo63888a().length());
            sb.append(", ");
        }
        sb.append(this.f101672c);
        System.err.println(sb);
    }

    public int length() {
        return (this.f101670a.size() * 65536) + (this.f101671b == null ? 0 : this.f101672c);
    }

    public void setLength(int i) {
        if (i < length()) {
            int size = this.f101670a.size();
            if (i <= 65536 * size) {
                int i2 = size - 1;
                this.f101671b = this.f101670a.get(i2);
                this.f101670a.remove(i2);
            }
            this.f101672c = i & 65535;
        }
    }

    public UnicodeString substring(int i, int i2) {
        int i3 = i >> 16;
        int i4 = (i2 - 1) >> 16;
        int i5 = i2 & 65535;
        if (i5 == 0) {
            i5 = 65536;
        }
        if (i3 == i4) {
            try {
                return m63886c(i3).substring(i & 65535, i5);
            } catch (ArrayIndexOutOfBoundsException e) {
                e.printStackTrace();
                throw e;
            }
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        unicodeBuilder.accept(m63886c(i3).substring(i & 65535, 65536));
        for (int i6 = i3 + 1; i6 < i4; i6++) {
            unicodeBuilder.accept(m63886c(i6).mo63888a());
        }
        unicodeBuilder.accept(m63886c(i4).substring(0, i5));
        return unicodeBuilder.toUnicodeString();
    }
}
