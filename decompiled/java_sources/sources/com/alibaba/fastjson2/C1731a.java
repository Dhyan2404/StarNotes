package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.writer.ObjectWriterAdapter;
import com.onyx.android.sdk.base.data.font.TTFFont;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;

/* renamed from: com.alibaba.fastjson2.a */
/* loaded from: classes3.dex */
public final class C1731a {

    /* renamed from: l */
    public static Charset f12353l;

    /* renamed from: a */
    public final byte[] f12354a;

    /* renamed from: b */
    public final boolean f12355b;

    /* renamed from: c */
    public int f12356c;

    /* renamed from: d */
    public byte f12357d;

    /* renamed from: e */
    public int f12358e;

    /* renamed from: f */
    public byte f12359f;

    /* renamed from: g */
    public int f12360g;

    /* renamed from: h */
    public String f12361h;

    /* renamed from: i */
    public final JSONWriter f12362i;

    /* renamed from: j */
    public final SymbolTable f12363j;

    /* renamed from: k */
    public final Map<Integer, String> f12364k;

    public C1731a(byte[] bArr, boolean z) {
        this.f12364k = new HashMap();
        this.f12354a = bArr;
        this.f12355b = z;
        this.f12362i = JSONWriter.ofPretty();
        this.f12363j = null;
        m7332a();
    }

