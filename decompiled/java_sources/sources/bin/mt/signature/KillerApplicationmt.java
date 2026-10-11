package bin.mt.signature;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sunia.HTREnginev2.qdm;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import com.twelvemonkeys.imageio.metadata.psd.PSD;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import net.p110sf.saxon.om.StandardNames;
import org.apache.poi.hssf.record.CFRuleRecord;
import org.apache.poi.hssf.record.UserSViewEnd;
import org.apache.poi.hssf.record.chart.EndRecord;
import org.apache.poi.hssf.record.chart.UnitsRecord;
import org.apache.poi.hwpf.usermodel.Paragraph;

/* compiled from: CustomTelegramDialog.java */
/* loaded from: classes.dex */
public class KillerApplicationmt {

    /* renamed from: $ */
    private static short[] f12065$ = {-16145, -16184, -16192, -16187, -16180, -16179, -16247, -16163, -16186, -16247, -16187, -16186, -16184, -16179, -16247, -4251, -4269, -4267, -4270, -4279, -4277, -4238, -4285, -4278, -4285, -4287, -4268, -4281, -4277, -4254, -4273, -4281, -4278, -4279, -4287, -2434, -2456, -2437, -2451, -2437, -2440, -2442, -2433, -7390, -7314, -7315, -7325, -7322, -7321, -7322, -7390, -7324, -7312, -7315, -7313, -7390, -7322, -7312, -7325, -7307, -7325, -7328, -7314, -7321, -7390, -7312, -7321, -7311, -7315, -7305, -7312, -7327, -7321, -14440, -14370, -14390, -14377, -14379, -14440, -14372, -14390, -14375, -14385, -14375, -14374, -14380, -14371, -14462, -14440, -1751, -1691, -1690, -1688, -1683, -1684, -1683, -1751, -1681, -1669, -1690, -1692, -1751, -1688, -1670, -1670, -1684, -1667, -1670, -1741, -1751, -2959, -3017, -3037, -3010, -3012, -2959, -3024, -3038, -3038, -3020, -3035, -2959, -3039, -3024, -3035, -3015, -2959, -1376, -1350, -6111, -6128, -6119, -6128, -6126, -6137, -6124, -6120, -7865, -7840, -7811, -7814, -7825, -7831, -7812, -7825, -7837, -7724, -7710, -7688, -7719, -7688, -7697, -7704, -4039, -4065, -4091, -4094, -4085, -4020, -4086, -4083, -4096, -4096, -4082, -4083, -4081, -4089, -4020, -4065, -4075, -4065, -4072, -4087, -4095, -4020, -4091, -4081, -4093, -4094, -4020, -4086, -4093, -4066, -4020, -1335, -1368, -1368, -1368, -1368, -1368, -1368, -4398, -4410, -4412, -4410, -4412, -4410, -4412, 20290, 20309, 20309, 20309, 20309, 20309, 20309, 27225, 27198, 27198, 27198, 27198, 27198, 27198, 5502, 5449, 5449, 5460, 5449, 5403, 5464, 5463, 5460, 5448, 5458, 5461, 5468, 5403, 5458, 5461, 5451, 5454, 5455, 5403, 5448, 5455, 5449, 5470, 5466, 5462, 5377, 5403, 1782, 1728, 1734, 1729, 1754, 1752, 1761, 1744, 1753, 1744, 1746, 1735, 1748, 1752, 1777, 1756, 1748, 1753, 1754, 1746, 7042, 7086, 7092, 7085, 7077, 7087, 7142, 7093, 7137, 7085, 7086, 7072, 7077, 7137, 7075, 7080, 7093, 7084, 7072, 7089, 7137, 7079, 7091, 7086, 7084, 7137, 7072, 7090, 7090, 7076, 7093, 7163, 7137, 8807, 8810, 8807, 10526, 10536, 10542, 10537, 10546, 10544, 10505, 10552, 10545, 10552, 10554, 10543, 10556, 10544, 10521, 10548, 10556, 10545, 10546, 10554, 12795, 12748, 12748, 12753, 12748, 12702, 12762, 12759, 12749, 12755, 12759, 12749, 12749, 12759, 12752, 12761, 12702, 12762, 12759, 12767, 12754, 12753, 12761, 12676, 12702, 13356, 13339, 13339, 13318, 13339, 13385, 13312, 13319, 13385, 13313, 13320, 13319, 13325, 13317, 13324, 13354, 13318, 13319, 13327, 13312, 13326, 13340, 13339, 13320, 13341, 13312, 13318, 13319, 13354, 13313, 13320, 13319, 13326, 13324, 13325, 13395, 13385, 3082, 3084, 3103, 3088, 3085, 3090, 3103, 3082, 3095, 3089, 3088, 3111, 4139, 4155, 4153, EndRecord.sid, 4157, UnitsRecord.sid, 7971, 7987, 7985, 7996, 7989, 7944, 464, 511, 504, 508, 496, 485, 504, 510, 511, CFRuleRecord.sid, 500, 483, 483, 510, 483, UserSViewEnd.sid, CFRuleRecord.sid, 9067, 9053, 9051, 9052, 9031, 9029, 9084, 9037, 9028, 9037, 9039, 9050, 9033, 9029, 9068, 9025, 9033, 9028, 9031, 9039, -19017, -19016, -19022, -19036, -19015, -19009, -19022, -18952, -19009, -19016, -19038, -19021, -19016, -19038, -18952, -19017, -19019, -19038, -19009, -19015, -19016, -18952, -19072, -19041, -19053, -19071, -27176, -27196, -27196, -27200, -27197, -27254, -27233, -27233, -27182, -27175, -27196, -27234, -27172, -27191, -27233, -27171, -27233, -27179, -27172, -27183, -27169, -27178, -27178, -27175, -27181, -27183, -27172, -30838, -30808, -30809, -30809, -30810, -30787, -30743, -30810, -30791, -30804, -30809, -30743, -30819, -30804, -30811, -30804, -30802, -30789, -30808, -30812, -25601, -25616, -25606, -25620, -25615, -25609, -25606, -25680, -25609, -25616, -25622, -25605, -25616, -25622, -25680, -25601, -25603, -25622, -25609, -25615, -25616, -25680, -25656, -25641, -25637, -25655, -25884, -25864, -25864, -25860, -25857, -25930, -25949, -25949, -25861, -25861, -25861, -25950, -25883, -25886, -25857, -25864, -25875, -25877, -25858, -25875, -25887, -25950, -25873, -25885, -25887, -25949, -25879, -25880, -25863, -25873, -25875, -25864, -25883, -25885, -25886, -25888, -25879, -25875, -25858, -25886, -25875, -25873, -25875, -25880, -25879, -25887, -25867, -25949, -32431, -32397, -32388, -32388, -32387, -32410, -32462, -32387, -32414, -32393, -32388, -32462, -32421, -32388, -32415, -32410, -32397, -32395, -32416, -32397, -32385, -25341, -25332, -25338, -25328, -25331, -25333, -25338, -25268, -25333, -25332, -25322, -25337, -25332, -25322, -25268, -25341, -25343, -25322, -25333, -25331, -25332, -25268, -25292, -25301, -25305, -25291, -19339, -19351, -19351, -19347, -19346, -19417, -19406, -19406, -19350, -19350, -19350, -19405, -19356, -19342, -19352, -19351, -19352, -19329, -19336, -19405, -19330, -19342, -19344, -19406, -19330, -19406, -19336, -19335, -19352, -19330, -19332, -19351, -19340, -19342, -19341, -19343, -19336, -19332, -19345, -19341, -19332, -19330, -19332, -19335, -19336, -19344, -19356, -25092, -25122, -25135, -25135, -25136, -25141, -25185, -25136, -25137, -25126, -25135, -25185, -25114, -25136, -25142, -25109, -25142, -25123, -25126, -25301, -25316, -25316, -25343, -25316, -25266, -25334, -25337, -25315, -25341, -25337, -25315, -25315, -25337, -25344, -25335, -25266, -25334, -25337, -25329, -25342, -25343, -25335, -25260, -25266, -29903, -29945, -29951, -29946, -29923, -29921, -29914, -29929, -29922, -29929, -29931, -29952, -29933, -29921, -29898, -29925, -29933, -29922, -29923, -29931, -20101, -20108, -20098, -20120, -20107, -20109, -20098, -20172, -20109, -20108, -20114, -20097, -20108, -20114, -20172, -20101, -20103, -20114, -20109, -20107, -20108, -20172, -20148, -20141, -20129, -20147, -29677, -29681, -29681, -29685, -29688, -29631, -29612, -29612, -29681, -29666, -29673, -29666, -29668, -29687, -29670, -29674, -29611, -29674, -29666, -29612, -29634, -29641, -29638, -29642, -29644, -29633, -29656, -29660, -29644, -29635, -29635, -29646, -29640, -29638, -29641, -29660, -29656, -29649, -29644, -29655, -29634, -31599, -31565, -31556, -31556, -31555, -31578, -31502, -31555, -31582, -31561, -31556, -31502, -31610, -31561, -31554, -31561, -31563, -31584, -31565, -31553, -31422, -31371, -31371, -31384, -31371, -31449, -31389, -31378, -31372, -31382, -31378, -31372, -31372, -31378, -31383, -31392, -31449, -31389, -31378, -31386, -31381, -31384, -31392, -31427, -31449, -19661, -19707, -19709, -19708, -19681, -19683, -19676, -19691, -19684, -19691, -19689, -19710, -19695, -19683, -19660, -19687, -19695, -19684, -19681, -19689, 23806, 23767, 23770, 23798, 23764, 23775, 23752, 23787, 23753, 23774, 23773, 23752, 26283, 26272, 26273, 26299, 26256, 26300, 26279, 26272, 26296, 26256, 26283, 26278, 26286, 26275, 26272, 26280, 16559, 16536, 16536, 16517, 16536, 16586, 16536, 16527, 16537, 16527, 16542, 16542, 16515, 16516, 16525, 16586, 16538, 16536, 16527, 16524, 16527, 16536, 16527, 16516, 16521, 16527, 16537, 16592, 16586, 17965, 17947, 17949, 17946, 17921, 17923, 17978, Paragraph.SPRM_ILFO, 17922, Paragraph.SPRM_ILFO, 17929, 17948, 17935, 17923, 17962, 17927, 17935, 17922, 17921, 17929, 28669, 28628, 28633, 28661, 28631, 28636, 28619, 28648, 28618, 28637, 28638, 28619, 30767, 30756, 30757, 30783, 30740, 30776, 30755, 30756, 30780, 30740, 30767, 30754, 30762, 30759, 30756, 30764, 30519, 30464, 30464, 30493, 30464, 30546, 30465, 30483, 30468, 30491, 30492, 30485, 30546, 30466, 30464, 30487, 30484, 30487, 30464, 
    30487, 30492, 30481, 30487, 30465, 30536, 30546, 30133, 30083, 30085, 30082, 30105, 30107, 30114, 30099, 30106, 30099, 30097, 30084, 30103, 30107, 30130, 30111, 30103, 30106, 30105, 30097, -24326, -24365, -24354, -24334, -24368, -24357, -24372, -24337, -24371, -24358, -24359, -24372, -32222, -32215, -32216, -32206, -32231, -32203, -32210, -32215, -32207, -32231, -32222, -32209, -32217, -32214, -32215, -32223, -777, -831, -825, -832, -805, -807, -800, -815, -808, -815, -813, -826, -811, -807, -784, -803, -811, -808, -805, -813, -12022, -12012, -12013, -12007, -12014, -12022, -10425, -10410, -10413, -10410, -10413, -10410, -10413, -15224, -15221, -15229, -15221, -15173, -15219, -15225, -15221, -15222, -13209, -13199, -13214, -13196, -13214, -13215, -13201, -13210, -1269, -1240, -1248, -1240, -1177, -1237, -1240, -1242, -1245, -1246, -1245, -1177, -1247, -1227, -1240, -1238, -1177, -1245, -1227, -1242, -1232, -1242, -1243, -1237, -1246, -1177, -1227, -1246, -1228, -1240, -1230, -1227, -1244, -1246, -10426, -10399, -10391, -10388, -10395, -10396, -10464, -10380, -10385, -10464, -10388, -10385, -10399, -10396, -10464, -10388, -10385, -10393, -10385, -10464, -10394, -10382, -10385, -10387, -10464, -10396, -10382, -10399, -10377, -10399, -10398, -10388, -10395, -10438, -10464, -8731, -8762, -8754, -8762, -8823, -8763, -8762, -8760, -8755, -8756, -8755, -8823, -8753, -8741, -8762, -8764, -8823, -8760, -8742, -8742, -8756, -8739, -8742, -8813, -8823, -9704, -9665, -9673, -9678, -9669, -9670, -9602, -9686, -9679, -9602, -9678, -9679, -9665, -9670, -9602, -9678, -9679, -9671, -9679, -9602, -9672, -9684, -9679, -9677, -9602, -9665, -9683, -9683, -9669, -9686, -9602, -9682, -9665, -9686, -9674, -9602, -14844, -14818, -15218, -15192, -15182, -15179, -15172, -15109, -15171, -15174, -15177, -15177, -15175, -15174, -15176, -15184, -15109, -15192, -15198, -15192, -15185, -15170, -15178, -15109, -15182, -15176, -15180, -15179, -15109, -15171, -15180, -15191, -15109, -15177, -15180, -15172, -15180, -15867, -15828, -15839, -15859, -15825, -15836, -15821, -7326, -9678, -9641, -9641, -9641, -9641, -9641, -9641, -1018, -1003, -1003, -1003, -1003, -1003, -1003, -11798, -11832, -11837, -11837, -11838, -11837, -11897, -11835, -11810, -11897, -11806, -11829, -11834, -11798, -11832, -11837, -11820, -115, -20, -20, -20, -20, -20, -20, -14444, -14464, -14462, -14464, -14462, -14464, -14462, -8382, -8365, -8358, -8365, -8367, -8380, -8361, -8357, -8343, -8353, -8363, -8359, -8360, -12029, -11982, -11973, -11982, -11984, -11995, -11978, -11974, -1880, -1873, -1870, -1867, -1888, -1882, -1869, -1888, -1876, -1890, -1880, -1886, -1874, -1873, -79, -106, -117, -116, -103, -97, -118, -103, -107, -9420, -9438, -9416, -9415, -9416, -9425, -9432, -9454, -9436, -9426, -9438, -9437, -1408, -1354, -1364, -1395, -1364, -1349, -1348, -8898, -8932, -8937, -8877, -8911, -8950, -8877, -8901, -8938, -8930, -8942, -8931, -8953, -8877, -8928, -8934, -8931, -8940, -8933, -9533, -9520, -9520, -9511, -9514, -9512, -9512, -12926, -12885, -12888, -12888, -12885, -12877, -12828, -12891, -12886, -12896, -12828, -12905, -12884, -12891, -12874, -12895, -12828, -12917, -12879, -12874, -12828, -12919, -12885, -12896, -12828, -12909, -12883, -12880, -12884, -12828, -12867, -12885, -12879, -12874, -12828, -12894, -12874, -12883, -12895, -12886, -12896, -12873, -12822, -12828, -12867, -12885, -12879, -12828, -12889, -12891, -12886, -12828, -12894, -12883, -12886, -12896, -12828, -12887, -12891, -12886, -12867, -12828, -12893, -12895, -12886, -12879, -12883, -12886, -12895, -12828, -12919, -12885, -12896, -12873, -12828, -12877, -12883, -12880, -12884, -12885, -12879, -12880, -12828, -12891, -12886, -12867, -12828, -12878, -12883, -12874, -12879, -12873, -12822, -12828, -12912, -12884, -12891, -12886, -12881, -12828, -12867, -12885, -12879, -12828, -12894, -12885, -12874, -12828, -12896, -12885, -12877, -12886, -12888, -12885, -12891, -12896, -12883, -12886, -12893, -12828, -12880, -12884, -12883, -12873, -12828, -12887, -12885, -12896, -12828, -12891, -12876, -12876, -12822, -12828, -12923, -12886, -12896, -12828, -12891, -12888, -12873, -12885, -12828, -12896, -12885, -12886, -12829, -12880, -12828, -12894, -12885, -12874, -12893, -12885, -12880, -12828, -12873, -12884, -12891, -12874, -12895, -12828, -12885, -12879, -12874, -12828, -12887, -12885, -12896, -12828, -12877, -12883, -12880, -12884, -12828, -12867, -12885, -12879, -12874, -12828, -12894, -12874, -12883, -12895, -12886, -12896, -12873, -12822, -12828, 5625, 4489, -10568, -10536, -10536, -10536, -10536, -10536, -10536, -9092, -9109, -9107, -9109, -9107, -9109, -9107, -13050, -13011, -13012, -12955, -13002, -12958, -13039, -13014, -13011, -13003, -12958, -13053, -13019, -13021, -13013, -13012, -11556, -11567, -11573, -11563, -11567, -11573, -11573, -12871, -12868, -12870, -12867, -12845, -12867, -12868, -12892, -15440, -15453, -15453, -15446, -15446, -15376, -15376, -13860, -13845, -13845, -13834, -13845, -13895, -13846, -13839, -13834, -13842, -13840, -13833, -13826, -13895, -13827, -13840, -13832, -13835, -13834, -13826, -13917, -13895, 1889, 1898, 1899, 1905, 1882, 1910, 1901, 1898, 1906, 1882, 1889, 1900, 1892, 1897, 1898, 1890, -26469, -26446, -26433, -26477, -26447, -26438, -26451, -26482, -26452, -26437, -26440, -26451, 23667, 23621, 23619, 23620, 23647, 23645, 23652, 23637, 23644, 23637, 23639, 23618, 23633, 23645, 23668, 23641, 23633, 23644, 23647, 23639};
    private static String KEY_DONT_SHOW_DIALOG = m7199$(1679, 1695, 1797);
    private static String PREFS_NAME = m7199$(1695, 1707, -26402);
    private static String TAG = m7199$(1707, 1727, 23600);
    private static WeakReference<Context> currentContextRef;
    private static WeakReference<Dialog> currentDialogRef;

