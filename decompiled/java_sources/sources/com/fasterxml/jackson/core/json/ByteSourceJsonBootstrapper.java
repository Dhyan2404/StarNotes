package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.format.InputAccessor;
import com.fasterxml.jackson.core.format.MatchStrength;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.MergedStream;
import com.fasterxml.jackson.core.io.UTF32Reader;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

/* loaded from: classes4.dex */
public final class ByteSourceJsonBootstrapper {

    /* renamed from: d */
    public static final byte f21279d = -17;

    /* renamed from: e */
    public static final byte f21280e = -69;

    /* renamed from: f */
    public static final byte f21281f = -65;
    protected boolean _bigEndian;
    protected int _bytesPerChar;
    protected final IOContext _context;
    protected final InputStream _in;
    protected final byte[] _inputBuffer;
    protected int _inputProcessed;

    /* renamed from: a */
    public int f21282a;

    /* renamed from: b */
    public int f21283b;

    /* renamed from: c */
    public final boolean f21284c;

    public ByteSourceJsonBootstrapper(IOContext iOContext, InputStream inputStream) {
        this._bigEndian = true;
        this._context = iOContext;
        this._in = inputStream;
        this._inputBuffer = iOContext.allocReadIOBuffer();
        this.f21282a = 0;
        this.f21283b = 0;
        this._inputProcessed = 0;
        this.f21284c = true;
    }

    /* renamed from: e */
    public static int m17150e(InputAccessor inputAccessor) throws IOException {
        if (inputAccessor.hasMoreBytes()) {
            return m17151f(inputAccessor, inputAccessor.nextByte());
        }
        return -1;
    }

    /* renamed from: f */
    public static int m17151f(InputAccessor inputAccessor, byte b) throws IOException {
        while (true) {
            int i = b & 255;
            if (i != 32 && i != 13 && i != 10 && i != 9) {
                return i;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return -1;
            }
            b = inputAccessor.nextByte();
        }
    }

