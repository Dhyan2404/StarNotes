package com.sun.org.apache.xerces.internal.util;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.alibaba.fastjson2.JSONB;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.material.progressindicator.C5351b;
import com.google.android.material.snackbar.C5409a;
import com.onyx.android.sdk.base.data.font.TTFFont;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.common.data.template.OfficialCoverType;
import com.onyx.android.sdk.matisse.internal.utils.PhotoMetadataUtils;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sunia.HTREnginev2.qdm;
import com.sunia.authlib.managers.AuthorizeManager;
import java.util.Arrays;
import net.p110sf.saxon.om.StandardNames;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.utils.IOUtils;
import org.beyka.tiffbitmapfactory.BuildConfig;

/* loaded from: classes10.dex */
public class XMLChar {
    private static final byte[] CHARS;
    public static final int MASK_CONTENT = 32;
    public static final int MASK_NAME = 8;
    public static final int MASK_NAME_START = 4;
    public static final int MASK_NCNAME = 128;
    public static final int MASK_NCNAME_START = 64;
    public static final int MASK_PUBID = 16;
    public static final int MASK_SPACE = 2;
    public static final int MASK_VALID = 1;

    static {
        byte[] bArr = new byte[65536];
        CHARS = bArr;
        bArr[9] = 35;
        bArr[10] = 19;
        bArr[13] = 19;
        bArr[32] = TarConstants.LF_CHR;
        bArr[33] = TarConstants.LF_LINK;
        bArr[34] = 33;
        Arrays.fill(bArr, 35, 38, TarConstants.LF_LINK);
        bArr[38] = 1;
        Arrays.fill(bArr, 39, 45, TarConstants.LF_LINK);
        Arrays.fill(bArr, 45, 47, JSONB.Constants.BC_DECIMAL);
        bArr[47] = TarConstants.LF_LINK;
        Arrays.fill(bArr, 48, 58, JSONB.Constants.BC_DECIMAL);
        bArr[58] = 61;
        bArr[59] = TarConstants.LF_LINK;
        bArr[60] = 1;
        bArr[61] = TarConstants.LF_LINK;
        bArr[62] = 33;
        Arrays.fill(bArr, 63, 65, TarConstants.LF_LINK);
        Arrays.fill(bArr, 65, 91, (byte) -3);
        Arrays.fill(bArr, 91, 93, (byte) 33);
        bArr[93] = 1;
        bArr[94] = 33;
        bArr[95] = -3;
        bArr[96] = 33;
        Arrays.fill(bArr, 97, 123, (byte) -3);
        Arrays.fill(bArr, 123, 183, (byte) 33);
        bArr[183] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 184, 192, (byte) 33);
        Arrays.fill(bArr, 192, 215, (byte) -19);
        bArr[215] = 33;
        Arrays.fill(bArr, 216, DataBinderMapperImpl.f53073M3, (byte) -19);
        bArr[247] = 33;
        Arrays.fill(bArr, 248, 306, (byte) -19);
        Arrays.fill(bArr, 306, 308, (byte) 33);
        Arrays.fill(bArr, 308, 319, (byte) -19);
        Arrays.fill(bArr, 319, 321, (byte) 33);
        Arrays.fill(bArr, 321, DataBinderMapperImpl.f53277q5, (byte) -19);
        bArr[329] = 33;
        Arrays.fill(bArr, 330, 383, (byte) -19);
        bArr[383] = 33;
        Arrays.fill(bArr, 384, 452, (byte) -19);
        Arrays.fill(bArr, 452, 461, (byte) 33);
        Arrays.fill(bArr, 461, 497, (byte) -19);
        Arrays.fill(bArr, 497, 500, (byte) 33);
        Arrays.fill(bArr, 500, 502, (byte) -19);
        Arrays.fill(bArr, 502, 506, (byte) 33);
        Arrays.fill(bArr, 506, StandardNames.XS_LONG, (byte) -19);
        Arrays.fill(bArr, StandardNames.XS_LONG, 592, (byte) 33);
        Arrays.fill(bArr, 592, 681, (byte) -19);
        Arrays.fill(bArr, 681, 699, (byte) 33);
        Arrays.fill(bArr, 699, TypedValues.TransitionType.TYPE_STAGGERED, (byte) -19);
        Arrays.fill(bArr, TypedValues.TransitionType.TYPE_STAGGERED, 720, (byte) 33);
        Arrays.fill(bArr, 720, 722, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 722, 768, (byte) 33);
        Arrays.fill(bArr, 768, 838, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 838, 864, (byte) 33);
        Arrays.fill(bArr, 864, 866, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 866, 902, (byte) 33);
        bArr[902] = -19;
        bArr[903] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, TypedValues.Custom.TYPE_BOOLEAN, 907, (byte) -19);
        bArr[907] = 33;
        bArr[908] = -19;
        bArr[909] = 33;
        Arrays.fill(bArr, 910, 930, (byte) -19);
        bArr[930] = 33;
        Arrays.fill(bArr, 931, 975, (byte) -19);
        bArr[975] = 33;
        Arrays.fill(bArr, BuildConfig.VERSION_CODE, 983, (byte) -19);
        Arrays.fill(bArr, 983, 986, (byte) 33);
        bArr[986] = -19;
        bArr[987] = 33;
        bArr[988] = -19;
        bArr[989] = 33;
        bArr[990] = -19;
        bArr[991] = 33;
        bArr[992] = -19;
        bArr[993] = 33;
        Arrays.fill(bArr, 994, 1012, (byte) -19);
        Arrays.fill(bArr, 1012, 1025, (byte) 33);
        Arrays.fill(bArr, 1025, 1037, (byte) -19);
        bArr[1037] = 33;
        Arrays.fill(bArr, 1038, 1104, (byte) -19);
        bArr[1104] = 33;
        Arrays.fill(bArr, 1105, 1117, (byte) -19);
        bArr[1117] = 33;
        Arrays.fill(bArr, 1118, 1154, (byte) -19);
        bArr[1154] = 33;
        Arrays.fill(bArr, 1155, 1159, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 1159, 1168, (byte) 33);
        Arrays.fill(bArr, 1168, 1221, (byte) -19);
        Arrays.fill(bArr, 1221, 1223, (byte) 33);
        Arrays.fill(bArr, 1223, 1225, (byte) -19);
        Arrays.fill(bArr, 1225, 1227, (byte) 33);
        Arrays.fill(bArr, 1227, 1229, (byte) -19);
        Arrays.fill(bArr, 1229, 1232, (byte) 33);
        Arrays.fill(bArr, 1232, 1260, (byte) -19);
        Arrays.fill(bArr, 1260, 1262, (byte) 33);
        Arrays.fill(bArr, 1262, 1270, (byte) -19);
        Arrays.fill(bArr, 1270, 1272, (byte) 33);
        Arrays.fill(bArr, 1272, 1274, (byte) -19);
        Arrays.fill(bArr, 1274, 1329, (byte) 33);
        Arrays.fill(bArr, 1329, 1367, (byte) -19);
        Arrays.fill(bArr, 1367, 1369, (byte) 33);
        bArr[1369] = -19;
        Arrays.fill(bArr, 1370, 1377, (byte) 33);
        Arrays.fill(bArr, 1377, 1415, (byte) -19);
        Arrays.fill(bArr, 1415, 1425, (byte) 33);
        Arrays.fill(bArr, 1425, 1442, JSONB.Constants.BC_LOCAL_DATE);
        bArr[1442] = 33;
        Arrays.fill(bArr, 1443, 1466, JSONB.Constants.BC_LOCAL_DATE);
        bArr[1466] = 33;
        Arrays.fill(bArr, 1467, 1470, JSONB.Constants.BC_LOCAL_DATE);
        bArr[1470] = 33;
        bArr[1471] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[1472] = 33;
        Arrays.fill(bArr, 1473, 1475, JSONB.Constants.BC_LOCAL_DATE);
        bArr[1475] = 33;
        bArr[1476] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 1477, 1488, (byte) 33);
        Arrays.fill(bArr, 1488, 1515, (byte) -19);
        Arrays.fill(bArr, 1515, C5351b.f31954v, (byte) 33);
        Arrays.fill(bArr, C5351b.f31954v, 1523, (byte) -19);
        Arrays.fill(bArr, 1523, 1569, (byte) 33);
        Arrays.fill(bArr, 1569, 1595, (byte) -19);
        Arrays.fill(bArr, 1595, PhotoMetadataUtils.f42836b, (byte) 33);
        bArr[1600] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 1601, 1611, (byte) -19);
        Arrays.fill(bArr, 1611, 1619, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 1619, 1632, (byte) 33);
        Arrays.fill(bArr, 1632, 1642, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 1642, 1648, (byte) 33);
        bArr[1648] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 1649, 1720, (byte) -19);
        Arrays.fill(bArr, 1720, 1722, (byte) 33);
        Arrays.fill(bArr, 1722, 1727, (byte) -19);
        bArr[1727] = 33;
        Arrays.fill(bArr, 1728, 1743, (byte) -19);
        bArr[1743] = 33;
        Arrays.fill(bArr, 1744, 1748, (byte) -19);
        bArr[1748] = 33;
        bArr[1749] = -19;
        Arrays.fill(bArr, 1750, 1765, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 1765, 1767, (byte) -19);
        Arrays.fill(bArr, 1767, 1769, JSONB.Constants.BC_LOCAL_DATE);
        bArr[1769] = 33;
        Arrays.fill(bArr, 1770, 1774, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 1774, 1776, (byte) 33);
        Arrays.fill(bArr, 1776, 1786, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 1786, 2305, (byte) 33);
        Arrays.fill(bArr, 2305, 2308, JSONB.Constants.BC_LOCAL_DATE);
        bArr[2308] = 33;
        Arrays.fill(bArr, 2309, 2362, (byte) -19);
        Arrays.fill(bArr, 2362, 2364, (byte) 33);
        bArr[2364] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[2365] = -19;
        Arrays.fill(bArr, 2366, 2382, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2382, 2385, (byte) 33);
        Arrays.fill(bArr, 2385, 2389, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2389, 2392, (byte) 33);
        Arrays.fill(bArr, 2392, 2402, (byte) -19);
        Arrays.fill(bArr, 2402, 2404, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2404, 2406, (byte) 33);
        Arrays.fill(bArr, 2406, 2416, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2416, 2433, (byte) 33);
        Arrays.fill(bArr, 2433, 2436, JSONB.Constants.BC_LOCAL_DATE);
        bArr[2436] = 33;
        Arrays.fill(bArr, 2437, 2445, (byte) -19);
        Arrays.fill(bArr, 2445, 2447, (byte) 33);
        Arrays.fill(bArr, 2447, 2449, (byte) -19);
        Arrays.fill(bArr, 2449, 2451, (byte) 33);
        Arrays.fill(bArr, 2451, 2473, (byte) -19);
        bArr[2473] = 33;
        Arrays.fill(bArr, 2474, 2481, (byte) -19);
        bArr[2481] = 33;
        bArr[2482] = -19;
        Arrays.fill(bArr, 2483, 2486, (byte) 33);
        Arrays.fill(bArr, 2486, 2490, (byte) -19);
        Arrays.fill(bArr, 2490, 2492, (byte) 33);
        bArr[2492] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[2493] = 33;
        Arrays.fill(bArr, 2494, OfficialCoverType.COVER_ILLUSTRATION1_HORIZONTAL, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, OfficialCoverType.COVER_ILLUSTRATION1_HORIZONTAL, OfficialCoverType.COVER_ILLUSTRATION3_HORIZONTAL, (byte) 33);
        Arrays.fill(bArr, OfficialCoverType.COVER_ILLUSTRATION3_HORIZONTAL, OfficialCoverType.COVER_LITTLE_BEAR1_HORIZONTAL, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, OfficialCoverType.COVER_LITTLE_BEAR1_HORIZONTAL, OfficialCoverType.COVER_LITTLE_BEAR3_HORIZONTAL, (byte) 33);
        Arrays.fill(bArr, OfficialCoverType.COVER_LITTLE_BEAR3_HORIZONTAL, OfficialCoverType.COVER_LITTLE_RABBIT3_HORIZONTAL, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, OfficialCoverType.COVER_LITTLE_RABBIT3_HORIZONTAL, 2519, (byte) 33);
        bArr[2519] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 2520, 2524, (byte) 33);
        Arrays.fill(bArr, 2524, 2526, (byte) -19);
        bArr[2526] = 33;
        Arrays.fill(bArr, 2527, 2530, (byte) -19);
        Arrays.fill(bArr, 2530, 2532, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2532, 2534, (byte) 33);
        Arrays.fill(bArr, 2534, 2544, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2544, 2546, (byte) -19);
        Arrays.fill(bArr, 2546, 2562, (byte) 33);
        bArr[2562] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 2563, 2565, (byte) 33);
        Arrays.fill(bArr, 2565, 2571, (byte) -19);
        Arrays.fill(bArr, 2571, 2575, (byte) 33);
        Arrays.fill(bArr, 2575, 2577, (byte) -19);
        Arrays.fill(bArr, 2577, 2579, (byte) 33);
        Arrays.fill(bArr, 2579, 2601, (byte) -19);
        bArr[2601] = 33;
        Arrays.fill(bArr, 2602, 2609, (byte) -19);
        bArr[2609] = 33;
        Arrays.fill(bArr, 2610, 2612, (byte) -19);
        bArr[2612] = 33;
        Arrays.fill(bArr, 2613, 2615, (byte) -19);
        bArr[2615] = 33;
        Arrays.fill(bArr, 2616, 2618, (byte) -19);
        Arrays.fill(bArr, 2618, 2620, (byte) 33);
        bArr[2620] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[2621] = 33;
        Arrays.fill(bArr, 2622, 2627, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2627, 2631, (byte) 33);
        Arrays.fill(bArr, 2631, 2633, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2633, 2635, (byte) 33);
        Arrays.fill(bArr, 2635, 2638, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2638, 2649, (byte) 33);
        Arrays.fill(bArr, 2649, 2653, (byte) -19);
        bArr[2653] = 33;
        bArr[2654] = -19;
        Arrays.fill(bArr, 2655, 2662, (byte) 33);
        Arrays.fill(bArr, 2662, 2674, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2674, 2677, (byte) -19);
        Arrays.fill(bArr, 2677, 2689, (byte) 33);
        Arrays.fill(bArr, 2689, 2692, JSONB.Constants.BC_LOCAL_DATE);
        bArr[2692] = 33;
        Arrays.fill(bArr, 2693, 2700, (byte) -19);
        bArr[2700] = 33;
        bArr[2701] = -19;
        bArr[2702] = 33;
        Arrays.fill(bArr, 2703, 2706, (byte) -19);
        bArr[2706] = 33;
        Arrays.fill(bArr, 2707, 2729, (byte) -19);
        bArr[2729] = 33;
        Arrays.fill(bArr, 2730, 2737, (byte) -19);
        bArr[2737] = 33;
        Arrays.fill(bArr, 2738, 2740, (byte) -19);
        bArr[2740] = 33;
        Arrays.fill(bArr, 2741, 2746, (byte) -19);
        Arrays.fill(bArr, 2746, 2748, (byte) 33);
        bArr[2748] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[2749] = -19;
        Arrays.fill(bArr, C5409a.f32575g, 2758, JSONB.Constants.BC_LOCAL_DATE);
        bArr[2758] = 33;
        Arrays.fill(bArr, 2759, 2762, JSONB.Constants.BC_LOCAL_DATE);
        bArr[2762] = 33;
        Arrays.fill(bArr, 2763, 2766, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2766, 2784, (byte) 33);
        bArr[2784] = -19;
        Arrays.fill(bArr, 2785, 2790, (byte) 33);
        Arrays.fill(bArr, 2790, 2800, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2800, qdm.f81936j, (byte) 33);
        Arrays.fill(bArr, qdm.f81936j, qdm.f81938l, JSONB.Constants.BC_LOCAL_DATE);
        bArr[2820] = 33;
        Arrays.fill(bArr, 2821, 2829, (byte) -19);
        Arrays.fill(bArr, 2829, 2831, (byte) 33);
        Arrays.fill(bArr, 2831, 2833, (byte) -19);
        Arrays.fill(bArr, 2833, 2835, (byte) 33);
        Arrays.fill(bArr, 2835, 2857, (byte) -19);
        bArr[2857] = 33;
        Arrays.fill(bArr, 2858, 2865, (byte) -19);
        bArr[2865] = 33;
        Arrays.fill(bArr, 2866, 2868, (byte) -19);
        Arrays.fill(bArr, 2868, 2870, (byte) 33);
        Arrays.fill(bArr, 2870, 2874, (byte) -19);
        Arrays.fill(bArr, 2874, 2876, (byte) 33);
        bArr[2876] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[2877] = -19;
        Arrays.fill(bArr, 2878, 2884, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2884, 2887, (byte) 33);
        Arrays.fill(bArr, 2887, 2889, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2889, 2891, (byte) 33);
        Arrays.fill(bArr, 2891, 2894, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2894, 2902, (byte) 33);
        Arrays.fill(bArr, 2902, 2904, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2904, 2908, (byte) 33);
        Arrays.fill(bArr, 2908, 2910, (byte) -19);
        bArr[2910] = 33;
        Arrays.fill(bArr, 2911, 2914, (byte) -19);
        Arrays.fill(bArr, 2914, 2918, (byte) 33);
        Arrays.fill(bArr, 2918, 2928, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 2928, 2946, (byte) 33);
        Arrays.fill(bArr, 2946, 2948, JSONB.Constants.BC_LOCAL_DATE);
        bArr[2948] = 33;
        Arrays.fill(bArr, 2949, 2955, (byte) -19);
        Arrays.fill(bArr, 2955, 2958, (byte) 33);
        Arrays.fill(bArr, 2958, 2961, (byte) -19);
        bArr[2961] = 33;
        Arrays.fill(bArr, 2962, 2966, (byte) -19);
        Arrays.fill(bArr, 2966, 2969, (byte) 33);
        Arrays.fill(bArr, 2969, 2971, (byte) -19);
        bArr[2971] = 33;
        bArr[2972] = -19;
        bArr[2973] = 33;
        Arrays.fill(bArr, 2974, 2976, (byte) -19);
        Arrays.fill(bArr, 2976, 2979, (byte) 33);
        Arrays.fill(bArr, 2979, 2981, (byte) -19);
        Arrays.fill(bArr, 2981, 2984, (byte) 33);
        Arrays.fill(bArr, 2984, 2987, (byte) -19);
        Arrays.fill(bArr, 2987, 2990, (byte) 33);
        Arrays.fill(bArr, 2990, 2998, (byte) -19);
        bArr[2998] = 33;
        Arrays.fill(bArr, 2999, 3002, (byte) -19);
        Arrays.fill(bArr, 3002, 3006, (byte) 33);
        Arrays.fill(bArr, 3006, OnyxStatisticConstant.TRIGGER_FROM_EDIT_NOTE_TOOL_BAR_QUICK_PHOTO_LIST_ITEM, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, OnyxStatisticConstant.TRIGGER_FROM_EDIT_NOTE_TOOL_BAR_QUICK_PHOTO_LIST_ITEM, 3014, (byte) 33);
        Arrays.fill(bArr, 3014, 3017, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3017] = 33;
        Arrays.fill(bArr, 3018, 3022, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3022, 3031, (byte) 33);
        bArr[3031] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 3032, 3047, (byte) 33);
        Arrays.fill(bArr, 3047, 3056, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3056, 3073, (byte) 33);
        Arrays.fill(bArr, 3073, TTFFont.Platform.Windows.Language.CHINESE_HONG_KONG, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3076] = 33;
        Arrays.fill(bArr, 3077, 3085, (byte) -19);
        bArr[3085] = 33;
        Arrays.fill(bArr, 3086, 3089, (byte) -19);
        bArr[3089] = 33;
        Arrays.fill(bArr, 3090, 3113, (byte) -19);
        bArr[3113] = 33;
        Arrays.fill(bArr, 3114, 3124, (byte) -19);
        bArr[3124] = 33;
        Arrays.fill(bArr, 3125, 3130, (byte) -19);
        Arrays.fill(bArr, 3130, 3134, (byte) 33);
        Arrays.fill(bArr, 3134, 3141, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3141] = 33;
        Arrays.fill(bArr, 3142, 3145, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3145] = 33;
        Arrays.fill(bArr, 3146, 3150, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3150, 3157, (byte) 33);
        Arrays.fill(bArr, 3157, 3159, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3159, 3168, (byte) 33);
        Arrays.fill(bArr, 3168, 3170, (byte) -19);
        Arrays.fill(bArr, 3170, 3174, (byte) 33);
        Arrays.fill(bArr, 3174, 3184, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3184, 3202, (byte) 33);
        Arrays.fill(bArr, 3202, 3204, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3204] = 33;
        Arrays.fill(bArr, 3205, 3213, (byte) -19);
        bArr[3213] = 33;
        Arrays.fill(bArr, 3214, 3217, (byte) -19);
        bArr[3217] = 33;
        Arrays.fill(bArr, 3218, 3241, (byte) -19);
        bArr[3241] = 33;
        Arrays.fill(bArr, 3242, 3252, (byte) -19);
        bArr[3252] = 33;
        Arrays.fill(bArr, 3253, 3258, (byte) -19);
        Arrays.fill(bArr, 3258, 3262, (byte) 33);
        Arrays.fill(bArr, 3262, 3269, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3269] = 33;
        Arrays.fill(bArr, 3270, 3273, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3273] = 33;
        Arrays.fill(bArr, 3274, 3278, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3278, 3285, (byte) 33);
        Arrays.fill(bArr, 3285, 3287, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3287, 3294, (byte) 33);
        bArr[3294] = -19;
        bArr[3295] = 33;
        Arrays.fill(bArr, 3296, 3298, (byte) -19);
        Arrays.fill(bArr, 3298, 3302, (byte) 33);
        Arrays.fill(bArr, 3302, 3312, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3312, 3330, (byte) 33);
        Arrays.fill(bArr, 3330, 3332, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3332] = 33;
        Arrays.fill(bArr, 3333, 3341, (byte) -19);
        bArr[3341] = 33;
        Arrays.fill(bArr, 3342, 3345, (byte) -19);
        bArr[3345] = 33;
        Arrays.fill(bArr, 3346, 3369, (byte) -19);
        bArr[3369] = 33;
        Arrays.fill(bArr, 3370, 3386, (byte) -19);
        Arrays.fill(bArr, 3386, 3390, (byte) 33);
        Arrays.fill(bArr, 3390, 3396, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3396, 3398, (byte) 33);
        Arrays.fill(bArr, 3398, 3401, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3401] = 33;
        Arrays.fill(bArr, 3402, 3406, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3406, 3415, (byte) 33);
        bArr[3415] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 3416, 3424, (byte) 33);
        Arrays.fill(bArr, 3424, 3426, (byte) -19);
        Arrays.fill(bArr, 3426, 3430, (byte) 33);
        Arrays.fill(bArr, 3430, 3440, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3440, 3585, (byte) 33);
        Arrays.fill(bArr, 3585, 3631, (byte) -19);
        bArr[3631] = 33;
        bArr[3632] = -19;
        bArr[3633] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 3634, 3636, (byte) -19);
        Arrays.fill(bArr, 3636, 3643, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3643, 3648, (byte) 33);
        Arrays.fill(bArr, 3648, 3654, (byte) -19);
        Arrays.fill(bArr, 3654, 3663, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3663] = 33;
        Arrays.fill(bArr, 3664, 3674, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3674, 3713, (byte) 33);
        Arrays.fill(bArr, 3713, 3715, (byte) -19);
        bArr[3715] = 33;
        bArr[3716] = -19;
        Arrays.fill(bArr, 3717, 3719, (byte) 33);
        Arrays.fill(bArr, 3719, 3721, (byte) -19);
        bArr[3721] = 33;
        bArr[3722] = -19;
        Arrays.fill(bArr, 3723, 3725, (byte) 33);
        bArr[3725] = -19;
        Arrays.fill(bArr, 3726, 3732, (byte) 33);
        Arrays.fill(bArr, 3732, 3736, (byte) -19);
        bArr[3736] = 33;
        Arrays.fill(bArr, 3737, 3744, (byte) -19);
        bArr[3744] = 33;
        Arrays.fill(bArr, 3745, 3748, (byte) -19);
        bArr[3748] = 33;
        bArr[3749] = -19;
        bArr[3750] = 33;
        bArr[3751] = -19;
        Arrays.fill(bArr, 3752, 3754, (byte) 33);
        Arrays.fill(bArr, 3754, 3756, (byte) -19);
        bArr[3756] = 33;
        Arrays.fill(bArr, 3757, 3759, (byte) -19);
        bArr[3759] = 33;
        bArr[3760] = -19;
        bArr[3761] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 3762, 3764, (byte) -19);
        Arrays.fill(bArr, 3764, 3770, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3770] = 33;
        Arrays.fill(bArr, 3771, 3773, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3773] = -19;
        Arrays.fill(bArr, 3774, 3776, (byte) 33);
        Arrays.fill(bArr, 3776, 3781, (byte) -19);
        bArr[3781] = 33;
        bArr[3782] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[3783] = 33;
        Arrays.fill(bArr, 3784, 3790, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3790, 3792, (byte) 33);
        Arrays.fill(bArr, 3792, 3802, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3802, 3864, (byte) 33);
        Arrays.fill(bArr, 3864, 3866, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3866, 3872, (byte) 33);
        Arrays.fill(bArr, 3872, 3882, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3882, 3893, (byte) 33);
        bArr[3893] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[3894] = 33;
        bArr[3895] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[3896] = 33;
        bArr[3897] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 3898, 3902, (byte) 33);
        Arrays.fill(bArr, 3902, 3904, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3904, 3912, (byte) -19);
        bArr[3912] = 33;
        Arrays.fill(bArr, 3913, 3946, (byte) -19);
        Arrays.fill(bArr, 3946, 3953, (byte) 33);
        Arrays.fill(bArr, 3953, 3973, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3973] = 33;
        Arrays.fill(bArr, 3974, 3980, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 3980, 3984, (byte) 33);
        Arrays.fill(bArr, 3984, 3990, JSONB.Constants.BC_LOCAL_DATE);
        bArr[3990] = 33;
        bArr[3991] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[3992] = 33;
        Arrays.fill(bArr, 3993, AuthorizeManager.CONTEXT_ERROR, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, AuthorizeManager.CONTEXT_ERROR, 4017, (byte) 33);
        Arrays.fill(bArr, 4017, 4024, JSONB.Constants.BC_LOCAL_DATE);
        bArr[4024] = 33;
        bArr[4025] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 4026, 4256, (byte) 33);
        Arrays.fill(bArr, 4256, 4294, (byte) -19);
        Arrays.fill(bArr, 4294, 4304, (byte) 33);
        Arrays.fill(bArr, 4304, 4343, (byte) -19);
        Arrays.fill(bArr, 4343, 4352, (byte) 33);
        bArr[4352] = -19;
        bArr[4353] = 33;
        Arrays.fill(bArr, 4354, 4356, (byte) -19);
        bArr[4356] = 33;
        Arrays.fill(bArr, 4357, 4360, (byte) -19);
        bArr[4360] = 33;
        bArr[4361] = -19;
        bArr[4362] = 33;
        Arrays.fill(bArr, 4363, 4365, (byte) -19);
        bArr[4365] = 33;
        Arrays.fill(bArr, 4366, 4371, (byte) -19);
        Arrays.fill(bArr, 4371, 4412, (byte) 33);
        bArr[4412] = -19;
        bArr[4413] = 33;
        bArr[4414] = -19;
        bArr[4415] = 33;
        bArr[4416] = -19;
        Arrays.fill(bArr, 4417, 4428, (byte) 33);
        bArr[4428] = -19;
        bArr[4429] = 33;
        bArr[4430] = -19;
        bArr[4431] = 33;
        bArr[4432] = -19;
        Arrays.fill(bArr, 4433, 4436, (byte) 33);
        Arrays.fill(bArr, 4436, 4438, (byte) -19);
        Arrays.fill(bArr, 4438, 4441, (byte) 33);
        bArr[4441] = -19;
        Arrays.fill(bArr, 4442, 4447, (byte) 33);
        Arrays.fill(bArr, 4447, 4450, (byte) -19);
        bArr[4450] = 33;
        bArr[4451] = -19;
        bArr[4452] = 33;
        bArr[4453] = -19;
        bArr[4454] = 33;
        bArr[4455] = -19;
        bArr[4456] = 33;
        bArr[4457] = -19;
        Arrays.fill(bArr, 4458, 4461, (byte) 33);
        Arrays.fill(bArr, 4461, 4463, (byte) -19);
        Arrays.fill(bArr, 4463, 4466, (byte) 33);
        Arrays.fill(bArr, 4466, 4468, (byte) -19);
        bArr[4468] = 33;
        bArr[4469] = -19;
        Arrays.fill(bArr, 4470, 4510, (byte) 33);
        bArr[4510] = -19;
        Arrays.fill(bArr, 4511, 4520, (byte) 33);
        bArr[4520] = -19;
        Arrays.fill(bArr, 4521, 4523, (byte) 33);
        bArr[4523] = -19;
        Arrays.fill(bArr, 4524, 4526, (byte) 33);
        Arrays.fill(bArr, 4526, 4528, (byte) -19);
        Arrays.fill(bArr, 4528, 4535, (byte) 33);
        Arrays.fill(bArr, 4535, 4537, (byte) -19);
        bArr[4537] = 33;
        bArr[4538] = -19;
        bArr[4539] = 33;
        Arrays.fill(bArr, 4540, 4547, (byte) -19);
        Arrays.fill(bArr, 4547, 4587, (byte) 33);
        bArr[4587] = -19;
        Arrays.fill(bArr, 4588, 4592, (byte) 33);
        bArr[4592] = -19;
        Arrays.fill(bArr, 4593, 4601, (byte) 33);
        bArr[4601] = -19;
        Arrays.fill(bArr, 4602, 7680, (byte) 33);
        Arrays.fill(bArr, 7680, 7836, (byte) -19);
        Arrays.fill(bArr, 7836, 7840, (byte) 33);
        Arrays.fill(bArr, 7840, 7930, (byte) -19);
        Arrays.fill(bArr, 7930, 7936, (byte) 33);
        Arrays.fill(bArr, 7936, 7958, (byte) -19);
        Arrays.fill(bArr, 7958, 7960, (byte) 33);
        Arrays.fill(bArr, 7960, 7966, (byte) -19);
        Arrays.fill(bArr, 7966, 7968, (byte) 33);
        Arrays.fill(bArr, 7968, 8006, (byte) -19);
        Arrays.fill(bArr, 8006, 8008, (byte) 33);
        Arrays.fill(bArr, 8008, 8014, (byte) -19);
        Arrays.fill(bArr, 8014, 8016, (byte) 33);
        Arrays.fill(bArr, 8016, IOUtils.f107327a, (byte) -19);
        bArr[8024] = 33;
        bArr[8025] = -19;
        bArr[8026] = 33;
        bArr[8027] = -19;
        bArr[8028] = 33;
        bArr[8029] = -19;
        bArr[8030] = 33;
        Arrays.fill(bArr, 8031, 8062, (byte) -19);
        Arrays.fill(bArr, 8062, 8064, (byte) 33);
        Arrays.fill(bArr, 8064, 8117, (byte) -19);
        bArr[8117] = 33;
        Arrays.fill(bArr, 8118, 8125, (byte) -19);
        bArr[8125] = 33;
        bArr[8126] = -19;
        Arrays.fill(bArr, 8127, 8130, (byte) 33);
        Arrays.fill(bArr, 8130, 8133, (byte) -19);
        bArr[8133] = 33;
        Arrays.fill(bArr, 8134, 8141, (byte) -19);
        Arrays.fill(bArr, 8141, 8144, (byte) 33);
        Arrays.fill(bArr, 8144, 8148, (byte) -19);
        Arrays.fill(bArr, 8148, 8150, (byte) 33);
        Arrays.fill(bArr, 8150, 8156, (byte) -19);
        Arrays.fill(bArr, 8156, 8160, (byte) 33);
        Arrays.fill(bArr, 8160, 8173, (byte) -19);
        Arrays.fill(bArr, 8173, 8178, (byte) 33);
        Arrays.fill(bArr, 8178, 8181, (byte) -19);
        bArr[8181] = 33;
        Arrays.fill(bArr, 8182, 8189, (byte) -19);
        Arrays.fill(bArr, 8189, 8400, (byte) 33);
        Arrays.fill(bArr, 8400, 8413, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 8413, 8417, (byte) 33);
        bArr[8417] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 8418, 8486, (byte) 33);
        bArr[8486] = -19;
        Arrays.fill(bArr, 8487, 8490, (byte) 33);
        Arrays.fill(bArr, 8490, 8492, (byte) -19);
        Arrays.fill(bArr, 8492, 8494, (byte) 33);
        bArr[8494] = -19;
        Arrays.fill(bArr, 8495, 8576, (byte) 33);
        Arrays.fill(bArr, 8576, 8579, (byte) -19);
        Arrays.fill(bArr, 8579, 12293, (byte) 33);
        bArr[12293] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[12294] = 33;
        bArr[12295] = -19;
        Arrays.fill(bArr, 12296, 12321, (byte) 33);
        Arrays.fill(bArr, 12321, 12330, (byte) -19);
        Arrays.fill(bArr, 12330, 12336, JSONB.Constants.BC_LOCAL_DATE);
        bArr[12336] = 33;
        Arrays.fill(bArr, 12337, 12342, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 12342, 12353, (byte) 33);
        Arrays.fill(bArr, 12353, 12437, (byte) -19);
        Arrays.fill(bArr, 12437, 12441, (byte) 33);
        Arrays.fill(bArr, 12441, 12443, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 12443, GlUtil.f28347e, (byte) 33);
        Arrays.fill(bArr, GlUtil.f28347e, 12447, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 12447, 12449, (byte) 33);
        Arrays.fill(bArr, 12449, 12539, (byte) -19);
        bArr[12539] = 33;
        Arrays.fill(bArr, 12540, 12543, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 12543, 12549, (byte) 33);
        Arrays.fill(bArr, 12549, 12589, (byte) -19);
        Arrays.fill(bArr, 12589, 19968, (byte) 33);
        Arrays.fill(bArr, 19968, 40870, (byte) -19);
        Arrays.fill(bArr, 40870, 44032, (byte) 33);
        Arrays.fill(bArr, 44032, 55204, (byte) -19);
        Arrays.fill(bArr, 55204, 55296, (byte) 33);
        Arrays.fill(bArr, 57344, 65534, (byte) 33);
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
        return i <= 32 && (CHARS[i] & 2) != 0;
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

    public static char lowSurrogate(int i) {
        return (char) (((i - 65536) & 1023) + 56320);
    }

    public static int supplemental(char c, char c2) {
        return ((c - 55296) * 1024) + (c2 - 56320) + 65536;
    }
}