    /* renamed from: $ */
    private static String m7199$(int i, int i2, int i3) {
        char[] cArr = new char[i2 - i];
        for (int i4 = 0; i4 < i2 - i; i4++) {
            cArr[i4] = (char) (f12065$[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CustomTelegramDialog.java */
    /* loaded from: classes.dex */
    public static final class Config {
        static final int SUBTITLE_TEXT_SIZE = 18;
        static final int TITLE_TEXT_SIZE = 24;

        /* renamed from: $ */
        private static short[] f12066$ = {6673, 6674, 6682, 6674, 6690, 6676, 6686, 6674, 6675, 6739, 6669, 6675, 6682, 2712, 2716, 2704, 2710, 2708, 2690, 2782, 2717, 2718, 2710, 2718, 2734, 2712, 2706, 2718, 2719, 2783, 2689, 2719, 2710, 6305, 6315, 6311, 6310, 6331, 6375, 6308, 6311, 6319, 6311, 6295, 6305, 6315, 6311, 6310, 6374, 6328, 6310, 6319, 6368, 6385, 6392, 6385, 6387, 6374, 6389, 6393, 6347, 6397, 6391, 6395, 6394, 6330, 6372, 6394, 6387, 643, 647, 651, 653, 655, 665, 709, 670, 655, 646, 655, 653, 664, 651, 647, 693, 643, 649, 645, 644, 708, 666, 644, 653, 2816, 2826, 2822, 2823, 2842, 2886, 2845, 2828, 2821, 2828, 2830, 2843, 2824, 2820, 2870, 2816, 2826, 2822, 2823, 2887, 2841, 2823, 2830, 10697, 10702, 10707, 10708, 10689, 10695, 10706, 10689, 10701, 10751, 10697, 10691, 10703, 10702, 10638, 10704, 10702, 10695, 1127, 1123, 1135, 1129, 1131, 1149, 1057, 1127, 1120, 1149, 1146, 1135, 1129, 1148, 1135, 1123, 1105, 1127, 1133, 1121, 1120, 1056, 1150, 1120, 1129, 919, 925, 913, 912, 909, 977, 919, 912, 909, 906, 927, 921, 908, 927, 915, 929, 919, 925, 913, 912, 976, 910, 912, 921, 1059, 1077, 1071, 1070, 1071, 1080, 1087, 1029, 1075, 1081, 1077, 1076, 1140, 1066, 1076, 1085, 2921, 2925, 2913, 2919, 2917, 2931, 2863, 2937, 2927, 2933, 2932, 2933, 2914, 2917, 2911, 2921, 2915, 2927, 2926, 2862, 2928, 2926, 2919, 7713, 7723, 7719, 7718, 7739, 7783, 7729, 7719, 7741, 7740, 7741, 7722, 7725, 7703, 7713, 7723, 7719, 7718, 7782, 7736, 7718, 7727, -21058, -21073, -21078, -21073, -21078, -21073, -21078, -12514, -12535, -12535, -12535, -12535, -12535, -12535, 2465, 2497, 2497, 2497, 2497, 2497, 2497, -13783, -13752, -13752, -13752, -13752, -13752, -13752, 23865, 23900, 23900, 23900, 23900, 23900, 23900, -4251, -4238, -4236, -4238, -4236, -4238, -4236, -26881, -26900, -26900, -26907, -26907, -26945, -26945, 18016, 18035, 18035, 18042, 18037, 18043, 18043, 17934, 17946, 17944, 17946, 17944, 17946, 17944, 11623, 11635, 11633, 11635, 11633, 11635, 11633, 29321, 29338, 29338, 29338, 29338, 29338, 29338, 13798, 13775, 13772, 13772, 13775, 13783, 13696, 13761, 13774, 13764, 13696, 13811, 13768, 13761, 13778, 13765, 13696, 13807, 13781, 13778, 13696, 13805, 13775, 13764, 13696, 13815, 13769, 13780, 13768, 13696, 13785, 13775, 13781, 13778, 13696, 13766, 13778, 13769, 13765, 13774, 13764, 13779, 13710, 13696, 13785, 13775, 13781, 13696, 13763, 13761, 13774, 13696, 13766, 13769, 13774, 13764, 13696, 13773, 13761, 13774, 13785, 13696, 13767, 13765, 13774, 13781, 13769, 13774, 13765, 13696, 13805, 13775, 13764, 13779, 13696, 13783, 13769, 13780, 13768, 13775, 13781, 13780, 13696, 13761, 13774, 13785, 13696, 13782, 13769, 13778, 13781, 13779, 13710, 13696, 13812, 13768, 13761, 13774, 13771, 13696, 13785, 13775, 13781, 13696, 13766, 13775, 13778, 13696, 13764, 13775, 13783, 13774, 13772, 13775, 13761, 13764, 13769, 13774, 13767, 13696, 13780, 13768, 13769, 13779, 13696, 13773, 13775, 13764, 13696, 13761, 13776, 13776, 13710, 13696, 13793, 13774, 13764, 13696, 13761, 13772, 13779, 13775, 13696, 13764, 13775, 13774, 13703, 13780, 13696, 13766, 13775, 13778, 13767, 13775, 13780, 13696, 13779, 13768, 13761, 13778, 13765, 13696, 13775, 13781, 13778, 13696, 13773, 13775, 13764, 13696, 13783, 13769, 13780, 13768, 13696, 13785, 13775, 13781, 13778, 13696, 13766, 13778, 13769, 13765, 13774, 13764, 13779, 13710, 13696, -4707, -5651, -21881, -21878, -21872, -21874, -21878, -21872, -21872, -27147, -27170, -27169, -27242, -27195, -27247, -27166, -27175, -27170, -27194, -27247, -27152, -27178, -27184, -27176, -27169, -6101, -6100, -6095, -6090, -6109, -6107, -6096, -6109, -6097, -6115, -6101, -6111, -6099, -6100, -21229, -21196, -21207, -21202, -21189, -21187, -21208, -21189, -21193, 13353, 13365, 13365, 13361, 13362, 13435, 13422, 13422, 13366, 13366, 13366, 13423, 13352, 13359, 13362, 13365, 13344, 13350, 13363, 13344, 13356, 13423, 13346, 13358, 13356, 13422, 13348, 13349, 13364, 13346, 13344, 13365, 13352, 13358, 13359, 13357, 13348, 13344, 13363, 13359, 13344, 13346, 13344, 13349, 13348, 13356, 13368, 13422, -7298, -7301, -7299, -7302, -7404, -7302, -7301, -7325, 4536, 4539, 4531, 4539, 4491, 4541, 4535, 4539, 4538, 19940, 19910, 19917, 19849, 19947, 19920, 19849, 19937, 19916, 19908, 19912, 19911, 19933, 19849, 19962, 19904, 19911, 19918, 19905, 6325, 6295, 6300, 6300, 6301, 6300, 6360, 6298, 6273, 6360, 6333, 6292, 6297, 6325, 6295, 6300, 6283, 19491, 19506, 19515, 19506, 19504, 19493, 19510, 19514, 19464, 19518, 19508, 19512, 19513, 12366, 12415, 12406, 12415, 12413, 12392, 12411, 12407, 1097, 1109, 1109, 1105, 1106, 1051, 1038, 1038, 1109, 1092, 1101, 1092, 1094, 1107, 1088, 1100, 1039, 1100, 1092, 1038, 1124, 1133, 1120, 1132, 1134, 1125, 1138, 1150, 1134, 1127, 1127, 1128, 1122, 1120, 1133, 1150, 1138, 1141, 1134, 1139, 1124, 9701, 9676, 9665, 9709, 9679, 9668, 9683, 1154, 907, 925, 903, 902, 903, 912, 919, 941, 923, 913, 925, 924, 5978, 5996, 6006, 5975, 6006, 5985, 5990, -30661, -30681, -30681, -30685, -30688, -30615, -30596, -30596, -30684, -30684, -30684, -30595, -30678, -30660, -30682, -30681, -30682, -30671, -30666, -30595, -30672, -30660, -30658, -30596, -30672, -30596, -30666, -30665, -30682, -30672, -30670, -30681, -30662, -30660, -30659, -30657, -30666, -30670, -30687, -30659, -30670, -30672, -30670, -30665, -30666, -30658, -30678};
        static String COLOR_DARK_BG = m7200$(244, 251, -21091);
        static String COLOR_DARK_BUTTON_STROKE = m7200$(251, 258, -12483);
        static String COLOR_DARK_DESCRIPTION = m7200$(258, 265, 2434);
        static String COLOR_DARK_SUBTITLE_TEXT = m7200$(265, 272, -13814);
        static String COLOR_DARK_TITLE_TEXT = m7200$(272, 279, 23834);
        static String COLOR_DESCRIPTION = m7200$(279, 286, -4282);
        static String COLOR_PRIMARY = m7200$(286, 293, -26916);
        static String COLOR_READ_MORE = m7200$(293, 300, 17987);
        static String COLOR_SOCIAL_LABEL = m7200$(300, 307, 17965);
        static String COLOR_SUBTITLE_TEXT = m7200$(307, 314, 11588);
        static String COLOR_TITLE_TEXT = m7200$(314, 321, 29354);
        static String DESCRIPTION = m7200$(321, 512, 13728);
        static String DISMISS_BUTTON = m7200$(512, 519, -21821);
        static String DONT_SHOW_AGAIN = m7200$(519, StandardNames.XS_NEGATIVE_INTEGER, -27215);
        static String INSTAGRAM_DRAWABLE = m7200$(StandardNames.XS_NEGATIVE_INTEGER, IPTC.TAG_EXPIRATION_DATE, -6078);
        static String INSTAGRAM_LABEL = m7200$(IPTC.TAG_EXPIRATION_DATE, StandardNames.XS_NAME, -21158);
        static String INSTAGRAM_LINK = m7200$(StandardNames.XS_NAME, 606, 13377);
        static String JOIN_BUTTON = m7200$(606, StandardNames.XS_PATTERN, -7372);
        static String LOGO_DRAWABLE = m7200$(StandardNames.XS_PATTERN, StandardNames.XS_TOTAL_DIGITS, 4564);
        static String READ_MORE_TEXT = m7200$(StandardNames.XS_TOTAL_DIGITS, 642, 19881);
        static String SUBTITLE = m7200$(642, 659, 6392);
        static String TELEGRAM_DRAWABLE = m7200$(659, 672, 19543);
        static String TELEGRAM_LABEL = m7200$(672, 680, 12314);
        static String TELEGRAM_LINK = m7200$(680, 721, OnyxStatisticConstant.TRIGGER_FROM_HOME_LIST_ITEM_MOVE_CREATE);
        static String TITLE = m7200$(721, 729, 9632);
        static String YOUTUBE_DRAWABLE = m7200$(729, 741, 1010);
        static String YOUTUBE_LABEL = m7200$(741, 748, 5891);
        static String YOUTUBE_LINK = m7200$(748, 795, -30637);
        static final String[] LOGO_ICON_PATHS = {m7200$(33, 52, 6344), m7200$(0, 13, 6781), m7200$(13, 33, 2801)};
        static final String[] TELEGRAM_ICON_PATHS = {m7200$(93, 116, 2921), m7200$(52, 69, 6292), m7200$(69, 93, 746)};
        static final String[] INSTAGRAM_ICON_PATHS = {m7200$(159, 183, 1022), m7200$(116, 134, 10656), m7200$(134, 159, 1038)};
        static final String[] YOUTUBE_ICON_PATHS = {m7200$(222, 244, 7752), m7200$(183, 199, 1114), m7200$(199, 222, qdm.f81935i)};

        /* renamed from: $ */
        private static String m7200$(int i, int i2, int i3) {
            char[] cArr = new char[i2 - i];
            for (int i4 = 0; i4 < i2 - i; i4++) {
                cArr[i4] = (char) (f12066$[i + i4] ^ i3);
            }
            return new String(cArr);
        }

        private Config() {
        }
    }

    public static boolean shouldShowDialog(Context context) {
        SharedPreferences settings = context.getSharedPreferences(m7199$(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, PSD.RES_ICC_PROFILE, -24385), 0);
        return !settings.getBoolean(m7199$(PSD.RES_ICC_PROFILE, OnyxStatisticConstant.TRIGGER_FROM_HOME_LIST_ITEM_HEADER_CREATE, -32186), false);
    }

    public static void handleConfigurationChanged(Configuration newConfig) {
        String m7199$ = m7199$(296, 316, 10589);
        try {
            WeakReference<Dialog> weakReference = currentDialogRef;
            Dialog currentDialog = weakReference != null ? weakReference.get() : null;
            WeakReference<Context> weakReference2 = currentContextRef;
            Context context = weakReference2 != null ? weakReference2.get() : null;
            if (currentDialog != null && context != null && currentDialog.isShowing()) {
                try {
                    currentDialog.dismiss();
                } catch (IllegalArgumentException e) {
                    Log.e(m7199$, m7199$(316, 341, 12734) + e.getMessage());
                }
                show(context);
                return;
            }
            WeakReference<Dialog> weakReference3 = currentDialogRef;
            if (weakReference3 != null) {
                weakReference3.clear();
                WeakReference<Context> weakReference4 = currentContextRef;
                if (weakReference4 != null) {
                    weakReference4.clear();
                }
            }
        } catch (Exception e2) {
            Log.e(m7199$, m7199$(341, 378, 13417) + e2.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x014d A[Catch: Exception -> 0x05f0, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01dd A[Catch: Exception -> 0x05f0, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x023b A[Catch: Exception -> 0x05f0, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0281 A[Catch: Exception -> 0x05f0, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0425 A[Catch: Exception -> 0x05f0, TRY_ENTER, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x04a1 A[Catch: Exception -> 0x05f0, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0500 A[Catch: Exception -> 0x05f0, TRY_LEAVE, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x05c7 A[Catch: Exception -> 0x05ee, TryCatch #1 {Exception -> 0x05ee, blocks: (B:69:0x0534, B:71:0x05c7, B:72:0x05e2), top: B:68:0x0534 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x04a9 A[Catch: Exception -> 0x05f0, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x042d A[Catch: Exception -> 0x05f0, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0296 A[Catch: Exception -> 0x05f0, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0250 A[Catch: Exception -> 0x05f0, TryCatch #0 {Exception -> 0x05f0, blocks: (B:3:0x0011, B:7:0x0018, B:10:0x0034, B:13:0x00b9, B:14:0x00c4, B:23:0x014d, B:25:0x0152, B:37:0x0195, B:39:0x01d1, B:47:0x01dd, B:48:0x01f3, B:50:0x023b, B:51:0x0264, B:53:0x0281, B:54:0x02aa, B:57:0x0425, B:58:0x0434, B:60:0x04a1, B:61:0x04b0, B:65:0x0500, B:82:0x04a9, B:83:0x042d, B:84:0x0296, B:85:0x0250, B:88:0x0126, B:93:0x00c1), top: B:2:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void show(final android.content.Context r49) {
        /*
            Method dump skipped, instructions count: 1563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bin.mt.signature.KillerApplicationmt.show(android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$show$0(Context context, View v) {
        try {
            Intent telegram = new Intent(m7199$(439, 465, -18986), Uri.parse(m7199$(465, 492, -27216)));
            context.startActivity(telegram);
        } catch (Exception e) {
            Toast.makeText(context, m7199$(492, 512, -30775), 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$show$1(Context context, View v) {
        try {
            Intent instagram = new Intent(m7199$(512, 538, -25698), Uri.parse(m7199$(538, StandardNames.XS_CHOICE, -25972)));
            context.startActivity(instagram);
        } catch (Exception e) {
            Toast.makeText(context, m7199$(StandardNames.XS_CHOICE, 607, -32494), 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$show$2(Context context, View v) {
        try {
            Intent youtube = new Intent(m7199$(607, StandardNames.XS_YEAR_MONTH_DURATION, -25246), Uri.parse(m7199$(StandardNames.XS_YEAR_MONTH_DURATION, 680, -19427)));
            context.startActivity(youtube);
        } catch (Exception e) {
            Toast.makeText(context, m7199$(680, 699, -25153), 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$show$3(CheckBox dontShowAgain, Context context, Dialog dialog, View v) {
        try {
            if (dontShowAgain.isChecked()) {
                saveDontShowPreference(context, true);
            }
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
            WeakReference<Dialog> weakReference = currentDialogRef;
            if (weakReference != null) {
                weakReference.clear();
            }
        } catch (Exception e) {
            Log.e(m7199$(724, 744, -29838), m7199$(699, 724, -25234) + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$show$4(CheckBox dontShowAgain, Context context, Dialog dialog, View v) {
        try {
            if (dontShowAgain.isChecked()) {
                saveDontShowPreference(context, true);
            }
            try {
                Intent telegram = new Intent(m7199$(744, 770, -20198), Uri.parse(m7199$(770, 811, -29573)));
                context.startActivity(telegram);
            } catch (Exception e) {
                Toast.makeText(context, m7199$(811, 831, -31534), 0).show();
            }
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
            WeakReference<Dialog> weakReference = currentDialogRef;
            if (weakReference != null) {
                weakReference.clear();
            }
        } catch (Exception e2) {
            Log.e(m7199$(856, 876, -19600), m7199$(831, 856, -31481) + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$show$5(DialogInterface dialogInterface) {
        WeakReference<Dialog> weakReference = currentDialogRef;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    private static TextView createTextViewButton(Context context, String text, int textColor, int backgroundColor, boolean isOutlined, boolean isDarkMode) {
        TextView textView = new TextView(context);
        textView.setText(text);
        textView.setTextSize(16.0f);
        textView.setTypeface(null, 1);
        textView.setAllCaps(true);
        textView.setGravity(17);
        textView.setPadding(dpToPx(context, 20), dpToPx(context, 12), dpToPx(context, 20), dpToPx(context, 12));
        StateListDrawable states = new StateListDrawable();
        GradientDrawable normalShape = new GradientDrawable();
        normalShape.setCornerRadius(dpToPx(context, 20));
        String strokeColor = m7199$(198, 205, 20321);
        String m7199$ = m7199$(205, 212, 27258);
        if (isOutlined) {
            normalShape.setStroke(dpToPx(context, 1), Color.parseColor(isDarkMode ? strokeColor : m7199$));
            normalShape.setColor(backgroundColor);
        } else {
            normalShape.setColor(backgroundColor);
        }
        GradientDrawable pressedShape = new GradientDrawable();
        pressedShape.setCornerRadius(dpToPx(context, 20));
        if (isOutlined) {
            if (!isDarkMode) {
                strokeColor = m7199$;
            }
            pressedShape.setStroke(dpToPx(context, 1), Color.parseColor(strokeColor));
            int darkerColor = getDarkerColor(backgroundColor, 0.9f);
            pressedShape.setColor(darkerColor);
        } else {
            int darkerColor2 = getDarkerColor(backgroundColor, 0.9f);
            pressedShape.setColor(darkerColor2);
        }
        states.addState(new int[]{android.R.attr.state_pressed}, pressedShape);
        states.addState(new int[0], normalShape);
        textView.setBackground(states);
        textView.setTextColor(textColor);
        textView.setClickable(true);
        textView.setFocusable(true);
        return textView;
    }

    private static LinearLayout createImprovedSocialIconColumn(final Context context, String drawableName, String[] assetPaths, String label, int iconSizeDP, boolean isDarkMode) {
        Bitmap iconBitmap;
        String m7199$ = m7199$(0, 15, -16215);
        String m7199$2 = m7199$(15, 35, -4314);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        final ImageView icon = new ImageView(context);
        boolean iconLoaded = false;
        try {
            int iconResId = context.getResources().getIdentifier(drawableName, m7199$(35, 43, -2534), context.getPackageName());
            if (iconResId != 0) {
                icon.setImageResource(iconResId);
                iconLoaded = true;
                Log.d(m7199$2, drawableName + m7199$(43, 73, -7422));
            }
        } catch (Exception e) {
            Log.e(m7199$2, m7199$ + drawableName + m7199$(73, 89, -14408) + e.getMessage());
        }
        if (!iconLoaded) {
            for (String assetPath : assetPaths) {
                try {
                    iconBitmap = getBitmapFromAsset(context, assetPath);
                } catch (Exception e2) {
                    Log.e(m7199$2, m7199$ + drawableName + m7199$(110, 127, -2991) + assetPath + m7199$(127, 129, -1382) + e2.getMessage());
                }
                if (iconBitmap == null) {
                    continue;
                } else {
                    icon.setImageBitmap(iconBitmap);
                    iconLoaded = true;
                    Log.d(m7199$2, drawableName + m7199$(89, 110, -1783) + assetPath);
                    break;
                }
            }
        }
        if (!iconLoaded) {
            if (label.equals(m7199$(129, 137, -6027))) {
                icon.setImageResource(android.R.drawable.ic_dialog_email);
            } else if (label.equals(m7199$(137, 146, -7922))) {
                icon.setImageResource(android.R.drawable.ic_menu_gallery);
            } else if (label.equals(m7199$(146, 153, -7795))) {
                icon.setImageResource(android.R.drawable.ic_media_play);
            } else {
                icon.setImageResource(android.R.drawable.ic_menu_share);
            }
            Log.d(m7199$2, m7199$(153, 184, -3988) + label);
        }
        LinearLayout.LayoutParams iconParams = new LinearLayout.LayoutParams(dpToPx(context, iconSizeDP), dpToPx(context, iconSizeDP));
        iconParams.setMargins(0, 0, 0, dpToPx(context, 4));
        iconParams.gravity = 17;
        icon.setLayoutParams(iconParams);
        TextView text = new TextView(context);
        text.setText(label);
        text.setTextSize(14.0f);
        if (isDarkMode) {
            text.setTextColor(Color.parseColor(m7199$(184, 191, -1302)));
        } else {
            text.setTextColor(Color.parseColor(m7199$(191, 198, -4367)));
        }
        text.setGravity(17);
        linearLayout.addView(icon);
        linearLayout.addView(text);
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: bin.mt.signature.KillerApplicationmt$$ExternalSyntheticLambda6
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return KillerApplicationmt.lambda$createImprovedSocialIconColumn$6(icon, context, view, motionEvent);
            }
        });
        linearLayout.setClickable(true);
        linearLayout.setFocusable(true);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$createImprovedSocialIconColumn$6(ImageView icon, Context context, View v, MotionEvent event) {
        try {
            int action = event.getAction();
            String m7199$ = m7199$(378, 390, 3198);
            String m7199$2 = m7199$(390, 396, 4184);
            String m7199$3 = m7199$(396, 402, 8016);
            switch (action) {
                case 0:
                    AnimatorSet animatorSet = new AnimatorSet();
                    ObjectAnimator scaleDownX = ObjectAnimator.ofFloat(icon, m7199$3, 1.0f, 0.9f);
                    ObjectAnimator scaleDownY = ObjectAnimator.ofFloat(icon, m7199$2, 1.0f, 0.9f);
                    ObjectAnimator translationDown = ObjectAnimator.ofFloat(icon, m7199$, 0.0f, dpToPx(context, 2));
                    animatorSet.playTogether(scaleDownX, scaleDownY, translationDown);
                    animatorSet.setDuration(100L);
                    animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
                    animatorSet.start();
                    break;
                case 1:
                case 3:
                    AnimatorSet animatorSetUp = new AnimatorSet();
                    ObjectAnimator scaleUpX = ObjectAnimator.ofFloat(icon, m7199$3, 0.9f, 1.0f);
                    ObjectAnimator scaleUpY = ObjectAnimator.ofFloat(icon, m7199$2, 0.9f, 1.0f);
                    ObjectAnimator translationUp = ObjectAnimator.ofFloat(icon, m7199$, dpToPx(context, 2), 0.0f);
                    animatorSetUp.playTogether(scaleUpX, scaleUpY, translationUp);
                    animatorSetUp.setDuration(100L);
                    animatorSetUp.setInterpolator(new AccelerateDecelerateInterpolator());
                    animatorSetUp.start();
                    break;
            }
        } catch (Exception e) {
            Log.e(m7199$(419, 439, 9000), m7199$(402, 419, 401) + e.getMessage());
        }
        return false;
    }

    private static Bitmap getBitmapFromAsset(Context context, String filePath) {
        String m7199$ = m7199$(212, 240, 5435);
        String m7199$2 = m7199$(240, DataBinderMapperImpl.f53157Z3, 1717);
        AssetManager assetManager = context.getAssets();
        InputStream is = null;
        try {
            try {
                is = assetManager.open(filePath);
                return BitmapFactory.decodeStream(is);
            } catch (IOException e) {
                Log.e(m7199$2, m7199$(DataBinderMapperImpl.f53157Z3, 293, 7105) + filePath + m7199$(293, 296, 8775) + e.getMessage());
                if (is == null) {
                    return null;
                }
                try {
                    is.close();
                    return null;
                } catch (IOException e2) {
                    Log.e(m7199$2, m7199$ + e2.getMessage());
                    return null;
                }
            }
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e3) {
                    Log.e(m7199$2, m7199$ + e3.getMessage());
                }
            }
        }
    }

    private static int getDarkerColor(int color, float factor) {
        int alpha = Color.alpha(color);
        int red = (int) (Color.red(color) * factor);
        int green = (int) (Color.green(color) * factor);
        int blue = (int) (Color.blue(color) * factor);
        return Color.argb(alpha, Math.max(red, 0), Math.max(green, 0), Math.max(blue, 0));
    }

    private static void saveDontShowPreference(Context context, boolean dontShow) {
        try {
            SharedPreferences settings = context.getSharedPreferences(m7199$(953, 965, 28600), 0);
            SharedPreferences.Editor editor = settings.edit();
            editor.putBoolean(m7199$(965, 981, 30795), dontShow);
            editor.apply();
        } catch (Exception e) {
            Log.e(m7199$(1007, AnalyticsListener.EVENT_DRM_SESSION_RELEASED, 30198), m7199$(981, 1007, 30578) + e.getMessage());
        }
    }

    public static void resetDontShowDialog(Context context) {
        try {
            SharedPreferences settings = context.getSharedPreferences(m7199$(876, 888, 23739), 0);
            SharedPreferences.Editor editor = settings.edit();
            editor.putBoolean(m7199$(888, TypedValues.Custom.TYPE_BOOLEAN, 26319), false);
            editor.apply();
        } catch (Exception e) {
            Log.e(m7199$(933, 953, 18030), m7199$(TypedValues.Custom.TYPE_BOOLEAN, 933, 16618) + e.getMessage());
        }
    }

    private static int dpToPx(Context context, int dp) {
        float density = context.getResources().getDisplayMetrics().density;
        return Math.round(dp * density);
    }
}
