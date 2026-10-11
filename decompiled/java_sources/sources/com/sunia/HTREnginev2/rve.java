package com.sunia.HTREnginev2;

import com.evernote.edam.type.Constants;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.common.base.Ascii;
import com.google.zxing.common.DecoderResult;
import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import java.text.DecimalFormat;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;

/* loaded from: classes4.dex */
public final class rve {

    /* renamed from: a */
    public static final char f83532a = 65520;

    /* renamed from: b */
    public static final char f83533b = 65521;

    /* renamed from: c */
    public static final char f83534c = 65522;

    /* renamed from: d */
    public static final char f83535d = 65523;

    /* renamed from: e */
    public static final char f83536e = 65524;

    /* renamed from: f */
    public static final char f83537f = 65525;

    /* renamed from: g */
    public static final char f83538g = 65526;

    /* renamed from: h */
    public static final char f83539h = 65527;

    /* renamed from: i */
    public static final char f83540i = 65528;

    /* renamed from: j */
    public static final char f83541j = 65529;

    /* renamed from: k */
    public static final char f83542k = 65530;

    /* renamed from: l */
    public static final char f83543l = 65531;

    /* renamed from: m */
    public static final char f83544m = 65532;

    /* renamed from: n */
    public static final char f83545n = 28;

    /* renamed from: o */
    public static final char f83546o = 29;

    /* renamed from: p */
    public static final char f83547p = 30;

