package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.DoubleToDecimal;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.util.JDKUtils;
import com.fasterxml.jackson.core.base.ParserBase;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.rve;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.logging.log4j.util.Chars;
import sun.misc.Unsafe;

/* renamed from: com.alibaba.fastjson2.k */
/* loaded from: classes3.dex */
public final class C1741k extends JSONWriter {

    /* renamed from: h */
    public static final char[] f12462h = "{\"$ref\":".toCharArray();

    /* renamed from: f */
    public char[] f12463f;

    /* renamed from: g */
    public final JSONFactory.C1722b f12464g;

    public C1741k(JSONWriter.Context context) {
        super(context, null, false, StandardCharsets.UTF_16);
        int identityHashCode = System.identityHashCode(Thread.currentThread());
        JSONFactory.C1722b c1722b = JSONFactory.f12217A[identityHashCode & (r0.length - 1)];
        this.f12464g = c1722b;
        char[] andSet = JSONFactory.f12219C.getAndSet(c1722b, null);
        this.f12463f = andSet == null ? new char[8192] : andSet;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0050. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0053. Please report as an issue. */
    /* renamed from: H */
    public final void m7426H(byte[] bArr) {
        int i;
        int length = bArr.length;
        char c = this.quote;
        long j = this.context.f12331k;
        boolean z = (JSONWriter.Feature.EscapeNoneAscii.mask & j) != 0;
        boolean z2 = (j & JSONWriter.Feature.BrowserSecure.mask) != 0;
        int i2 = this.off;
        m7429j((length * 6) + i2 + 2);
        char[] cArr = this.f12463f;
        int i3 = i2 + 1;
        cArr[i2] = c;
        for (byte b : bArr) {
            char c2 = (char) (b & 255);
            if (c2 != '\"') {
                if (c2 != '<' && c2 != '>') {
                    if (c2 != '\\') {
                        switch (c2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '0';
                                cArr[i3 + 5] = (char) (c2 + '0');
                                i3 += 6;
                                break;
                            case '\b':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'b';
                                break;
                            case '\t':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 't';
                                break;
                            case '\n':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'n';
                                break;
                            case 11:
                            case 14:
                            case 15:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '0';
                                cArr[i3 + 5] = (char) ((c2 - '\n') + 97);
                                i3 += 6;
                                break;
                            case '\f':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'f';
                                break;
                            case '\r':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'r';
                                break;
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '1';
                                cArr[i3 + 5] = (char) (c2 + rve.f83532a + 48);
                                i3 += 6;
                                break;
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '1';
                                cArr[i3 + 5] = (char) ((c2 - 26) + 97);
                                i3 += 6;
                                break;
                            default:
                                switch (c2) {
                                    case '\'':
                                        break;
                                    case '(':
                                    case ')':
                                        break;
                                    default:
                                        if (!z || c2 <= 127) {
                                            i = i3 + 1;
                                            cArr[i3] = c2;
                                            i3 = i;
                                            break;
                                        } else {
                                            cArr[i3] = '\\';
                                            cArr[i3 + 1] = 'u';
                                            cArr[i3 + 2] = '0';
                                            cArr[i3 + 3] = '0';
                                            char[] cArr2 = JSONWriter.f12320e;
                                            cArr[i3 + 4] = cArr2[(c2 >>> 4) & 15];
                                            cArr[i3 + 5] = cArr2[c2 & 15];
                                            i3 += 6;
                                            break;
                                        }
                                }
                        }
                    } else {
                        cArr[i3] = '\\';
                        cArr[i3 + 1] = c2;
                    }
                    i3 += 2;
                }
                if (z2) {
                    cArr[i3] = '\\';
                    cArr[i3 + 1] = 'u';
                    cArr[i3 + 2] = '0';
                    cArr[i3 + 3] = '0';
                    char[] cArr3 = JSONWriter.f12320e;
                    cArr[i3 + 4] = cArr3[(c2 >>> 4) & 15];
                    cArr[i3 + 5] = cArr3[c2 & 15];
                    i3 += 6;
                } else {
                    i = i3 + 1;
                    cArr[i3] = c2;
                    i3 = i;
                }
            }
            if (c2 == c) {
                cArr[i3] = '\\';
                i3++;
            }
            i = i3 + 1;
            cArr[i3] = c2;
            i3 = i;
        }
        cArr[i3] = c;
        this.off = i3 + 1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x004d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0050. Please report as an issue. */
    /* renamed from: I */
    public final void m7427I(char[] cArr) {
        int i;
        int length = cArr.length;
        char c = this.quote;
        long j = this.context.f12331k;
        boolean z = (JSONWriter.Feature.EscapeNoneAscii.mask & j) != 0;
        boolean z2 = (j & JSONWriter.Feature.BrowserSecure.mask) != 0;
        int i2 = this.off;
        m7429j((length * 6) + i2 + 2);
        char[] cArr2 = this.f12463f;
        int i3 = i2 + 1;
        cArr2[i2] = c;
        for (char c2 : cArr) {
            if (c2 != '\"') {
                if (c2 != '<' && c2 != '>') {
                    if (c2 != '\\') {
                        switch (c2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                cArr2[i3] = '\\';
                                cArr2[i3 + 1] = 'u';
                                cArr2[i3 + 2] = '0';
                                cArr2[i3 + 3] = '0';
                                cArr2[i3 + 4] = '0';
                                cArr2[i3 + 5] = (char) (c2 + '0');
                                i3 += 6;
                                break;
                            case '\b':
                                cArr2[i3] = '\\';
                                cArr2[i3 + 1] = 'b';
                                break;
                            case '\t':
                                cArr2[i3] = '\\';
                                cArr2[i3 + 1] = 't';
                                break;
                            case '\n':
                                cArr2[i3] = '\\';
                                cArr2[i3 + 1] = 'n';
                                break;
                            case 11:
                            case 14:
                            case 15:
                                cArr2[i3] = '\\';
                                cArr2[i3 + 1] = 'u';
                                cArr2[i3 + 2] = '0';
                                cArr2[i3 + 3] = '0';
                                cArr2[i3 + 4] = '0';
                                cArr2[i3 + 5] = (char) ((c2 - '\n') + 97);
                                i3 += 6;
                                break;
                            case '\f':
                                cArr2[i3] = '\\';
                                cArr2[i3 + 1] = 'f';
                                break;
                            case '\r':
                                cArr2[i3] = '\\';
                                cArr2[i3 + 1] = 'r';
                                break;
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                                cArr2[i3] = '\\';
                                cArr2[i3 + 1] = 'u';
                                cArr2[i3 + 2] = '0';
                                cArr2[i3 + 3] = '0';
                                cArr2[i3 + 4] = '1';
                                cArr2[i3 + 5] = (char) (c2 + rve.f83532a + 48);
                                i3 += 6;
                                break;
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                                cArr2[i3] = '\\';
                                cArr2[i3 + 1] = 'u';
                                cArr2[i3 + 2] = '0';
                                cArr2[i3 + 3] = '0';
                                cArr2[i3 + 4] = '1';
                                cArr2[i3 + 5] = (char) ((c2 - 26) + 97);
                                i3 += 6;
                                break;
                            default:
                                switch (c2) {
                                    case '\'':
                                        break;
                                    case '(':
                                    case ')':
                                        break;
                                    default:
                                        if (!z || c2 <= 127) {
                                            i = i3 + 1;
                                            cArr2[i3] = c2;
                                            i3 = i;
                                            break;
                                        } else {
                                            cArr2[i3] = '\\';
                                            cArr2[i3 + 1] = 'u';
                                            char[] cArr3 = JSONWriter.f12320e;
                                            cArr2[i3 + 2] = cArr3[(c2 >>> '\f') & 15];
                                            cArr2[i3 + 3] = cArr3[(c2 >>> '\b') & 15];
                                            cArr2[i3 + 4] = cArr3[(c2 >>> 4) & 15];
                                            cArr2[i3 + 5] = cArr3[c2 & 15];
                                            i3 += 6;
                                            break;
                                        }
                                        break;
                                }
                        }
                    } else {
                        cArr2[i3] = '\\';
                        cArr2[i3 + 1] = c2;
                    }
                    i3 += 2;
                }
                if (z2) {
                    cArr2[i3] = '\\';
                    cArr2[i3 + 1] = 'u';
                    cArr2[i3 + 2] = '0';
                    cArr2[i3 + 3] = '0';
                    char[] cArr4 = JSONWriter.f12320e;
                    cArr2[i3 + 4] = cArr4[(c2 >>> 4) & 15];
                    cArr2[i3 + 5] = cArr4[c2 & 15];
                    i3 += 6;
                } else {
                    i = i3 + 1;
                    cArr2[i3] = c2;
                    i3 = i;
                }
            }
            if (c2 == c) {
                cArr2[i3] = '\\';
                i3++;
            }
            i = i3 + 1;
            cArr2[i3] = c2;
            i3 = i;
        }
        cArr2[i3] = c;
        this.off = i3 + 1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0056. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0059. Please report as an issue. */
    /* renamed from: M */
    public final void m7428M(byte[] bArr) {
        int i;
        int length = bArr.length;
        char c = this.quote;
        long j = this.context.f12331k;
        boolean z = (JSONWriter.Feature.EscapeNoneAscii.mask & j) != 0;
        boolean z2 = (j & JSONWriter.Feature.BrowserSecure.mask) != 0;
        int i2 = this.off;
        m7429j((length * 6) + i2 + 2);
        char[] cArr = this.f12463f;
        int i3 = i2 + 1;
        cArr[i2] = c;
        for (int i4 = 0; i4 < length; i4 += 2) {
            char c2 = JDKUtils.UNSAFE.getChar(bArr, Unsafe.ARRAY_CHAR_BASE_OFFSET + i4);
            if (c2 != '\"') {
                if (c2 != '<' && c2 != '>') {
                    if (c2 != '\\') {
                        switch (c2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '0';
                                cArr[i3 + 5] = (char) (c2 + '0');
                                i3 += 6;
                                break;
                            case '\b':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'b';
                                break;
                            case '\t':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 't';
                                break;
                            case '\n':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'n';
                                break;
                            case 11:
                            case 14:
                            case 15:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '0';
                                cArr[i3 + 5] = (char) ((c2 - '\n') + 97);
                                i3 += 6;
                                break;
                            case '\f':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'f';
                                break;
                            case '\r':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'r';
                                break;
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '1';
                                cArr[i3 + 5] = (char) (c2 + rve.f83532a + 48);
                                i3 += 6;
                                break;
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '1';
                                cArr[i3 + 5] = (char) ((c2 - 26) + 97);
                                i3 += 6;
                                break;
                            default:
                                switch (c2) {
                                    case '\'':
                                        break;
                                    case '(':
                                    case ')':
                                        break;
                                    default:
                                        if (!z || c2 <= 127) {
                                            i = i3 + 1;
                                            cArr[i3] = c2;
                                            i3 = i;
                                            break;
                                        } else {
                                            cArr[i3] = '\\';
                                            cArr[i3 + 1] = 'u';
                                            char[] cArr2 = JSONWriter.f12320e;
                                            cArr[i3 + 2] = cArr2[(c2 >>> '\f') & 15];
                                            cArr[i3 + 3] = cArr2[(c2 >>> '\b') & 15];
                                            cArr[i3 + 4] = cArr2[(c2 >>> 4) & 15];
                                            cArr[i3 + 5] = cArr2[c2 & 15];
                                            i3 += 6;
                                            break;
                                        }
                                }
                        }
                    } else {
                        cArr[i3] = '\\';
                        cArr[i3 + 1] = c2;
                    }
                    i3 += 2;
                }
                if (z2) {
                    cArr[i3] = '\\';
                    cArr[i3 + 1] = 'u';
                    cArr[i3 + 2] = '0';
                    cArr[i3 + 3] = '0';
                    char[] cArr3 = JSONWriter.f12320e;
                    cArr[i3 + 4] = cArr3[(c2 >>> 4) & 15];
                    cArr[i3 + 5] = cArr3[c2 & 15];
                    i3 += 6;
                } else {
                    i = i3 + 1;
                    cArr[i3] = c2;
                    i3 = i;
                }
            }
            if (c2 == c) {
                cArr[i3] = '\\';
                i3++;
            }
            i = i3 + 1;
            cArr[i3] = c2;
            i3 = i;
        }
        cArr[i3] = c;
        this.off = i3 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        char[] cArr = this.f12463f;
        if (cArr.length > 1048576) {
            return;
        }
        JSONFactory.f12219C.lazySet(this.f12464g, cArr);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void endArray() {
        this.level--;
        int i = this.off;
        int i2 = (this.pretty ? this.indent + 3 : 1) + i;
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        if (this.pretty) {
            this.indent--;
            cArr[i] = '\n';
            i++;
            int i3 = 0;
            while (i3 < this.indent) {
                cArr[i] = '\t';
                i3++;
                i++;
            }
        }
        cArr[i] = ']';
        this.off = i + 1;
        this.startObject = false;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void endObject() {
        this.level--;
        int i = this.off;
        int i2 = (this.pretty ? this.indent + 3 : 1) + i;
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        if (this.pretty) {
            this.indent--;
            cArr[i] = '\n';
            i++;
            int i3 = 0;
            while (i3 < this.indent) {
                cArr[i] = '\t';
                i3++;
                i++;
            }
        }
        cArr[i] = '}';
        this.off = i + 1;
        this.startObject = false;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void flushTo(Writer writer) {
        try {
            int i = this.off;
            if (i > 0) {
                writer.write(this.f12463f, 0, i);
                this.off = 0;
            }
        } catch (IOException e) {
            throw new JSONException("flushTo error", e);
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public byte[] getBytes() {
        int i;
        boolean z;
        int i2 = 0;
        while (true) {
            i = this.off;
            if (i2 >= i) {
                z = true;
                break;
            }
            if (this.f12463f[i2] >= 128) {
                z = false;
                break;
            }
            i2++;
        }
        if (z) {
            byte[] bArr = new byte[i];
            for (int i3 = 0; i3 < this.off; i3++) {
                bArr[i3] = (byte) this.f12463f[i3];
            }
            return bArr;
        }
        byte[] bArr2 = new byte[i * 3];
        return Arrays.copyOf(bArr2, IOUtils.encodeUTF8(this.f12463f, 0, i, bArr2, 0));
    }

    /* renamed from: j */
    public final void m7429j(int i) {
        char[] cArr = this.f12463f;
        if (i - cArr.length > 0) {
            int length = cArr.length;
            int i2 = length + (length >> 1);
            if (i2 - i >= 0) {
                i = i2;
            }
            if (i - this.maxArraySize > 0) {
                throw new OutOfMemoryError("try enabling LargeObject feature instead");
            }
            this.f12463f = Arrays.copyOf(cArr, i);
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public int size() {
        return this.off;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void startArray() {
        this.level++;
        int i = this.off;
        int i2 = (this.pretty ? this.indent + 3 : 1) + i;
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        int i3 = i + 1;
        cArr[i] = '[';
        if (this.pretty) {
            this.indent++;
            int i4 = i3 + 1;
            cArr[i3] = '\n';
            int i5 = 0;
            while (true) {
                i3 = i4;
                if (i5 >= this.indent) {
                    break;
                }
                i4 = i3 + 1;
                cArr[i3] = '\t';
                i5++;
            }
        }
        this.off = i3;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void startObject() {
        this.level++;
        this.startObject = true;
        int i = this.off;
        int i2 = (this.pretty ? this.indent + 3 : 1) + i;
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        int i3 = i + 1;
        cArr[i] = '{';
        if (this.pretty) {
            this.indent++;
            int i4 = i3 + 1;
            cArr[i3] = '\n';
            int i5 = 0;
            while (true) {
                i3 = i4;
                if (i5 >= this.indent) {
                    break;
                }
                i4 = i3 + 1;
                cArr[i3] = '\t';
                i5++;
            }
        }
        this.off = i3;
    }

    public String toString() {
        return new String(this.f12463f, 0, this.off);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0052. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0055. Please report as an issue. */
    /* renamed from: w */
    public final void m7430w(String str) {
        int i;
        int length = str.length();
        char c = this.quote;
        long j = this.context.f12331k;
        boolean z = (JSONWriter.Feature.EscapeNoneAscii.mask & j) != 0;
        boolean z2 = (j & JSONWriter.Feature.BrowserSecure.mask) != 0;
        int i2 = this.off;
        m7429j((length * 6) + i2 + 2);
        char[] cArr = this.f12463f;
        int i3 = i2 + 1;
        cArr[i2] = c;
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            if (charAt != '\"') {
                if (charAt != '<' && charAt != '>') {
                    if (charAt != '\\') {
                        switch (charAt) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '0';
                                cArr[i3 + 5] = (char) (charAt + '0');
                                i3 += 6;
                                break;
                            case '\b':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'b';
                                break;
                            case '\t':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 't';
                                break;
                            case '\n':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'n';
                                break;
                            case 11:
                            case 14:
                            case 15:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '0';
                                cArr[i3 + 5] = (char) ((charAt - '\n') + 97);
                                i3 += 6;
                                break;
                            case '\f':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'f';
                                break;
                            case '\r':
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'r';
                                break;
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '1';
                                cArr[i3 + 5] = (char) (charAt + rve.f83532a + 48);
                                i3 += 6;
                                break;
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                                cArr[i3] = '\\';
                                cArr[i3 + 1] = 'u';
                                cArr[i3 + 2] = '0';
                                cArr[i3 + 3] = '0';
                                cArr[i3 + 4] = '1';
                                cArr[i3 + 5] = (char) ((charAt - 26) + 97);
                                i3 += 6;
                                break;
                            default:
                                switch (charAt) {
                                    case '\'':
                                        break;
                                    case '(':
                                    case ')':
                                        break;
                                    default:
                                        if (!z || charAt <= 127) {
                                            i = i3 + 1;
                                            cArr[i3] = charAt;
                                            i3 = i;
                                            break;
                                        } else {
                                            cArr[i3] = '\\';
                                            cArr[i3 + 1] = 'u';
                                            char[] cArr2 = JSONWriter.f12320e;
                                            cArr[i3 + 2] = cArr2[(charAt >>> '\f') & 15];
                                            cArr[i3 + 3] = cArr2[(charAt >>> '\b') & 15];
                                            cArr[i3 + 4] = cArr2[(charAt >>> 4) & 15];
                                            cArr[i3 + 5] = cArr2[charAt & 15];
                                            i3 += 6;
                                            break;
                                        }
                                }
                        }
                    } else {
                        cArr[i3] = '\\';
                        cArr[i3 + 1] = charAt;
                    }
                    i3 += 2;
                }
                if (z2) {
                    cArr[i3] = '\\';
                    cArr[i3 + 1] = 'u';
                    cArr[i3 + 2] = '0';
                    cArr[i3 + 3] = '0';
                    char[] cArr3 = JSONWriter.f12320e;
                    cArr[i3 + 4] = cArr3[(charAt >>> 4) & 15];
                    cArr[i3 + 5] = cArr3[charAt & 15];
                    i3 += 6;
                } else {
                    i = i3 + 1;
                    cArr[i3] = charAt;
                    i3 = i;
                }
            }
            if (charAt == c) {
                cArr[i3] = '\\';
                i3++;
            }
            i = i3 + 1;
            cArr[i3] = charAt;
            i3 = i;
        }
        cArr[i3] = c;
        this.off = i3 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void write(JSONObject jSONObject) {
        if (jSONObject == null) {
            writeNull();
            return;
        }
        long j = JSONWriter.Feature.ReferenceDetection.mask | JSONWriter.Feature.PrettyFormat.mask | JSONWriter.Feature.NotWriteEmptyArray.mask | JSONWriter.Feature.NotWriteDefaultValue.mask;
        JSONWriter.Context context = this.context;
        if ((j & context.f12331k) != 0) {
            context.getObjectWriter(jSONObject.getClass()).write(this, jSONObject, null, null, 0L);
            return;
        }
        int i = this.off;
        if (i == this.f12463f.length) {
            m7429j(i + 1);
        }
        char[] cArr = this.f12463f;
        int i2 = this.off;
        this.off = i2 + 1;
        cArr[i2] = '{';
        boolean z = true;
        for (Map.Entry<String, Object> entry : jSONObject.entrySet()) {
            Object value = entry.getValue();
            if (value != null || (this.context.f12331k & JSONWriter.Feature.WriteMapNullValue.mask) != 0) {
                if (!z) {
                    int i3 = this.off;
                    if (i3 == this.f12463f.length) {
                        m7429j(i3 + 1);
                    }
                    char[] cArr2 = this.f12463f;
                    int i4 = this.off;
                    this.off = i4 + 1;
                    cArr2[i4] = ',';
                }
                String key = entry.getKey();
                if (key instanceof String) {
                    writeString(key);
                } else {
                    writeAny(key);
                }
                int i5 = this.off;
                if (i5 == this.f12463f.length) {
                    m7429j(i5 + 1);
                }
                char[] cArr3 = this.f12463f;
                int i6 = this.off;
                this.off = i6 + 1;
                cArr3[i6] = ':';
                if (value == null) {
                    writeNull();
                } else {
                    Class<?> cls = value.getClass();
                    if (cls == String.class) {
                        writeString((String) value);
                    } else if (cls == Integer.class) {
                        writeInt32((Integer) value);
                    } else if (cls == Long.class) {
                        writeInt64((Long) value);
                    } else if (cls == Boolean.class) {
                        writeBool(((Boolean) value).booleanValue());
                    } else if (cls == BigDecimal.class) {
                        writeDecimal((BigDecimal) value, 0L, null);
                    } else if (cls == JSONArray.class) {
                        write((JSONArray) value);
                    } else if (cls == JSONObject.class) {
                        write((JSONObject) value);
                    } else {
                        this.context.getObjectWriter(cls, cls).write(this, value, null, null, 0L);
                    }
                }
                z = false;
            }
        }
        int i7 = this.off;
        if (i7 == this.f12463f.length) {
            m7429j(i7 + 1);
        }
        char[] cArr4 = this.f12463f;
        int i8 = this.off;
        this.off = i8 + 1;
        cArr4[i8] = '}';
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public final void write0(char c) {
        int i = this.off;
        if (i == this.f12463f.length) {
            m7429j(i + 1);
        }
        this.f12463f[i] = c;
        this.off = i + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeBase64(byte[] bArr) {
        if (bArr == null) {
            writeArrayNull();
            return;
        }
        int i = this.off;
        m7429j(((((bArr.length - 1) / 3) + 1) << 2) + i + 2);
        char[] cArr = this.f12463f;
        int i2 = i + 1;
        cArr[i] = this.quote;
        int length = (bArr.length / 3) * 3;
        int i3 = 0;
        while (i3 < length) {
            int i4 = i3 + 1;
            int i5 = i4 + 1;
            int i6 = ((bArr[i3] & 255) << 16) | ((bArr[i4] & 255) << 8);
            int i7 = i5 + 1;
            int i8 = i6 | (bArr[i5] & 255);
            char[] cArr2 = JSONFactory.f12246v;
            cArr[i2] = cArr2[(i8 >>> 18) & 63];
            cArr[i2 + 1] = cArr2[(i8 >>> 12) & 63];
            cArr[i2 + 2] = cArr2[(i8 >>> 6) & 63];
            cArr[i2 + 3] = cArr2[i8 & 63];
            i2 += 4;
            i3 = i7;
        }
        int length2 = bArr.length - length;
        if (length2 > 0) {
            int i9 = ((bArr[length] & 255) << 10) | (length2 == 2 ? (bArr[bArr.length - 1] & 255) << 2 : 0);
            char[] cArr3 = JSONFactory.f12246v;
            cArr[i2] = cArr3[i9 >> 12];
            cArr[i2 + 1] = cArr3[(i9 >>> 6) & 63];
            cArr[i2 + 2] = length2 == 2 ? cArr3[i9 & 63] : '=';
            cArr[i2 + 3] = '=';
            i2 += 4;
        }
        cArr[i2] = this.quote;
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeBigInt(BigInteger bigInteger, long j) {
        int i;
        if (bigInteger == null) {
            writeNumberNull();
            return;
        }
        String bigInteger2 = bigInteger.toString(10);
        long j2 = j | this.context.f12331k;
        boolean z = true;
        boolean z2 = (JSONWriter.Feature.BrowserCompatible.mask & j2) != 0 && (bigInteger.compareTo(JSONFactory.f12244t) < 0 || bigInteger.compareTo(JSONFactory.f12245u) > 0);
        boolean z3 = (j2 & (JSONWriter.Feature.WriteNonStringValueAsString.mask | JSONWriter.Feature.WriteLongAsString.mask)) != 0;
        if (!z2 && !z3) {
            z = false;
        }
        int length = bigInteger2.length();
        m7429j(this.off + length + 2);
        char[] cArr = this.f12463f;
        int i2 = this.off;
        if (z) {
            int i3 = i2 + 1;
            cArr[i2] = '\"';
            bigInteger2.getChars(0, length, cArr, i3);
            int i4 = i3 + length;
            i = i4 + 1;
            cArr[i4] = '\"';
        } else {
            bigInteger2.getChars(0, length, cArr, i2);
            i = length + i2;
        }
        this.off = i;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeChar(char c) {
        int i;
        int i2 = this.off;
        int i3 = i2 + 8;
        if (i3 >= this.f12463f.length) {
            m7429j(i3);
        }
        char[] cArr = this.f12463f;
        int i4 = i2 + 1;
        char c2 = this.quote;
        cArr[i2] = c2;
        if (c == '\"' || c == '\'') {
            if (c == c2) {
                cArr[i4] = '\\';
                i4++;
            }
            i = i4 + 1;
            cArr[i4] = c;
        } else {
            if (c != '\\') {
                switch (c) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        cArr[i4] = '\\';
                        cArr[i4 + 1] = 'u';
                        cArr[i4 + 2] = '0';
                        cArr[i4 + 3] = '0';
                        cArr[i4 + 4] = '0';
                        cArr[i4 + 5] = (char) (c + '0');
                        i = i4 + 6;
                        break;
                    case '\b':
                        cArr[i4] = '\\';
                        cArr[i4 + 1] = 'b';
                        break;
                    case '\t':
                        cArr[i4] = '\\';
                        cArr[i4 + 1] = 't';
                        break;
                    case '\n':
                        cArr[i4] = '\\';
                        cArr[i4 + 1] = 'n';
                        break;
                    case 11:
                    case 14:
                    case 15:
                        cArr[i4] = '\\';
                        cArr[i4 + 1] = 'u';
                        cArr[i4 + 2] = '0';
                        cArr[i4 + 3] = '0';
                        cArr[i4 + 4] = '0';
                        cArr[i4 + 5] = (char) ((c - '\n') + 97);
                        i = i4 + 6;
                        break;
                    case '\f':
                        cArr[i4] = '\\';
                        cArr[i4 + 1] = 'f';
                        break;
                    case '\r':
                        cArr[i4] = '\\';
                        cArr[i4 + 1] = 'r';
                        break;
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                        cArr[i4] = '\\';
                        cArr[i4 + 1] = 'u';
                        cArr[i4 + 2] = '0';
                        cArr[i4 + 3] = '0';
                        cArr[i4 + 4] = '1';
                        cArr[i4 + 5] = (char) (c + rve.f83532a + 48);
                        i = i4 + 6;
                        break;
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                        cArr[i4] = '\\';
                        cArr[i4 + 1] = 'u';
                        cArr[i4 + 2] = '0';
                        cArr[i4 + 3] = '0';
                        cArr[i4 + 4] = '1';
                        cArr[i4 + 5] = (char) ((c - 26) + 97);
                        i = i4 + 6;
                        break;
                    default:
                        i = i4 + 1;
                        cArr[i4] = c;
                        break;
                }
            } else {
                cArr[i4] = '\\';
                cArr[i4 + 1] = c;
            }
            i = i4 + 2;
        }
        cArr[i] = c2;
        this.off = i + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeColon() {
        int i = this.off;
        if (i == this.f12463f.length) {
            m7429j(i + 1);
        }
        this.f12463f[i] = ':';
        this.off = i + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeComma() {
        int i = 0;
        this.startObject = false;
        int i2 = this.off;
        int i3 = (this.pretty ? this.indent + 3 : 1) + i2;
        if (i3 >= this.f12463f.length) {
            m7429j(i3);
        }
        char[] cArr = this.f12463f;
        int i4 = i2 + 1;
        cArr[i2] = ',';
        if (this.pretty) {
            int i5 = i4 + 1;
            cArr[i4] = '\n';
            while (true) {
                i4 = i5;
                if (i >= this.indent) {
                    break;
                }
                i5 = i4 + 1;
                cArr[i4] = '\t';
                i++;
            }
        }
        this.off = i4;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateTime14(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = this.off;
        int i8 = i7 + 16;
        if (i8 >= this.f12463f.length) {
            m7429j(i8);
        }
        char[] cArr = this.f12463f;
        char c = this.quote;
        cArr[i7] = c;
        if (i < 0 || i > 9999) {
            throw new IllegalArgumentException("Only 4 digits numbers are supported. Provided: " + i);
        }
        int i9 = i / 1000;
        int[] iArr = IOUtils.DIGITS_K;
        int i10 = iArr[i - (i9 * 1000)];
        cArr[i7 + 1] = (char) ((byte) (i9 + 48));
        cArr[i7 + 2] = (char) ((byte) (i10 >> 16));
        cArr[i7 + 3] = (char) ((byte) (i10 >> 8));
        cArr[i7 + 4] = (char) ((byte) i10);
        int i11 = iArr[i2];
        cArr[i7 + 5] = (char) ((byte) (i11 >> 8));
        cArr[i7 + 6] = (char) ((byte) i11);
        int i12 = iArr[i3];
        cArr[i7 + 7] = (char) ((byte) (i12 >> 8));
        cArr[i7 + 8] = (char) ((byte) i12);
        int i13 = iArr[i4];
        cArr[i7 + 9] = (char) ((byte) (i13 >> 8));
        cArr[i7 + 10] = (char) ((byte) i13);
        int i14 = iArr[i5];
        cArr[i7 + 11] = (char) ((byte) (i14 >> 8));
        cArr[i7 + 12] = (char) ((byte) i14);
        int i15 = iArr[i6];
        cArr[i7 + 13] = (char) ((byte) (i15 >> 8));
        cArr[i7 + 14] = (char) ((byte) i15);
        cArr[i7 + 15] = c;
        this.off = i8;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateTime19(int i, int i2, int i3, int i4, int i5, int i6) {
        m7429j(this.off + 21);
        char[] cArr = this.f12463f;
        int i7 = this.off;
        char c = this.quote;
        cArr[i7] = c;
        if (i < 0 || i > 9999) {
            throw new IllegalArgumentException("Only 4 digits numbers are supported. Provided: " + i);
        }
        int i8 = i / 1000;
        int[] iArr = IOUtils.DIGITS_K;
        int i9 = iArr[i - (i8 * 1000)];
        cArr[i7 + 1] = (char) ((byte) (i8 + 48));
        cArr[i7 + 2] = (char) ((byte) (i9 >> 16));
        cArr[i7 + 3] = (char) ((byte) (i9 >> 8));
        cArr[i7 + 4] = (char) ((byte) i9);
        cArr[i7 + 5] = '-';
        int i10 = iArr[i2];
        cArr[i7 + 6] = (char) ((byte) (i10 >> 8));
        cArr[i7 + 7] = (char) ((byte) i10);
        cArr[i7 + 8] = '-';
        int i11 = iArr[i3];
        cArr[i7 + 9] = (char) ((byte) (i11 >> 8));
        cArr[i7 + 10] = (char) ((byte) i11);
        cArr[i7 + 11] = ' ';
        int i12 = iArr[i4];
        cArr[i7 + 12] = (char) ((byte) (i12 >> 8));
        cArr[i7 + 13] = (char) ((byte) i12);
        cArr[i7 + 14] = ':';
        int i13 = iArr[i5];
        cArr[i7 + 15] = (char) ((byte) (i13 >> 8));
        cArr[i7 + 16] = (char) ((byte) i13);
        cArr[i7 + 17] = ':';
        int i14 = iArr[i6];
        cArr[i7 + 18] = (char) ((byte) (i14 >> 8));
        cArr[i7 + 19] = (char) ((byte) i14);
        cArr[i7 + 20] = (char) ((byte) c);
        this.off = i7 + 21;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateTimeISO8601(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        int i9 = z ? i8 == 0 ? 1 : 6 : 0;
        int i10 = this.off;
        int i11 = i10 + 25 + i9;
        if (i10 + i11 >= this.f12463f.length) {
            m7429j(i11);
        }
        char[] cArr = this.f12463f;
        cArr[i10] = this.quote;
        int writeInt32 = IOUtils.writeInt32(cArr, i10 + 1, i);
        cArr[writeInt32] = '-';
        int[] iArr = IOUtils.DIGITS_K;
        int i12 = iArr[i2];
        cArr[writeInt32 + 1] = (char) ((byte) (i12 >> 8));
        cArr[writeInt32 + 2] = (char) ((byte) i12);
        cArr[writeInt32 + 3] = '-';
        int i13 = iArr[i3];
        cArr[writeInt32 + 4] = (char) ((byte) (i13 >> 8));
        cArr[writeInt32 + 5] = (char) ((byte) i13);
        cArr[writeInt32 + 6] = (char) ((byte) (z ? 84 : 32));
        int i14 = iArr[i4];
        cArr[writeInt32 + 7] = (char) ((byte) (i14 >> 8));
        cArr[writeInt32 + 8] = (char) ((byte) i14);
        cArr[writeInt32 + 9] = ':';
        int i15 = iArr[i5];
        cArr[writeInt32 + 10] = (char) ((byte) (i15 >> 8));
        cArr[writeInt32 + 11] = (char) ((byte) i15);
        cArr[writeInt32 + 12] = ':';
        int i16 = iArr[i6];
        cArr[writeInt32 + 13] = (char) ((byte) (i16 >> 8));
        cArr[writeInt32 + 14] = (char) ((byte) i16);
        int i17 = writeInt32 + 15;
        if (i7 > 0) {
            int i18 = i17 + 1;
            cArr[i17] = '.';
            int i19 = i7 / 10;
            int i20 = i19 / 10;
            if (i7 - (i19 * 10) != 0) {
                int i21 = iArr[i7];
                cArr[i18] = (char) ((byte) (i21 >> 16));
                cArr[i18 + 1] = (char) ((byte) (i21 >> 8));
                cArr[i18 + 2] = (char) ((byte) i21);
                i17 = i18 + 3;
            } else if (i19 - (i20 * 10) != 0) {
                int i22 = iArr[i19];
                cArr[i18] = (char) ((byte) (i22 >> 8));
                cArr[i18 + 1] = (char) ((byte) i22);
                i17 = i18 + 2;
            } else {
                i17 = i18 + 1;
                cArr[i18] = (char) ((byte) (i20 + 48));
            }
        }
        if (z) {
            int i23 = i8 / 3600;
            if (i8 == 0) {
                cArr[i17] = 'Z';
                i17++;
            } else {
                int abs = Math.abs(i23);
                cArr[i17] = i23 >= 0 ? PhoneNumberUtil.f36455s : '-';
                int i24 = iArr[abs];
                cArr[i17 + 1] = (char) ((byte) (i24 >> 8));
                cArr[i17 + 2] = (char) ((byte) i24);
                cArr[i17 + 3] = ':';
                int i25 = (i8 - (i23 * 3600)) / 60;
                if (i25 < 0) {
                    i25 = -i25;
                }
                int i26 = iArr[i25];
                cArr[i17 + 4] = (char) ((byte) (i26 >> 8));
                cArr[i17 + 5] = (char) ((byte) i26);
                i17 += 6;
            }
        }
        cArr[i17] = this.quote;
        this.off = i17 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateYYYMMDD10(int i, int i2, int i3) {
        int i4 = this.off;
        int i5 = i4 + 13;
        if (i5 >= this.f12463f.length) {
            m7429j(i5);
        }
        char[] cArr = this.f12463f;
        cArr[i4] = this.quote;
        int writeLocalDate = IOUtils.writeLocalDate(cArr, i4 + 1, i, i2, i3);
        cArr[writeLocalDate] = this.quote;
        this.off = writeLocalDate + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateYYYMMDD8(int i, int i2, int i3) {
        int i4 = this.off;
        int i5 = i4 + 10;
        if (i5 >= this.f12463f.length) {
            m7429j(i5);
        }
        char[] cArr = this.f12463f;
        char c = this.quote;
        cArr[i4] = c;
        if (i < 0 || i > 9999) {
            throw new IllegalArgumentException("Only 4 digits numbers are supported. Provided: " + i);
        }
        int i6 = i / 1000;
        int[] iArr = IOUtils.DIGITS_K;
        int i7 = iArr[i - (i6 * 1000)];
        cArr[i4 + 1] = (char) ((byte) (i6 + 48));
        cArr[i4 + 2] = (char) ((byte) (i7 >> 16));
        cArr[i4 + 3] = (char) ((byte) (i7 >> 8));
        cArr[i4 + 4] = (char) ((byte) i7);
        int i8 = iArr[i2];
        cArr[i4 + 5] = (char) ((byte) (i8 >> 8));
        cArr[i4 + 6] = (char) ((byte) i8);
        int i9 = iArr[i3];
        cArr[i4 + 7] = (char) ((byte) (i9 >> 8));
        cArr[i4 + 8] = (char) ((byte) i9);
        cArr[i4 + 9] = c;
        this.off = i5;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDecimal(BigDecimal bigDecimal, long j, DecimalFormat decimalFormat) {
        if (bigDecimal == null) {
            writeNumberNull();
            return;
        }
        if (decimalFormat != null) {
            writeRaw(decimalFormat.format(bigDecimal));
            return;
        }
        long j2 = j | this.context.f12331k;
        int precision = bigDecimal.precision();
        boolean z = (((JSONWriter.Feature.WriteNonStringValueAsString.mask & j2) > 0L ? 1 : ((JSONWriter.Feature.WriteNonStringValueAsString.mask & j2) == 0L ? 0 : -1)) != 0) || ((JSONWriter.Feature.BrowserCompatible.mask & j2) != 0 && precision >= 16 && (bigDecimal.compareTo(JSONFactory.f12242r) < 0 || bigDecimal.compareTo(JSONFactory.f12243s) > 0));
        int i = this.off;
        int scale = precision + i + bigDecimal.scale() + 7;
        if (scale >= this.f12463f.length) {
            m7429j(scale);
        }
        char[] cArr = this.f12463f;
        if (z) {
            cArr[i] = '\"';
            i++;
        }
        String plainString = (j2 & JSONWriter.Feature.WriteBigDecimalAsPlain.mask) != 0 ? bigDecimal.toPlainString() : bigDecimal.toString();
        plainString.getChars(0, plainString.length(), cArr, i);
        int length = i + plainString.length();
        if (z) {
            cArr[length] = '\"';
            length++;
        }
        this.off = length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDouble(double d) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int i2 = i + 24;
        if (z) {
            i2 += 2;
        }
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        if (z) {
            cArr[i] = '\"';
            i++;
        }
        int doubleToDecimal = i + DoubleToDecimal.toString(d, cArr, i, true);
        if (z) {
            cArr[doubleToDecimal] = '\"';
            doubleToDecimal++;
        }
        this.off = doubleToDecimal;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDoubleArray(double d, double d2) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int i2 = i + 48 + 3;
        if (z) {
            i2 += 2;
        }
        m7429j(i2);
        char[] cArr = this.f12463f;
        int i3 = i + 1;
        cArr[i] = '[';
        if (z) {
            cArr[i3] = '\"';
            i3++;
        }
        int doubleToDecimal = i3 + DoubleToDecimal.toString(d, cArr, i3, true);
        if (z) {
            cArr[doubleToDecimal] = '\"';
            doubleToDecimal++;
        }
        int i4 = doubleToDecimal + 1;
        cArr[doubleToDecimal] = ',';
        if (z) {
            cArr[i4] = '\"';
            i4++;
        }
        int doubleToDecimal2 = i4 + DoubleToDecimal.toString(d2, cArr, i4, true);
        if (z) {
            cArr[doubleToDecimal2] = '\"';
            doubleToDecimal2++;
        }
        cArr[doubleToDecimal2] = ']';
        this.off = doubleToDecimal2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeFloat(float f) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int i2 = i + 15;
        if (z) {
            i2 += 2;
        }
        m7429j(i2);
        char[] cArr = this.f12463f;
        if (z) {
            cArr[i] = '\"';
            i++;
        }
        int doubleToDecimal = i + DoubleToDecimal.toString(f, cArr, i, true);
        if (z) {
            cArr[doubleToDecimal] = '\"';
            doubleToDecimal++;
        }
        this.off = doubleToDecimal;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeHex(byte[] bArr) {
        if (bArr == null) {
            writeNull();
            return;
        }
        int length = (bArr.length * 2) + 3;
        int i = this.off;
        m7429j(length + i + 2);
        char[] cArr = this.f12463f;
        cArr[i] = 'x';
        cArr[i + 1] = Chars.QUOTE;
        int i2 = i + 2;
        for (byte b : bArr) {
            int i3 = b & 255;
            int i4 = i3 >> 4;
            int i5 = i3 & 15;
            int i6 = 48;
            cArr[i2] = (char) (i4 + (i4 < 10 ? 48 : 55));
            int i7 = i2 + 1;
            if (i5 >= 10) {
                i6 = 55;
            }
            cArr[i7] = (char) (i5 + i6);
            i2 += 2;
        }
        cArr[i2] = Chars.QUOTE;
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt16(short s) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int i2 = i + 7;
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        if (z) {
            cArr[i] = this.quote;
            i++;
        }
        int writeInt32 = IOUtils.writeInt32(cArr, i, s);
        if (z) {
            cArr[writeInt32] = this.quote;
            writeInt32++;
        }
        this.off = writeInt32;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt32(int[] iArr) {
        if (iArr == null) {
            writeNull();
            return;
        }
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int length = (iArr.length * 13) + i + 2;
        if (length >= this.f12463f.length) {
            m7429j(length);
        }
        char[] cArr = this.f12463f;
        int i2 = i + 1;
        cArr[i] = '[';
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (i3 != 0) {
                cArr[i2] = ',';
                i2++;
            }
            if (z) {
                cArr[i2] = this.quote;
                i2++;
            }
            int writeInt32 = IOUtils.writeInt32(cArr, i2, iArr[i3]);
            if (z) {
                i2 = writeInt32 + 1;
                cArr[writeInt32] = this.quote;
            } else {
                i2 = writeInt32;
            }
        }
        cArr[i2] = ']';
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt64(long[] jArr) {
        if (jArr == null) {
            writeNull();
            return;
        }
        long j = this.context.f12331k;
        boolean z = (JSONWriter.Feature.BrowserCompatible.mask & j) != 0;
        boolean z2 = (j & (JSONWriter.Feature.WriteNonStringValueAsString.mask | JSONWriter.Feature.WriteLongAsString.mask)) != 0;
        int i = this.off;
        int length = i + 2 + (jArr.length * 23);
        if (length >= this.f12463f.length) {
            m7429j(length);
        }
        char[] cArr = this.f12463f;
        int i2 = i + 1;
        cArr[i] = '[';
        for (int i3 = 0; i3 < jArr.length; i3++) {
            if (i3 != 0) {
                cArr[i2] = ',';
                i2++;
            }
            long j2 = jArr[i3];
            boolean z3 = z2 || (z && j2 <= 9007199254740991L && j2 >= -9007199254740991L);
            if (z3) {
                cArr[i2] = this.quote;
                i2++;
            }
            i2 = IOUtils.writeInt64(cArr, i2, j2);
            if (z3) {
                cArr[i2] = this.quote;
                i2++;
            }
        }
        cArr[i2] = ']';
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt8(byte b) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int i2 = i + 7;
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        if (z) {
            cArr[i] = this.quote;
            i++;
        }
        int writeInt32 = IOUtils.writeInt32(cArr, i, b);
        if (z) {
            cArr[writeInt32] = this.quote;
            writeInt32++;
        }
        this.off = writeInt32;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeLocalDate(LocalDate localDate) {
        if (localDate == null) {
            writeNull();
            return;
        }
        JSONWriter.Context context = this.context;
        if (context.f12322b == null || !writeLocalDateWithFormat(localDate, context)) {
            int i = this.off;
            int i2 = i + 18;
            if (i2 >= this.f12463f.length) {
                m7429j(i2);
            }
            char[] cArr = this.f12463f;
            cArr[i] = this.quote;
            int writeLocalDate = IOUtils.writeLocalDate(cArr, i + 1, localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
            cArr[writeLocalDate] = this.quote;
            this.off = writeLocalDate + 1;
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeLocalDateTime(LocalDateTime localDateTime) {
        int i = this.off;
        int i2 = i + 38;
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        int i3 = i + 1;
        cArr[i] = this.quote;
        LocalDate localDate = localDateTime.toLocalDate();
        int writeLocalDate = IOUtils.writeLocalDate(cArr, i3, localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
        cArr[writeLocalDate] = ' ';
        int writeLocalTime = IOUtils.writeLocalTime(cArr, writeLocalDate + 1, localDateTime.toLocalTime());
        cArr[writeLocalTime] = this.quote;
        this.off = writeLocalTime + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public final void writeLocalTime(LocalTime localTime) {
        int i = this.off;
        int i2 = i + 20;
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        cArr[i] = this.quote;
        int writeLocalTime = IOUtils.writeLocalTime(cArr, i + 1, localTime);
        cArr[writeLocalTime] = this.quote;
        this.off = writeLocalTime + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(char[] cArr) {
        int i = this.off;
        int length = cArr.length + i + 2 + this.indent;
        if (length >= this.f12463f.length) {
            m7429j(length);
        }
        if (this.startObject) {
            this.startObject = false;
        } else {
            char[] cArr2 = this.f12463f;
            int i2 = i + 1;
            cArr2[i] = ',';
            if (this.pretty) {
                i = i2 + 1;
                cArr2[i2] = '\n';
                int i3 = 0;
                while (i3 < this.indent) {
                    cArr2[i] = '\t';
                    i3++;
                    i++;
                }
            } else {
                i = i2;
            }
        }
        System.arraycopy(cArr, 0, this.f12463f, i, cArr.length);
        this.off = i + cArr.length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public final void writeOffsetDateTime(OffsetDateTime offsetDateTime) {
        int length;
        if (offsetDateTime == null) {
            writeNull();
            return;
        }
        ZoneOffset offset = offsetDateTime.getOffset();
        int i = this.off;
        int i2 = i + 45;
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        int i3 = i + 1;
        cArr[i] = this.quote;
        LocalDateTime localDateTime = offsetDateTime.toLocalDateTime();
        LocalDate localDate = localDateTime.toLocalDate();
        int writeLocalDate = IOUtils.writeLocalDate(cArr, i3, localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
        cArr[writeLocalDate] = 'T';
        int writeLocalTime = IOUtils.writeLocalTime(cArr, writeLocalDate + 1, localDateTime.toLocalTime());
        if (offset.getTotalSeconds() == 0) {
            length = writeLocalTime + 1;
            cArr[writeLocalTime] = 'Z';
        } else {
            String id = offset.getId();
            id.getChars(0, id.length(), cArr, writeLocalTime);
            length = id.length() + writeLocalTime;
        }
        cArr[length] = this.quote;
        this.off = length + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public final void writeOffsetTime(OffsetTime offsetTime) {
        int length;
        if (offsetTime == null) {
            writeNull();
            return;
        }
        ZoneOffset offset = offsetTime.getOffset();
        int i = this.off;
        int i2 = i + 25;
        if (i2 >= this.f12463f.length) {
            m7429j(i2);
        }
        char[] cArr = this.f12463f;
        cArr[i] = this.quote;
        int writeLocalTime = IOUtils.writeLocalTime(cArr, i + 1, offsetTime.toLocalTime());
        if (offset.getTotalSeconds() == 0) {
            length = writeLocalTime + 1;
            cArr[writeLocalTime] = 'Z';
        } else {
            String id = offset.getId();
            id.getChars(0, id.length(), cArr, writeLocalTime);
            length = id.length() + writeLocalTime;
        }
        cArr[length] = this.quote;
        this.off = length + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(String str) {
        m7429j(this.off + str.length());
        str.getChars(0, str.length(), this.f12463f, this.off);
        this.off += str.length();
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeReference(String str) {
        this.lastReference = str;
        char[] cArr = f12462h;
        writeRaw(cArr, 0, cArr.length);
        writeString(str);
        int i = this.off;
        if (i == this.f12463f.length) {
            m7429j(i + 1);
        }
        this.f12463f[i] = '}';
        this.off = i + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(List<String> list) {
        int i = this.off;
        if (i == this.f12463f.length) {
            m7429j(i + 1);
        }
        char[] cArr = this.f12463f;
        int i2 = this.off;
        this.off = i2 + 1;
        cArr[i2] = '[';
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (i3 != 0) {
                int i4 = this.off;
                if (i4 == this.f12463f.length) {
                    m7429j(i4 + 1);
                }
                char[] cArr2 = this.f12463f;
                int i5 = this.off;
                this.off = i5 + 1;
                cArr2[i5] = ',';
            }
            writeString(list.get(i3));
        }
        int i6 = this.off;
        if (i6 == this.f12463f.length) {
            m7429j(i6 + 1);
        }
        char[] cArr3 = this.f12463f;
        int i7 = this.off;
        this.off = i7 + 1;
        cArr3[i7] = ']';
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeStringLatin1(byte[] bArr) {
        if (bArr == null) {
            writeStringNull();
            return;
        }
        boolean z = false;
        boolean z2 = (this.context.f12331k & JSONWriter.Feature.BrowserSecure.mask) != 0;
        int i = this.off;
        int length = bArr.length + i + 2;
        if (length >= this.f12463f.length) {
            m7429j(length);
        }
        char[] cArr = this.f12463f;
        int i2 = i + 1;
        cArr[i] = this.quote;
        int i3 = 0;
        while (i3 < bArr.length) {
            byte b = bArr[i3];
            if (b == 92 || b == this.quote || b < 32 || (z2 && (b == 60 || b == 62 || b == 40 || b == 41))) {
                z = true;
                break;
            } else {
                cArr[i2] = (char) b;
                i3++;
                i2++;
            }
        }
        if (z) {
            this.off = i;
            m7426H(bArr);
        } else {
            cArr[i2] = this.quote;
            this.off = i2 + 1;
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeStringUTF16(byte[] bArr) {
        if (bArr == null) {
            writeStringNull();
            return;
        }
        long j = this.context.f12331k;
        boolean z = false;
        boolean z2 = (JSONWriter.Feature.BrowserSecure.mask & j) != 0;
        boolean z3 = (j & JSONWriter.Feature.EscapeNoneAscii.mask) != 0;
        int i = this.off;
        int length = bArr.length + i + 2;
        if (length >= this.f12463f.length) {
            m7429j(length);
        }
        char[] cArr = this.f12463f;
        int i2 = i + 1;
        cArr[i] = this.quote;
        int i3 = 0;
        while (i3 < bArr.length) {
            char c = JDKUtils.UNSAFE.getChar(bArr, Unsafe.ARRAY_BYTE_BASE_OFFSET + i3);
            if (c == '\\' || c == this.quote || c < ' ' || ((z2 && (c == '<' || c == '>' || c == '(' || c == ')')) || (z3 && c > 127))) {
                z = true;
                break;
            } else {
                cArr[i2] = c;
                i3 += 2;
                i2++;
            }
        }
        if (z) {
            m7428M(bArr);
        } else {
            cArr[i2] = this.quote;
            this.off = i2 + 1;
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeTimeHHMMSS8(int i, int i2, int i3) {
        int i4 = this.off;
        int i5 = i4 + 10;
        if (i5 >= this.f12463f.length) {
            m7429j(i5);
        }
        char[] cArr = this.f12463f;
        char c = this.quote;
        cArr[i4] = (char) ((byte) c);
        int[] iArr = IOUtils.DIGITS_K;
        int i6 = iArr[i];
        cArr[i4 + 1] = (char) ((byte) (i6 >> 8));
        cArr[i4 + 2] = (char) ((byte) i6);
        cArr[i4 + 3] = ':';
        int i7 = iArr[i2];
        cArr[i4 + 4] = (char) ((byte) (i7 >> 8));
        cArr[i4 + 5] = (char) ((byte) i7);
        cArr[i4 + 6] = ':';
        int i8 = iArr[i3];
        cArr[i4 + 7] = (char) ((byte) (i8 >> 8));
        cArr[i4 + 8] = (char) ((byte) i8);
        cArr[i4 + 9] = (char) ((byte) c);
        this.off = i5;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeUUID(UUID uuid) {
        if (uuid == null) {
            writeNull();
            return;
        }
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        int i = this.off + 38;
        if (i >= this.f12463f.length) {
            m7429j(i);
        }
        char[] cArr = JSONFactory.f12223G;
        char[] cArr2 = this.f12463f;
        int i2 = this.off;
        cArr2[i2] = '\"';
        char c = cArr[((int) (mostSignificantBits >> 56)) & 255];
        char c2 = cArr[((int) (mostSignificantBits >> 48)) & 255];
        char c3 = cArr[((int) (mostSignificantBits >> 40)) & 255];
        char c4 = cArr[((int) (mostSignificantBits >> 32)) & 255];
        int i3 = (int) mostSignificantBits;
        char c5 = cArr[(i3 >> 24) & 255];
        char c6 = cArr[(i3 >> 16) & 255];
        char c7 = cArr[(i3 >> 8) & 255];
        char c8 = cArr[i3 & 255];
        char c9 = cArr[((int) (leastSignificantBits >> 56)) & 255];
        char c10 = cArr[((int) (leastSignificantBits >> 48)) & 255];
        char c11 = cArr[((int) (leastSignificantBits >> 40)) & 255];
        char c12 = cArr[((int) (leastSignificantBits >> 32)) & 255];
        int i4 = (int) leastSignificantBits;
        char c13 = cArr[(i4 >> 24) & 255];
        char c14 = cArr[(i4 >> 16) & 255];
        char c15 = cArr[(i4 >> 8) & 255];
        char c16 = cArr[i4 & 255];
        cArr2[i2 + 1] = (char) ((byte) (c >> '\b'));
        cArr2[i2 + 2] = (char) ((byte) c);
        cArr2[i2 + 3] = (char) ((byte) (c2 >> '\b'));
        cArr2[i2 + 4] = (char) ((byte) c2);
        cArr2[i2 + 5] = (char) ((byte) (c3 >> '\b'));
        cArr2[i2 + 6] = (char) ((byte) c3);
        cArr2[i2 + 7] = (char) ((byte) (c4 >> '\b'));
        cArr2[i2 + 8] = (char) ((byte) c4);
        cArr2[i2 + 9] = '-';
        cArr2[i2 + 10] = (char) ((byte) (c5 >> '\b'));
        cArr2[i2 + 11] = (char) ((byte) c5);
        cArr2[i2 + 12] = (char) ((byte) (c6 >> '\b'));
        cArr2[i2 + 13] = (char) ((byte) c6);
        cArr2[i2 + 14] = '-';
        cArr2[i2 + 15] = (char) ((byte) (c7 >> '\b'));
        cArr2[i2 + 16] = (char) ((byte) c7);
        cArr2[i2 + 17] = (char) ((byte) (c8 >> '\b'));
        cArr2[i2 + 18] = (char) ((byte) c8);
        cArr2[i2 + 19] = '-';
        cArr2[i2 + 20] = (char) ((byte) (c9 >> '\b'));
        cArr2[i2 + 21] = (char) ((byte) c9);
        cArr2[i2 + 22] = (char) ((byte) (c10 >> '\b'));
        cArr2[i2 + 23] = (char) ((byte) c10);
        cArr2[i2 + 24] = '-';
        cArr2[i2 + 25] = (char) ((byte) (c11 >> '\b'));
        cArr2[i2 + 26] = (char) ((byte) c11);
        cArr2[i2 + 27] = (char) ((byte) (c12 >> '\b'));
        cArr2[i2 + 28] = (char) ((byte) c12);
        cArr2[i2 + 29] = (char) ((byte) (c13 >> '\b'));
        cArr2[i2 + 30] = (char) ((byte) c13);
        cArr2[i2 + 31] = (char) ((byte) (c14 >> '\b'));
        cArr2[i2 + 32] = (char) ((byte) c14);
        cArr2[i2 + 33] = (char) ((byte) (c15 >> '\b'));
        cArr2[i2 + 34] = (char) ((byte) c15);
        cArr2[i2 + 35] = (char) ((byte) (c16 >> '\b'));
        cArr2[i2 + 36] = (char) ((byte) c16);
        cArr2[i2 + 37] = '\"';
        this.off = i2 + 38;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public final void writeZonedDateTime(ZonedDateTime zonedDateTime) {
        char c;
        int i;
        int i2;
        if (zonedDateTime == null) {
            writeNull();
            return;
        }
        ZoneId zone = zonedDateTime.getZone();
        String id = zone.getId();
        int length = id.length();
        if (ZoneOffset.UTC == zone || (length <= 3 && ("UTC".equals(id) || Constants.HASIDCALL_INDEX_SIG.equals(id)))) {
            id = Constants.HASIDCALL_INDEX_SIG;
            c = 0;
            i = 1;
        } else {
            if (length != 0) {
                c = id.charAt(0);
                if (c == '+' || c == '-') {
                    i = length;
                }
            } else {
                c = 0;
            }
            i = length + 2;
        }
        int i3 = this.off;
        int i4 = i3 + i + 38;
        if (i4 >= this.f12463f.length) {
            m7429j(i4);
        }
        char[] cArr = this.f12463f;
        int i5 = i3 + 1;
        cArr[i3] = this.quote;
        LocalDate localDate = zonedDateTime.toLocalDate();
        int writeLocalDate = IOUtils.writeLocalDate(cArr, i5, localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
        cArr[writeLocalDate] = 'T';
        int writeLocalTime = IOUtils.writeLocalTime(cArr, writeLocalDate + 1, zonedDateTime.toLocalTime());
        if (i == 1) {
            i2 = writeLocalTime + 1;
            cArr[writeLocalTime] = 'Z';
        } else if (c == '+' || c == '-') {
            id.getChars(0, length, cArr, writeLocalTime);
            i2 = writeLocalTime + length;
        } else {
            int i6 = writeLocalTime + 1;
            cArr[writeLocalTime] = '[';
            id.getChars(0, length, cArr, i6);
            int i7 = i6 + length;
            cArr[i7] = ']';
            i2 = i7 + 1;
        }
        cArr[i2] = this.quote;
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(char[] cArr, int i, int i2) {
        int i3 = this.off + i2;
        if (i3 >= this.f12463f.length) {
            m7429j(i3);
        }
        System.arraycopy(cArr, i, this.f12463f, this.off, i2);
        this.off += i2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public int flushTo(OutputStream outputStream) throws IOException {
        int i;
        boolean z;
        if (outputStream == null) {
            throw new JSONException("out is nulll");
        }
        int i2 = 0;
        while (true) {
            i = this.off;
            if (i2 >= i) {
                z = true;
                break;
            }
            if (this.f12463f[i2] >= 128) {
                z = false;
                break;
            }
            i2++;
        }
        if (z) {
            byte[] bArr = new byte[i];
            for (int i3 = 0; i3 < this.off; i3++) {
                bArr[i3] = (byte) this.f12463f[i3];
            }
            outputStream.write(bArr);
            this.off = 0;
            return i;
        }
        byte[] bArr2 = new byte[i * 3];
        int encodeUTF8 = IOUtils.encodeUTF8(this.f12463f, 0, i, bArr2, 0);
        outputStream.write(bArr2, 0, encodeUTF8);
        this.off = 0;
        return encodeUTF8;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public byte[] getBytes(Charset charset) {
        int i;
        boolean z;
        int i2 = 0;
        while (true) {
            i = this.off;
            if (i2 >= i) {
                z = true;
                break;
            }
            if (this.f12463f[i2] >= 128) {
                z = false;
                break;
            }
            i2++;
        }
        if (z && (charset == StandardCharsets.UTF_8 || charset == StandardCharsets.ISO_8859_1 || charset == StandardCharsets.US_ASCII)) {
            byte[] bArr = new byte[i];
            for (int i3 = 0; i3 < this.off; i3++) {
                bArr[i3] = (byte) this.f12463f[i3];
            }
            return bArr;
        }
        String str = new String(this.f12463f, 0, i);
        if (charset == null) {
            charset = StandardCharsets.UTF_8;
        }
        return str.getBytes(charset);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeFloat(float[] fArr) {
        if (fArr == null) {
            writeArrayNull();
            return;
        }
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int length = (fArr.length * (z ? 16 : 18)) + i + 1;
        if (length >= this.f12463f.length) {
            m7429j(length);
        }
        char[] cArr = this.f12463f;
        int i2 = i + 1;
        cArr[i] = '[';
        for (int i3 = 0; i3 < fArr.length; i3++) {
            if (i3 != 0) {
                cArr[i2] = ',';
                i2++;
            }
            if (z) {
                cArr[i2] = '\"';
                i2++;
            }
            i2 += DoubleToDecimal.toString(fArr[i3], cArr, i2, true);
            if (z) {
                cArr[i2] = '\"';
                i2++;
            }
        }
        cArr[i2] = ']';
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(char c) {
        int i = this.off;
        if (i == this.f12463f.length) {
            m7429j(i + 1);
        }
        char[] cArr = this.f12463f;
        int i2 = this.off;
        this.off = i2 + 1;
        cArr[i2] = c;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDouble(double[] dArr) {
        if (dArr == null) {
            writeNull();
            return;
        }
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int length = (dArr.length * 27) + i + 1;
        if (length >= this.f12463f.length) {
            m7429j(length);
        }
        char[] cArr = this.f12463f;
        int i2 = i + 1;
        cArr[i] = '[';
        for (int i3 = 0; i3 < dArr.length; i3++) {
            if (i3 != 0) {
                cArr[i2] = ',';
                i2++;
            }
            if (z) {
                cArr[i2] = '\"';
                i2++;
            }
            i2 += DoubleToDecimal.toString(dArr[i3], cArr, i2, true);
            if (z) {
                cArr[i2] = '\"';
                i2++;
            }
        }
        cArr[i2] = ']';
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(char c, char c2) {
        int i = this.off;
        int i2 = i + 1;
        if (i2 >= this.f12463f.length) {
            m7429j(i + 2);
        }
        char[] cArr = this.f12463f;
        cArr[i] = c;
        cArr[i2] = c2;
        this.off = i + 2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(String str) {
        boolean z;
        if (str == null) {
            writeStringNull();
            return;
        }
        long j = this.context.f12331k;
        boolean z2 = (JSONWriter.Feature.EscapeNoneAscii.mask & j) != 0;
        boolean z3 = (j & JSONWriter.Feature.BrowserSecure.mask) != 0;
        char c = this.quote;
        int length = str.length();
        int i = this.off + length + 2;
        if (i >= this.f12463f.length) {
            m7429j(i);
        }
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt == '\\' || charAt == c || charAt < ' ' || ((z3 && (charAt == '<' || charAt == '>' || charAt == '(' || charAt == ')')) || (z2 && charAt > 127))) {
                z = true;
                break;
            }
        }
        z = false;
        if (!z) {
            int i3 = this.off;
            char[] cArr = this.f12463f;
            int i4 = i3 + 1;
            cArr[i3] = c;
            str.getChars(0, length, cArr, i4);
            int i5 = i4 + length;
            cArr[i5] = c;
            this.off = i5 + 1;
            return;
        }
        m7430w(str);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(char[] cArr, int i, int i2) {
        int i3 = this.off + i2 + 2 + this.indent;
        if (i3 >= this.f12463f.length) {
            m7429j(i3);
        }
        if (this.startObject) {
            this.startObject = false;
        } else {
            char[] cArr2 = this.f12463f;
            int i4 = this.off;
            this.off = i4 + 1;
            cArr2[i4] = ',';
        }
        System.arraycopy(cArr, i, this.f12463f, this.off, i2);
        this.off += i2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt32(int i) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i2 = this.off;
        int i3 = i2 + 13;
        if (i3 >= this.f12463f.length) {
            m7429j(i3);
        }
        char[] cArr = this.f12463f;
        if (z) {
            cArr[i2] = this.quote;
            i2++;
        }
        int writeInt32 = IOUtils.writeInt32(cArr, i2, i);
        if (z) {
            cArr[writeInt32] = this.quote;
            writeInt32++;
        }
        this.off = writeInt32;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public int flushTo(OutputStream outputStream, Charset charset) throws IOException {
        if (this.off == 0) {
            return 0;
        }
        if (outputStream != null) {
            byte[] bytes = getBytes(charset);
            outputStream.write(bytes);
            this.off = 0;
            return bytes.length;
        }
        throw new JSONException("out is null");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(byte[] bArr) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt64(long j) {
        int i;
        long j2 = this.context.f12331k;
        boolean z = ((JSONWriter.Feature.WriteNonStringValueAsString.mask | JSONWriter.Feature.WriteLongAsString.mask) & j2) != 0 || ((JSONWriter.Feature.BrowserCompatible.mask & j2) != 0 && (j > 9007199254740991L || j < -9007199254740991L));
        int i2 = this.off;
        int i3 = i2 + 23;
        if (i3 >= this.f12463f.length) {
            m7429j(i3);
        }
        char[] cArr = this.f12463f;
        if (z) {
            cArr[i2] = this.quote;
            i2++;
        }
        int writeInt64 = IOUtils.writeInt64(cArr, i2, j);
        if (z) {
            i = writeInt64 + 1;
            cArr[writeInt64] = this.quote;
        } else {
            if ((JSONWriter.Feature.WriteClassName.mask & j2) != 0 && (j2 & JSONWriter.Feature.NotWriteNumberClassName.mask) == 0 && j >= ParserBase.f21225q && j <= 2147483647L) {
                i = writeInt64 + 1;
                cArr[writeInt64] = 'L';
            }
            this.off = writeInt64;
        }
        writeInt64 = i;
        this.off = writeInt64;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(byte[] bArr) {
        throw new JSONException("UnsupportedOperation");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x004d. Please report as an issue. */
    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(char[] cArr, int i, int i2, boolean z) {
        int i3;
        boolean z2 = (this.context.f12331k & JSONWriter.Feature.EscapeNoneAscii.mask) != 0;
        char c = this.quote;
        int i4 = this.off;
        int i5 = (z ? i4 + 2 : i4) + (z2 ? i2 * 6 : i2 * 2);
        if (i5 - this.f12463f.length > 0) {
            m7429j(i5);
        }
        char[] cArr2 = this.f12463f;
        if (z) {
            cArr2[i4] = c;
            i4++;
        }
        while (i < i2) {
            char c2 = cArr[i];
            if (c2 == '\"' || c2 == '\'') {
                if (c2 == c) {
                    cArr2[i4] = '\\';
                    i4++;
                }
                i3 = i4 + 1;
                cArr2[i4] = c2;
            } else {
                if (c2 != '\\') {
                    switch (c2) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            cArr2[i4] = '\\';
                            cArr2[i4 + 1] = 'u';
                            cArr2[i4 + 2] = '0';
                            cArr2[i4 + 3] = '0';
                            cArr2[i4 + 4] = '0';
                            cArr2[i4 + 5] = (char) (c2 + '0');
                            i4 += 6;
                            break;
                        case '\b':
                            cArr2[i4] = '\\';
                            cArr2[i4 + 1] = 'b';
                            break;
                        case '\t':
                            cArr2[i4] = '\\';
                            cArr2[i4 + 1] = 't';
                            break;
                        case '\n':
                            cArr2[i4] = '\\';
                            cArr2[i4 + 1] = 'n';
                            break;
                        case 11:
                        case 14:
                        case 15:
                            cArr2[i4] = '\\';
                            cArr2[i4 + 1] = 'u';
                            cArr2[i4 + 2] = '0';
                            cArr2[i4 + 3] = '0';
                            cArr2[i4 + 4] = '0';
                            cArr2[i4 + 5] = (char) ((c2 - '\n') + 97);
                            i4 += 6;
                            break;
                        case '\f':
                            cArr2[i4] = '\\';
                            cArr2[i4 + 1] = 'f';
                            break;
                        case '\r':
                            cArr2[i4] = '\\';
                            cArr2[i4 + 1] = 'r';
                            break;
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            cArr2[i4] = '\\';
                            cArr2[i4 + 1] = 'u';
                            cArr2[i4 + 2] = '0';
                            cArr2[i4 + 3] = '0';
                            cArr2[i4 + 4] = '1';
                            cArr2[i4 + 5] = (char) (c2 + rve.f83532a + 48);
                            i4 += 6;
                            break;
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                            cArr2[i4] = '\\';
                            cArr2[i4 + 1] = 'u';
                            cArr2[i4 + 2] = '0';
                            cArr2[i4 + 3] = '0';
                            cArr2[i4 + 4] = '1';
                            cArr2[i4 + 5] = (char) ((c2 - 26) + 97);
                            i4 += 6;
                            break;
                        default:
                            if (z2 && c2 > 127) {
                                cArr2[i4] = '\\';
                                cArr2[i4 + 1] = 'u';
                                char[] cArr3 = JSONWriter.f12320e;
                                cArr2[i4 + 2] = cArr3[(c2 >>> '\f') & 15];
                                cArr2[i4 + 3] = cArr3[(c2 >>> '\b') & 15];
                                cArr2[i4 + 4] = cArr3[(c2 >>> 4) & 15];
                                cArr2[i4 + 5] = cArr3[c2 & 15];
                                i4 += 6;
                                break;
                            } else {
                                i3 = i4 + 1;
                                cArr2[i4] = c2;
                                break;
                            }
                            break;
                    }
                    i++;
                } else {
                    cArr2[i4] = '\\';
                    cArr2[i4 + 1] = c2;
                }
                i4 += 2;
                i++;
            }
            i4 = i3;
            i++;
        }
        if (z) {
            cArr2[i4] = c;
            i4++;
        }
        this.off = i4;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void write(List list) {
        if (list == null) {
            writeArrayNull();
            return;
        }
        long j = JSONWriter.Feature.ReferenceDetection.mask | JSONWriter.Feature.PrettyFormat.mask | JSONWriter.Feature.NotWriteEmptyArray.mask | JSONWriter.Feature.NotWriteDefaultValue.mask;
        JSONWriter.Context context = this.context;
        if ((j & context.f12331k) != 0) {
            context.getObjectWriter(list.getClass()).write(this, list, null, null, 0L);
            return;
        }
        int i = this.off;
        if (i == this.f12463f.length) {
            m7429j(i + 1);
        }
        char[] cArr = this.f12463f;
        int i2 = this.off;
        this.off = i2 + 1;
        cArr[i2] = '[';
        int size = list.size();
        boolean z = true;
        int i3 = 0;
        while (i3 < size) {
            if (!z) {
                int i4 = this.off;
                if (i4 == this.f12463f.length) {
                    m7429j(i4 + 1);
                }
                char[] cArr2 = this.f12463f;
                int i5 = this.off;
                this.off = i5 + 1;
                cArr2[i5] = ',';
            }
            Object obj = list.get(i3);
            if (obj == null) {
                writeNull();
            } else {
                Class<?> cls = obj.getClass();
                if (cls == String.class) {
                    writeString((String) obj);
                } else if (cls == Integer.class) {
                    writeInt32((Integer) obj);
                } else if (cls == Long.class) {
                    writeInt64((Long) obj);
                } else if (cls == Boolean.class) {
                    writeBool(((Boolean) obj).booleanValue());
                } else if (cls == BigDecimal.class) {
                    writeDecimal((BigDecimal) obj, 0L, null);
                } else if (cls == JSONArray.class) {
                    write((JSONArray) obj);
                } else if (cls == JSONObject.class) {
                    write((JSONObject) obj);
                } else {
                    this.context.getObjectWriter(cls, cls).write(this, obj, null, null, 0L);
                }
            }
            i3++;
            z = false;
        }
        int i6 = this.off;
        if (i6 == this.f12463f.length) {
            m7429j(i6 + 1);
        }
        char[] cArr3 = this.f12463f;
        int i7 = this.off;
        this.off = i7 + 1;
        cArr3[i7] = ']';
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(String[] strArr) {
        if (strArr == null) {
            writeArrayNull();
            return;
        }
        startArray();
        for (int i = 0; i < strArr.length; i++) {
            if (i != 0) {
                writeComma();
            }
            String str = strArr[i];
            if (str == null) {
                if (isEnabled(JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullStringAsEmpty.mask)) {
                    writeString("");
                } else {
                    writeNull();
                }
            } else {
                writeString(str);
            }
        }
        endArray();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0052, code lost:
    
        r0 = (r9.off + r10.length) + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005b, code lost:
    
        if (r0 <= r9.f12463f.length) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
    
        m7429j(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0060, code lost:
    
        r0 = r9.f12463f;
        r1 = r9.off;
        r2 = r1 + 1;
        r9.off = r2;
        r0[r1] = r9.quote;
        java.lang.System.arraycopy(r10, 0, r0, r2, r10.length);
        r0 = r9.off + r10.length;
        r10 = r9.f12463f;
        r9.off = r0 + 1;
        r10[r0] = r9.quote;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007e, code lost:
    
        return;
     */
    @Override // com.alibaba.fastjson2.JSONWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeString(char[] r10) {
        /*
            r9 = this;
            if (r10 != 0) goto L6
            r9.writeStringNull()
            return
        L6:
            com.alibaba.fastjson2.JSONWriter$Context r0 = r9.context
            long r0 = r0.f12331k
            com.alibaba.fastjson2.JSONWriter$Feature r2 = com.alibaba.fastjson2.JSONWriter.Feature.BrowserSecure
            long r2 = r2.mask
            long r2 = r2 & r0
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r3 = 0
            r6 = 1
            if (r2 == 0) goto L19
            r2 = r6
            goto L1a
        L19:
            r2 = r3
        L1a:
            com.alibaba.fastjson2.JSONWriter$Feature r7 = com.alibaba.fastjson2.JSONWriter.Feature.EscapeNoneAscii
            long r7 = r7.mask
            long r0 = r0 & r7
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 == 0) goto L25
            r0 = r6
            goto L26
        L25:
            r0 = r3
        L26:
            r1 = r3
        L27:
            int r4 = r10.length
            if (r1 >= r4) goto L4f
            char r4 = r10[r1]
            r5 = 92
            if (r4 == r5) goto L50
            char r5 = r9.quote
            if (r4 == r5) goto L50
            r5 = 32
            if (r4 >= r5) goto L39
            goto L50
        L39:
            if (r2 == 0) goto L4c
            r5 = 60
            if (r4 == r5) goto L50
            r5 = 62
            if (r4 == r5) goto L50
            r5 = 40
            if (r4 == r5) goto L50
            r5 = 41
            if (r4 != r5) goto L4c
            goto L50
        L4c:
            int r1 = r1 + 1
            goto L27
        L4f:
            r6 = r0
        L50:
            if (r6 != 0) goto L7f
            int r0 = r9.off
            int r1 = r10.length
            int r0 = r0 + r1
            int r0 = r0 + 2
            char[] r1 = r9.f12463f
            int r1 = r1.length
            if (r0 <= r1) goto L60
            r9.m7429j(r0)
        L60:
            char[] r0 = r9.f12463f
            int r1 = r9.off
            int r2 = r1 + 1
            r9.off = r2
            char r4 = r9.quote
            r0[r1] = r4
            int r1 = r10.length
            java.lang.System.arraycopy(r10, r3, r0, r2, r1)
            int r0 = r9.off
            int r10 = r10.length
            int r0 = r0 + r10
            char[] r10 = r9.f12463f
            int r1 = r0 + 1
            r9.off = r1
            char r9 = r9.quote
            r10[r0] = r9
            return
        L7f:
            r9.m7427I(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1741k.writeString(char[]):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
    
        r0 = (r5.off + r8) + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        if (r0 < r5.f12463f.length) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
    
        m7429j(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003e, code lost:
    
        r0 = r5.f12463f;
        r1 = r5.off;
        r2 = r1 + 1;
        r5.off = r2;
        r0[r1] = r5.quote;
        java.lang.System.arraycopy(r6, r7, r0, r2, r8);
        r6 = r5.off + r8;
        r7 = r5.f12463f;
        r5.off = r6 + 1;
        r7[r6] = r5.quote;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
    
        return;
     */
    @Override // com.alibaba.fastjson2.JSONWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeString(char[] r6, int r7, int r8) {
        /*
            r5 = this;
            if (r6 != 0) goto L6
            r5.writeStringNull()
            return
        L6:
            com.alibaba.fastjson2.JSONWriter$Context r0 = r5.context
            long r0 = r0.f12331k
            com.alibaba.fastjson2.JSONWriter$Feature r2 = com.alibaba.fastjson2.JSONWriter.Feature.EscapeNoneAscii
            long r2 = r2.mask
            long r0 = r0 & r2
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r1 = 1
            if (r0 == 0) goto L18
            r0 = r1
            goto L19
        L18:
            r0 = 0
        L19:
            r2 = r7
        L1a:
            if (r2 >= r8) goto L2e
            char r3 = r6[r2]
            r4 = 92
            if (r3 == r4) goto L2f
            char r4 = r5.quote
            if (r3 == r4) goto L2f
            r4 = 32
            if (r3 >= r4) goto L2b
            goto L2f
        L2b:
            int r2 = r2 + 1
            goto L1a
        L2e:
            r1 = r0
        L2f:
            if (r1 != 0) goto L5b
            int r0 = r5.off
            int r0 = r0 + r8
            int r0 = r0 + 2
            char[] r1 = r5.f12463f
            int r1 = r1.length
            if (r0 < r1) goto L3e
            r5.m7429j(r0)
        L3e:
            char[] r0 = r5.f12463f
            int r1 = r5.off
            int r2 = r1 + 1
            r5.off = r2
            char r3 = r5.quote
            r0[r1] = r3
            java.lang.System.arraycopy(r6, r7, r0, r2, r8)
            int r6 = r5.off
            int r6 = r6 + r8
            char[] r7 = r5.f12463f
            int r8 = r6 + 1
            r5.off = r8
            char r5 = r5.quote
            r7[r6] = r5
            return
        L5b:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r6, r7, r8)
            r5.m7430w(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1741k.writeString(char[], int, int):void");
    }
}
