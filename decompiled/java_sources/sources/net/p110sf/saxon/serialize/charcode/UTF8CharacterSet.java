package net.p110sf.saxon.serialize.charcode;

import com.alibaba.fastjson2.JSONB;
import com.blankj.utilcode.util.ThreadUtils;
import java.io.ByteArrayOutputStream;
import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public final class UTF8CharacterSet implements CharacterSet {

    /* renamed from: a */
    public static final UTF8CharacterSet f101652a = new UTF8CharacterSet();

    public static int decodeUTF8(byte[] bArr, int i) throws IllegalArgumentException {
        int i2;
        int i3 = 0;
        for (int i4 = 1; i4 < i; i4++) {
            byte b = bArr[i4];
            if ((b & 192) != 128) {
                throw new IllegalArgumentException("Byte " + (i4 + 1) + " in UTF-8 sequence has wrong top bits");
            }
            i3 = (i3 << 6) + (b & 63);
        }
        byte b2 = bArr[0];
        if ((b2 & 128) == 0) {
            if (i == 1) {
                return b2;
            }
            throw new IllegalArgumentException("UTF8 single byte expected");
        }
        if ((b2 & 224) == 192) {
            if (i != 2) {
                throw new IllegalArgumentException("UTF8 sequence of two bytes expected");
            }
            i2 = (b2 & 31) << 6;
        } else if ((b2 & JSONB.Constants.BC_INT32_NUM_MIN) == 224) {
            if (i != 3) {
                throw new IllegalArgumentException("UTF8 sequence of three bytes expected");
            }
            i2 = (b2 & 15) << 12;
        } else {
            if ((b2 & ThreadUtils.f14117i) != 248) {
                throw new IllegalArgumentException("UTF8 invalid first byte");
            }
            if (i != 4) {
                throw new IllegalArgumentException("UTF8 sequence of four bytes expected");
            }
            i2 = (b2 & 7) << 24;
        }
        return i2 + i3;
    }

    public static byte[] encode(IntIterator intIterator) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[6];
        while (intIterator.hasNext()) {
            int next = intIterator.next();
            if (next < 0) {
                throw new IllegalStateException("No negative code point allowed");
            }
            if (next < 128) {
                byteArrayOutputStream.write((byte) next);
            } else {
                int i = 0;
                int i2 = 192;
                int i3 = 31;
                while (true) {
                    bArr[i] = (byte) ((next & 63) | 128);
                    i++;
                    next >>= 6;
                    if (((~i3) & next) == 0) {
                        break;
                    }
                    i2 = (i2 >> 1) | 128;
                    i3 >>= 1;
                }
                bArr[i] = (byte) (next | i2);
                int i4 = i + 1;
                while (i4 > 0) {
                    i4--;
                    byteArrayOutputStream.write(bArr[i4]);
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static UTF8CharacterSet getInstance() {
        return f101652a;
    }

    public static int getUTF8Encoding(char c, char c2, byte[] bArr) {
        if (c <= 127) {
            bArr[0] = (byte) c;
            return 1;
        }
        if (c <= 2047) {
            bArr[0] = (byte) (((c >> 6) & 31) | 192);
            bArr[1] = (byte) ((c & '?') | 128);
            return 2;
        }
        if (c < 55296 || c > 56319) {
            if (c >= 56320 && c <= 57343) {
                return 0;
            }
            bArr[0] = (byte) (((c >> '\f') & 15) | 224);
            bArr[1] = (byte) (((c >> 6) & 63) | 128);
            bArr[2] = (byte) ((c & '?') | 128);
            return 3;
        }
        if (c2 < 56320 || c2 > 57343) {
            throw new IllegalArgumentException("Malformed Unicode Surrogate Pair (" + ((int) c) + ',' + ((int) c2) + ')');
        }
        byte b = (byte) (c2 & '?');
        byte b2 = (byte) (((c2 >> 6) & 15) | ((c & 3) << 4));
        byte b3 = (byte) ((c >> 2) & 15);
        byte b4 = (byte) (((c >> 6) & 15) + 1);
        bArr[0] = (byte) (((b4 >> 2) & 7) | 240);
        bArr[1] = (byte) (((b4 & 3) << 4) | 128 | b3);
        bArr[2] = (byte) (b2 | 128);
        bArr[3] = (byte) (b | 128);
        return 4;
    }

    @Override // net.p110sf.saxon.serialize.charcode.CharacterSet
    public String getCanonicalName() {
        return "UTF-8";
    }

    @Override // net.p110sf.saxon.serialize.charcode.CharacterSet
    public boolean inCharset(int i) {
        return true;
    }
}
