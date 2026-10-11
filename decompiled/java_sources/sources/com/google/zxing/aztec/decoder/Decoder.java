package com.google.zxing.aztec.decoder;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.motion.MotionUtils;
import com.google.firebase.installations.local.IidStore;
import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.Arrays;
import org.apache.commons.collections4.IteratorUtils;
import org.scribe.model.ParameterList;

/* loaded from: classes4.dex */
public final class Decoder {

    /* renamed from: b */
    public static final String[] f38230b = {"CTRL_PS", " ", "A", "B", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, SardineUtil.DEFAULT_NAMESPACE_PREFIX, "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", Constants.HASIDCALL_INDEX_SIG, "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* renamed from: c */
    public static final String[] f38231c = {"CTRL_PS", " ", "a", "b", "c", "d", "e", C6997f.f39671c, C6998g.f39679a, C6999h.f39688c, "i", "j", C4921e.f26537n, "l", "m", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* renamed from: d */
    public static final String[] f38232d = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", IidStore.f35940g, "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};

    /* renamed from: e */
    public static final String[] f38233e = {"", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", ParameterList.f115951c, CloudStorageConstants.SINGLE_QUOTES, MotionUtils.f31761c, MotionUtils.f31762d, "*", "+", ",", "-", ".", "/", ":", AndroidTreeView.f47214k, "<", "=", ">", "?", IteratorUtils.f104923a, IteratorUtils.f104924b, "{", "}", "CTRL_UL"};

    /* renamed from: f */
    public static final String[] f38234f = {"CTRL_PS", " ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* renamed from: a */
    public AztecDetectorResult f38235a;

    /* loaded from: classes4.dex */
    public enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    /* renamed from: com.google.zxing.aztec.decoder.Decoder$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C6891a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38236a;

        static {
            int[] iArr = new int[Table.values().length];
            f38236a = iArr;
            try {
                iArr[Table.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38236a[Table.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38236a[Table.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38236a[Table.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38236a[Table.DIGIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: a */
    public static byte[] m30422a(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = m30426g(zArr, i << 3);
        }
        return bArr;
    }

    /* renamed from: d */
    public static String m30423d(Table table, int i) {
        int i2 = C6891a.f38236a[table.ordinal()];
        if (i2 == 1) {
            return f38230b[i];
        }
        if (i2 == 2) {
            return f38231c[i];
        }
        if (i2 == 3) {
            return f38232d[i];
        }
        if (i2 == 4) {
            return f38233e[i];
        }
        if (i2 == 5) {
            return f38234f[i];
        }
        throw new IllegalStateException("Bad table");
    }

    /* renamed from: e */
    public static String m30424e(boolean[] zArr) {
        int length = zArr.length;
        Table table = Table.UPPER;
        StringBuilder sb = new StringBuilder(20);
        Table table2 = table;
        int i = 0;
        while (i < length) {
            if (table != Table.BINARY) {
                int i2 = table == Table.DIGIT ? 4 : 5;
                if (length - i < i2) {
                    break;
                }
                int m30427h = m30427h(zArr, i, i2);
                i += i2;
                String m30423d = m30423d(table, m30427h);
                if (m30423d.startsWith("CTRL_")) {
                    table2 = m30425f(m30423d.charAt(5));
                    if (m30423d.charAt(6) != 'L') {
                        table2 = table;
                        table = table2;
                    }
                } else {
                    sb.append(m30423d);
                }
                table = table2;
            } else {
                if (length - i < 5) {
                    break;
                }
                int m30427h2 = m30427h(zArr, i, 5);
                i += 5;
                if (m30427h2 == 0) {
                    if (length - i < 11) {
                        break;
                    }
                    m30427h2 = m30427h(zArr, i, 11) + 31;
                    i += 11;
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= m30427h2) {
                        break;
                    }
                    if (length - i < 8) {
                        i = length;
                        break;
                    }
                    sb.append((char) m30427h(zArr, i, 8));
                    i += 8;
                    i3++;
                }
                table = table2;
            }
        }
        return sb.toString();
    }

    /* renamed from: f */
    public static Table m30425f(char c) {
        return c != 'B' ? c != 'D' ? c != 'P' ? c != 'L' ? c != 'M' ? Table.UPPER : Table.MIXED : Table.LOWER : Table.PUNCT : Table.DIGIT : Table.BINARY;
    }

    /* renamed from: g */
    public static byte m30426g(boolean[] zArr, int i) {
        int length = zArr.length - i;
        return (byte) (length >= 8 ? m30427h(zArr, i, 8) : m30427h(zArr, i, length) << (8 - length));
    }

    /* renamed from: h */
    public static int m30427h(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }

    public static String highLevelDecode(boolean[] zArr) {
        return m30424e(zArr);
    }

    /* renamed from: i */
    public static int m30428i(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* renamed from: b */
    public final boolean[] m30429b(boolean[] zArr) throws FormatException {
        int i;
        GenericGF genericGF;
        if (this.f38235a.getNbLayers() <= 2) {
            genericGF = GenericGF.AZTEC_DATA_6;
            i = 6;
        } else {
            i = 8;
            if (this.f38235a.getNbLayers() <= 8) {
                genericGF = GenericGF.AZTEC_DATA_8;
            } else if (this.f38235a.getNbLayers() <= 22) {
                genericGF = GenericGF.AZTEC_DATA_10;
                i = 10;
            } else {
                genericGF = GenericGF.AZTEC_DATA_12;
                i = 12;
            }
        }
        int nbDatablocks = this.f38235a.getNbDatablocks();
        int length = zArr.length / i;
        if (length < nbDatablocks) {
            throw FormatException.getFormatInstance();
        }
        int length2 = zArr.length % i;
        int[] iArr = new int[length];
        int i2 = 0;
        while (i2 < length) {
            iArr[i2] = m30427h(zArr, length2, i);
            i2++;
            length2 += i;
        }
        try {
            new ReedSolomonDecoder(genericGF).decode(iArr, length - nbDatablocks);
            int i3 = (1 << i) - 1;
            int i4 = 0;
            for (int i5 = 0; i5 < nbDatablocks; i5++) {
                int i6 = iArr[i5];
                if (i6 == 0 || i6 == i3) {
                    throw FormatException.getFormatInstance();
                }
                if (i6 == 1 || i6 == i3 - 1) {
                    i4++;
                }
            }
            boolean[] zArr2 = new boolean[(nbDatablocks * i) - i4];
            int i7 = 0;
            for (int i8 = 0; i8 < nbDatablocks; i8++) {
                int i9 = iArr[i8];
                if (i9 == 1 || i9 == i3 - 1) {
                    Arrays.fill(zArr2, i7, (i7 + i) - 1, i9 > 1);
                    i7 += i - 1;
                } else {
                    int i10 = i - 1;
                    while (i10 >= 0) {
                        int i11 = i7 + 1;
                        zArr2[i7] = ((1 << i10) & i9) != 0;
                        i10--;
                        i7 = i11;
                    }
                }
            }
            return zArr2;
        } catch (ReedSolomonException e) {
            throw FormatException.getFormatInstance(e);
        }
    }

    /* renamed from: c */
    public final boolean[] m30430c(BitMatrix bitMatrix) {
        boolean isCompact = this.f38235a.isCompact();
        int nbLayers = this.f38235a.getNbLayers();
        int i = (isCompact ? 11 : 14) + (nbLayers << 2);
        int[] iArr = new int[i];
        boolean[] zArr = new boolean[m30428i(nbLayers, isCompact)];
        int i2 = 2;
        if (isCompact) {
            for (int i3 = 0; i3 < i; i3++) {
                iArr[i3] = i3;
            }
        } else {
            int i4 = i / 2;
            int i5 = ((i + 1) + (((i4 - 1) / 15) * 2)) / 2;
            for (int i6 = 0; i6 < i4; i6++) {
                iArr[(i4 - i6) - 1] = (i5 - r11) - 1;
                iArr[i4 + i6] = (i6 / 15) + i6 + i5 + 1;
            }
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < nbLayers) {
            int i9 = ((nbLayers - i7) << i2) + (isCompact ? 9 : 12);
            int i10 = i7 << 1;
            int i11 = (i - 1) - i10;
            int i12 = 0;
            while (i12 < i9) {
                int i13 = i12 << 1;
                int i14 = 0;
                while (i14 < i2) {
                    int i15 = i10 + i14;
                    int i16 = i10 + i12;
                    zArr[i8 + i13 + i14] = bitMatrix.get(iArr[i15], iArr[i16]);
                    int i17 = i11 - i14;
                    zArr[(i9 * 2) + i8 + i13 + i14] = bitMatrix.get(iArr[i16], iArr[i17]);
                    int i18 = i11 - i12;
                    zArr[(i9 * 4) + i8 + i13 + i14] = bitMatrix.get(iArr[i17], iArr[i18]);
                    zArr[(i9 * 6) + i8 + i13 + i14] = bitMatrix.get(iArr[i18], iArr[i15]);
                    i14++;
                    isCompact = isCompact;
                    nbLayers = nbLayers;
                    i2 = 2;
                }
                i12++;
                i2 = 2;
            }
            i8 += i9 << 3;
            i7++;
            nbLayers = nbLayers;
            i2 = 2;
        }
        return zArr;
    }

    public DecoderResult decode(AztecDetectorResult aztecDetectorResult) throws FormatException {
        this.f38235a = aztecDetectorResult;
        boolean[] m30429b = m30429b(m30430c(aztecDetectorResult.getBits()));
        DecoderResult decoderResult = new DecoderResult(m30422a(m30429b), m30424e(m30429b), null, null);
        decoderResult.setNumBits(m30429b.length);
        return decoderResult;
    }
}