    /* renamed from: a */
    public final void m7332a() {
        int m7340i;
        BigInteger valueOf;
        int i = this.f12356c;
        byte[] bArr = this.f12354a;
        if (i >= bArr.length) {
            return;
        }
        int i2 = i + 1;
        this.f12356c = i2;
        byte b = bArr[i];
        this.f12357d = b;
        String str = null;
        if (b == -90) {
            m7334c(null);
            return;
        }
        if (b != 72) {
            if (b == -88) {
                int i3 = i2 + 1;
                int i4 = i3 + 1;
                int i5 = (bArr[i2] << 8) + (bArr[i3] & 255);
                int i6 = i4 + 1;
                byte b2 = bArr[i4];
                int i7 = i6 + 1;
                byte b3 = bArr[i6];
                int i8 = i7 + 1;
                byte b4 = bArr[i7];
                int i9 = i8 + 1;
                byte b5 = bArr[i8];
                this.f12356c = i9 + 1;
                this.f12362i.writeLocalDateTime(LocalDateTime.of(i5, b2, b3, b4, b5, bArr[i9], m7340i()));
                return;
            }
            if (b == -87) {
                int i10 = i2 + 1;
                int i11 = i10 + 1;
                int i12 = (bArr[i2] << 8) + (bArr[i10] & 255);
                int i13 = i11 + 1;
                byte b6 = bArr[i11];
                this.f12356c = i13 + 1;
                this.f12362i.writeDateYYYMMDD10(i12, b6, bArr[i13]);
                return;
            }
            switch (b) {
                case -112:
                    this.f12362i.writeChar((char) m7340i());
                    return;
                case -111:
                    int m7340i2 = m7340i();
                    byte[] bArr2 = new byte[m7340i2];
                    System.arraycopy(this.f12354a, this.f12356c, bArr2, 0, m7340i2);
                    this.f12356c += m7340i2;
                    this.f12362i.writeBinary(bArr2);
                    return;
                case -110:
                    if (m7337f()) {
                        m7340i = m7340i();
                    } else {
                        str = m7344m();
                        m7340i = m7340i();
                        this.f12364k.put(Integer.valueOf(m7340i), str);
                    }
                    if (!this.f12355b && this.f12354a[this.f12356c] == -90) {
                        if (str == null) {
                            str = m7336e(m7340i);
                        }
                        this.f12356c++;
                        m7334c(str);
                        return;
                    }
                    this.f12362i.startObject();
                    this.f12362i.writeName(ObjectWriterAdapter.f12832t);
                    this.f12362i.writeColon();
                    if (str == null) {
                        if (m7340i >= 0) {
                            this.f12362i.writeString("#" + m7340i);
                        } else if (this.f12355b) {
                            this.f12362i.writeString("#" + m7340i);
                        } else {
                            this.f12362i.writeString(this.f12363j.getName(-m7340i));
                        }
                    } else if (this.f12355b) {
                        this.f12362i.writeString(str + "#" + m7340i);
                    } else {
                        this.f12362i.writeString(str);
                    }
                    this.f12362i.writeName("@value");
                    this.f12362i.writeColon();
                    m7332a();
                    this.f12362i.endObject();
                    return;
                case -109:
                    m7335d();
                    return;
                default:
                    switch (b) {
                        case -85:
                        case -66:
                            this.f12356c = i2 + 8;
                            this.f12362i.writeInt64((bArr[i2 + 7] & 255) + ((bArr[i2 + 6] & 255) << 8) + ((bArr[i2 + 5] & 255) << 16) + ((bArr[i2 + 4] & 255) << 24) + ((bArr[i2 + 3] & 255) << 32) + ((bArr[i2 + 2] & 255) << 40) + ((bArr[i2 + 1] & 255) << 48) + (bArr[i2] << 56));
                            return;
                        case -84:
                        case -83:
                            break;
                        case -82:
                            this.f12362i.writeInstant(m7341j(), m7340i());
                            return;
                        case -81:
                            this.f12362i.writeNull();
                            return;
                        case -80:
                            this.f12362i.writeBool(false);
                            return;
                        case -79:
                            this.f12362i.writeBool(true);
                            return;
                        case -78:
                            this.f12362i.writeDouble(0.0d);
                            return;
                        case -77:
                            this.f12362i.writeDouble(1.0d);
                            return;
                        case -76:
                            this.f12362i.writeDouble(m7341j());
                            return;
                        case -75:
                            this.f12356c = i2 + 8;
                            this.f12362i.writeDouble(Double.longBitsToDouble((bArr[i2 + 7] & 255) + ((bArr[i2 + 6] & 255) << 8) + ((bArr[i2 + 5] & 255) << 16) + ((bArr[i2 + 4] & 255) << 24) + ((bArr[i2 + 3] & 255) << 32) + ((bArr[i2 + 2] & 255) << 40) + ((bArr[i2 + 1] & 255) << 48) + (bArr[i2] << 56)));
                            return;
                        case -74:
                            this.f12362i.writeFloat(m7340i());
                            return;
                        case -73:
                            int i14 = (bArr[i2 + 3] & 255) + ((bArr[i2 + 2] & 255) << 8) + ((bArr[i2 + 1] & 255) << 16) + (bArr[i2] << 24);
                            this.f12356c = i2 + 4;
                            this.f12362i.writeFloat(Float.intBitsToFloat(i14));
                            return;
                        case -72:
                            this.f12362i.writeDecimal(BigDecimal.valueOf(m7341j()), 0L, null);
                            return;
                        case -71:
                            int m7340i3 = m7340i();
                            byte[] bArr3 = this.f12354a;
                            int i15 = this.f12356c;
                            this.f12356c = i15 + 1;
                            if (bArr3[i15] != -70) {
                                int m7340i4 = m7340i();
                                byte[] bArr4 = new byte[m7340i4];
                                System.arraycopy(this.f12354a, this.f12356c, bArr4, 0, m7340i4);
                                this.f12356c += m7340i4;
                                valueOf = new BigInteger(bArr4);
                            } else {
                                valueOf = BigInteger.valueOf(m7341j());
                            }
                            this.f12362i.writeDecimal(m7340i3 == 0 ? new BigDecimal(valueOf) : new BigDecimal(valueOf, m7340i3), 0L, null);
                            return;
                        case -70:
                            this.f12362i.writeInt64(m7341j());
                            return;
                        case -69:
                            int m7340i5 = m7340i();
                            byte[] bArr5 = new byte[m7340i5];
                            System.arraycopy(this.f12354a, this.f12356c, bArr5, 0, m7340i5);
                            this.f12356c += m7340i5;
                            this.f12362i.writeBigInt(new BigInteger(bArr5));
                            return;
                        case -68:
                            JSONWriter jSONWriter = this.f12362i;
                            int i16 = i2 + 1;
                            int i17 = bArr[i2] << 8;
                            this.f12356c = i16 + 1;
                            jSONWriter.writeInt16((short) (i17 + (bArr[i16] & 255)));
                            return;
                        case -67:
                            JSONWriter jSONWriter2 = this.f12362i;
                            this.f12356c = i2 + 1;
                            jSONWriter2.writeInt8(bArr[i2]);
                            return;
                        case -65:
                            int i18 = (bArr[i2 + 3] & 255) + ((bArr[i2 + 2] & 255) << 8) + ((bArr[i2 + 1] & 255) << 16) + (bArr[i2] << 24);
                            this.f12356c = i2 + 4;
                            this.f12362i.writeInt64(i18);
                            return;
                        default:
                            switch (b) {
                                case 122:
                                    int m7342k = m7342k();
                                    String str2 = new String(this.f12354a, this.f12356c, m7342k, StandardCharsets.UTF_8);
                                    this.f12356c += m7342k;
                                    this.f12362i.writeString(str2);
                                    return;
                                case 123:
                                    int m7342k2 = m7342k();
                                    String str3 = new String(this.f12354a, this.f12356c, m7342k2, StandardCharsets.UTF_16);
                                    this.f12356c += m7342k2;
                                    this.f12362i.writeString(str3);
                                    return;
                                case 124:
                                    int m7342k3 = m7342k();
                                    String str4 = new String(this.f12354a, this.f12356c, m7342k3, StandardCharsets.UTF_16LE);
                                    this.f12356c += m7342k3;
                                    this.f12362i.writeString(str4);
                                    return;
                                case 125:
                                    int m7342k4 = m7342k();
                                    String str5 = new String(this.f12354a, this.f12356c, m7342k4, StandardCharsets.UTF_16BE);
                                    this.f12356c += m7342k4;
                                    this.f12362i.writeString(str5);
                                    return;
                                case 126:
                                    if (f12353l == null) {
                                        f12353l = Charset.forName(TTFFont.CHARSET_GB18030);
                                    }
                                    int m7342k5 = m7342k();
                                    String str6 = new String(this.f12354a, this.f12356c, m7342k5, f12353l);
                                    this.f12356c += m7342k5;
                                    this.f12362i.writeString(str6);
                                    return;
                                case Byte.MAX_VALUE:
                                    if (m7337f()) {
                                        int m7340i6 = m7340i();
                                        if (!this.f12355b) {
                                            this.f12362i.writeString(m7336e(m7340i6));
                                            return;
                                        }
                                        this.f12362i.writeString("#" + m7340i6);
                                        return;
                                    }
                                    String m7344m = m7344m();
                                    int m7340i7 = m7340i();
                                    this.f12364k.put(Integer.valueOf(m7340i7), m7344m);
                                    if (!this.f12355b) {
                                        this.f12362i.writeString(m7344m);
                                        return;
                                    }
                                    this.f12362i.writeString(m7344m + "#" + m7340i7);
                                    return;
                                default:
                                    if (b >= -16 && b <= 47) {
                                        this.f12362i.writeInt32(b);
                                        return;
                                    }
                                    if (b >= -40 && b <= -17) {
                                        this.f12362i.writeInt64((b - (-40)) - 8);
                                        return;
                                    }
                                    if (b >= 48 && b <= 63) {
                                        this.f12356c = i2 + 1;
                                        this.f12362i.writeInt32(((b - 56) << 8) + (bArr[i2] & 255));
                                        return;
                                    }
                                    if (b >= 64 && b <= 71) {
                                        int i19 = i2 + 1;
                                        int i20 = ((b + JSONB.Constants.BC_INT16) << 16) + ((bArr[i2] & 255) << 8);
                                        this.f12356c = i19 + 1;
                                        this.f12362i.writeInt32(i20 + (bArr[i19] & 255));
                                        return;
                                    }
                                    if (b >= -56 && b <= -41) {
                                        this.f12356c = i2 + 1;
                                        this.f12362i.writeInt32(((b + 48) << 8) + (bArr[i2] & 255));
                                        return;
                                    }
                                    if (b >= -64 && b <= -57) {
                                        int i21 = ((b + DeletedRef3DPtg.sid) << 16) + ((bArr[i2] & 255) << 8);
                                        this.f12356c = i2 + 1 + 1;
                                        this.f12362i.writeInt64(i21 + (bArr[r4] & 255));
                                        return;
                                    }
                                    if (b >= -108 && b <= -92) {
                                        m7333b();
                                        return;
                                    }
                                    if (b < 73 || b > 121) {
                                        throw new JSONException("not support type : " + JSONB.typeName(this.f12357d) + ", offset " + this.f12356c);
                                    }
                                    int m7342k6 = b == 121 ? m7342k() : b + JSONB.Constants.BC_FLOAT;
                                    this.f12358e = m7342k6;
                                    if (m7342k6 < 0) {
                                        this.f12362i.writeRaw("{\"$symbol\":");
                                        this.f12362i.writeInt32(this.f12358e);
                                        this.f12362i.writeRaw("}");
                                        return;
                                    } else {
                                        String str7 = new String(this.f12354a, this.f12356c, m7342k6, StandardCharsets.ISO_8859_1);
                                        this.f12356c += this.f12358e;
                                        this.f12362i.writeString(str7);
                                        return;
                                    }
                            }
                    }
            }
        }
        int i22 = (bArr[i2 + 3] & 255) + ((bArr[i2 + 2] & 255) << 8) + ((bArr[i2 + 1] & 255) << 16) + (bArr[i2] << 24);
        this.f12356c = i2 + 4;
        this.f12362i.writeInt32(i22);
    }