    /* renamed from: g */
    public static MatchStrength m17152g(InputAccessor inputAccessor, String str, MatchStrength matchStrength) throws IOException {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != str.charAt(i)) {
                return MatchStrength.NO_MATCH;
            }
        }
        return matchStrength;
    }

    public static MatchStrength hasJSONFormat(InputAccessor inputAccessor) throws IOException {
        if (!inputAccessor.hasMoreBytes()) {
            return MatchStrength.INCONCLUSIVE;
        }
        byte nextByte = inputAccessor.nextByte();
        if (nextByte == -17) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -69) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -65) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            nextByte = inputAccessor.nextByte();
        }
        int m17151f = m17151f(inputAccessor, nextByte);
        if (m17151f < 0) {
            return MatchStrength.INCONCLUSIVE;
        }
        if (m17151f == 123) {
            int m17150e = m17150e(inputAccessor);
            return m17150e < 0 ? MatchStrength.INCONCLUSIVE : (m17150e == 34 || m17150e == 125) ? MatchStrength.SOLID_MATCH : MatchStrength.NO_MATCH;
        }
        if (m17151f == 91) {
            int m17150e2 = m17150e(inputAccessor);
            return m17150e2 < 0 ? MatchStrength.INCONCLUSIVE : (m17150e2 == 93 || m17150e2 == 91) ? MatchStrength.SOLID_MATCH : MatchStrength.SOLID_MATCH;
        }
        MatchStrength matchStrength = MatchStrength.WEAK_MATCH;
        if (m17151f == 34) {
            return matchStrength;
        }
        if (m17151f <= 57 && m17151f >= 48) {
            return matchStrength;
        }
        if (m17151f != 45) {
            return m17151f == 110 ? m17152g(inputAccessor, "ull", matchStrength) : m17151f == 116 ? m17152g(inputAccessor, "rue", matchStrength) : m17151f == 102 ? m17152g(inputAccessor, "alse", matchStrength) : MatchStrength.NO_MATCH;
        }
        int m17150e3 = m17150e(inputAccessor);
        return m17150e3 < 0 ? MatchStrength.INCONCLUSIVE : (m17150e3 > 57 || m17150e3 < 48) ? MatchStrength.NO_MATCH : matchStrength;
    }

    /* renamed from: a */
    public final boolean m17153a(int i) {
        if ((65280 & i) == 0) {
            this._bigEndian = true;
        } else {
            if ((i & 255) != 0) {
                return false;
            }
            this._bigEndian = false;
        }
        this._bytesPerChar = 2;
        return true;
    }

    /* renamed from: b */
    public final boolean m17154b(int i) throws IOException {
        if ((i >> 8) == 0) {
            this._bigEndian = true;
        } else if ((16777215 & i) == 0) {
            this._bigEndian = false;
        } else if (((-16711681) & i) == 0) {
            m17156d("3412");
        } else {
            if ((i & (-65281)) != 0) {
                return false;
            }
            m17156d("2143");
        }
        this._bytesPerChar = 4;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m17155c(int r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = -16842752(0xfffffffffeff0000, float:-1.6947657E38)
            r1 = 65534(0xfffe, float:9.1833E-41)
            r2 = 65279(0xfeff, float:9.1475E-41)
            r3 = 0
            r4 = 1
            if (r7 == r0) goto L30
            r0 = -131072(0xfffffffffffe0000, float:NaN)
            r5 = 4
            if (r7 == r0) goto L26
            if (r7 == r2) goto L1c
            if (r7 == r1) goto L16
            goto L35
        L16:
            java.lang.String r0 = "2143"
            r6.m17156d(r0)
            goto L30
        L1c:
            r6._bigEndian = r4
            int r7 = r6.f21282a
            int r7 = r7 + r5
            r6.f21282a = r7
            r6._bytesPerChar = r5
            return r4
        L26:
            int r7 = r6.f21282a
            int r7 = r7 + r5
            r6.f21282a = r7
            r6._bytesPerChar = r5
            r6._bigEndian = r3
            return r4
        L30:
            java.lang.String r0 = "3412"
            r6.m17156d(r0)
        L35:
            int r0 = r7 >>> 16
            r5 = 2
            if (r0 != r2) goto L44
            int r7 = r6.f21282a
            int r7 = r7 + r5
            r6.f21282a = r7
            r6._bytesPerChar = r5
            r6._bigEndian = r4
            return r4
        L44:
            if (r0 != r1) goto L50
            int r7 = r6.f21282a
            int r7 = r7 + r5
            r6.f21282a = r7
            r6._bytesPerChar = r5
            r6._bigEndian = r3
            return r4
        L50:
            int r7 = r7 >>> 8
            r0 = 15711167(0xefbbbf, float:2.2016034E-38)
            if (r7 != r0) goto L62
            int r7 = r6.f21282a
            int r7 = r7 + 3
            r6.f21282a = r7
            r6._bytesPerChar = r4
            r6._bigEndian = r4
            return r4
        L62:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper.m17155c(int):boolean");
    }

    public JsonParser constructParser(int i, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, CharsToNameCanonicalizer charsToNameCanonicalizer, int i2) throws IOException {
        if (detectEncoding() != JsonEncoding.UTF8 || !JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i2)) {
            return new ReaderBasedJsonParser(this._context, i, constructReader(), objectCodec, charsToNameCanonicalizer.makeChild(i2));
        }
        return new UTF8StreamJsonParser(this._context, i, this._in, objectCodec, byteQuadsCanonicalizer.makeChild(i2), this._inputBuffer, this.f21282a, this.f21283b, this.f21284c);
    }

    public Reader constructReader() throws IOException {
        JsonEncoding encoding = this._context.getEncoding();
        int bits = encoding.bits();
        if (bits != 8 && bits != 16) {
            if (bits != 32) {
                throw new RuntimeException("Internal error");
            }
            IOContext iOContext = this._context;
            return new UTF32Reader(iOContext, this._in, this._inputBuffer, this.f21282a, this.f21283b, iOContext.getEncoding().isBigEndian());
        }
        InputStream inputStream = this._in;
        if (inputStream == null) {
            inputStream = new ByteArrayInputStream(this._inputBuffer, this.f21282a, this.f21283b);
        } else if (this.f21282a < this.f21283b) {
            inputStream = new MergedStream(this._context, inputStream, this._inputBuffer, this.f21282a, this.f21283b);
        }
        return new InputStreamReader(inputStream, encoding.getJavaName());
    }

    /* renamed from: d */
    public final void m17156d(String str) throws IOException {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x005c, code lost:
    
        if (m17153a((r1[r5 + 1] & 255) | ((r1[r5] & 255) << 8)) != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003f, code lost:
    
        if (m17153a(r1 >>> 16) != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonEncoding detectEncoding() throws java.io.IOException {
        /*
            r8 = this;
            r0 = 4
            boolean r1 = r8.ensureLoaded(r0)
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L42
            byte[] r1 = r8._inputBuffer
            int r5 = r8.f21282a
            r6 = r1[r5]
            int r6 = r6 << 24
            int r7 = r5 + 1
            r7 = r1[r7]
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r7 = r7 << 16
            r6 = r6 | r7
            int r7 = r5 + 2
            r7 = r1[r7]
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r7 = r7 << 8
            r6 = r6 | r7
            int r5 = r5 + 3
            r1 = r1[r5]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r1 = r1 | r6
            boolean r5 = r8.m17155c(r1)
            if (r5 == 0) goto L32
            goto L5e
        L32:
            boolean r5 = r8.m17154b(r1)
            if (r5 == 0) goto L39
            goto L5e
        L39:
            int r1 = r1 >>> 16
            boolean r1 = r8.m17153a(r1)
            if (r1 == 0) goto L5f
            goto L5e
        L42:
            boolean r1 = r8.ensureLoaded(r2)
            if (r1 == 0) goto L5f
            byte[] r1 = r8._inputBuffer
            int r5 = r8.f21282a
            r6 = r1[r5]
            r6 = r6 & 255(0xff, float:3.57E-43)
            int r6 = r6 << 8
            int r5 = r5 + r3
            r1 = r1[r5]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r1 = r1 | r6
            boolean r1 = r8.m17153a(r1)
            if (r1 == 0) goto L5f
        L5e:
            r4 = r3
        L5f:
            if (r4 != 0) goto L64
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF8
            goto L8a
        L64:
            int r1 = r8._bytesPerChar
            if (r1 == r3) goto L88
            if (r1 == r2) goto L7e
            if (r1 != r0) goto L76
            boolean r0 = r8._bigEndian
            if (r0 == 0) goto L73
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF32_BE
            goto L8a
        L73:
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF32_LE
            goto L8a
        L76:
            java.lang.RuntimeException r8 = new java.lang.RuntimeException
            java.lang.String r0 = "Internal error"
            r8.<init>(r0)
            throw r8
        L7e:
            boolean r0 = r8._bigEndian
            if (r0 == 0) goto L85
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF16_BE
            goto L8a
        L85:
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF16_LE
            goto L8a
        L88:
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF8
        L8a:
            com.fasterxml.jackson.core.io.IOContext r8 = r8._context
            r8.setEncoding(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper.detectEncoding():com.fasterxml.jackson.core.JsonEncoding");
    }

    public boolean ensureLoaded(int i) throws IOException {
        int read;
        int i2 = this.f21283b - this.f21282a;
        while (i2 < i) {
            InputStream inputStream = this._in;
            if (inputStream == null) {
                read = -1;
            } else {
                byte[] bArr = this._inputBuffer;
                int i3 = this.f21283b;
                read = inputStream.read(bArr, i3, bArr.length - i3);
            }
            if (read < 1) {
                return false;
            }
            this.f21283b += read;
            i2 += read;
        }
        return true;
    }

    public ByteSourceJsonBootstrapper(IOContext iOContext, byte[] bArr, int i, int i2) {
        this._bigEndian = true;
        this._context = iOContext;
        this._in = null;
        this._inputBuffer = bArr;
        this.f21282a = i;
        this.f21283b = i2 + i;
        this._inputProcessed = -i;
        this.f21284c = false;
    }
}
