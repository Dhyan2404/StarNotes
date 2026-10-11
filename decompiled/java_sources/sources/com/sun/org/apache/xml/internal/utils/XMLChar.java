package com.sun.org.apache.xml.internal.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.material.progressindicator.C5351b;
import com.google.android.material.snackbar.C5409a;
import com.google.zxing.pdf417.PDF417Common;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.common.data.template.OfficialCoverType;
import com.onyx.android.sdk.matisse.internal.utils.PhotoMetadataUtils;
import com.sunia.HTREnginev2.qdm;
import com.sunia.authlib.managers.AuthorizeManager;
import net.p110sf.saxon.om.StandardNames;
import okio.Utf8;
import org.beyka.tiffbitmapfactory.BuildConfig;

/* loaded from: classes10.dex */
public class XMLChar {
    private static final byte[] CHARS = new byte[65536];
    public static final int MASK_CONTENT = 32;
    public static final int MASK_NAME = 8;
    public static final int MASK_NAME_START = 4;
    public static final int MASK_NCNAME = 128;
    public static final int MASK_NCNAME_START = 64;
    public static final int MASK_PUBID = 16;
    public static final int MASK_SPACE = 2;
    public static final int MASK_VALID = 1;

    static {
        int[] iArr = {9, 10, 13, 13, 32, 55295, 57344, Utf8.REPLACEMENT_CODE_POINT};
        int[] iArr2 = {32, 9, 13, 10};
        int[] iArr3 = {45, 46};
        int[] iArr4 = {58, 95};
        int[] iArr5 = {10, 13, 32, 33, 35, 36, 37, 61, 95};
        int[] iArr6 = {39, 59, 63, 90, 97, 122};
        int[] iArr7 = {65, 90, 97, 122, 192, 214, 216, 246, 248, 305, 308, 318, 321, 328, 330, 382, 384, 451, 461, 496, 500, 501, 506, StandardNames.XS_NEGATIVE_INTEGER, 592, 680, 699, TypedValues.TransitionType.TYPE_INTERPOLATOR, TypedValues.Custom.TYPE_BOOLEAN, TypedValues.Custom.TYPE_REFERENCE, 910, PDF417Common.NUMBER_OF_CODEWORDS, 931, 974, BuildConfig.VERSION_CODE, 982, 994, 1011, 1025, 1036, 1038, 1103, 1105, 1116, 1118, 1153, 1168, 1220, 1223, 1224, 1227, 1228, 1232, 1259, 1262, 1269, 1272, 1273, 1329, 1366, 1377, 1414, 1488, 1514, C5351b.f31954v, 1522, 1569, 1594, 1601, 1610, 1649, 1719, 1722, 1726, 1728, 1742, 1744, 1747, 1765, 1766, 2309, 2361, 2392, 2401, 2437, 2444, 2447, 2448, 2451, 2472, 2474, 2480, 2486, 2489, 2524, 2525, 2527, 2529, 2544, 2545, 2565, 2570, 2575, 2576, 2579, 2600, 2602, 2608, 2610, 2611, 2613, 2614, 2616, 2617, 2649, 2652, 2674, 2676, 2693, 2699, 2703, 2705, 2707, 2728, 2730, 2736, 2738, 2739, 2741, 2745, 2821, 2828, 2831, 2832, 2835, 2856, 2858, 2864, 2866, 2867, 2870, 2873, 2908, 2909, 2911, 2913, 2949, 2954, 2958, 2960, 2962, 2965, 2969, 2970, 2974, 2975, 2979, 2980, 2984, 2986, 2990, 2997, 2999, 3001, 3077, 3084, 3086, 3088, 3090, 3112, 3114, 3123, 3125, 3129, 3168, 3169, 3205, 3212, 3214, 3216, 3218, 3240, 3242, 3251, 3253, 3257, 3296, 3297, 3333, 3340, 3342, 3344, 3346, 3368, 3370, 3385, 3424, 3425, 3585, 3630, 3634, 3635, 3648, 3653, 3713, 3714, 3719, 3720, 3732, 3735, 3737, 3743, 3745, 3747, 3754, 3755, 3757, 3758, 3762, 3763, 3776, 3780, 3904, 3911, 3913, 3945, 4256, 4293, 4304, 4342, 4354, 4355, 4357, 4359, 4363, 4364, 4366, 4370, 4436, 4437, 4447, 4449, 4461, 4462, 4466, 4467, 4526, 4527, 4535, 4536, 4540, 4546, 7680, 7835, 7840, 7929, 7936, 7957, 7960, 7965, 7968, 8005, 8008, 8013, 8016, 8023, 8031, 8061, 8064, 8116, 8118, 8124, 8130, 8132, 8134, 8140, 8144, 8147, 8150, 8155, 8160, 8172, 8178, 8180, 8182, 8188, 8490, 8491, 8576, 8578, 12353, 12436, 12449, 12538, 12549, 12588, 44032, 55203, 12321, 12329, 19968, 40869};
        int[] iArr8 = {902, 908, 986, 988, 990, 992, 1369, 1749, 2365, 2482, 2654, 2701, 2749, 2784, 2877, 2972, 3294, 3632, 3716, 3722, 3725, 3749, 3751, 3760, 3773, 4352, 4361, 4412, 4414, 4416, 4428, 4430, 4432, 4441, 4451, 4453, 4455, 4457, 4469, 4510, 4520, 4523, 4538, 4587, 4592, 4601, 8025, 8027, 8029, 8126, 8486, 8494, 12295};
        int[] iArr9 = {768, 837, 864, 865, 1155, 1158, 1425, 1441, 1443, 1465, 1467, 1469, 1473, 1474, 1611, 1618, 1750, 1756, 1757, 1759, 1760, 1764, 1767, 1768, 1770, 1773, 2305, 2307, 2366, 2380, 2385, 2388, 2402, 2403, 2433, 2435, 2496, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS, OfficialCoverType.COVER_ILLUSTRATION3_HORIZONTAL, OfficialCoverType.COVER_ILLUSTRATION4_HORIZONTAL, OfficialCoverType.COVER_LITTLE_BEAR3_HORIZONTAL, OfficialCoverType.COVER_LITTLE_RABBIT2_HORIZONTAL, 2530, 2531, 2624, 2626, 2631, 2632, 2635, 2637, 2672, 2673, 2689, 2691, C5409a.f32575g, 2757, 2759, 2761, 2763, 2765, qdm.f81936j, qdm.f81937k, 2878, 2883, 2887, 2888, 2891, 2893, 2902, 2903, 2946, 2947, 3006, OnyxStatisticConstant.TRIGGER_FROM_EDIT_NOTE_TOOL_BAR_PHOTO_POPUP, 3014, 3016, 3018, 3021, 3073, 3075, 3134, 3140, 3142, 3144, 3146, 3149, 3157, 3158, 3202, 3203, 3262, 3268, 3270, 3272, 3274, 3277, 3285, 3286, 3330, 3331, 3390, 3395, 3398, 3400, 3402, 3405, 3636, 3642, 3655, 3662, 3764, 3769, 3771, 3772, 3784, 3789, 3864, 3865, 3953, 3972, 3974, 3979, 3984, 3989, 3993, AuthorizeManager.GET_ANDROID_ID_ERROR, 4017, 4023, 8400, 8412, 12330, 12335};
        int[] iArr10 = {1471, 1476, 1648, 2364, 2381, 2492, 2494, 2495, 2519, 2562, 2620, 2622, 2623, 2748, 2876, 3031, 3415, 3633, 3761, 3893, 3895, 3897, 3902, 3903, 3991, 4025, 8417, 12441, 12442};
        int[] iArr11 = {48, 57, 1632, 1641, 1776, 1785, 2406, 2415, 2534, 2543, 2662, 2671, 2790, 2799, 2918, 2927, 3047, 3055, 3174, 3183, 3302, 3311, 3430, 3439, 3664, 3673, 3792, 3801, 3872, 3881};
        int[] iArr12 = {12337, 12341, GlUtil.f28347e, 12446, 12540, 12542};
        int[] iArr13 = {183, 720, 721, TypedValues.Custom.TYPE_STRING, PhotoMetadataUtils.f42836b, 3654, 3782, 12293};
        int[] iArr14 = {60, 38, 10, 13, 93};
        for (int i = 0; i < 8; i += 2) {
            for (int i2 = iArr[i]; i2 <= iArr[i + 1]; i2++) {
                byte[] bArr = CHARS;
                bArr[i2] = (byte) (bArr[i2] | 33);
            }
        }
        for (int i3 = 0; i3 < 5; i3++) {
            byte[] bArr2 = CHARS;
            int i4 = iArr14[i3];
            bArr2[i4] = (byte) (bArr2[i4] & (-33));
        }
        for (int i5 = 0; i5 < 4; i5++) {
            byte[] bArr3 = CHARS;
            int i6 = iArr2[i5];
            bArr3[i6] = (byte) (2 | bArr3[i6]);
        }
        for (int i7 = 0; i7 < 2; i7++) {
            byte[] bArr4 = CHARS;
            int i8 = iArr4[i7];
            bArr4[i8] = (byte) (bArr4[i8] | 204);
        }
        for (int i9 = 0; i9 < 302; i9 += 2) {
            for (int i10 = iArr7[i9]; i10 <= iArr7[i9 + 1]; i10++) {
                byte[] bArr5 = CHARS;
                bArr5[i10] = (byte) (bArr5[i10] | 204);
            }
        }
        for (int i11 = 0; i11 < 53; i11++) {
            byte[] bArr6 = CHARS;
            int i12 = iArr8[i11];
            bArr6[i12] = (byte) (bArr6[i12] | 204);
        }
        for (int i13 = 0; i13 < 2; i13++) {
            byte[] bArr7 = CHARS;
            int i14 = iArr3[i13];
            bArr7[i14] = (byte) (bArr7[i14] | 136);
        }
        for (int i15 = 0; i15 < 30; i15 += 2) {
            for (int i16 = iArr11[i15]; i16 <= iArr11[i15 + 1]; i16++) {
                byte[] bArr8 = CHARS;
                bArr8[i16] = (byte) (bArr8[i16] | 136);
            }
        }
        for (int i17 = 0; i17 < 132; i17 += 2) {
            for (int i18 = iArr9[i17]; i18 <= iArr9[i17 + 1]; i18++) {
                byte[] bArr9 = CHARS;
                bArr9[i18] = (byte) (bArr9[i18] | 136);
            }
        }
        for (int i19 = 0; i19 < 29; i19++) {
            byte[] bArr10 = CHARS;
            int i20 = iArr10[i19];
            bArr10[i20] = (byte) (bArr10[i20] | 136);
        }
        for (int i21 = 0; i21 < 6; i21 += 2) {
            for (int i22 = iArr12[i21]; i22 <= iArr12[i21 + 1]; i22++) {
                byte[] bArr11 = CHARS;
                bArr11[i22] = (byte) (bArr11[i22] | 136);
            }
        }
        for (int i23 = 0; i23 < 8; i23++) {
            byte[] bArr12 = CHARS;
            int i24 = iArr13[i23];
            bArr12[i24] = (byte) (bArr12[i24] | 136);
        }
        byte[] bArr13 = CHARS;
        bArr13[58] = (byte) (bArr13[58] & (-193));
        for (int i25 = 0; i25 < 9; i25++) {
            byte[] bArr14 = CHARS;
            int i26 = iArr5[i25];
            bArr14[i26] = (byte) (bArr14[i26] | 16);
        }
        for (int i27 = 0; i27 < 6; i27 += 2) {
            for (int i28 = iArr6[i27]; i28 <= iArr6[i27 + 1]; i28++) {
                byte[] bArr15 = CHARS;
                bArr15[i28] = (byte) (bArr15[i28] | 16);
            }
        }
    }