    /* renamed from: b */
    public final void m7333b() {
        byte b;
        byte b2 = this.f12357d;
        int m7342k = b2 == -92 ? m7342k() : b2 + 108;
        if (m7342k == 0) {
            this.f12362i.writeRaw("[]");
            return;
        }
        if (m7342k == 1) {
            this.f12357d = this.f12354a[this.f12356c];
            if (m7337f() || (b = this.f12357d) == -81 || (b >= 73 && b <= 120)) {
                this.f12362i.writeRaw(IteratorUtils.f104923a);
                m7332a();
                this.f12362i.writeRaw(IteratorUtils.f104924b);
                return;
            }
        }
        this.f12362i.startArray();
        for (int i = 0; i < m7342k; i++) {
            if (i != 0) {
                this.f12362i.writeComma();
            }
            if (m7338g()) {
                m7335d();
            } else {
                m7332a();
            }
        }
        this.f12362i.endArray();
    }

    /* renamed from: c */
    public final void m7334c(String str) {
        if (str != null) {
            this.f12362i.startObject();
            this.f12362i.writeName(ObjectWriterAdapter.f12832t);
            this.f12362i.writeColon();
            this.f12362i.writeString(str);
        } else {
            if (this.f12354a[this.f12356c] == -91) {
                this.f12362i.writeRaw("{}");
                this.f12356c++;
                return;
            }
            this.f12362i.startObject();
        }
        int i = 0;
        while (true) {
            byte[] bArr = this.f12354a;
            int i2 = this.f12356c;
            byte b = bArr[i2];
            if (b == -109) {
                m7335d();
            } else {
                if (b == -91) {
                    this.f12356c = i2 + 1;
                    this.f12362i.endObject();
                    return;
                }
                if (b == Byte.MAX_VALUE) {
                    this.f12356c = i2 + 1;
                    if (m7337f()) {
                        int m7340i = m7340i();
                        if (this.f12355b) {
                            this.f12362i.writeName("#" + m7340i);
                        } else {
                            String str2 = this.f12364k.get(Integer.valueOf(m7340i));
                            if (str2 == null) {
                                throw new JSONException("symbol not found " + m7340i);
                            }
                            this.f12362i.writeName(str2);
                        }
                    } else {
                        String m7344m = m7344m();
                        int m7340i2 = m7340i();
                        this.f12364k.put(Integer.valueOf(m7340i2), m7344m);
                        if (this.f12355b) {
                            this.f12362i.writeName(m7344m + "#" + m7340i2);
                        } else {
                            this.f12362i.writeName(m7344m);
                        }
                    }
                } else if (m7339h()) {
                    this.f12362i.writeName(m7344m());
                } else if (b >= -16 && b <= 72) {
                    this.f12362i.writeName(m7340i());
                } else if ((b < -40 || b > -17) && b != -66) {
                    if (i != 0) {
                        this.f12362i.writeComma();
                    }
                    m7332a();
                } else {
                    this.f12362i.writeName(m7341j());
                }
            }
            i++;
            this.f12362i.writeColon();
            if (m7338g()) {
                m7335d();
            } else {
                m7332a();
            }
        }
    }

