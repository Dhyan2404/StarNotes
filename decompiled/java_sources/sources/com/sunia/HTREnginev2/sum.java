package com.sunia.HTREnginev2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.evernote.client.android.login.EvernoteLoginTask;
import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.zxing.pdf417.PDF417Common;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.common.data.template.OfficialCoverType;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sun.org.apache.xpath.internal.compiler.OpCodes;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import com.twelvemonkeys.imageio.metadata.psd.PSD;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.om.StandardNames;
import org.apache.commons.math3.util.FastMath;
import org.apache.poi.util.CodePageUtil;

/* loaded from: classes12.dex */
public class sum {

    /* renamed from: a */
    public static final int[] f84592a;

    /* renamed from: b */
    public static final int f84593b;

    static {
        int[] iArr = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, DataBinderMapperImpl.f53291s5, 337, 347, DataBinderMapperImpl.f53061K5, DataBinderMapperImpl.f53089O5, 359, 367, 373, 379, 383, StandardNames.XML_LANG_TYPE, 397, 401, 409, 419, 421, 431, 433, 439, PsExtractor.f24604m, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, StandardNames.XS_G_YEAR, StandardNames.XS_POSITIVE_INTEGER, IPTC.TAG_RELEASE_TIME, 557, StandardNames.XS_ENTITY, 569, 571, 577, 587, StandardNames.XS_EXTENSION, StandardNames.XS_KEY, 601, 607, 613, 617, StandardNames.XS_SEQUENCE, StandardNames.XS_UNTYPED_ATOMIC, StandardNames.XSI_TYPE, 643, IPTC.TAG_LANGUAGE_IDENTIFIER, 653, 659, 661, 673, 677, 683, 691, TypedValues.TransitionType.TYPE_FROM, 709, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, EvernoteLoginTask.f21158u, 863, UserFunctionCall.f99405v, 881, 883, 887, 907, 911, 919, PDF417Common.NUMBER_OF_CODEWORDS, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997, 1009, 1013, 1019, 1021, OpCodes.NODETYPE_TEXT, 1033, PSD.RES_ICC_PROFILE, 1049, OnyxStatisticConstant.TRIGGER_FROM_HOME_LIST_ITEM_ADD_MANGE, 1061, 1063, 1069, 1087, 1091, 1093, 1097, 1103, 1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181, 1187, 1193, CodePageUtil.CP_UTF16_BE, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, 1283, 1289, 1291, 1297, 1301, 1303, 1307, 1319, 1321, 1327, CodePageUtil.CP_JOHAB, 1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429, 1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499, 1511, 1523, 1531, 1543, 1549, 1553, 1559, 1567, 1571, 1579, 1583, 1597, 1601, 1607, 1609, 1613, 1619, 1621, 1627, 1637, 1657, 1663, 1667, 1669, 1693, 1697, 1699, 1709, 1721, 1723, 1733, 1741, 1747, 1753, 1759, 1777, 1783, 1787, 1789, 1801, 1811, 1823, 1831, 1847, 1861, 1867, 1871, 1873, 1877, 1879, 1889, 1901, 1907, 1913, 1931, 1933, 1949, 1951, 1973, 1979, 1987, 1993, 1997, 1999, 2003, OfficialCoverType.COVER_LITTLE_RABBIT4, 2017, 2027, 2029, 2039, 2053, 2063, 2069, 2081, 2083, 2087, 2089, 2099, 2111, 2113, 2129, 2131, 2137, 2141, 2143, 2153, 2161, 2179, 2203, 2207, 2213, 2221, 2237, 2239, 2243, 2251, 2267, 2269, 2273, 2281, 2287, 2293, 2297, 2309, 2311, 2333, 2339, 2341, 2347, 2351, 2357, 2371, 2377, 2381, 2383, 2389, 2393, 2399, 2411, 2417, 2423, 2437, 2441, 2447, 2459, 2467, 2473, 2477, OfficialCoverType.COVER_ILLUSTRATION3_HORIZONTAL, 2521, 2531, 2539, 2543, 2549, 2551, 2557, 2579, 2591, 2593, 2609, 2617, 2621, 2633, 2647, 2657, 2659, 2663, 2671, 2677, 2683, 2687, 2689, 2693, 2699, 2707, 2711, 2713, 2719, 2729, 2731, 2741, 2749, 2753, 2767, 2777, 2789, 2791, 2797, 2801, 2803, qdm.f81937k, 2833, 2837, 2843, 2851, 2857, 2861, 2879, 2887, 2897, 2903, 2909, 2917, 2927, 2939, 2953, 2957, 2963, 2969, 2971, 2999, 3001, OnyxStatisticConstant.TRIGGER_FROM_EDIT_NOTE_TOOL_BAR_QUICK_PHOTO_LIST_ITEM, 3019, 3023, 3037, 3041, 3049, 3061, 3067, 3079, 3083, 3089, 3109, 3119, 3121, 3137, 3163, 3167, 3169, 3181, 3187, 3191, 3203, 3209, 3217, 3221, 3229, 3251, 3253, 3257, 3259, 3271, 3299, 3301, 3307, 3313, 3319, 3323, 3329, 3331, 3343, 3347, 3359, 3361, 3371, 3373, 3389, 3391, 3407, 3413, 3433, 3449, 3457, 3461, 3463, 3467, 3469, 3491, 3499, 3511, 3517, 3527, 3529, 3533, 3539, 3541, 3547, 3557, 3559, 3571, 3581, 3583, 3593, 3607, 3613, 3617, 3623, 3631, 3637, 3643, 3659, 3671};
        f84592a = iArr;
        f84593b = iArr[iArr.length - 1];
    }

    /* renamed from: a */
    public static int m57258a(int i, int i2, List<Integer> list) {
        int i3 = f84593b;
        while (true) {
            int i4 = i3 + 2;
            if (i4 > i2) {
                break;
            }
            if (i % i4 == 0) {
                i /= i4;
                list.add(Integer.valueOf(i4));
                break;
            }
            i3 = i4 + 4;
            if (i % i3 == 0) {
                i /= i3;
                list.add(Integer.valueOf(i3));
                break;
            }
        }
        if (i != 1) {
            list.add(Integer.valueOf(i));
        }
        return i;
    }

    /* renamed from: b */
    public static boolean m57259b(int i) {
        int i2 = i - 1;
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i2);
        int i3 = i2 >> numberOfTrailingZeros;
        int i4 = i >= 2047 ? 2 : 1;
        if (i >= 1373653) {
            i4 = 3;
        }
        if (i >= 25326001) {
            i4 = 4;
        }
        BigInteger valueOf = BigInteger.valueOf(i3);
        long j = i;
        BigInteger valueOf2 = BigInteger.valueOf(j);
        for (int i5 = 0; i5 < i4; i5++) {
            int intValue = BigInteger.valueOf(f84592a[i5]).modPow(valueOf, valueOf2).intValue();
            if (1 != intValue && intValue != i2) {
                for (int i6 = 1; i6 <= numberOfTrailingZeros - 1 && i2 != intValue; i6++) {
                    long j2 = intValue;
                    intValue = (int) ((j2 * j2) % j);
                    if (1 == intValue) {
                        return false;
                    }
                }
                if (i2 != intValue) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: c */
    public static int m57260c(int i, List<Integer> list) {
        for (int i2 : f84592a) {
            while (i % i2 == 0) {
                i /= i2;
                list.add(Integer.valueOf(i2));
            }
        }
        return i;
    }

    /* renamed from: d */
    public static List<Integer> m57261d(int i) {
        ArrayList arrayList = new ArrayList(32);
        int m57260c = m57260c(i, arrayList);
        if (1 == m57260c) {
            return arrayList;
        }
        m57258a(m57260c, (int) FastMath.sqrt(m57260c), arrayList);
        return arrayList;
    }
}