    public static char highSurrogate(int i) {
        return (char) (((i - 65536) >> 10) + 55296);
    }

    public static boolean isContent(int i) {
        return (i < 65536 && (CHARS[i] & 32) != 0) || (65536 <= i && i <= 1114111);
    }

    public static boolean isHighSurrogate(int i) {
        return 55296 <= i && i <= 56319;
    }

    public static boolean isInvalid(int i) {
        return !isValid(i);
    }

    public static boolean isLowSurrogate(int i) {
        return 56320 <= i && i <= 57343;
    }

    public static boolean isMarkup(int i) {
        return i == 60 || i == 38 || i == 37;
    }

    public static boolean isNCName(int i) {
        return i < 65536 && (CHARS[i] & 128) != 0;
    }

    public static boolean isNCNameStart(int i) {
        return i < 65536 && (CHARS[i] & 64) != 0;
    }

    public static boolean isName(int i) {
        return i < 65536 && (CHARS[i] & 8) != 0;
    }

    public static boolean isNameStart(int i) {
        return i < 65536 && (CHARS[i] & 4) != 0;
    }

    public static boolean isPubid(int i) {
        return i < 65536 && (CHARS[i] & 16) != 0;
    }

    public static boolean isSpace(int i) {
        return i < 65536 && (CHARS[i] & 2) != 0;
    }