    /* renamed from: d */
    public final void m7335d() {
        this.f12362i.writeRaw("{\"$ref\":");
        String m7343l = m7343l();
        this.f12362i.writeString(m7343l);
        if (!"#-1".equals(m7343l)) {
            this.f12361h = m7343l;
        }
        this.f12362i.writeRaw("}");
    }

    /* renamed from: e */
    public String m7336e(int i) {
        String name = i < 0 ? this.f12363j.getName(-i) : this.f12364k.get(Integer.valueOf(i));
        if (name != null) {
            return name;
        }
        throw new JSONException("symbol not found : " + i);
    }

    /* renamed from: f */
    public boolean m7337f() {
        byte b = this.f12354a[this.f12356c];
        return (b >= -70 && b <= 72) || b == -83 || b == -84 || b == -85;
    }

    /* renamed from: g */
    public boolean m7338g() {
        int i = this.f12356c;
        byte[] bArr = this.f12354a;
        return i < bArr.length && bArr[i] == -109;
    }

    /* renamed from: h */
    public boolean m7339h() {
        byte b = this.f12354a[this.f12356c];
        return b >= 73 && b <= 125;
    }

    /* renamed from: i */
    public int m7340i() {
        byte[] bArr = this.f12354a;
        int i = this.f12356c;
        int i2 = i + 1;
        this.f12356c = i2;
        byte b = bArr[i];
        if (b >= -16 && b <= 47) {
            return b;
        }
        if (b >= 48 && b <= 63) {
            int i3 = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
            this.f12356c = i2 + 1;
            return i3 + (bArr[i2] & 255);
        }
        if (b >= 64 && b <= 71) {
            int i4 = i2 + 1;
            int i5 = ((b + JSONB.Constants.BC_INT16) << 16) + ((bArr[i2] & 255) << 8);
            this.f12356c = i4 + 1;
            return i5 + (bArr[i4] & 255);
        }
        if (b == -84 || b == -83 || b == 72) {
            int i6 = (bArr[i2 + 3] & 255) + ((bArr[i2 + 2] & 255) << 8) + ((bArr[i2 + 1] & 255) << 16) + (bArr[i2] << 24);
            this.f12356c = i2 + 4;
            return i6;
        }
        throw new JSONException("readInt32Value not support " + JSONB.typeName(b) + ", offset " + this.f12356c + "/" + this.f12354a.length);
    }

