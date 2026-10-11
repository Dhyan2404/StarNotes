package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.DoubleToDecimal;
import com.alibaba.fastjson2.util.IOUtils;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.rve;
import java.io.IOException;
import java.io.OutputStream;
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
import org.apache.commons.compress.archivers.tar.TarConstants;

/* renamed from: com.alibaba.fastjson2.l */
/* loaded from: classes3.dex */
public final class C1742l extends JSONWriter {

    /* renamed from: h */
    public static final byte[] f12465h = "{\"$ref\":".getBytes(StandardCharsets.ISO_8859_1);

    /* renamed from: f */
    public final JSONFactory.C1722b f12466f;

    /* renamed from: g */
    public byte[] f12467g;

    public C1742l(JSONWriter.Context context) {
        super(context, null, false, StandardCharsets.UTF_8);
        int identityHashCode = System.identityHashCode(Thread.currentThread());
        JSONFactory.C1722b c1722b = JSONFactory.f12217A[identityHashCode & (r0.length - 1)];
        this.f12466f = c1722b;
        byte[] andSet = JSONFactory.f12220D.getAndSet(c1722b, null);
        this.f12467g = andSet == null ? new byte[8192] : andSet;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0037. Please report as an issue. */
    /* renamed from: H */
    public final void m7431H(char[] cArr, int i, boolean z, boolean z2, int i2) {
        int i3;
        int i4;
        int i5;
        int length = this.off + ((cArr.length - i2) * 6) + 2;
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        byte[] bArr = this.f12467g;
        int i6 = this.off;
        while (i2 < i) {
            char c = cArr[i2];
            if (c <= 127) {
                if (c != '(' && c != ')' && c != '<' && c != '>') {
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
                                bArr[i6] = UTF8JsonGenerator.f21291k;
                                bArr[i6 + 1] = UTF8JsonGenerator.f21285e;
                                bArr[i6 + 2] = 48;
                                bArr[i6 + 3] = 48;
                                bArr[i6 + 4] = 48;
                                bArr[i6 + 5] = (byte) (c + '0');
                                i6 += 6;
                                break;
                            case '\b':
                                bArr[i6] = UTF8JsonGenerator.f21291k;
                                bArr[i6 + 1] = 98;
                                break;
                            case '\t':
                                bArr[i6] = UTF8JsonGenerator.f21291k;
                                bArr[i6 + 1] = 116;
                                break;
                            case '\n':
                                bArr[i6] = UTF8JsonGenerator.f21291k;
                                bArr[i6 + 1] = 110;
                                break;
                            case 11:
                            case 14:
                            case 15:
                                bArr[i6] = UTF8JsonGenerator.f21291k;
                                bArr[i6 + 1] = UTF8JsonGenerator.f21285e;
                                bArr[i6 + 2] = 48;
                                bArr[i6 + 3] = 48;
                                bArr[i6 + 4] = 48;
                                bArr[i6 + 5] = (byte) ((c - '\n') + 97);
                                i6 += 6;
                                break;
                            case '\f':
                                bArr[i6] = UTF8JsonGenerator.f21291k;
                                bArr[i6 + 1] = 102;
                                break;
                            case '\r':
                                bArr[i6] = UTF8JsonGenerator.f21291k;
                                bArr[i6 + 1] = 114;
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
                                bArr[i6] = UTF8JsonGenerator.f21291k;
                                bArr[i6 + 1] = UTF8JsonGenerator.f21285e;
                                bArr[i6 + 2] = 48;
                                bArr[i6 + 3] = 48;
                                bArr[i6 + 4] = TarConstants.LF_LINK;
                                bArr[i6 + 5] = (byte) (c + rve.f83532a + 48);
                                i6 += 6;
                                break;
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                                bArr[i6] = UTF8JsonGenerator.f21291k;
                                bArr[i6 + 1] = UTF8JsonGenerator.f21285e;
                                bArr[i6 + 2] = 48;
                                bArr[i6 + 3] = 48;
                                bArr[i6 + 4] = TarConstants.LF_LINK;
                                bArr[i6 + 5] = (byte) ((c - 26) + 97);
                                i6 += 6;
                                break;
                            default:
                                char c2 = this.quote;
                                if (c != c2) {
                                    i5 = i6 + 1;
                                    bArr[i6] = (byte) c;
                                    i6 = i5;
                                    break;
                                } else {
                                    bArr[i6] = UTF8JsonGenerator.f21291k;
                                    bArr[i6 + 1] = (byte) c2;
                                    break;
                                }
                        }
                    } else {
                        bArr[i6] = UTF8JsonGenerator.f21291k;
                        bArr[i6 + 1] = UTF8JsonGenerator.f21291k;
                    }
                    i6 += 2;
                } else if (z) {
                    bArr[i6] = UTF8JsonGenerator.f21291k;
                    bArr[i6 + 1] = UTF8JsonGenerator.f21285e;
                    bArr[i6 + 2] = 48;
                    bArr[i6 + 3] = 48;
                    char[] cArr2 = JSONWriter.f12320e;
                    bArr[i6 + 4] = (byte) cArr2[(c >>> 4) & 15];
                    bArr[i6 + 5] = (byte) cArr2[c & 15];
                    i6 += 6;
                } else {
                    i5 = i6 + 1;
                    bArr[i6] = (byte) c;
                    i6 = i5;
                }
            } else if (z2) {
                bArr[i6] = UTF8JsonGenerator.f21291k;
                bArr[i6 + 1] = UTF8JsonGenerator.f21285e;
                char[] cArr3 = JSONWriter.f12320e;
                bArr[i6 + 2] = (byte) cArr3[(c >>> '\f') & 15];
                bArr[i6 + 3] = (byte) cArr3[(c >>> '\b') & 15];
                bArr[i6 + 4] = (byte) cArr3[(c >>> 4) & 15];
                bArr[i6 + 5] = (byte) cArr3[c & 15];
                i6 += 6;
            } else if (c >= 55296 && c < 57344) {
                if (c < 56320) {
                    if (cArr.length - i2 < 2) {
                        i4 = -1;
                    } else {
                        char c3 = cArr[i2 + 1];
                        if (c3 < 56320 || c3 >= 57344) {
                            i3 = i6 + 1;
                            bArr[i6] = 63;
                        } else {
                            i4 = ((c << '\n') + c3) - 56613888;
                        }
                    }
                    if (i4 < 0) {
                        i3 = i6 + 1;
                        bArr[i6] = 63;
                    } else {
                        bArr[i6] = (byte) ((i4 >> 18) | 240);
                        bArr[i6 + 1] = (byte) (((i4 >> 12) & 63) | 128);
                        bArr[i6 + 2] = (byte) ((63 & (i4 >> 6)) | 128);
                        bArr[i6 + 3] = (byte) ((i4 & 63) | 128);
                        i3 = i6 + 4;
                        i2++;
                    }
                } else {
                    i3 = i6 + 1;
                    bArr[i6] = 63;
                }
                i6 = i3;
            } else if (c > 2047) {
                bArr[i6] = (byte) (((c >> '\f') & 15) | 224);
                bArr[i6 + 1] = (byte) ((63 & (c >> 6)) | 128);
                bArr[i6 + 2] = (byte) ((c & '?') | 128);
                i6 += 3;
            } else {
                bArr[i6] = (byte) (((c >> 6) & 31) | 192);
                bArr[i6 + 1] = (byte) ((c & '?') | 128);
                i6 += 2;
            }
            i2++;
        }
        this.off = i6;
    }

    @Override // com.alibaba.fastjson2.JSONWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        byte[] bArr = this.f12467g;
        if (bArr.length > 1048576) {
            return;
        }
        JSONFactory.f12220D.lazySet(this.f12466f, bArr);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void endArray() {
        this.level--;
        int i = this.off;
        int i2 = (this.pretty ? this.indent + 3 : 1) + i;
        if (i2 >= this.f12467g.length) {
            m7432j(i2);
        }
        byte[] bArr = this.f12467g;
        if (this.pretty) {
            this.indent--;
            bArr[i] = 10;
            i++;
            int i3 = 0;
            while (i3 < this.indent) {
                bArr[i] = 9;
                i3++;
                i++;
            }
        }
        bArr[i] = UTF8JsonGenerator.f21288h;
        this.off = i + 1;
        this.startObject = false;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void endObject() {
        this.level--;
        int i = this.off;
        int i2 = (this.pretty ? this.indent + 3 : 1) + i;
        if (i2 >= this.f12467g.length) {
            m7432j(i2);
        }
        byte[] bArr = this.f12467g;
        if (this.pretty) {
            this.indent--;
            bArr[i] = 10;
            i++;
            int i3 = 0;
            while (i3 < this.indent) {
                bArr[i] = 9;
                i3++;
                i++;
            }
        }
        bArr[i] = 125;
        this.off = i + 1;
        this.startObject = false;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public int flushTo(OutputStream outputStream) throws IOException {
        int i = this.off;
        if (i > 0) {
            outputStream.write(this.f12467g, 0, i);
            this.off = 0;
        }
        return i;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public byte[] getBytes() {
        return Arrays.copyOf(this.f12467g, this.off);
    }

    /* renamed from: j */
    public final void m7432j(int i) {
        byte[] bArr = this.f12467g;
        if (i >= bArr.length) {
            int length = bArr.length;
            int i2 = length + (length >> 1);
            if (i2 - i >= 0) {
                i = i2;
            }
            if (i - this.maxArraySize > 0) {
                throw new OutOfMemoryError("try enabling LargeObject feature instead");
            }
            this.f12467g = Arrays.copyOf(bArr, i);
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
        if (i2 >= this.f12467g.length) {
            m7432j(i2);
        }
        byte[] bArr = this.f12467g;
        int i3 = i + 1;
        bArr[i] = UTF8JsonGenerator.f21287g;
        if (this.pretty) {
            this.indent++;
            int i4 = i3 + 1;
            bArr[i3] = 10;
            int i5 = 0;
            while (true) {
                i3 = i4;
                if (i5 >= this.indent) {
                    break;
                }
                i4 = i3 + 1;
                bArr[i3] = 9;
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
        if (i2 >= this.f12467g.length) {
            m7432j(i2);
        }
        byte[] bArr = this.f12467g;
        int i3 = i + 1;
        bArr[i] = 123;
        if (this.pretty) {
            this.indent++;
            int i4 = i3 + 1;
            bArr[i3] = 10;
            int i5 = 0;
            while (true) {
                i3 = i4;
                if (i5 >= this.indent) {
                    break;
                }
                i4 = i3 + 1;
                bArr[i3] = 9;
                i5++;
            }
        }
        this.off = i3;
    }

    public String toString() {
        return new String(this.f12467g, 0, this.off, StandardCharsets.UTF_8);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x004e. Please report as an issue. */
    /* renamed from: w */
    public final void m7433w(byte[] bArr) {
        int i;
        int length = this.off + (bArr.length * 4) + 2;
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        boolean z = (this.context.f12331k & JSONWriter.Feature.BrowserSecure.mask) != 0;
        byte[] bArr2 = this.f12467g;
        int i2 = this.off;
        int i3 = i2 + 1;
        bArr2[i2] = (byte) this.quote;
        for (byte b : bArr) {
            if (b != 40 && b != 41 && b != 60 && b != 62) {
                if (b != 92) {
                    switch (b) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            bArr2[i3] = UTF8JsonGenerator.f21291k;
                            bArr2[i3 + 1] = UTF8JsonGenerator.f21285e;
                            bArr2[i3 + 2] = 48;
                            bArr2[i3 + 3] = 48;
                            bArr2[i3 + 4] = 48;
                            bArr2[i3 + 5] = (byte) (b + 48);
                            i3 += 6;
                            break;
                        case 8:
                            bArr2[i3] = UTF8JsonGenerator.f21291k;
                            bArr2[i3 + 1] = 98;
                            break;
                        case 9:
                            bArr2[i3] = UTF8JsonGenerator.f21291k;
                            bArr2[i3 + 1] = 116;
                            break;
                        case 10:
                            bArr2[i3] = UTF8JsonGenerator.f21291k;
                            bArr2[i3 + 1] = 110;
                            break;
                        case 11:
                        case 14:
                        case 15:
                            bArr2[i3] = UTF8JsonGenerator.f21291k;
                            bArr2[i3 + 1] = UTF8JsonGenerator.f21285e;
                            bArr2[i3 + 2] = 48;
                            bArr2[i3 + 3] = 48;
                            bArr2[i3 + 4] = 48;
                            bArr2[i3 + 5] = (byte) ((b - 10) + 97);
                            i3 += 6;
                            break;
                        case 12:
                            bArr2[i3] = UTF8JsonGenerator.f21291k;
                            bArr2[i3 + 1] = 102;
                            break;
                        case 13:
                            bArr2[i3] = UTF8JsonGenerator.f21291k;
                            bArr2[i3 + 1] = 114;
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
                            bArr2[i3] = UTF8JsonGenerator.f21291k;
                            bArr2[i3 + 1] = UTF8JsonGenerator.f21285e;
                            bArr2[i3 + 2] = 48;
                            bArr2[i3 + 3] = 48;
                            bArr2[i3 + 4] = TarConstants.LF_LINK;
                            bArr2[i3 + 5] = (byte) (b + JSONB.Constants.BC_INT32_NUM_MIN + 48);
                            i3 += 6;
                            break;
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                            bArr2[i3] = UTF8JsonGenerator.f21291k;
                            bArr2[i3 + 1] = UTF8JsonGenerator.f21285e;
                            bArr2[i3 + 2] = 48;
                            bArr2[i3 + 3] = 48;
                            bArr2[i3 + 4] = TarConstants.LF_LINK;
                            bArr2[i3 + 5] = (byte) ((b - 26) + 97);
                            i3 += 6;
                            break;
                        default:
                            char c = this.quote;
                            if (b == c) {
                                bArr2[i3] = UTF8JsonGenerator.f21291k;
                                bArr2[i3 + 1] = (byte) c;
                                break;
                            } else if (b < 0) {
                                int i4 = b & 255;
                                bArr2[i3] = (byte) ((i4 >> 6) | 192);
                                bArr2[i3 + 1] = (byte) ((i4 & 63) | 128);
                                break;
                            } else {
                                i = i3 + 1;
                                bArr2[i3] = b;
                                i3 = i;
                                break;
                            }
                    }
                } else {
                    bArr2[i3] = UTF8JsonGenerator.f21291k;
                    bArr2[i3 + 1] = UTF8JsonGenerator.f21291k;
                }
                i3 += 2;
            } else if (z) {
                bArr2[i3] = UTF8JsonGenerator.f21291k;
                bArr2[i3 + 1] = UTF8JsonGenerator.f21285e;
                bArr2[i3 + 2] = 48;
                bArr2[i3 + 3] = 48;
                char[] cArr = JSONWriter.f12320e;
                bArr2[i3 + 4] = (byte) cArr[(b >>> 4) & 15];
                bArr2[i3 + 5] = (byte) cArr[b & 15];
                i3 += 6;
            } else {
                i = i3 + 1;
                bArr2[i3] = b;
                i3 = i;
            }
        }
        bArr2[i3] = (byte) this.quote;
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
        if (i == this.f12467g.length) {
            m7432j(i + 1);
        }
        byte[] bArr = this.f12467g;
        int i2 = this.off;
        this.off = i2 + 1;
        bArr[i2] = 123;
        boolean z = true;
        for (Map.Entry<String, Object> entry : jSONObject.entrySet()) {
            Object value = entry.getValue();
            if (!z) {
                int i3 = this.off;
                if (i3 == this.f12467g.length) {
                    m7432j(i3 + 1);
                }
                if (value != null && (this.context.f12331k & JSONWriter.Feature.WriteMapNullValue.mask) == 0) {
                    byte[] bArr2 = this.f12467g;
                    int i4 = this.off;
                    this.off = i4 + 1;
                    bArr2[i4] = 44;
                }
            }
            if (value != null || (this.context.f12331k & JSONWriter.Feature.WriteMapNullValue.mask) != 0) {
                String key = entry.getKey();
                if (key instanceof String) {
                    writeString(key);
                } else {
                    writeAny(key);
                }
                int i5 = this.off;
                if (i5 == this.f12467g.length) {
                    m7432j(i5 + 1);
                }
                byte[] bArr3 = this.f12467g;
                int i6 = this.off;
                this.off = i6 + 1;
                bArr3[i6] = 58;
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
        if (i7 == this.f12467g.length) {
            m7432j(i7 + 1);
        }
        byte[] bArr4 = this.f12467g;
        int i8 = this.off;
        this.off = i8 + 1;
        bArr4[i8] = 125;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public final void write0(char c) {
        int i = this.off;
        if (i == this.f12467g.length) {
            m7432j(i + 1);
        }
        this.f12467g[i] = (byte) c;
        this.off = i + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeBase64(byte[] bArr) {
        int i = this.off;
        m7432j(((((bArr.length - 1) / 3) + 1) << 2) + i + 2);
        byte[] bArr2 = this.f12467g;
        int i2 = i + 1;
        bArr2[i] = (byte) this.quote;
        int length = (bArr.length / 3) * 3;
        int i3 = 0;
        while (i3 < length) {
            int i4 = i3 + 1;
            int i5 = i4 + 1;
            int i6 = ((bArr[i3] & 255) << 16) | ((bArr[i4] & 255) << 8);
            int i7 = i5 + 1;
            int i8 = i6 | (bArr[i5] & 255);
            char[] cArr = JSONFactory.f12246v;
            bArr2[i2] = (byte) cArr[(i8 >>> 18) & 63];
            bArr2[i2 + 1] = (byte) cArr[(i8 >>> 12) & 63];
            bArr2[i2 + 2] = (byte) cArr[(i8 >>> 6) & 63];
            bArr2[i2 + 3] = (byte) cArr[i8 & 63];
            i2 += 4;
            i3 = i7;
        }
        int length2 = bArr.length - length;
        if (length2 > 0) {
            int i9 = ((bArr[length] & 255) << 10) | (length2 == 2 ? (bArr[bArr.length - 1] & 255) << 2 : 0);
            char[] cArr2 = JSONFactory.f12246v;
            bArr2[i2] = (byte) cArr2[i9 >> 12];
            bArr2[i2 + 1] = (byte) cArr2[(i9 >>> 6) & 63];
            bArr2[i2 + 2] = length2 == 2 ? (byte) cArr2[i9 & 63] : (byte) 61;
            bArr2[i2 + 3] = 61;
            i2 += 4;
        }
        bArr2[i2] = (byte) this.quote;
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeBigInt(BigInteger bigInteger, long j) {
        if (bigInteger == null) {
            writeNumberNull();
            return;
        }
        String bigInteger2 = bigInteger.toString(10);
        if (((j | this.context.f12331k) & JSONWriter.Feature.BrowserCompatible.mask) != 0 && (bigInteger.compareTo(JSONFactory.f12244t) < 0 || bigInteger.compareTo(JSONFactory.f12245u) > 0)) {
            writeString(bigInteger2);
            return;
        }
        int length = bigInteger2.length();
        int i = this.off + length;
        if (i >= this.f12467g.length) {
            m7432j(i);
        }
        bigInteger2.getBytes(0, length, this.f12467g, this.off);
        this.off += length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeChar(char c) {
        int i;
        int i2 = this.off;
        int i3 = i2 + 8;
        if (i3 >= this.f12467g.length) {
            m7432j(i3);
        }
        byte[] bArr = this.f12467g;
        int i4 = i2 + 1;
        char c2 = this.quote;
        bArr[i2] = (byte) c2;
        if (c > 127) {
            if (c >= 55296 && c < 57344) {
                throw new JSONException("illegal char " + c);
            }
            if (c <= 2047) {
                bArr[i4] = (byte) (((c >> 6) & 31) | 192);
                bArr[i4 + 1] = (byte) ((c & '?') | 128);
                i = i4 + 2;
                bArr[i] = (byte) c2;
                this.off = i + 1;
            }
            bArr[i4] = (byte) (((c >> '\f') & 15) | 224);
            bArr[i4 + 1] = (byte) (((c >> 6) & 63) | 128);
            bArr[i4 + 2] = (byte) ((c & '?') | 128);
            i = i4 + 3;
            bArr[i] = (byte) c2;
            this.off = i + 1;
        }
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
                    bArr[i4] = UTF8JsonGenerator.f21291k;
                    bArr[i4 + 1] = UTF8JsonGenerator.f21285e;
                    bArr[i4 + 2] = 48;
                    bArr[i4 + 3] = 48;
                    bArr[i4 + 4] = 48;
                    bArr[i4 + 5] = (byte) (c + '0');
                    i = i4 + 6;
                    break;
                case '\b':
                    bArr[i4] = UTF8JsonGenerator.f21291k;
                    bArr[i4 + 1] = 98;
                    break;
                case '\t':
                    bArr[i4] = UTF8JsonGenerator.f21291k;
                    bArr[i4 + 1] = 116;
                    break;
                case '\n':
                    bArr[i4] = UTF8JsonGenerator.f21291k;
                    bArr[i4 + 1] = 110;
                    break;
                case 11:
                case 14:
                case 15:
                    bArr[i4] = UTF8JsonGenerator.f21291k;
                    bArr[i4 + 1] = UTF8JsonGenerator.f21285e;
                    bArr[i4 + 2] = 48;
                    bArr[i4 + 3] = 48;
                    bArr[i4 + 4] = 48;
                    bArr[i4 + 5] = (byte) ((c - '\n') + 97);
                    i = i4 + 6;
                    break;
                case '\f':
                    bArr[i4] = UTF8JsonGenerator.f21291k;
                    bArr[i4 + 1] = 102;
                    break;
                case '\r':
                    bArr[i4] = UTF8JsonGenerator.f21291k;
                    bArr[i4 + 1] = 114;
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
                    bArr[i4] = UTF8JsonGenerator.f21291k;
                    bArr[i4 + 1] = UTF8JsonGenerator.f21285e;
                    bArr[i4 + 2] = 48;
                    bArr[i4 + 3] = 48;
                    bArr[i4 + 4] = TarConstants.LF_LINK;
                    bArr[i4 + 5] = (byte) (c + rve.f83532a + 48);
                    i = i4 + 6;
                    break;
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                    bArr[i4] = UTF8JsonGenerator.f21291k;
                    bArr[i4 + 1] = UTF8JsonGenerator.f21285e;
                    bArr[i4 + 2] = 48;
                    bArr[i4 + 3] = 48;
                    bArr[i4 + 4] = TarConstants.LF_LINK;
                    bArr[i4 + 5] = (byte) ((c - 26) + 97);
                    i = i4 + 6;
                    break;
                default:
                    if (c != c2) {
                        bArr[i4] = (byte) c;
                        i = i4 + 1;
                        break;
                    } else {
                        bArr[i4] = UTF8JsonGenerator.f21291k;
                        bArr[i4 + 1] = (byte) c2;
                        break;
                    }
            }
            bArr[i] = (byte) c2;
            this.off = i + 1;
        }
        bArr[i4] = UTF8JsonGenerator.f21291k;
        bArr[i4 + 1] = UTF8JsonGenerator.f21291k;
        i = i4 + 2;
        bArr[i] = (byte) c2;
        this.off = i + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeColon() {
        int i = this.off;
        if (i == this.f12467g.length) {
            m7432j(i + 1);
        }
        this.f12467g[i] = 58;
        this.off = i + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeComma() {
        int i = 0;
        this.startObject = false;
        int i2 = this.off;
        int i3 = (this.pretty ? this.indent + 3 : 1) + i2;
        if (i3 >= this.f12467g.length) {
            m7432j(i3);
        }
        byte[] bArr = this.f12467g;
        int i4 = i2 + 1;
        bArr[i2] = 44;
        if (this.pretty) {
            int i5 = i4 + 1;
            bArr[i4] = 10;
            while (true) {
                i4 = i5;
                if (i >= this.indent) {
                    break;
                }
                i5 = i4 + 1;
                bArr[i4] = 9;
                i++;
            }
        }
        this.off = i4;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateTime14(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = this.off;
        int i8 = i7 + 16;
        if (i8 >= this.f12467g.length) {
            m7432j(i8);
        }
        byte[] bArr = this.f12467g;
        char c = this.quote;
        bArr[i7] = (byte) c;
        if (i < 0 || i > 9999) {
            throw new IllegalArgumentException("Only 4 digits numbers are supported. Provided: " + i);
        }
        int i9 = i / 1000;
        int[] iArr = IOUtils.DIGITS_K;
        int i10 = iArr[i - (i9 * 1000)];
        bArr[i7 + 1] = (byte) (i9 + 48);
        bArr[i7 + 2] = (byte) (i10 >> 16);
        bArr[i7 + 3] = (byte) (i10 >> 8);
        bArr[i7 + 4] = (byte) i10;
        int i11 = iArr[i2];
        bArr[i7 + 5] = (byte) (i11 >> 8);
        bArr[i7 + 6] = (byte) i11;
        int i12 = iArr[i3];
        bArr[i7 + 7] = (byte) (i12 >> 8);
        bArr[i7 + 8] = (byte) i12;
        int i13 = iArr[i4];
        bArr[i7 + 9] = (byte) (i13 >> 8);
        bArr[i7 + 10] = (byte) i13;
        int i14 = iArr[i5];
        bArr[i7 + 11] = (byte) (i14 >> 8);
        bArr[i7 + 12] = (byte) i14;
        int i15 = iArr[i6];
        bArr[i7 + 13] = (byte) (i15 >> 8);
        bArr[i7 + 14] = (byte) i15;
        bArr[i7 + 15] = (byte) c;
        this.off = i8;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateTime19(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = this.off;
        int i8 = i7 + 21;
        if (i8 >= this.f12467g.length) {
            m7432j(i8);
        }
        byte[] bArr = this.f12467g;
        char c = this.quote;
        bArr[i7] = (byte) c;
        if (i < 0 || i > 9999) {
            throw new IllegalArgumentException("Only 4 digits numbers are supported. Provided: " + i);
        }
        int i9 = i / 1000;
        int[] iArr = IOUtils.DIGITS_K;
        int i10 = iArr[i - (i9 * 1000)];
        bArr[i7 + 1] = (byte) (i9 + 48);
        bArr[i7 + 2] = (byte) (i10 >> 16);
        bArr[i7 + 3] = (byte) (i10 >> 8);
        bArr[i7 + 4] = (byte) i10;
        bArr[i7 + 5] = 45;
        int i11 = iArr[i2];
        bArr[i7 + 6] = (byte) (i11 >> 8);
        bArr[i7 + 7] = (byte) i11;
        bArr[i7 + 8] = 45;
        int i12 = iArr[i3];
        bArr[i7 + 9] = (byte) (i12 >> 8);
        bArr[i7 + 10] = (byte) i12;
        bArr[i7 + 11] = 32;
        int i13 = iArr[i4];
        bArr[i7 + 12] = (byte) (i13 >> 8);
        bArr[i7 + 13] = (byte) i13;
        bArr[i7 + 14] = 58;
        int i14 = iArr[i5];
        bArr[i7 + 15] = (byte) (i14 >> 8);
        bArr[i7 + 16] = (byte) i14;
        bArr[i7 + 17] = 58;
        int i15 = iArr[i6];
        bArr[i7 + 18] = (byte) (i15 >> 8);
        bArr[i7 + 19] = (byte) i15;
        bArr[i7 + 20] = (byte) c;
        this.off = i8;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateTimeISO8601(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        int i9 = this.off + 25 + (z ? i8 == 0 ? 1 : 6 : 0);
        if (i9 >= this.f12467g.length) {
            m7432j(i9);
        }
        byte[] bArr = this.f12467g;
        int i10 = this.off;
        bArr[i10] = (byte) this.quote;
        int writeInt32 = IOUtils.writeInt32(bArr, i10 + 1, i);
        bArr[writeInt32] = 45;
        int[] iArr = IOUtils.DIGITS_K;
        int i11 = iArr[i2];
        bArr[writeInt32 + 1] = (byte) (i11 >> 8);
        bArr[writeInt32 + 2] = (byte) i11;
        bArr[writeInt32 + 3] = 45;
        int i12 = iArr[i3];
        bArr[writeInt32 + 4] = (byte) (i12 >> 8);
        bArr[writeInt32 + 5] = (byte) i12;
        bArr[writeInt32 + 6] = (byte) (z ? 84 : 32);
        int i13 = iArr[i4];
        bArr[writeInt32 + 7] = (byte) (i13 >> 8);
        bArr[writeInt32 + 8] = (byte) i13;
        bArr[writeInt32 + 9] = 58;
        int i14 = iArr[i5];
        bArr[writeInt32 + 10] = (byte) (i14 >> 8);
        bArr[writeInt32 + 11] = (byte) i14;
        bArr[writeInt32 + 12] = 58;
        int i15 = iArr[i6];
        bArr[writeInt32 + 13] = (byte) (i15 >> 8);
        bArr[writeInt32 + 14] = (byte) i15;
        int i16 = writeInt32 + 15;
        if (i7 > 0) {
            int i17 = i16 + 1;
            bArr[i16] = Cea608Decoder.f26822e0;
            int i18 = i7 / 10;
            int i19 = i18 / 10;
            if (i7 - (i18 * 10) != 0) {
                int i20 = iArr[i7];
                bArr[i17] = (byte) (i20 >> 16);
                bArr[i17 + 1] = (byte) (i20 >> 8);
                bArr[i17 + 2] = (byte) i20;
                i16 = i17 + 3;
            } else if (i18 - (i19 * 10) != 0) {
                int i21 = iArr[i18];
                bArr[i17] = (byte) (i21 >> 8);
                bArr[i17 + 1] = (byte) i21;
                i16 = i17 + 2;
            } else {
                i16 = i17 + 1;
                bArr[i17] = (byte) (i19 + 48);
            }
        }
        if (z) {
            int i22 = i8 / 3600;
            if (i8 == 0) {
                bArr[i16] = 90;
                i16++;
            } else {
                int abs = Math.abs(i22);
                bArr[i16] = i22 >= 0 ? (byte) 43 : (byte) 45;
                int i23 = iArr[abs];
                bArr[i16 + 1] = (byte) (i23 >> 8);
                bArr[i16 + 2] = (byte) i23;
                bArr[i16 + 3] = 58;
                int i24 = (i8 - (i22 * 3600)) / 60;
                if (i24 < 0) {
                    i24 = -i24;
                }
                int i25 = iArr[i24];
                bArr[i16 + 4] = (byte) (i25 >> 8);
                bArr[i16 + 5] = (byte) i25;
                i16 += 6;
            }
        }
        bArr[i16] = (byte) this.quote;
        this.off = i16 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateYYYMMDD10(int i, int i2, int i3) {
        int i4 = this.off;
        int i5 = i4 + 13;
        if (i5 >= this.f12467g.length) {
            m7432j(i5);
        }
        byte[] bArr = this.f12467g;
        bArr[i4] = (byte) this.quote;
        int writeLocalDate = IOUtils.writeLocalDate(bArr, i4 + 1, i, i2, i3);
        bArr[writeLocalDate] = (byte) this.quote;
        this.off = writeLocalDate + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateYYYMMDD8(int i, int i2, int i3) {
        int i4 = this.off;
        int i5 = i4 + 10;
        if (i5 >= this.f12467g.length) {
            m7432j(i5);
        }
        byte[] bArr = this.f12467g;
        char c = this.quote;
        bArr[i4] = (byte) c;
        if (i < 0 || i > 9999) {
            throw new IllegalArgumentException("Only 4 digits numbers are supported. Provided: " + i);
        }
        int i6 = i / 1000;
        int[] iArr = IOUtils.DIGITS_K;
        int i7 = iArr[i - (i6 * 1000)];
        bArr[i4 + 1] = (byte) (i6 + 48);
        bArr[i4 + 2] = (byte) (i7 >> 16);
        bArr[i4 + 3] = (byte) (i7 >> 8);
        bArr[i4 + 4] = (byte) i7;
        int i8 = iArr[i2];
        bArr[i4 + 5] = (byte) (i8 >> 8);
        bArr[i4 + 6] = (byte) i8;
        int i9 = iArr[i3];
        bArr[i4 + 7] = (byte) (i9 >> 8);
        bArr[i4 + 8] = (byte) i9;
        bArr[i4 + 9] = (byte) c;
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
        if (scale >= this.f12467g.length) {
            m7432j(scale);
        }
        byte[] bArr = this.f12467g;
        if (z) {
            bArr[i] = 34;
            i++;
        }
        String plainString = (j2 & JSONWriter.Feature.WriteBigDecimalAsPlain.mask) != 0 ? bigDecimal.toPlainString() : bigDecimal.toString();
        plainString.getBytes(0, plainString.length(), bArr, i);
        int length = i + plainString.length();
        if (z) {
            bArr[length] = 34;
            length++;
        }
        this.off = length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDouble(double d) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int i2 = i + 26;
        if (i2 >= this.f12467g.length) {
            m7432j(i2);
        }
        byte[] bArr = this.f12467g;
        if (z) {
            bArr[i] = 34;
            i++;
        }
        int doubleToDecimal = i + DoubleToDecimal.toString(d, bArr, i, true);
        if (z) {
            bArr[doubleToDecimal] = 34;
            doubleToDecimal++;
        }
        this.off = doubleToDecimal;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeFloat(float f) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int i2 = i + 17;
        if (i2 >= this.f12467g.length) {
            m7432j(i2);
        }
        if (z) {
            this.f12467g[i] = 34;
            i++;
        }
        int doubleToDecimal = i + DoubleToDecimal.toString(f, this.f12467g, i, true);
        if (z) {
            this.f12467g[doubleToDecimal] = 34;
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
        m7432j(length + i + 2);
        byte[] bArr2 = this.f12467g;
        bArr2[i] = 120;
        bArr2[i + 1] = Cea608Decoder.f26816Y;
        int i2 = i + 2;
        for (byte b : bArr) {
            int i3 = b & 255;
            int i4 = i3 >> 4;
            int i5 = i3 & 15;
            int i6 = 48;
            bArr2[i2] = (byte) (i4 + (i4 < 10 ? 48 : 55));
            int i7 = i2 + 1;
            if (i5 >= 10) {
                i6 = 55;
            }
            bArr2[i7] = (byte) (i5 + i6);
            i2 += 2;
        }
        bArr2[i2] = Cea608Decoder.f26816Y;
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt16(short s) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int i2 = i + 7;
        if (i2 >= this.f12467g.length) {
            m7432j(i2);
        }
        byte[] bArr = this.f12467g;
        if (z) {
            bArr[i] = (byte) this.quote;
            i++;
        }
        int writeInt32 = IOUtils.writeInt32(bArr, i, s);
        if (z) {
            bArr[writeInt32] = (byte) this.quote;
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
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        byte[] bArr = this.f12467g;
        int i2 = i + 1;
        bArr[i] = UTF8JsonGenerator.f21287g;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (i3 != 0) {
                bArr[i2] = 44;
                i2++;
            }
            if (z) {
                bArr[i2] = (byte) this.quote;
                i2++;
            }
            int writeInt32 = IOUtils.writeInt32(bArr, i2, iArr[i3]);
            if (z) {
                i2 = writeInt32 + 1;
                bArr[writeInt32] = (byte) this.quote;
            } else {
                i2 = writeInt32;
            }
        }
        bArr[i2] = UTF8JsonGenerator.f21288h;
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
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        byte[] bArr = this.f12467g;
        int i2 = i + 1;
        bArr[i] = UTF8JsonGenerator.f21287g;
        for (int i3 = 0; i3 < jArr.length; i3++) {
            if (i3 != 0) {
                bArr[i2] = 44;
                i2++;
            }
            long j2 = jArr[i3];
            boolean z3 = z2 || (z && j2 <= 9007199254740991L && j2 >= -9007199254740991L);
            if (z3) {
                bArr[i2] = (byte) this.quote;
                i2++;
            }
            i2 = IOUtils.writeInt64(bArr, i2, j2);
            if (z3) {
                bArr[i2] = (byte) this.quote;
                i2++;
            }
        }
        bArr[i2] = UTF8JsonGenerator.f21288h;
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt8(byte b) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i = this.off;
        int i2 = i + 5;
        if (i2 >= this.f12467g.length) {
            m7432j(i2);
        }
        byte[] bArr = this.f12467g;
        if (z) {
            bArr[i] = (byte) this.quote;
            i++;
        }
        int writeInt32 = IOUtils.writeInt32(bArr, i, b);
        if (z) {
            bArr[writeInt32] = (byte) this.quote;
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
            if (i2 >= this.f12467g.length) {
                m7432j(i2);
            }
            byte[] bArr = this.f12467g;
            bArr[i] = (byte) this.quote;
            int writeLocalDate = IOUtils.writeLocalDate(bArr, i + 1, localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
            bArr[writeLocalDate] = (byte) this.quote;
            this.off = writeLocalDate + 1;
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeLocalDateTime(LocalDateTime localDateTime) {
        int i = this.off;
        int i2 = i + 38;
        if (i2 >= this.f12467g.length) {
            m7432j(i2);
        }
        byte[] bArr = this.f12467g;
        int i3 = i + 1;
        bArr[i] = (byte) this.quote;
        LocalDate localDate = localDateTime.toLocalDate();
        int writeLocalDate = IOUtils.writeLocalDate(bArr, i3, localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
        bArr[writeLocalDate] = 32;
        int writeLocalTime = IOUtils.writeLocalTime(bArr, writeLocalDate + 1, localDateTime.toLocalTime());
        bArr[writeLocalTime] = (byte) this.quote;
        this.off = writeLocalTime + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public final void writeLocalTime(LocalTime localTime) {
        int i = this.off;
        int i2 = i + 20;
        if (i2 >= this.f12467g.length) {
            m7432j(i2);
        }
        byte[] bArr = this.f12467g;
        bArr[i] = (byte) this.quote;
        int writeLocalTime = IOUtils.writeLocalTime(bArr, i + 1, localTime);
        bArr[writeLocalTime] = (byte) this.quote;
        this.off = writeLocalTime + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(byte[] bArr) {
        int i = this.off;
        int length = bArr.length + i + 2 + this.indent;
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        if (this.startObject) {
            this.startObject = false;
        } else {
            byte[] bArr2 = this.f12467g;
            int i2 = i + 1;
            bArr2[i] = 44;
            if (this.pretty) {
                i = i2 + 1;
                bArr2[i2] = 10;
                int i3 = 0;
                while (i3 < this.indent) {
                    bArr2[i] = 9;
                    i3++;
                    i++;
                }
            } else {
                i = i2;
            }
        }
        System.arraycopy(bArr, 0, this.f12467g, i, bArr.length);
        this.off = i + bArr.length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public final void writeOffsetDateTime(OffsetDateTime offsetDateTime) {
        int length;
        if (offsetDateTime == null) {
            writeNull();
            return;
        }
        ZoneOffset offset = offsetDateTime.getOffset();
        int i = this.off + 45;
        if (i >= this.f12467g.length) {
            m7432j(i);
        }
        byte[] bArr = this.f12467g;
        int i2 = this.off;
        int i3 = i2 + 1;
        bArr[i2] = (byte) this.quote;
        LocalDateTime localDateTime = offsetDateTime.toLocalDateTime();
        LocalDate localDate = localDateTime.toLocalDate();
        int writeLocalDate = IOUtils.writeLocalDate(bArr, i3, localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
        bArr[writeLocalDate] = 84;
        int writeLocalTime = IOUtils.writeLocalTime(bArr, writeLocalDate + 1, localDateTime.toLocalTime());
        if (offset.getTotalSeconds() == 0) {
            length = writeLocalTime + 1;
            bArr[writeLocalTime] = 90;
        } else {
            String id = offset.getId();
            id.getBytes(0, id.length(), bArr, writeLocalTime);
            length = id.length() + writeLocalTime;
        }
        bArr[length] = (byte) this.quote;
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
        int i = this.off + 45;
        if (i >= this.f12467g.length) {
            m7432j(i);
        }
        byte[] bArr = this.f12467g;
        int i2 = this.off;
        bArr[i2] = (byte) this.quote;
        int writeLocalTime = IOUtils.writeLocalTime(bArr, i2 + 1, offsetTime.toLocalTime());
        if (offset.getTotalSeconds() == 0) {
            length = writeLocalTime + 1;
            bArr[writeLocalTime] = 90;
        } else {
            String id = offset.getId();
            id.getBytes(0, id.length(), bArr, writeLocalTime);
            length = id.length() + writeLocalTime;
        }
        bArr[length] = (byte) this.quote;
        this.off = length + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(String str) {
        int i;
        int i2;
        char[] charArray = str.toCharArray();
        int i3 = this.off;
        int length = (charArray.length * 3) + i3;
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        byte[] bArr = this.f12467g;
        for (char c : charArray) {
            if (c >= 1 && c <= 127) {
                i2 = i3 + 1;
                bArr[i3] = (byte) c;
            } else {
                if (c > 2047) {
                    bArr[i3] = (byte) (((c >> '\f') & 15) | 224);
                    bArr[i3 + 1] = (byte) (((c >> 6) & 63) | 128);
                    i = i3 + 2;
                } else {
                    bArr[i3] = (byte) (((c >> 6) & 31) | 192);
                    i = i3 + 1;
                }
                i2 = i + 1;
                bArr[i] = (byte) ((c & '?') | 128);
            }
            i3 = i2;
        }
        this.off = i3;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeReference(String str) {
        this.lastReference = str;
        writeRaw(f12465h);
        writeString(str);
        int i = this.off;
        if (i == this.f12467g.length) {
            m7432j(i + 1);
        }
        this.f12467g[i] = 125;
        this.off = i + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(String str) {
        char c;
        if (str == null) {
            writeStringNull();
            return;
        }
        char[] charArray = str.toCharArray();
        long j = this.context.f12331k;
        boolean z = (JSONWriter.Feature.BrowserSecure.mask & j) != 0;
        boolean z2 = (j & JSONWriter.Feature.EscapeNoneAscii.mask) != 0;
        int i = this.off;
        int length = (charArray.length * 3) + i + 2;
        if (z2 || z) {
            length += charArray.length * 3;
        }
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        byte[] bArr = this.f12467g;
        bArr[i] = (byte) this.quote;
        int i2 = 0;
        int i3 = i + 1;
        while (i2 < charArray.length && (c = charArray[i2]) != this.quote && c != '\\' && c >= ' ' && c <= 127 && (!z || (c != '<' && c != '>' && c != '(' && c != ')'))) {
            bArr[i3] = (byte) c;
            i2++;
            i3++;
        }
        if (i2 == charArray.length) {
            bArr[i3] = (byte) this.quote;
            this.off = i3 + 1;
            return;
        }
        this.off = i3;
        if (i2 < charArray.length) {
            m7431H(charArray, charArray.length, z, z2, i2);
        }
        byte[] bArr2 = this.f12467g;
        int i4 = this.off;
        this.off = i4 + 1;
        bArr2[i4] = (byte) this.quote;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeStringLatin1(byte[] bArr) {
        boolean z;
        if (bArr == null) {
            writeStringNull();
            return;
        }
        boolean z2 = (this.context.f12331k & JSONWriter.Feature.BrowserSecure.mask) != 0;
        byte b = (byte) this.quote;
        for (byte b2 : bArr) {
            if (b2 == b || b2 == 92 || b2 < 32 || (z2 && (b2 == 60 || b2 == 62 || b2 == 40 || b2 == 41))) {
                z = true;
                break;
            }
        }
        z = false;
        int i = this.off;
        if (z) {
            m7433w(bArr);
            return;
        }
        int length = bArr.length + i + 2;
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        byte[] bArr2 = this.f12467g;
        bArr2[i] = b;
        System.arraycopy(bArr, 0, bArr2, i + 1, bArr.length);
        int length2 = i + bArr.length + 1;
        bArr2[length2] = b;
        this.off = length2 + 1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x006d. Please report as an issue. */
    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeStringUTF16(byte[] bArr) {
        int i;
        int i2;
        if (bArr == null) {
            writeStringNull();
            return;
        }
        long j = this.context.f12331k;
        int i3 = 0;
        boolean z = (JSONWriter.Feature.EscapeNoneAscii.mask & j) != 0;
        boolean z2 = (j & JSONWriter.Feature.BrowserSecure.mask) != 0;
        int i4 = this.off;
        int length = (bArr.length * 4) + i4 + 2;
        if (z) {
            length += bArr.length * 2;
        }
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        byte[] bArr2 = this.f12467g;
        int i5 = i4 + 1;
        bArr2[i4] = (byte) this.quote;
        while (i3 < bArr.length) {
            int i6 = i3 + 1;
            byte b = bArr[i3];
            int i7 = i6 + 1;
            byte b2 = bArr[i6];
            if (b2 != 0 || b < 0) {
                char c = (char) (((b2 & 255) << 8) | (b & 255));
                if (c < 2048) {
                    bArr2[i5] = (byte) ((c >> 6) | 192);
                    bArr2[i5 + 1] = (byte) ((c & '?') | 128);
                    i5 += 2;
                } else if (z) {
                    bArr2[i5] = UTF8JsonGenerator.f21291k;
                    bArr2[i5 + 1] = UTF8JsonGenerator.f21285e;
                    char[] cArr = JSONWriter.f12320e;
                    bArr2[i5 + 2] = (byte) cArr[(c >>> '\f') & 15];
                    bArr2[i5 + 3] = (byte) cArr[(c >>> '\b') & 15];
                    bArr2[i5 + 4] = (byte) cArr[(c >>> 4) & 15];
                    bArr2[i5 + 5] = (byte) cArr[c & 15];
                    i5 += 6;
                } else if (c < 55296 || c >= 57344) {
                    bArr2[i5] = (byte) ((c >> '\f') | 224);
                    bArr2[i5 + 1] = (byte) ((63 & (c >> 6)) | 128);
                    bArr2[i5 + 2] = (byte) ((c & '?') | 128);
                    i5 += 3;
                } else {
                    int i8 = i7 - 1;
                    if (c < 56320) {
                        if (bArr.length - i8 < 2) {
                            i2 = -1;
                        } else {
                            char c2 = (char) (((bArr[i8 + 2] & 255) << 8) | (bArr[i8 + 1] & 255));
                            if (c2 < 56320 || c2 >= 57344) {
                                i = i5 + 1;
                                bArr2[i5] = 63;
                            } else {
                                i7 += 2;
                                i2 = ((c << '\n') + c2) - 56613888;
                            }
                        }
                        if (i2 < 0) {
                            i = i5 + 1;
                            bArr2[i5] = 63;
                        } else {
                            bArr2[i5] = (byte) ((i2 >> 18) | 240);
                            bArr2[i5 + 1] = (byte) (((i2 >> 12) & 63) | 128);
                            bArr2[i5 + 2] = (byte) ((63 & (i2 >> 6)) | 128);
                            bArr2[i5 + 3] = (byte) ((i2 & 63) | 128);
                            i = i5 + 4;
                        }
                    } else {
                        i = i5 + 1;
                        bArr2[i5] = 63;
                    }
                    i5 = i;
                }
            } else if (b != 40 && b != 41 && b != 60 && b != 62) {
                if (b != 92) {
                    switch (b) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            bArr2[i5] = UTF8JsonGenerator.f21291k;
                            bArr2[i5 + 1] = UTF8JsonGenerator.f21285e;
                            bArr2[i5 + 2] = 48;
                            bArr2[i5 + 3] = 48;
                            bArr2[i5 + 4] = 48;
                            bArr2[i5 + 5] = (byte) (b + 48);
                            i5 += 6;
                            break;
                        case 8:
                            bArr2[i5] = UTF8JsonGenerator.f21291k;
                            bArr2[i5 + 1] = 98;
                            break;
                        case 9:
                            bArr2[i5] = UTF8JsonGenerator.f21291k;
                            bArr2[i5 + 1] = 116;
                            break;
                        case 10:
                            bArr2[i5] = UTF8JsonGenerator.f21291k;
                            bArr2[i5 + 1] = 110;
                            break;
                        case 11:
                        case 14:
                        case 15:
                            bArr2[i5] = UTF8JsonGenerator.f21291k;
                            bArr2[i5 + 1] = UTF8JsonGenerator.f21285e;
                            bArr2[i5 + 2] = 48;
                            bArr2[i5 + 3] = 48;
                            bArr2[i5 + 4] = 48;
                            bArr2[i5 + 5] = (byte) ((b - 10) + 97);
                            i5 += 6;
                            break;
                        case 12:
                            bArr2[i5] = UTF8JsonGenerator.f21291k;
                            bArr2[i5 + 1] = 102;
                            break;
                        case 13:
                            bArr2[i5] = UTF8JsonGenerator.f21291k;
                            bArr2[i5 + 1] = 114;
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
                            bArr2[i5] = UTF8JsonGenerator.f21291k;
                            bArr2[i5 + 1] = UTF8JsonGenerator.f21285e;
                            bArr2[i5 + 2] = 48;
                            bArr2[i5 + 3] = 48;
                            bArr2[i5 + 4] = TarConstants.LF_LINK;
                            bArr2[i5 + 5] = (byte) (b + JSONB.Constants.BC_INT32_NUM_MIN + 48);
                            i5 += 6;
                            break;
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                            bArr2[i5] = UTF8JsonGenerator.f21291k;
                            bArr2[i5 + 1] = UTF8JsonGenerator.f21285e;
                            bArr2[i5 + 2] = 48;
                            bArr2[i5 + 3] = 48;
                            bArr2[i5 + 4] = TarConstants.LF_LINK;
                            bArr2[i5 + 5] = (byte) ((b - 26) + 97);
                            i5 += 6;
                            break;
                        default:
                            char c3 = this.quote;
                            if (b != c3) {
                                i = i5 + 1;
                                bArr2[i5] = b;
                                i5 = i;
                                break;
                            } else {
                                bArr2[i5] = UTF8JsonGenerator.f21291k;
                                bArr2[i5 + 1] = (byte) c3;
                                break;
                            }
                    }
                } else {
                    bArr2[i5] = UTF8JsonGenerator.f21291k;
                    bArr2[i5 + 1] = UTF8JsonGenerator.f21291k;
                }
                i5 += 2;
            } else if (z2) {
                bArr2[i5] = UTF8JsonGenerator.f21291k;
                bArr2[i5 + 1] = UTF8JsonGenerator.f21285e;
                bArr2[i5 + 2] = 48;
                bArr2[i5 + 3] = 48;
                char[] cArr2 = JSONWriter.f12320e;
                bArr2[i5 + 4] = (byte) cArr2[(b >>> 4) & 15];
                bArr2[i5 + 5] = (byte) cArr2[b & 15];
                i5 += 6;
            } else {
                i = i5 + 1;
                bArr2[i5] = b;
                i5 = i;
            }
            i3 = i7;
        }
        bArr2[i5] = (byte) this.quote;
        this.off = i5 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeTimeHHMMSS8(int i, int i2, int i3) {
        int i4 = this.off;
        int i5 = i4 + 10;
        if (i5 >= this.f12467g.length) {
            m7432j(i5);
        }
        byte[] bArr = this.f12467g;
        char c = this.quote;
        bArr[i4] = (byte) c;
        int[] iArr = IOUtils.DIGITS_K;
        int i6 = iArr[i];
        bArr[i4 + 1] = (byte) (i6 >> 8);
        bArr[i4 + 2] = (byte) i6;
        bArr[i4 + 3] = 58;
        int i7 = iArr[i2];
        bArr[i4 + 4] = (byte) (i7 >> 8);
        bArr[i4 + 5] = (byte) i7;
        bArr[i4 + 6] = 58;
        int i8 = iArr[i3];
        bArr[i4 + 7] = (byte) (i8 >> 8);
        bArr[i4 + 8] = (byte) i8;
        bArr[i4 + 9] = (byte) c;
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
        if (i >= this.f12467g.length) {
            m7432j(i);
        }
        char[] cArr = JSONFactory.f12223G;
        byte[] bArr = this.f12467g;
        int i2 = this.off;
        bArr[i2] = 34;
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
        bArr[i2 + 1] = (byte) (c >> '\b');
        bArr[i2 + 2] = (byte) c;
        bArr[i2 + 3] = (byte) (c2 >> '\b');
        bArr[i2 + 4] = (byte) c2;
        bArr[i2 + 5] = (byte) (c3 >> '\b');
        bArr[i2 + 6] = (byte) c3;
        bArr[i2 + 7] = (byte) (c4 >> '\b');
        bArr[i2 + 8] = (byte) c4;
        bArr[i2 + 9] = 45;
        bArr[i2 + 10] = (byte) (c5 >> '\b');
        bArr[i2 + 11] = (byte) c5;
        bArr[i2 + 12] = (byte) (c6 >> '\b');
        bArr[i2 + 13] = (byte) c6;
        bArr[i2 + 14] = 45;
        bArr[i2 + 15] = (byte) (c7 >> '\b');
        bArr[i2 + 16] = (byte) c7;
        bArr[i2 + 17] = (byte) (c8 >> '\b');
        bArr[i2 + 18] = (byte) c8;
        bArr[i2 + 19] = 45;
        bArr[i2 + 20] = (byte) (c9 >> '\b');
        bArr[i2 + 21] = (byte) c9;
        bArr[i2 + 22] = (byte) (c10 >> '\b');
        bArr[i2 + 23] = (byte) c10;
        bArr[i2 + 24] = 45;
        bArr[i2 + 25] = (byte) (c11 >> '\b');
        bArr[i2 + 26] = (byte) c11;
        bArr[i2 + 27] = (byte) (c12 >> '\b');
        bArr[i2 + 28] = (byte) c12;
        bArr[i2 + 29] = (byte) (c13 >> '\b');
        bArr[i2 + 30] = (byte) c13;
        bArr[i2 + 31] = (byte) (c14 >> '\b');
        bArr[i2 + 32] = (byte) c14;
        bArr[i2 + 33] = (byte) (c15 >> '\b');
        bArr[i2 + 34] = (byte) c15;
        bArr[i2 + 35] = (byte) (c16 >> '\b');
        bArr[i2 + 36] = (byte) c16;
        bArr[i2 + 37] = 34;
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
        if (i4 >= this.f12467g.length) {
            m7432j(i4);
        }
        byte[] bArr = this.f12467g;
        int i5 = i3 + 1;
        bArr[i3] = (byte) this.quote;
        LocalDate localDate = zonedDateTime.toLocalDate();
        int writeLocalDate = IOUtils.writeLocalDate(bArr, i5, localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
        bArr[writeLocalDate] = 84;
        int writeLocalTime = IOUtils.writeLocalTime(bArr, writeLocalDate + 1, zonedDateTime.toLocalTime());
        if (i == 1) {
            i2 = writeLocalTime + 1;
            bArr[writeLocalTime] = 90;
        } else if (c == '+' || c == '-') {
            id.getBytes(0, length, bArr, writeLocalTime);
            i2 = writeLocalTime + length;
        } else {
            int i6 = writeLocalTime + 1;
            bArr[writeLocalTime] = UTF8JsonGenerator.f21287g;
            id.getBytes(0, length, bArr, i6);
            int i7 = i6 + length;
            bArr[i7] = UTF8JsonGenerator.f21288h;
            i2 = i7 + 1;
        }
        bArr[i2] = (byte) this.quote;
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public byte[] getBytes(Charset charset) {
        if (charset == StandardCharsets.UTF_8) {
            return Arrays.copyOf(this.f12467g, this.off);
        }
        return toString().getBytes(charset);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public int flushTo(OutputStream outputStream, Charset charset) throws IOException {
        byte[] bArr;
        boolean z;
        if (charset != null && charset != StandardCharsets.UTF_8 && charset != StandardCharsets.US_ASCII) {
            if (charset == StandardCharsets.ISO_8859_1) {
                int i = 0;
                while (true) {
                    bArr = this.f12467g;
                    if (i >= bArr.length) {
                        z = false;
                        break;
                    }
                    if (bArr[i] < 0) {
                        z = true;
                        break;
                    }
                    i++;
                }
                if (!z) {
                    int i2 = this.off;
                    outputStream.write(bArr, 0, i2);
                    this.off = 0;
                    return i2;
                }
            }
            byte[] bytes = new String(this.f12467g, 0, this.off).getBytes(charset);
            outputStream.write(bytes);
            return bytes.length;
        }
        int i3 = this.off;
        outputStream.write(this.f12467g, 0, i3);
        this.off = 0;
        return i3;
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
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        byte[] bArr = this.f12467g;
        int i2 = i + 1;
        bArr[i] = UTF8JsonGenerator.f21287g;
        for (int i3 = 0; i3 < fArr.length; i3++) {
            if (i3 != 0) {
                bArr[i2] = 44;
                i2++;
            }
            if (z) {
                bArr[i2] = 34;
                i2++;
            }
            i2 += DoubleToDecimal.toString(fArr[i3], bArr, i2, true);
            if (z) {
                bArr[i2] = 34;
                i2++;
            }
        }
        bArr[i2] = UTF8JsonGenerator.f21288h;
        this.off = i2 + 1;
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
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        byte[] bArr = this.f12467g;
        int i2 = i + 1;
        bArr[i] = UTF8JsonGenerator.f21287g;
        for (int i3 = 0; i3 < dArr.length; i3++) {
            if (i3 != 0) {
                bArr[i2] = 44;
                i2++;
            }
            if (z) {
                bArr[i2] = 34;
                i2++;
            }
            i2 += DoubleToDecimal.toString(dArr[i3], bArr, i2, true);
            if (z) {
                bArr[i2] = 34;
                i2++;
            }
        }
        bArr[i2] = UTF8JsonGenerator.f21288h;
        this.off = i2 + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(byte[] bArr, int i, int i2) {
        int i3 = this.off + i2 + 2 + this.indent;
        if (i3 >= this.f12467g.length) {
            m7432j(i3);
        }
        if (this.startObject) {
            this.startObject = false;
        } else {
            writeComma();
        }
        System.arraycopy(bArr, i, this.f12467g, this.off, i2);
        this.off += i2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(byte[] bArr) {
        int length = this.off + bArr.length;
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        System.arraycopy(bArr, 0, this.f12467g, this.off, bArr.length);
        this.off += bArr.length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt32(int i) {
        boolean z = (this.context.f12331k & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0;
        int i2 = this.off;
        int i3 = i2 + 13;
        if (i3 >= this.f12467g.length) {
            m7432j(i3);
        }
        byte[] bArr = this.f12467g;
        if (z) {
            bArr[i2] = (byte) this.quote;
            i2++;
        }
        int writeInt32 = IOUtils.writeInt32(bArr, i2, i);
        if (z) {
            bArr[writeInt32] = (byte) this.quote;
            writeInt32++;
        }
        this.off = writeInt32;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt64(long j) {
        int i;
        long j2 = this.context.f12331k;
        boolean z = ((JSONWriter.Feature.WriteNonStringValueAsString.mask | JSONWriter.Feature.WriteLongAsString.mask) & j2) != 0 || ((JSONWriter.Feature.BrowserCompatible.mask & j2) != 0 && (j > 9007199254740991L || j < -9007199254740991L));
        int i2 = this.off;
        int i3 = i2 + 23;
        if (i3 >= this.f12467g.length) {
            m7432j(i3);
        }
        byte[] bArr = this.f12467g;
        if (z) {
            bArr[i2] = (byte) this.quote;
            i2++;
        }
        int writeInt64 = IOUtils.writeInt64(bArr, i2, j);
        if (z) {
            i = writeInt64 + 1;
            bArr[writeInt64] = (byte) this.quote;
        } else {
            if ((JSONWriter.Feature.WriteClassName.mask & j2) != 0 && (j2 & JSONWriter.Feature.NotWriteNumberClassName.mask) == 0 && j >= ParserBase.f21225q && j <= 2147483647L) {
                i = writeInt64 + 1;
                bArr[writeInt64] = TarConstants.LF_GNUTYPE_LONGNAME;
            }
            this.off = writeInt64;
        }
        writeInt64 = i;
        this.off = writeInt64;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(char c) {
        if (c <= 128) {
            int i = this.off;
            if (i == this.f12467g.length) {
                m7432j(i + 1);
            }
            byte[] bArr = this.f12467g;
            int i2 = this.off;
            this.off = i2 + 1;
            bArr[i2] = (byte) c;
            return;
        }
        throw new JSONException("not support " + c);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(char[] cArr) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(char[] cArr) {
        char c;
        if (cArr == null) {
            writeStringNull();
            return;
        }
        long j = this.context.f12331k;
        boolean z = (JSONWriter.Feature.BrowserSecure.mask & j) != 0;
        boolean z2 = (j & JSONWriter.Feature.EscapeNoneAscii.mask) != 0;
        int i = this.off;
        int length = (cArr.length * 3) + i + 2;
        if (z2 || z) {
            length += cArr.length * 3;
        }
        if (length >= this.f12467g.length) {
            m7432j(length);
        }
        byte[] bArr = this.f12467g;
        int i2 = i + 1;
        bArr[i] = (byte) this.quote;
        int i3 = 0;
        while (i3 < cArr.length && (c = cArr[i3]) != this.quote && c != '\\' && c >= ' ' && c <= 127 && (!z || (c != '<' && c != '>' && c != '(' && c != ')'))) {
            bArr[i2] = (byte) c;
            i3++;
            i2++;
        }
        this.off = i2;
        int length2 = i2 + ((cArr.length - i3) * 6) + 2;
        if (length2 >= this.f12467g.length) {
            m7432j(length2);
        }
        if (i3 < cArr.length) {
            m7431H(cArr, cArr.length, z, z2, i3);
        }
        byte[] bArr2 = this.f12467g;
        int i4 = this.off;
        this.off = i4 + 1;
        bArr2[i4] = (byte) this.quote;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(char[] cArr, int i, int i2) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(char c, char c2) {
        if (c > 128) {
            throw new JSONException("not support " + c);
        }
        if (c2 <= 128) {
            int i = this.off;
            int i2 = i + 1;
            if (i2 >= this.f12467g.length) {
                m7432j(i + 2);
            }
            byte[] bArr = this.f12467g;
            bArr[i] = (byte) c;
            bArr[i2] = (byte) c2;
            this.off = i + 2;
            return;
        }
        throw new JSONException("not support " + c2);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(char[] cArr, int i, int i2) {
        if (cArr == null) {
            if (isEnabled(JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullStringAsEmpty.mask)) {
                writeString("");
                return;
            } else {
                writeNull();
                return;
            }
        }
        int i3 = i + i2;
        long j = this.context.f12331k;
        boolean z = (JSONWriter.Feature.BrowserSecure.mask & j) != 0;
        boolean z2 = (j & JSONWriter.Feature.EscapeNoneAscii.mask) != 0;
        int i4 = this.off;
        int i5 = i2 * 3;
        int i6 = i4 + i5 + 2;
        if (z2 || z) {
            i6 += i5;
        }
        if (i6 >= this.f12467g.length) {
            m7432j(i6);
        }
        byte[] bArr = this.f12467g;
        int i7 = i4 + 1;
        bArr[i4] = (byte) this.quote;
        int i8 = i;
        while (i8 < i3) {
            char c = cArr[i8];
            if (c == this.quote || c == '\\' || c < ' ' || c > 127 || (z && (c == '<' || c == '>' || c == '(' || c == ')'))) {
                break;
            }
            bArr[i7] = (byte) c;
            i8++;
            i7++;
        }
        this.off = i7;
        int i9 = i7 + ((i3 - i8) * 6) + 2;
        if (i9 >= this.f12467g.length) {
            m7432j(i9);
        }
        if (i8 < i3) {
            m7431H(cArr, i3, z, z2, i8);
        }
        byte[] bArr2 = this.f12467g;
        int i10 = this.off;
        this.off = i10 + 1;
        bArr2[i10] = (byte) this.quote;
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
        if (i == this.f12467g.length) {
            m7432j(i + 1);
        }
        byte[] bArr = this.f12467g;
        int i2 = this.off;
        this.off = i2 + 1;
        bArr[i2] = UTF8JsonGenerator.f21287g;
        int size = list.size();
        boolean z = true;
        int i3 = 0;
        while (i3 < size) {
            if (!z) {
                int i4 = this.off;
                if (i4 == this.f12467g.length) {
                    m7432j(i4 + 1);
                }
                byte[] bArr2 = this.f12467g;
                int i5 = this.off;
                this.off = i5 + 1;
                bArr2[i5] = 44;
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
        if (i6 == this.f12467g.length) {
            m7432j(i6 + 1);
        }
        byte[] bArr3 = this.f12467g;
        int i7 = this.off;
        this.off = i7 + 1;
        bArr3[i7] = UTF8JsonGenerator.f21288h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r20 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0063, code lost:
    
        r5[r9] = (byte) r16.quote;
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006b, code lost:
    
        r16.off = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006d, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:35:0x007c. Please report as an issue. */
    @Override // com.alibaba.fastjson2.JSONWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeString(char[] r17, int r18, int r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1742l.writeString(char[], int, int, boolean):void");
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
}