    /* renamed from: q */
    public static final String[] f83548q = {"\nABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb ￼\"#$%&'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8", "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{￼}~\u007f;<=>?[\\]^_ ,./:@!|￼\ufff5\ufff6￼\ufff0\ufff2\ufff3\ufff4\ufff7", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\ufffa\u001c\u001d\u001eÛÜÝÞßª¬±²³µ¹º¼½¾\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8", "àáâãäåæçèéêëìíîïðñòóôõö÷øùú\ufffa\u001c\u001d\u001e\ufffbûüýþÿ¡¨«¯°´·¸»¿\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa￼￼\u001b\ufffb\u001c\u001d\u001e\u001f\u009f ¢£¤¥¦§©\u00ad®¶\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?"};

    /* renamed from: a */
    public static DecoderResult m57029a(byte[] bArr, int i) {
        String m57036h;
        StringBuilder sb = new StringBuilder(144);
        if (i == 2 || i == 3) {
            if (i == 2) {
                m57036h = new DecimalFormat("0000000000".substring(0, m57035g(bArr))).format(m57034f(bArr));
            } else {
                m57036h = m57036h(bArr);
            }
            DecimalFormat decimalFormat = new DecimalFormat(Constants.CLASSIFICATION_RECIPE_USER_NON_RECIPE);
            String format = decimalFormat.format(m57031c(bArr));
            String format2 = decimalFormat.format(m57037i(bArr));
            sb.append(m57033e(bArr, 10, 84));
            if (sb.toString().startsWith("[)>\u001e01\u001d")) {
                sb.insert(9, m57036h + f83546o + format + f83546o + format2 + f83546o);
            } else {
                sb.insert(0, m57036h + f83546o + format + f83546o + format2 + f83546o);
            }
        } else if (i == 4) {
            sb.append(m57033e(bArr, 1, 93));
        } else if (i == 5) {
            sb.append(m57033e(bArr, 1, 77));
        }
        return new DecoderResult(bArr, sb.toString(), null, String.valueOf(i));
    }

    /* renamed from: b */
    public static int m57030b(int i, byte[] bArr) {
        int i2 = i - 1;
        return ((1 << (5 - (i2 % 6))) & bArr[i2 / 6]) == 0 ? 0 : 1;
    }

    /* renamed from: c */
    public static int m57031c(byte[] bArr) {
        return m57032d(bArr, new byte[]{TarConstants.LF_DIR, TarConstants.LF_FIFO, 43, 44, 45, Cea608Decoder.f26822e0, 47, 48, 37, Cea608Decoder.f26815X});
    }

    /* renamed from: d */
    public static int m57032d(byte[] bArr, byte[] bArr2) {
        if (bArr2.length == 0) {
            throw new IllegalArgumentException();
        }
        int i = 0;
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            i += m57030b(bArr2[i2], bArr) << ((bArr2.length - i2) - 1);
        }
        return i;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001a. Please report as an issue. */
    /* renamed from: e */
    public static String m57033e(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        int i3 = i;
        int i4 = -1;
        int i5 = 0;
        int i6 = 0;
        while (i3 < i + i2) {
            char charAt = f83548q[i5].charAt(bArr[i3]);
            switch (charAt) {
                case 65520:
                case 65521:
                case 65522:
                case 65523:
                case 65524:
                    i6 = i5;
                    i5 = charAt - f83532a;
                    i4 = 1;
                    break;
                case 65525:
                    i4 = 2;
                    i6 = i5;
                    i5 = 0;
                    break;
                case 65526:
                    i4 = 3;
                    i6 = i5;
                    i5 = 0;
                    break;
                case JPEG.SOF55 /* 65527 */:
                    i4 = -1;
                    i5 = 0;
                    break;
                case JPEG.LSE /* 65528 */:
                    i4 = -1;
                    i5 = 1;
                    break;
                case 65529:
                    i4 = -1;
                    break;
                case 65530:
                default:
                    sb.append(charAt);
                    break;
                case 65531:
                    int i7 = i3 + 1;
                    int i8 = bArr[i7] << 24;
                    int i9 = i7 + 1;
                    int i10 = i8 + (bArr[i9] << 18);
                    int i11 = i9 + 1;
                    int i12 = i10 + (bArr[i11] << 12);
                    int i13 = i11 + 1;
                    int i14 = i12 + (bArr[i13] << 6);
                    i3 = i13 + 1;
                    sb.append(new DecimalFormat("000000000").format(i14 + bArr[i3]));
                    break;
            }
            int i15 = i4 - 1;
            if (i4 == 0) {
                i5 = i6;
            }
            i3++;
            i4 = i15;
        }
        while (sb.length() > 0 && sb.charAt(sb.length() - 1) == 65532) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    /* renamed from: f */
    public static int m57034f(byte[] bArr) {
        return m57032d(bArr, new byte[]{33, 34, 35, 36, 25, Ascii.SUB, Ascii.ESC, 28, 29, 30, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 7, 8, 9, 10, 11, 12, 1, 2});
    }

    /* renamed from: g */
    public static int m57035g(byte[] bArr) {
        return m57032d(bArr, new byte[]{Cea608Decoder.f26816Y, 40, 41, 42, 31, 32});
    }

    /* renamed from: h */
    public static String m57036h(byte[] bArr) {
        String[] strArr = f83548q;
        return String.valueOf(new char[]{strArr[0].charAt(m57032d(bArr, new byte[]{Cea608Decoder.f26816Y, 40, 41, 42, 31, 32})), strArr[0].charAt(m57032d(bArr, new byte[]{33, 34, 35, 36, 25, Ascii.SUB})), strArr[0].charAt(m57032d(bArr, new byte[]{Ascii.ESC, 28, 29, 30, 19, 20})), strArr[0].charAt(m57032d(bArr, new byte[]{21, 22, 23, 24, 13, 14})), strArr[0].charAt(m57032d(bArr, new byte[]{15, 16, 17, 18, 7, 8})), strArr[0].charAt(m57032d(bArr, new byte[]{9, 10, 11, 12, 1, 2}))});
    }

    /* renamed from: i */
    public static int m57037i(byte[] bArr) {
        return m57032d(bArr, new byte[]{TarConstants.LF_CONTIG, 56, 57, 58, 59, DeletedRef3DPtg.sid, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK});
    }
}