    /* renamed from: j */
    public long m7341j() {
        byte[] bArr = this.f12354a;
        int i = this.f12356c;
        int i2 = i + 1;
        this.f12356c = i2;
        byte b = bArr[i];
        if (b >= -16 && b <= 47) {
            return b;
        }
        if (b >= 48 && b <= 63) {
            this.f12356c = i2 + 1;
            return ((b - 56) << 8) + (bArr[i2] & 255);
        }
        if (b >= 64 && b <= 71) {
            int i3 = ((b + JSONB.Constants.BC_INT16) << 16) + ((bArr[i2] & 255) << 8);
            this.f12356c = i2 + 1 + 1;
            return i3 + (bArr[r3] & 255);
        }
        if (b >= -40 && b <= -17) {
            return (b - (-40)) - 8;
        }
        if (b >= -56 && b <= -41) {
            this.f12356c = i2 + 1;
            return ((b + 48) << 8) + (bArr[i2] & 255);
        }
        if (b >= -64 && b <= -57) {
            int i4 = ((b + DeletedRef3DPtg.sid) << 16) + ((bArr[i2] & 255) << 8);
            this.f12356c = i2 + 1 + 1;
            return i4 + (bArr[r3] & 255);
        }
        if (b != -85) {
            if (b != 72) {
                switch (b) {
                    case -68:
                        int i5 = (bArr[i2 + 1] & 255) + (bArr[i2] << 8);
                        this.f12356c = i2 + 2;
                        return i5;
                    case -67:
                        this.f12356c = i2 + 1;
                        return bArr[i2];
                    case -66:
                        break;
                    case -65:
                        break;
                    default:
                        throw new JSONException("readInt64Value not support " + JSONB.typeName(b) + ", offset " + this.f12356c + "/" + this.f12354a.length);
                }
            }
            int i6 = (bArr[i2 + 3] & 255) + ((bArr[i2 + 2] & 255) << 8) + ((bArr[i2 + 1] & 255) << 16) + (bArr[i2] << 24);
            this.f12356c = i2 + 4;
            return i6;
        }
        long j = (bArr[i2 + 7] & 255) + ((bArr[i2 + 6] & 255) << 8) + ((bArr[i2 + 5] & 255) << 16) + ((bArr[i2 + 4] & 255) << 24) + ((bArr[i2 + 3] & 255) << 32) + ((bArr[i2 + 2] & 255) << 40) + ((bArr[i2 + 1] & 255) << 48) + (bArr[i2] << 56);
        this.f12356c = i2 + 8;
        return j;
    }