    public static boolean isSupplemental(int i) {
        return i >= 65536 && i <= 1114111;
    }

    public static boolean isValid(int i) {
        if (i >= 65536 || (CHARS[i] & 1) == 0) {
            return 65536 <= i && i <= 1114111;
        }
        return true;
    }

    public static boolean isValidIANAEncoding(String str) {
        int length;
        char charAt;
        if (str == null || (length = str.length()) <= 0 || (((charAt = str.charAt(0)) < 'A' || charAt > 'Z') && (charAt < 'a' || charAt > 'z'))) {
            return false;
        }
        for (int i = 1; i < length; i++) {
            char charAt2 = str.charAt(i);
            if ((charAt2 < 'A' || charAt2 > 'Z') && ((charAt2 < 'a' || charAt2 > 'z') && !((charAt2 >= '0' && charAt2 <= '9') || charAt2 == '.' || charAt2 == '_' || charAt2 == '-'))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isValidJavaEncoding(String str) {
        int length;
        if (str == null || (length = str.length()) <= 0) {
            return false;
        }
        for (int i = 1; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt < 'A' || charAt > 'Z') && ((charAt < 'a' || charAt > 'z') && !((charAt >= '0' && charAt <= '9') || charAt == '.' || charAt == '_' || charAt == '-'))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isValidNCName(String str) {
        if (str.length() == 0 || !isNCNameStart(str.charAt(0))) {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            if (!isNCName(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isValidName(String str) {
        if (str.length() == 0 || !isNameStart(str.charAt(0))) {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            if (!isName(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isValidNmtoken(String str) {
        if (str.length() == 0) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!isName(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isValidQName(String str) {
        int indexOf = str.indexOf(58);
        if (indexOf == 0 || indexOf == str.length() - 1) {
            return false;
        }
        if (indexOf > 0) {
            return isValidNCName(str.substring(0, indexOf)) && isValidNCName(str.substring(indexOf + 1));
        }
        return isValidNCName(str);
    }

    public static char lowSurrogate(int i) {
        return (char) (((i - 65536) & 1023) + 56320);
    }

    public static int supplemental(char c, char c2) {
        return ((c - 55296) * 1024) + (c2 - 56320) + 65536;
    }
}
