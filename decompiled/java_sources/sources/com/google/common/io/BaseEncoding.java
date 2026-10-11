package com.google.common.io;

import com.dropbox.core.util.StringUtil;
import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.sunia.HTREnginev2.ynf;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.RoundingMode;
import java.util.Arrays;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@ynf
/* loaded from: classes6.dex */
public abstract class BaseEncoding {

    /* renamed from: a */
    public static final BaseEncoding f34821a = new C6199h("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    /* renamed from: b */
    public static final BaseEncoding f34822b = new C6199h("base64Url()", StringUtil.UrlSafeBase64Digits, '=');

    /* renamed from: c */
    public static final BaseEncoding f34823c = new C6201j("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');

    /* renamed from: d */
    public static final BaseEncoding f34824d = new C6201j("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');

    /* renamed from: e */
    public static final BaseEncoding f34825e = new C6198g("base16()", "0123456789ABCDEF");

    /* loaded from: classes6.dex */
    public static final class DecodingException extends IOException {
        public DecodingException(String str) {
            super(str);
        }

        public DecodingException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$a */
    /* loaded from: classes6.dex */
    public class C6192a extends ByteSink {

        /* renamed from: a */
        public final /* synthetic */ CharSink f34826a;

        public C6192a(CharSink charSink) {
            this.f34826a = charSink;
        }

        @Override // com.google.common.io.ByteSink
        public OutputStream openStream() throws IOException {
            return BaseEncoding.this.encodingStream(this.f34826a.openStream());
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$b */
    /* loaded from: classes6.dex */
    public class C6193b extends ByteSource {

        /* renamed from: a */
        public final /* synthetic */ CharSource f34828a;

        public C6193b(CharSource charSource) {
            this.f34828a = charSource;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return BaseEncoding.this.decodingStream(this.f34828a.openStream());
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$e */
    /* loaded from: classes6.dex */
    public class C6196e extends Writer {

        /* renamed from: e */
        public final /* synthetic */ Appendable f34836e;

        /* renamed from: f */
        public final /* synthetic */ Writer f34837f;

        public C6196e(Appendable appendable, Writer writer) {
            this.f34836e = appendable;
            this.f34837f = writer;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f34837f.close();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            this.f34837f.flush();
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.f34836e.append((char) i);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$f */
    /* loaded from: classes6.dex */
    public static final class C6197f {

        /* renamed from: a */
        public final String f34838a;

        /* renamed from: b */
        public final char[] f34839b;

        /* renamed from: c */
        public final int f34840c;

        /* renamed from: d */
        public final int f34841d;

        /* renamed from: e */
        public final int f34842e;

        /* renamed from: f */
        public final int f34843f;

        /* renamed from: g */
        public final byte[] f34844g;

        /* renamed from: h */
        public final boolean[] f34845h;

        public C6197f(String str, char[] cArr) {
            this.f34838a = (String) Preconditions.checkNotNull(str);
            this.f34839b = (char[]) Preconditions.checkNotNull(cArr);
            try {
                int log2 = IntMath.log2(cArr.length, RoundingMode.UNNECESSARY);
                this.f34841d = log2;
                int min = Math.min(8, Integer.lowestOneBit(log2));
                try {
                    this.f34842e = 8 / min;
                    this.f34843f = log2 / min;
                    this.f34840c = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        Preconditions.checkArgument(c < 128, "Non-ASCII character: %s", c);
                        Preconditions.checkArgument(bArr[c] == -1, "Duplicate character: %s", c);
                        bArr[c] = (byte) i;
                    }
                    this.f34844g = bArr;
                    boolean[] zArr = new boolean[this.f34842e];
                    for (int i2 = 0; i2 < this.f34843f; i2++) {
                        zArr[IntMath.divide(i2 * 8, this.f34841d, RoundingMode.CEILING)] = true;
                    }
                    this.f34845h = zArr;
                } catch (ArithmeticException e) {
                    String str2 = new String(cArr);
                    throw new IllegalArgumentException(str2.length() != 0 ? "Illegal alphabet ".concat(str2) : new String("Illegal alphabet "), e);
                }
            } catch (ArithmeticException e2) {
                int length = cArr.length;
                StringBuilder sb = new StringBuilder(35);
                sb.append("Illegal alphabet length ");
                sb.append(length);
                throw new IllegalArgumentException(sb.toString(), e2);
            }
        }

        /* renamed from: b */
        public boolean m27180b(char c) {
            return c <= 127 && this.f34844g[c] != -1;
        }

        /* renamed from: c */
        public int m27181c(char c) throws DecodingException {
            if (c > 127) {
                String valueOf = String.valueOf(Integer.toHexString(c));
                throw new DecodingException(valueOf.length() != 0 ? "Unrecognized character: 0x".concat(valueOf) : new String("Unrecognized character: 0x"));
            }
            byte b = this.f34844g[c];
            if (b != -1) {
                return b;
            }
            if (c <= ' ' || c == 127) {
                String valueOf2 = String.valueOf(Integer.toHexString(c));
                throw new DecodingException(valueOf2.length() != 0 ? "Unrecognized character: 0x".concat(valueOf2) : new String("Unrecognized character: 0x"));
            }
            StringBuilder sb = new StringBuilder(25);
            sb.append("Unrecognized character: ");
            sb.append(c);
            throw new DecodingException(sb.toString());
        }

        /* renamed from: d */
        public char m27182d(int i) {
            return this.f34839b[i];
        }

        /* renamed from: e */
        public final boolean m27183e() {
            for (char c : this.f34839b) {
                if (Ascii.isLowerCase(c)) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof C6197f) {
                return Arrays.equals(this.f34839b, ((C6197f) obj).f34839b);
            }
            return false;
        }

        /* renamed from: f */
        public final boolean m27184f() {
            for (char c : this.f34839b) {
                if (Ascii.isUpperCase(c)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: g */
        public boolean m27185g(int i) {
            return this.f34845h[i % this.f34842e];
        }

        /* renamed from: h */
        public C6197f m27186h() {
            if (!m27184f()) {
                return this;
            }
            Preconditions.checkState(!m27183e(), "Cannot call lowerCase() on a mixed-case alphabet");
            char[] cArr = new char[this.f34839b.length];
            int i = 0;
            while (true) {
                char[] cArr2 = this.f34839b;
                if (i >= cArr2.length) {
                    return new C6197f(String.valueOf(this.f34838a).concat(".lowerCase()"), cArr);
                }
                cArr[i] = Ascii.toLowerCase(cArr2[i]);
                i++;
            }
        }

        public int hashCode() {
            return Arrays.hashCode(this.f34839b);
        }

        /* renamed from: i */
        public boolean m27187i(char c) {
            byte[] bArr = this.f34844g;
            return c < bArr.length && bArr[c] != -1;
        }

        /* renamed from: j */
        public C6197f m27188j() {
            if (!m27183e()) {
                return this;
            }
            Preconditions.checkState(!m27184f(), "Cannot call upperCase() on a mixed-case alphabet");
            char[] cArr = new char[this.f34839b.length];
            int i = 0;
            while (true) {
                char[] cArr2 = this.f34839b;
                if (i >= cArr2.length) {
                    return new C6197f(String.valueOf(this.f34838a).concat(".upperCase()"), cArr);
                }
                cArr[i] = Ascii.toUpperCase(cArr2[i]);
                i++;
            }
        }

        public String toString() {
            return this.f34838a;
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$g */
    /* loaded from: classes6.dex */
    public static final class C6198g extends C6201j {

        /* renamed from: j */
        public final char[] f34846j;

        public C6198g(String str, String str2) {
            this(new C6197f(str, str2.toCharArray()));
        }

        @Override // com.google.common.io.BaseEncoding.C6201j, com.google.common.io.BaseEncoding
        /* renamed from: b */
        public int mo27174b(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Preconditions.checkNotNull(bArr);
            if (charSequence.length() % 2 == 1) {
                int length = charSequence.length();
                StringBuilder sb = new StringBuilder(32);
                sb.append("Invalid input length ");
                sb.append(length);
                throw new DecodingException(sb.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                bArr[i2] = (byte) ((this.f34850f.m27181c(charSequence.charAt(i)) << 4) | this.f34850f.m27181c(charSequence.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding.C6201j, com.google.common.io.BaseEncoding
        /* renamed from: c */
        public void mo27175c(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i + i3] & 255;
                appendable.append(this.f34846j[i4]);
                appendable.append(this.f34846j[i4 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.C6201j
        /* renamed from: l */
        public BaseEncoding mo27189l(C6197f c6197f, @CheckForNull Character ch) {
            return new C6198g(c6197f);
        }

        public C6198g(C6197f c6197f) {
            super(c6197f, null);
            this.f34846j = new char[512];
            Preconditions.checkArgument(c6197f.f34839b.length == 16);
            for (int i = 0; i < 256; i++) {
                this.f34846j[i] = c6197f.m27182d(i >>> 4);
                this.f34846j[i | 256] = c6197f.m27182d(i & 15);
            }
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$h */
    /* loaded from: classes6.dex */
    public static final class C6199h extends C6201j {
        public C6199h(String str, String str2, @CheckForNull Character ch) {
            this(new C6197f(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding.C6201j, com.google.common.io.BaseEncoding
        /* renamed from: b */
        public int mo27174b(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Preconditions.checkNotNull(bArr);
            CharSequence mo27178j = mo27178j(charSequence);
            if (!this.f34850f.m27185g(mo27178j.length())) {
                int length = mo27178j.length();
                StringBuilder sb = new StringBuilder(32);
                sb.append("Invalid input length ");
                sb.append(length);
                throw new DecodingException(sb.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < mo27178j.length()) {
                int i3 = i + 1;
                int i4 = i3 + 1;
                int m27181c = (this.f34850f.m27181c(mo27178j.charAt(i)) << 18) | (this.f34850f.m27181c(mo27178j.charAt(i3)) << 12);
                int i5 = i2 + 1;
                bArr[i2] = (byte) (m27181c >>> 16);
                if (i4 < mo27178j.length()) {
                    int i6 = i4 + 1;
                    int m27181c2 = m27181c | (this.f34850f.m27181c(mo27178j.charAt(i4)) << 6);
                    i2 = i5 + 1;
                    bArr[i5] = (byte) ((m27181c2 >>> 8) & 255);
                    if (i6 < mo27178j.length()) {
                        i4 = i6 + 1;
                        i5 = i2 + 1;
                        bArr[i2] = (byte) ((m27181c2 | this.f34850f.m27181c(mo27178j.charAt(i6))) & 255);
                    } else {
                        i = i6;
                    }
                }
                i2 = i5;
                i = i4;
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding.C6201j, com.google.common.io.BaseEncoding
        /* renamed from: c */
        public void mo27175c(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            int i3 = i + i2;
            Preconditions.checkPositionIndexes(i, i3, bArr.length);
            while (i2 >= 3) {
                int i4 = i + 1;
                int i5 = i4 + 1;
                int i6 = ((bArr[i] & 255) << 16) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                appendable.append(this.f34850f.m27182d(i6 >>> 18));
                appendable.append(this.f34850f.m27182d((i6 >>> 12) & 63));
                appendable.append(this.f34850f.m27182d((i6 >>> 6) & 63));
                appendable.append(this.f34850f.m27182d(i6 & 63));
                i2 -= 3;
                i = i5 + 1;
            }
            if (i < i3) {
                m27190k(appendable, bArr, i, i3 - i);
            }
        }

        @Override // com.google.common.io.BaseEncoding.C6201j
        /* renamed from: l */
        public BaseEncoding mo27189l(C6197f c6197f, @CheckForNull Character ch) {
            return new C6199h(c6197f, ch);
        }

        public C6199h(C6197f c6197f, @CheckForNull Character ch) {
            super(c6197f, ch);
            Preconditions.checkArgument(c6197f.f34839b.length == 64);
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$i */
    /* loaded from: classes6.dex */
    public static final class C6200i extends BaseEncoding {

        /* renamed from: f */
        public final BaseEncoding f34847f;

        /* renamed from: g */
        public final String f34848g;

        /* renamed from: h */
        public final int f34849h;

        public C6200i(BaseEncoding baseEncoding, String str, int i) {
            this.f34847f = (BaseEncoding) Preconditions.checkNotNull(baseEncoding);
            this.f34848g = (String) Preconditions.checkNotNull(str);
            this.f34849h = i;
            Preconditions.checkArgument(i > 0, "Cannot add a separator after every %s chars", i);
        }

        @Override // com.google.common.io.BaseEncoding
        /* renamed from: b */
        public int mo27174b(byte[] bArr, CharSequence charSequence) throws DecodingException {
            StringBuilder sb = new StringBuilder(charSequence.length());
            for (int i = 0; i < charSequence.length(); i++) {
                char charAt = charSequence.charAt(i);
                if (this.f34848g.indexOf(charAt) < 0) {
                    sb.append(charAt);
                }
            }
            return this.f34847f.mo27174b(bArr, sb);
        }

        @Override // com.google.common.io.BaseEncoding
        /* renamed from: c */
        public void mo27175c(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            this.f34847f.mo27175c(BaseEncoding.m27171h(appendable, this.f34848g, this.f34849h), bArr, i, i2);
        }

        @Override // com.google.common.io.BaseEncoding
        public boolean canDecode(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < charSequence.length(); i++) {
                char charAt = charSequence.charAt(i);
                if (this.f34848g.indexOf(charAt) < 0) {
                    sb.append(charAt);
                }
            }
            return this.f34847f.canDecode(sb);
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public InputStream decodingStream(Reader reader) {
            return this.f34847f.decodingStream(BaseEncoding.m27170e(reader, this.f34848g));
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public OutputStream encodingStream(Writer writer) {
            return this.f34847f.encodingStream(BaseEncoding.m27172i(writer, this.f34848g, this.f34849h));
        }

        @Override // com.google.common.io.BaseEncoding
        /* renamed from: f */
        public int mo27176f(int i) {
            return this.f34847f.mo27176f(i);
        }

        @Override // com.google.common.io.BaseEncoding
        /* renamed from: g */
        public int mo27177g(int i) {
            int mo27177g = this.f34847f.mo27177g(i);
            return mo27177g + (this.f34848g.length() * IntMath.divide(Math.max(0, mo27177g - 1), this.f34849h, RoundingMode.FLOOR));
        }

        @Override // com.google.common.io.BaseEncoding
        /* renamed from: j */
        public CharSequence mo27178j(CharSequence charSequence) {
            return this.f34847f.mo27178j(charSequence);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            return this.f34847f.lowerCase().withSeparator(this.f34848g, this.f34849h);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.f34847f.omitPadding().withSeparator(this.f34848g, this.f34849h);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f34847f);
            String str = this.f34848g;
            int i = this.f34849h;
            StringBuilder sb = new StringBuilder(valueOf.length() + 31 + String.valueOf(str).length());
            sb.append(valueOf);
            sb.append(".withSeparator(\"");
            sb.append(str);
            sb.append("\", ");
            sb.append(i);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            return this.f34847f.upperCase().withSeparator(this.f34848g, this.f34849h);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c) {
            return this.f34847f.withPadChar(c).withSeparator(this.f34848g, this.f34849h);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i) {
            throw new UnsupportedOperationException("Already have a separator");
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$j */
    /* loaded from: classes6.dex */
    public static class C6201j extends BaseEncoding {

        /* renamed from: f */
        public final C6197f f34850f;

        /* renamed from: g */
        @CheckForNull
        public final Character f34851g;

        /* renamed from: h */
        @CheckForNull
        @LazyInit
        public transient BaseEncoding f34852h;

        /* renamed from: i */
        @CheckForNull
        @LazyInit
        public transient BaseEncoding f34853i;

        /* renamed from: com.google.common.io.BaseEncoding$j$a */
        /* loaded from: classes6.dex */
        public class a extends OutputStream {

            /* renamed from: e */
            public int f34854e = 0;

            /* renamed from: f */
            public int f34855f = 0;

            /* renamed from: g */
            public int f34856g = 0;

            /* renamed from: h */
            public final /* synthetic */ Writer f34857h;

            public a(Writer writer) {
                this.f34857h = writer;
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                int i = this.f34855f;
                if (i > 0) {
                    int i2 = this.f34854e;
                    C6197f c6197f = C6201j.this.f34850f;
                    this.f34857h.write(c6197f.m27182d((i2 << (c6197f.f34841d - i)) & c6197f.f34840c));
                    this.f34856g++;
                    if (C6201j.this.f34851g != null) {
                        while (true) {
                            int i3 = this.f34856g;
                            C6201j c6201j = C6201j.this;
                            if (i3 % c6201j.f34850f.f34842e == 0) {
                                break;
                            }
                            this.f34857h.write(c6201j.f34851g.charValue());
                            this.f34856g++;
                        }
                    }
                }
                this.f34857h.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                this.f34857h.flush();
            }

            @Override // java.io.OutputStream
            public void write(int i) throws IOException {
                this.f34854e = (i & 255) | (this.f34854e << 8);
                this.f34855f += 8;
                while (true) {
                    int i2 = this.f34855f;
                    C6197f c6197f = C6201j.this.f34850f;
                    int i3 = c6197f.f34841d;
                    if (i2 < i3) {
                        return;
                    }
                    this.f34857h.write(c6197f.m27182d((this.f34854e >> (i2 - i3)) & c6197f.f34840c));
                    this.f34856g++;
                    this.f34855f -= C6201j.this.f34850f.f34841d;
                }
            }
        }

        public C6201j(String str, String str2, @CheckForNull Character ch) {
            this(new C6197f(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding
        /* renamed from: b */
        public int mo27174b(byte[] bArr, CharSequence charSequence) throws DecodingException {
            C6197f c6197f;
            Preconditions.checkNotNull(bArr);
            CharSequence mo27178j = mo27178j(charSequence);
            if (!this.f34850f.m27185g(mo27178j.length())) {
                int length = mo27178j.length();
                StringBuilder sb = new StringBuilder(32);
                sb.append("Invalid input length ");
                sb.append(length);
                throw new DecodingException(sb.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < mo27178j.length()) {
                long j = 0;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    c6197f = this.f34850f;
                    if (i3 >= c6197f.f34842e) {
                        break;
                    }
                    j <<= c6197f.f34841d;
                    if (i + i3 < mo27178j.length()) {
                        j |= this.f34850f.m27181c(mo27178j.charAt(i4 + i));
                        i4++;
                    }
                    i3++;
                }
                int i5 = c6197f.f34843f;
                int i6 = (i5 * 8) - (i4 * c6197f.f34841d);
                int i7 = (i5 - 1) * 8;
                while (i7 >= i6) {
                    bArr[i2] = (byte) ((j >>> i7) & 255);
                    i7 -= 8;
                    i2++;
                }
                i += this.f34850f.f34842e;
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding
        /* renamed from: c */
        public void mo27175c(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            while (i3 < i2) {
                m27190k(appendable, bArr, i + i3, Math.min(this.f34850f.f34843f, i2 - i3));
                i3 += this.f34850f.f34843f;
            }
        }

        @Override // com.google.common.io.BaseEncoding
        public boolean canDecode(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            CharSequence mo27178j = mo27178j(charSequence);
            if (!this.f34850f.m27185g(mo27178j.length())) {
                return false;
            }
            for (int i = 0; i < mo27178j.length(); i++) {
                if (!this.f34850f.m27180b(mo27178j.charAt(i))) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public InputStream decodingStream(Reader reader) {
            Preconditions.checkNotNull(reader);
            return new b(reader);
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public OutputStream encodingStream(Writer writer) {
            Preconditions.checkNotNull(writer);
            return new a(writer);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof C6201j)) {
                return false;
            }
            C6201j c6201j = (C6201j) obj;
            return this.f34850f.equals(c6201j.f34850f) && Objects.equal(this.f34851g, c6201j.f34851g);
        }

        @Override // com.google.common.io.BaseEncoding
        /* renamed from: f */
        public int mo27176f(int i) {
            return (int) (((this.f34850f.f34841d * i) + 7) / 8);
        }

        @Override // com.google.common.io.BaseEncoding
        /* renamed from: g */
        public int mo27177g(int i) {
            C6197f c6197f = this.f34850f;
            return c6197f.f34842e * IntMath.divide(i, c6197f.f34843f, RoundingMode.CEILING);
        }

        public int hashCode() {
            return Objects.hashCode(this.f34851g) ^ this.f34850f.hashCode();
        }

        @Override // com.google.common.io.BaseEncoding
        /* renamed from: j */
        public CharSequence mo27178j(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            Character ch = this.f34851g;
            if (ch == null) {
                return charSequence;
            }
            char charValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == charValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        /* renamed from: k */
        public void m27190k(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            Preconditions.checkArgument(i2 <= this.f34850f.f34843f);
            long j = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                j = (j | (bArr[i + i4] & 255)) << 8;
            }
            int i5 = ((i2 + 1) * 8) - this.f34850f.f34841d;
            while (i3 < i2 * 8) {
                C6197f c6197f = this.f34850f;
                appendable.append(c6197f.m27182d(((int) (j >>> (i5 - i3))) & c6197f.f34840c));
                i3 += this.f34850f.f34841d;
            }
            if (this.f34851g != null) {
                while (i3 < this.f34850f.f34843f * 8) {
                    appendable.append(this.f34851g.charValue());
                    i3 += this.f34850f.f34841d;
                }
            }
        }

        /* renamed from: l */
        public BaseEncoding mo27189l(C6197f c6197f, @CheckForNull Character ch) {
            return new C6201j(c6197f, ch);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            BaseEncoding baseEncoding = this.f34853i;
            if (baseEncoding == null) {
                C6197f m27186h = this.f34850f.m27186h();
                baseEncoding = m27186h == this.f34850f ? this : mo27189l(m27186h, this.f34851g);
                this.f34853i = baseEncoding;
            }
            return baseEncoding;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.f34851g == null ? this : mo27189l(this.f34850f, null);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.f34850f.toString());
            if (8 % this.f34850f.f34841d != 0) {
                if (this.f34851g == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.f34851g);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            BaseEncoding baseEncoding = this.f34852h;
            if (baseEncoding == null) {
                C6197f m27188j = this.f34850f.m27188j();
                baseEncoding = m27188j == this.f34850f ? this : mo27189l(m27188j, this.f34851g);
                this.f34852h = baseEncoding;
            }
            return baseEncoding;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c) {
            if (8 % this.f34850f.f34841d == 0) {
                return this;
            }
            Character ch = this.f34851g;
            return (ch == null || ch.charValue() != c) ? mo27189l(this.f34850f, Character.valueOf(c)) : this;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i) {
            for (int i2 = 0; i2 < str.length(); i2++) {
                Preconditions.checkArgument(!this.f34850f.m27187i(str.charAt(i2)), "Separator (%s) cannot contain alphabet characters", str);
            }
            Character ch = this.f34851g;
            if (ch != null) {
                Preconditions.checkArgument(str.indexOf(ch.charValue()) < 0, "Separator (%s) cannot contain padding character", str);
            }
            return new C6200i(this, str, i);
        }

        public C6201j(C6197f c6197f, @CheckForNull Character ch) {
            this.f34850f = (C6197f) Preconditions.checkNotNull(c6197f);
            Preconditions.checkArgument(ch == null || !c6197f.m27187i(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.f34851g = ch;
        }

        /* renamed from: com.google.common.io.BaseEncoding$j$b */
        /* loaded from: classes6.dex */
        public class b extends InputStream {

            /* renamed from: e */
            public int f34859e = 0;

            /* renamed from: f */
            public int f34860f = 0;

            /* renamed from: g */
            public int f34861g = 0;

            /* renamed from: h */
            public boolean f34862h = false;

            /* renamed from: i */
            public final /* synthetic */ Reader f34863i;

            public b(Reader reader) {
                this.f34863i = reader;
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.f34863i.close();
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
            
                r4 = r4.f34861g;
                r1 = new java.lang.StringBuilder(41);
                r1.append("Padding cannot start at index ");
                r1.append(r4);
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
            
                throw new com.google.common.io.BaseEncoding.DecodingException(r1.toString());
             */
            @Override // java.io.InputStream
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public int read() throws java.io.IOException {
                /*
                    r4 = this;
                L0:
                    java.io.Reader r0 = r4.f34863i
                    int r0 = r0.read()
                    r1 = -1
                    if (r0 != r1) goto L36
                    boolean r0 = r4.f34862h
                    if (r0 != 0) goto L35
                    com.google.common.io.BaseEncoding$j r0 = com.google.common.io.BaseEncoding.C6201j.this
                    com.google.common.io.BaseEncoding$f r0 = r0.f34850f
                    int r2 = r4.f34861g
                    boolean r0 = r0.m27185g(r2)
                    if (r0 == 0) goto L1a
                    goto L35
                L1a:
                    com.google.common.io.BaseEncoding$DecodingException r0 = new com.google.common.io.BaseEncoding$DecodingException
                    int r4 = r4.f34861g
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r2 = 32
                    r1.<init>(r2)
                    java.lang.String r2 = "Invalid input length "
                    r1.append(r2)
                    r1.append(r4)
                    java.lang.String r4 = r1.toString()
                    r0.<init>(r4)
                    throw r0
                L35:
                    return r1
                L36:
                    int r1 = r4.f34861g
                    r2 = 1
                    int r1 = r1 + r2
                    r4.f34861g = r1
                    char r0 = (char) r0
                    com.google.common.io.BaseEncoding$j r1 = com.google.common.io.BaseEncoding.C6201j.this
                    java.lang.Character r1 = r1.f34851g
                    if (r1 == 0) goto L7c
                    char r1 = r1.charValue()
                    if (r1 != r0) goto L7c
                    boolean r0 = r4.f34862h
                    if (r0 != 0) goto L79
                    int r0 = r4.f34861g
                    if (r0 == r2) goto L5e
                    com.google.common.io.BaseEncoding$j r1 = com.google.common.io.BaseEncoding.C6201j.this
                    com.google.common.io.BaseEncoding$f r1 = r1.f34850f
                    int r0 = r0 + (-1)
                    boolean r0 = r1.m27185g(r0)
                    if (r0 == 0) goto L5e
                    goto L79
                L5e:
                    com.google.common.io.BaseEncoding$DecodingException r0 = new com.google.common.io.BaseEncoding$DecodingException
                    int r4 = r4.f34861g
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r2 = 41
                    r1.<init>(r2)
                    java.lang.String r2 = "Padding cannot start at index "
                    r1.append(r2)
                    r1.append(r4)
                    java.lang.String r4 = r1.toString()
                    r0.<init>(r4)
                    throw r0
                L79:
                    r4.f34862h = r2
                    goto L0
                L7c:
                    boolean r1 = r4.f34862h
                    if (r1 != 0) goto La9
                    int r1 = r4.f34859e
                    com.google.common.io.BaseEncoding$j r2 = com.google.common.io.BaseEncoding.C6201j.this
                    com.google.common.io.BaseEncoding$f r2 = r2.f34850f
                    int r3 = r2.f34841d
                    int r1 = r1 << r3
                    r4.f34859e = r1
                    int r0 = r2.m27181c(r0)
                    r0 = r0 | r1
                    r4.f34859e = r0
                    int r1 = r4.f34860f
                    com.google.common.io.BaseEncoding$j r2 = com.google.common.io.BaseEncoding.C6201j.this
                    com.google.common.io.BaseEncoding$f r2 = r2.f34850f
                    int r2 = r2.f34841d
                    int r1 = r1 + r2
                    r4.f34860f = r1
                    r2 = 8
                    if (r1 < r2) goto L0
                    int r1 = r1 - r2
                    r4.f34860f = r1
                    int r4 = r0 >> r1
                    r4 = r4 & 255(0xff, float:3.57E-43)
                    return r4
                La9:
                    com.google.common.io.BaseEncoding$DecodingException r1 = new com.google.common.io.BaseEncoding$DecodingException
                    int r4 = r4.f34861g
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder
                    r3 = 61
                    r2.<init>(r3)
                    java.lang.String r3 = "Expected padding character but found '"
                    r2.append(r3)
                    r2.append(r0)
                    java.lang.String r0 = "' at index "
                    r2.append(r0)
                    r2.append(r4)
                    java.lang.String r4 = r2.toString()
                    r1.<init>(r4)
                    throw r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.BaseEncoding.C6201j.b.read():int");
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                int i3 = i2 + i;
                Preconditions.checkPositionIndexes(i, i3, bArr.length);
                int i4 = i;
                while (i4 < i3) {
                    int read = read();
                    if (read == -1) {
                        int i5 = i4 - i;
                        if (i5 == 0) {
                            return -1;
                        }
                        return i5;
                    }
                    bArr[i4] = (byte) read;
                    i4++;
                }
                return i4 - i;
            }
        }
    }

    public static BaseEncoding base16() {
        return f34825e;
    }

    public static BaseEncoding base32() {
        return f34823c;
    }

    public static BaseEncoding base32Hex() {
        return f34824d;
    }

    public static BaseEncoding base64() {
        return f34821a;
    }

    public static BaseEncoding base64Url() {
        return f34822b;
    }

    /* renamed from: d */
    public static byte[] m27169d(byte[] bArr, int i) {
        if (i == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    @GwtIncompatible
    /* renamed from: e */
    public static Reader m27170e(Reader reader, String str) {
        Preconditions.checkNotNull(reader);
        Preconditions.checkNotNull(str);
        return new C6194c(reader, str);
    }

    /* renamed from: h */
    public static Appendable m27171h(Appendable appendable, String str, int i) {
        Preconditions.checkNotNull(appendable);
        Preconditions.checkNotNull(str);
        Preconditions.checkArgument(i > 0);
        return new C6195d(i, appendable, str);
    }

    @GwtIncompatible
    /* renamed from: i */
    public static Writer m27172i(Writer writer, String str, int i) {
        return new C6196e(m27171h(writer, str, i), writer);
    }

    /* renamed from: a */
    public final byte[] m27173a(CharSequence charSequence) throws DecodingException {
        CharSequence mo27178j = mo27178j(charSequence);
        byte[] bArr = new byte[mo27176f(mo27178j.length())];
        return m27169d(bArr, mo27174b(bArr, mo27178j));
    }

    /* renamed from: b */
    public abstract int mo27174b(byte[] bArr, CharSequence charSequence) throws DecodingException;

    /* renamed from: c */
    public abstract void mo27175c(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    public abstract boolean canDecode(CharSequence charSequence);

    public final byte[] decode(CharSequence charSequence) {
        try {
            return m27173a(charSequence);
        } catch (DecodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @GwtIncompatible
    public final ByteSource decodingSource(CharSource charSource) {
        Preconditions.checkNotNull(charSource);
        return new C6193b(charSource);
    }

    @GwtIncompatible
    public abstract InputStream decodingStream(Reader reader);

    public String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    @GwtIncompatible
    public final ByteSink encodingSink(CharSink charSink) {
        Preconditions.checkNotNull(charSink);
        return new C6192a(charSink);
    }

    @GwtIncompatible
    public abstract OutputStream encodingStream(Writer writer);

    /* renamed from: f */
    public abstract int mo27176f(int i);

    /* renamed from: g */
    public abstract int mo27177g(int i);

    /* renamed from: j */
    public CharSequence mo27178j(CharSequence charSequence) {
        return (CharSequence) Preconditions.checkNotNull(charSequence);
    }

    public abstract BaseEncoding lowerCase();

    public abstract BaseEncoding omitPadding();

    public abstract BaseEncoding upperCase();

    public abstract BaseEncoding withPadChar(char c);

    public abstract BaseEncoding withSeparator(String str, int i);

    /* renamed from: com.google.common.io.BaseEncoding$c */
    /* loaded from: classes6.dex */
    public class C6194c extends Reader {

        /* renamed from: e */
        public final /* synthetic */ Reader f34830e;

        /* renamed from: f */
        public final /* synthetic */ String f34831f;

        public C6194c(Reader reader, String str) {
            this.f34830e = reader;
            this.f34831f = str;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f34830e.close();
        }

        @Override // java.io.Reader
        public int read() throws IOException {
            int read;
            do {
                read = this.f34830e.read();
                if (read == -1) {
                    break;
                }
            } while (this.f34831f.indexOf((char) read) >= 0);
            return read;
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    public final String encode(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        StringBuilder sb = new StringBuilder(mo27177g(i2));
        try {
            mo27175c(sb, bArr, i, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$d */
    /* loaded from: classes6.dex */
    public class C6195d implements Appendable {

        /* renamed from: e */
        public int f34832e;

        /* renamed from: f */
        public final /* synthetic */ int f34833f;

        /* renamed from: g */
        public final /* synthetic */ Appendable f34834g;

        /* renamed from: h */
        public final /* synthetic */ String f34835h;

        public C6195d(int i, Appendable appendable, String str) {
            this.f34833f = i;
            this.f34834g = appendable;
            this.f34835h = str;
            this.f34832e = i;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c) throws IOException {
            if (this.f34832e == 0) {
                this.f34834g.append(this.f34835h);
                this.f34832e = this.f34833f;
            }
            this.f34834g.append(c);
            this.f34832e--;
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@CheckForNull CharSequence charSequence, int i, int i2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.lang.Appendable
        public Appendable append(@CheckForNull CharSequence charSequence) {
            throw new UnsupportedOperationException();
        }
    }
}