    /* renamed from: k */
    public int m7342k() {
        int i;
        byte b;
        byte[] bArr = this.f12354a;
        int i2 = this.f12356c;
        int i3 = i2 + 1;
        this.f12356c = i3;
        byte b2 = bArr[i2];
        if (b2 >= -16 && b2 <= 47) {
            return b2;
        }
        if (b2 >= 64 && b2 <= 71) {
            int i4 = i3 + 1;
            i = ((b2 + JSONB.Constants.BC_INT16) << 16) + ((bArr[i3] & 255) << 8);
            this.f12356c = i4 + 1;
            b = bArr[i4];
        } else {
            if (b2 < 48 || b2 > 63) {
                if (b2 != 72) {
                    throw new JSONException("not support length type : " + ((int) b2));
                }
                int i5 = i3 + 1;
                int i6 = i5 + 1;
                int i7 = (bArr[i3] << 24) + ((bArr[i5] & 255) << 16);
                int i8 = i6 + 1;
                int i9 = i7 + ((bArr[i6] & 255) << 8);
                this.f12356c = i8 + 1;
                return i9 + (bArr[i8] & 255);
            }
            i = (b2 + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
            this.f12356c = i3 + 1;
            b = bArr[i3];
        }
        return i + (b & 255);
    }

    /* renamed from: l */
    public String m7343l() {
        byte[] bArr = this.f12354a;
        int i = this.f12356c;
        if (bArr[i] != -109) {
            return null;
        }
        this.f12356c = i + 1;
        if (m7339h()) {
            return m7344m();
        }
        throw new JSONException("reference not support input " + JSONB.typeName(this.f12357d));
    }

    /* renamed from: m */
    public String m7344m() {
        Charset charset;
        byte[] bArr = this.f12354a;
        int i = this.f12356c;
        int i2 = i + 1;
        this.f12356c = i2;
        byte b = bArr[i];
        this.f12359f = b;
        if (b == -81) {
            return null;
        }
        this.f12360g = i2;
        if (b >= 73 && b <= 121) {
            if (b == 121) {
                this.f12358e = m7342k();
                this.f12360g = this.f12356c;
            } else {
                this.f12358e = b - 73;
            }
            charset = StandardCharsets.ISO_8859_1;
        } else if (b == 122) {
            this.f12358e = m7342k();
            this.f12360g = this.f12356c;
            charset = StandardCharsets.UTF_8;
        } else if (b == 123) {
            this.f12358e = m7342k();
            this.f12360g = this.f12356c;
            charset = StandardCharsets.UTF_16;
        } else if (b == 124) {
            this.f12358e = m7342k();
            this.f12360g = this.f12356c;
            charset = StandardCharsets.UTF_16LE;
        } else {
            if (b != 125) {
                throw new JSONException("readString not support type " + JSONB.typeName(this.f12359f) + ", offset " + this.f12356c + "/" + this.f12354a.length);
            }
            this.f12358e = m7342k();
            this.f12360g = this.f12356c;
            charset = StandardCharsets.UTF_16BE;
        }
        int i3 = this.f12358e;
        if (i3 < 0) {
            return this.f12363j.getName(-i3);
        }
        String str = new String(this.f12354a, this.f12356c, i3, charset);
        this.f12356c += this.f12358e;
        return str;
    }

    public String toString() {
        return this.f12362i.toString();
    }

    public C1731a(byte[] bArr, SymbolTable symbolTable, boolean z) {
        this.f12364k = new HashMap();
        this.f12354a = bArr;
        this.f12355b = z;
        this.f12363j = symbolTable;
        this.f12362i = JSONWriter.ofPretty();
        m7332a();
    }
}
