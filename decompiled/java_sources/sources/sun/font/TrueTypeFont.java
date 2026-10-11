package sun.font;

import androidx.core.text.util.LocalePreferences;
import com.caverock.androidsvg.SVGParser;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.google.zxing.common.StringUtils;
import com.onyx.android.sdk.base.data.font.TTFFont;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.engine.sdk.archive.ArchiveFormatCode;
import com.onyx.galaxy.note.utils.ShellUtils;
import com.sunia.HTREnginev2.gon;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.awt.FontFormatException;
import java.awt.geom.Point2D;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.poi.hssf.record.FormatRecord;
import org.apache.poi.hssf.record.OldFormulaRecord;
import org.apache.poi.hssf.record.chart.AreaFormatRecord;
import org.apache.poi.hssf.record.chart.AreaRecord;
import org.apache.poi.hssf.record.chart.LineFormatRecord;
import org.apache.poi.hssf.record.chart.SeriesLabelsRecord;
import org.apache.poi.hssf.record.chart.UnitsRecord;
import org.apache.poi.util.ExtUnits;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* loaded from: classes16.dex */
public class TrueTypeFont extends FileFont {
    private static final int DIRECTORYENTRYSIZE = 16;
    private static final int DIRECTORYHEADERSIZE = 12;
    public static final int EBLCTag = 1161972803;
    public static final short ENGLISH_LOCALE_ID = 1033;
    public static final int FAMILY_NAME_ID = 1;
    public static final int FULL_NAME_ID = 4;
    public static final int GDEFTag = 1195656518;
    public static final int GPOSTag = 1196445523;
    public static final int GSUBTag = 1196643650;
    public static final int MACROMAN_ENGLISH_LANG = 0;
    public static final int MACROMAN_SPECIFIC_ID = 0;
    public static final int MAC_PLATFORM_ID = 1;
    public static final int MS_PLATFORM_ID = 3;
    public static final int POSTSCRIPT_NAME_ID = 6;
    private static final int TTCHEADERSIZE = 12;
    private static final short US_LCID = 1033;
    public static final int cmapTag = 1668112752;
    public static final int fdscTag = 1717859171;
    public static final int featTag = 1717920116;
    private static final int fsSelectionBoldBit = 32;
    private static final int fsSelectionItalicBit = 1;
    private static final int fsSelectionRegularBit = 64;
    public static final int fvarTag = 1719034226;
    public static final int gaspTag = 1734439792;
    public static final int glyfTag = 1735162214;
    public static final int headTag = 1751474532;
    public static final int hheaTag = 1751672161;
    public static final int hmtxTag = 1752003704;
    private static Map<String, short[]> lcidLanguageCompatibilityMap = null;
    private static Map<String, Short> lcidMap = null;
    public static final int locaTag = 1819239265;
    public static final int maxpTag = 1835104368;
    public static final int mortTag = 1836020340;
    public static final int morxTag = 1836020344;
    public static final int nameTag = 1851878757;
    public static final int os_2Tag = 1330851634;
    public static final int ottoTag = 1330926671;
    public static final int postTag = 1886352244;
    public static final int reserved_bits1 = Integer.MIN_VALUE;
    public static final int reserved_bits2 = 65535;
    public static final int trueTag = 1953658213;
    public static final int ttcfTag = 1953784678;
    public static final int v1ttTag = 65536;
    int directoryCount;
    int directoryOffset;
    TTDisposerRecord disposerRecord;
    int fontDataSize;
    int fontIndex;
    private int fontWeight;
    private int fontWidth;
    private char[] gaspTable;
    private short[] languageCompatibleLCIDs;
    private String localeFamilyName;
    private String localeFullName;
    private Locale nameLocale;
    int numTables;
    private float stPos;
    private float stSize;
    protected boolean supportsCJK;
    protected boolean supportsJA;
    DirectoryEntry[] tableDirectory;
    private float ulPos;
    private float ulSize;
    static final String[] encoding_mapping = {"cp1252", "cp1250", "cp1251", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "", "", "", "", "", "", "", "", "ms874", "ms932", "gbk", "ms949", "ms950", "ms1361", "", "", "", "", "", "", "", "", "", ""};
    private static final String[][] languages = {new String[]{"en", LocalePreferences.CalendarType.f5703a, "da", OcrValues.LANG_GERMAN, "es", "fi", OcrValues.LANG_FRENCH, "is", OcrValues.LANG_ITALIAN, "nl", SVGParser.f16048t, ExtUnits.UNIT_PT, "sq", "sv"}, new String[]{"cs", "cz", "et", "hr", "hu", "nr", "pl", "ro", "sk", "sl", "sq", "sr"}, new String[]{"bg", "mk", OcrValues.LANG_RUSSIAN, ShellUtils.COMMAND_SH, "uk"}, new String[]{"el"}, new String[]{"tr"}, new String[]{"he"}, new String[]{ArchiveStreamFactory.f105352AR}, new String[]{"et", WebvttCueParser.f27233m, "lv"}, new String[]{"th"}, new String[]{OcrValues.LANG_JAPANESE}, new String[]{"zh", "zh_CN"}, new String[]{OcrValues.LANG_KOREAN}, new String[]{"zh_HK", "zh_TW"}, new String[]{OcrValues.LANG_KOREAN}};
    private static final String[] codePages = {"cp1252", "cp1250", "cp1251", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "ms874", "ms932", "gbk", "ms949", "ms950", "ms1361"};
    private static String defaultCodePage = null;
    private static final short[] EMPTY_COMPATIBLE_LCIDS = new short[0];

    /* loaded from: classes16.dex */
    public static class DirectoryEntry {
        int length;
        int offset;
        int tag;
    }

    /* loaded from: classes16.dex */
    public static class TTDisposerRecord implements DisposerRecord {
        FileChannel channel;

        private TTDisposerRecord() {
            this.channel = null;
        }

        @Override // sun.java2d.DisposerRecord
        public synchronized void dispose() {
            try {
                FileChannel fileChannel = this.channel;
                if (fileChannel != null) {
                    fileChannel.close();
                }
            } catch (IOException unused) {
            } catch (Throwable th) {
                this.channel = null;
                throw th;
            }
            this.channel = null;
        }
    }

    public TrueTypeFont(String str, Object obj, int i, boolean z) throws FontFormatException {
        this(str, obj, i, z, true);
    }

    private static void addLCIDMapEntry(Map<String, Short> map, String str, short s) {
        map.put(str, Short.valueOf(s));
    }

    private static void createLCIDLanguageCompatibilityMap() {
        HashMap hashMap = new HashMap();
        hashMap.put(OcrValues.LANG_GERMAN, new short[]{1031, 3079, 5127, 2055, LineFormatRecord.sid});
        hashMap.put(SVGParser.f16048t, new short[]{1044, 2068});
        hashMap.put(OcrValues.LANG_RUSSIAN, new short[]{1049, 2073});
        hashMap.put("sv", new short[]{1053, 2077});
        hashMap.put(ExtUnits.UNIT_PT, new short[]{1046, 2070});
        hashMap.put("qu", new short[]{1131, 3179, 2155});
        hashMap.put(HttpMeasureConstants.f94668b, new short[]{1086, 2110});
        hashMap.put("en", new short[]{11273, 3081, 12297, 8201, 10249, 4105, 13321, 6153, 7177, 5129, 2057});
        hashMap.put("hr", new short[]{1050, AreaRecord.sid});
        hashMap.put(OcrValues.LANG_ITALIAN, new short[]{1040, 2064});
        hashMap.put(OcrValues.LANG_FRENCH, new short[]{1036, 5132, 6156, 2060, 3084, SeriesLabelsRecord.sid});
        hashMap.put("es", new short[]{1034, 12298, 14346, 2058, 8202, 19466, 17418, 9226, 13322, 5130, 7178, 11274, 16394, AreaFormatRecord.sid, 10250, 6154, 18442, 20490, 15370});
        hashMap.put("zh", new short[]{1028, 3076, 5124, 4100, 2052});
        hashMap.put(ArchiveStreamFactory.f105352AR, new short[]{1025, 8193, 16385, 9217, 2049, 14337, 15361, 11265, 13313, 10241, 7169, 12289, UnitsRecord.sid, 5121, 6145, 3073});
        hashMap.put("se", new short[]{1083, 3131, 2107});
        hashMap.put("ro", new short[]{1048, 2072});
        hashMap.put("nl", new short[]{1043, 2067});
        hashMap.put("sr", new short[]{7194, 3098});
        lcidLanguageCompatibilityMap = hashMap;
    }

    private static synchronized void createLCIDMap() {
        synchronized (TrueTypeFont.class) {
            if (lcidMap != null) {
                return;
            }
            HashMap hashMap = new HashMap(200);
            addLCIDMapEntry(hashMap, ArchiveStreamFactory.f105352AR, (short) 1025);
            addLCIDMapEntry(hashMap, "bg", (short) 1026);
            addLCIDMapEntry(hashMap, LocalePreferences.CalendarType.f5703a, (short) 1027);
            addLCIDMapEntry(hashMap, "zh", (short) 1028);
            addLCIDMapEntry(hashMap, "cs", (short) 1029);
            addLCIDMapEntry(hashMap, "da", OldFormulaRecord.biff4_sid);
            addLCIDMapEntry(hashMap, OcrValues.LANG_GERMAN, (short) 1031);
            addLCIDMapEntry(hashMap, "el", (short) 1032);
            addLCIDMapEntry(hashMap, "es", (short) 1034);
            addLCIDMapEntry(hashMap, "fi", (short) 1035);
            addLCIDMapEntry(hashMap, OcrValues.LANG_FRENCH, (short) 1036);
            addLCIDMapEntry(hashMap, "iw", (short) 1037);
            addLCIDMapEntry(hashMap, "hu", (short) 1038);
            addLCIDMapEntry(hashMap, "is", (short) 1039);
            addLCIDMapEntry(hashMap, OcrValues.LANG_ITALIAN, (short) 1040);
            addLCIDMapEntry(hashMap, OcrValues.LANG_JAPANESE, (short) 1041);
            addLCIDMapEntry(hashMap, OcrValues.LANG_KOREAN, (short) 1042);
            addLCIDMapEntry(hashMap, "nl", (short) 1043);
            addLCIDMapEntry(hashMap, SVGParser.f16048t, (short) 1044);
            addLCIDMapEntry(hashMap, "pl", (short) 1045);
            addLCIDMapEntry(hashMap, ExtUnits.UNIT_PT, (short) 1046);
            addLCIDMapEntry(hashMap, FileTypeConstant.RM, (short) 1047);
            addLCIDMapEntry(hashMap, "ro", (short) 1048);
            addLCIDMapEntry(hashMap, OcrValues.LANG_RUSSIAN, (short) 1049);
            addLCIDMapEntry(hashMap, "hr", (short) 1050);
            addLCIDMapEntry(hashMap, "sk", (short) 1051);
            addLCIDMapEntry(hashMap, "sq", (short) 1052);
            addLCIDMapEntry(hashMap, "sv", (short) 1053);
            addLCIDMapEntry(hashMap, "th", FormatRecord.sid);
            addLCIDMapEntry(hashMap, "tr", (short) 1055);
            addLCIDMapEntry(hashMap, "ur", (short) 1056);
            addLCIDMapEntry(hashMap, "in", (short) 1057);
            addLCIDMapEntry(hashMap, "uk", (short) 1058);
            addLCIDMapEntry(hashMap, "be", (short) 1059);
            addLCIDMapEntry(hashMap, "sl", (short) 1060);
            addLCIDMapEntry(hashMap, "et", (short) 1061);
            addLCIDMapEntry(hashMap, "lv", (short) 1062);
            addLCIDMapEntry(hashMap, WebvttCueParser.f27233m, (short) 1063);
            addLCIDMapEntry(hashMap, "fa", (short) 1065);
            addLCIDMapEntry(hashMap, "vi", (short) 1066);
            addLCIDMapEntry(hashMap, "hy", (short) 1067);
            addLCIDMapEntry(hashMap, "eu", (short) 1069);
            addLCIDMapEntry(hashMap, "mk", (short) 1071);
            addLCIDMapEntry(hashMap, "tn", (short) 1074);
            addLCIDMapEntry(hashMap, "xh", (short) 1076);
            addLCIDMapEntry(hashMap, "zu", (short) 1077);
            addLCIDMapEntry(hashMap, "af", (short) 1078);
            addLCIDMapEntry(hashMap, "ka", (short) 1079);
            addLCIDMapEntry(hashMap, "fo", (short) 1080);
            addLCIDMapEntry(hashMap, OcrValues.LANG_INDIAN, (short) 1081);
            addLCIDMapEntry(hashMap, "mt", (short) 1082);
            addLCIDMapEntry(hashMap, "se", (short) 1083);
            addLCIDMapEntry(hashMap, "gd", (short) 1084);
            addLCIDMapEntry(hashMap, HttpMeasureConstants.f94668b, (short) 1086);
            addLCIDMapEntry(hashMap, "kk", (short) 1087);
            addLCIDMapEntry(hashMap, "ky", (short) 1088);
            addLCIDMapEntry(hashMap, "sw", (short) 1089);
            addLCIDMapEntry(hashMap, gon.f71287n, (short) 1092);
            addLCIDMapEntry(hashMap, "bn", (short) 1093);
            addLCIDMapEntry(hashMap, "pa", (short) 1094);
            addLCIDMapEntry(hashMap, "gu", (short) 1095);
            addLCIDMapEntry(hashMap, "ta", (short) 1097);
            addLCIDMapEntry(hashMap, Http2ExchangeCodec.f103782l, (short) 1098);
            addLCIDMapEntry(hashMap, "kn", (short) 1099);
            addLCIDMapEntry(hashMap, "ml", (short) 1100);
            addLCIDMapEntry(hashMap, "mr", (short) 1102);
            addLCIDMapEntry(hashMap, "sa", (short) 1103);
            addLCIDMapEntry(hashMap, "mn", (short) 1104);
            addLCIDMapEntry(hashMap, "cy", (short) 1106);
            addLCIDMapEntry(hashMap, "gl", (short) 1110);
            addLCIDMapEntry(hashMap, "dv", (short) 1125);
            addLCIDMapEntry(hashMap, "qu", (short) 1131);
            addLCIDMapEntry(hashMap, "mi", (short) 1153);
            addLCIDMapEntry(hashMap, "ar_IQ", (short) 2049);
            addLCIDMapEntry(hashMap, "zh_CN", (short) 2052);
            addLCIDMapEntry(hashMap, "de_CH", (short) 2055);
            addLCIDMapEntry(hashMap, "en_GB", (short) 2057);
            addLCIDMapEntry(hashMap, "es_MX", (short) 2058);
            addLCIDMapEntry(hashMap, "fr_BE", (short) 2060);
            addLCIDMapEntry(hashMap, "it_CH", (short) 2064);
            addLCIDMapEntry(hashMap, "nl_BE", (short) 2067);
            addLCIDMapEntry(hashMap, "no_NO_NY", (short) 2068);
            addLCIDMapEntry(hashMap, "pt_PT", (short) 2070);
            addLCIDMapEntry(hashMap, "ro_MD", (short) 2072);
            addLCIDMapEntry(hashMap, "ru_MD", (short) 2073);
            addLCIDMapEntry(hashMap, "sr_CS", (short) 2074);
            addLCIDMapEntry(hashMap, "sv_FI", (short) 2077);
            addLCIDMapEntry(hashMap, "az_AZ", (short) 2092);
            addLCIDMapEntry(hashMap, "se_SE", (short) 2107);
            addLCIDMapEntry(hashMap, "ga_IE", (short) 2108);
            addLCIDMapEntry(hashMap, "ms_BN", (short) 2110);
            addLCIDMapEntry(hashMap, "uz_UZ", (short) 2115);
            addLCIDMapEntry(hashMap, "qu_EC", (short) 2155);
            addLCIDMapEntry(hashMap, "ar_EG", (short) 3073);
            addLCIDMapEntry(hashMap, "zh_HK", (short) 3076);
            addLCIDMapEntry(hashMap, "de_AT", (short) 3079);
            addLCIDMapEntry(hashMap, "en_AU", (short) 3081);
            addLCIDMapEntry(hashMap, "fr_CA", (short) 3084);
            addLCIDMapEntry(hashMap, "sr_CS", (short) 3098);
            addLCIDMapEntry(hashMap, "se_FI", (short) 3131);
            addLCIDMapEntry(hashMap, "qu_PE", (short) 3179);
            addLCIDMapEntry(hashMap, "ar_LY", UnitsRecord.sid);
            addLCIDMapEntry(hashMap, "zh_SG", (short) 4100);
            addLCIDMapEntry(hashMap, "de_LU", LineFormatRecord.sid);
            addLCIDMapEntry(hashMap, "en_CA", (short) 4105);
            addLCIDMapEntry(hashMap, "es_GT", AreaFormatRecord.sid);
            addLCIDMapEntry(hashMap, "fr_CH", SeriesLabelsRecord.sid);
            addLCIDMapEntry(hashMap, "hr_BA", AreaRecord.sid);
            addLCIDMapEntry(hashMap, "ar_DZ", (short) 5121);
            addLCIDMapEntry(hashMap, "zh_MO", (short) 5124);
            addLCIDMapEntry(hashMap, "de_LI", (short) 5127);
            addLCIDMapEntry(hashMap, "en_NZ", (short) 5129);
            addLCIDMapEntry(hashMap, "es_CR", (short) 5130);
            addLCIDMapEntry(hashMap, "fr_LU", (short) 5132);
            addLCIDMapEntry(hashMap, "bs_BA", (short) 5146);
            addLCIDMapEntry(hashMap, "ar_MA", (short) 6145);
            addLCIDMapEntry(hashMap, "en_IE", (short) 6153);
            addLCIDMapEntry(hashMap, "es_PA", (short) 6154);
            addLCIDMapEntry(hashMap, "fr_MC", (short) 6156);
            addLCIDMapEntry(hashMap, "sr_BA", (short) 6170);
            addLCIDMapEntry(hashMap, "ar_TN", (short) 7169);
            addLCIDMapEntry(hashMap, "en_ZA", (short) 7177);
            addLCIDMapEntry(hashMap, "es_DO", (short) 7178);
            addLCIDMapEntry(hashMap, "sr_BA", (short) 7194);
            addLCIDMapEntry(hashMap, "ar_OM", (short) 8193);
            addLCIDMapEntry(hashMap, "en_JM", (short) 8201);
            addLCIDMapEntry(hashMap, "es_VE", (short) 8202);
            addLCIDMapEntry(hashMap, "ar_YE", (short) 9217);
            addLCIDMapEntry(hashMap, "es_CO", (short) 9226);
            addLCIDMapEntry(hashMap, "ar_SY", (short) 10241);
            addLCIDMapEntry(hashMap, "en_BZ", (short) 10249);
            addLCIDMapEntry(hashMap, "es_PE", (short) 10250);
            addLCIDMapEntry(hashMap, "ar_JO", (short) 11265);
            addLCIDMapEntry(hashMap, "en_TT", (short) 11273);
            addLCIDMapEntry(hashMap, "es_AR", (short) 11274);
            addLCIDMapEntry(hashMap, "ar_LB", (short) 12289);
            addLCIDMapEntry(hashMap, "en_ZW", (short) 12297);
            addLCIDMapEntry(hashMap, "es_EC", (short) 12298);
            addLCIDMapEntry(hashMap, "ar_KW", (short) 13313);
            addLCIDMapEntry(hashMap, "en_PH", (short) 13321);
            addLCIDMapEntry(hashMap, "es_CL", (short) 13322);
            addLCIDMapEntry(hashMap, "ar_AE", (short) 14337);
            addLCIDMapEntry(hashMap, "es_UY", (short) 14346);
            addLCIDMapEntry(hashMap, "ar_BH", (short) 15361);
            addLCIDMapEntry(hashMap, "es_PY", (short) 15370);
            addLCIDMapEntry(hashMap, "ar_QA", (short) 16385);
            addLCIDMapEntry(hashMap, "es_BO", (short) 16394);
            addLCIDMapEntry(hashMap, "es_SV", (short) 17418);
            addLCIDMapEntry(hashMap, "es_HN", (short) 18442);
            addLCIDMapEntry(hashMap, "es_NI", (short) 19466);
            addLCIDMapEntry(hashMap, "es_PR", (short) 20490);
            lcidMap = hashMap;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x006e, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getCodePage() {
        /*
            java.lang.String r0 = sun.font.TrueTypeFont.defaultCodePage
            if (r0 == 0) goto L5
            return r0
        L5:
            boolean r0 = sun.font.FontUtilities.isWindows
            if (r0 == 0) goto L19
            sun.security.action.GetPropertyAction r0 = new sun.security.action.GetPropertyAction
            java.lang.String r1 = "file.encoding"
            r0.<init>(r1)
            java.lang.Object r0 = java.security.AccessController.doPrivileged(r0)
            java.lang.String r0 = (java.lang.String) r0
            sun.font.TrueTypeFont.defaultCodePage = r0
            goto L71
        L19:
            java.lang.String[][] r0 = sun.font.TrueTypeFont.languages
            int r0 = r0.length
            java.lang.String[] r1 = sun.font.TrueTypeFont.codePages
            int r1 = r1.length
            if (r0 != r1) goto L7c
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.String r1 = r0.getLanguage()
            if (r1 == 0) goto L71
            java.lang.String r2 = "zh"
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L4d
            java.lang.String r0 = r0.getCountry()
            if (r0 == 0) goto L4d
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            java.lang.String r1 = "_"
            r2.append(r1)
            r2.append(r0)
            java.lang.String r1 = r2.toString()
        L4d:
            r0 = 0
            r2 = r0
        L4f:
            java.lang.String[][] r3 = sun.font.TrueTypeFont.languages
            int r3 = r3.length
            if (r2 >= r3) goto L71
            r3 = r0
        L55:
            java.lang.String[][] r4 = sun.font.TrueTypeFont.languages
            r4 = r4[r2]
            int r5 = r4.length
            if (r3 >= r5) goto L6e
            r4 = r4[r3]
            boolean r4 = r1.equals(r4)
            if (r4 == 0) goto L6b
            java.lang.String[] r0 = sun.font.TrueTypeFont.codePages
            r0 = r0[r2]
            sun.font.TrueTypeFont.defaultCodePage = r0
            return r0
        L6b:
            int r3 = r3 + 1
            goto L55
        L6e:
            int r2 = r2 + 1
            goto L4f
        L71:
            java.lang.String r0 = sun.font.TrueTypeFont.defaultCodePage
            if (r0 != 0) goto L79
            java.lang.String r0 = ""
            sun.font.TrueTypeFont.defaultCodePage = r0
        L79:
            java.lang.String r0 = sun.font.TrueTypeFont.defaultCodePage
            return r0
        L7c:
            java.lang.InternalError r0 = new java.lang.InternalError
            java.lang.String r1 = "wrong code pages array length"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.TrueTypeFont.getCodePage():java.lang.String");
    }

    private char[] getGaspTable() {
        char[] cArr = this.gaspTable;
        if (cArr != null) {
            return cArr;
        }
        ByteBuffer tableBuffer = getTableBuffer(gaspTag);
        if (tableBuffer == null) {
            char[] cArr2 = new char[0];
            this.gaspTable = cArr2;
            return cArr2;
        }
        CharBuffer asCharBuffer = tableBuffer.asCharBuffer();
        if (asCharBuffer.get() > 1) {
            char[] cArr3 = new char[0];
            this.gaspTable = cArr3;
            return cArr3;
        }
        char c = asCharBuffer.get();
        if ((c * 4) + 4 > getTableSize(gaspTag)) {
            char[] cArr4 = new char[0];
            this.gaspTable = cArr4;
            return cArr4;
        }
        char[] cArr5 = new char[c * 2];
        this.gaspTable = cArr5;
        asCharBuffer.get(cArr5);
        return this.gaspTable;
    }

    private static short getLCIDFromLocale(Locale locale) {
        if (locale.equals(Locale.US)) {
            return (short) 1033;
        }
        if (lcidMap == null) {
            createLCIDMap();
        }
        String locale2 = locale.toString();
        while (!"".equals(locale2)) {
            Short sh = lcidMap.get(locale2);
            if (sh != null) {
                return sh.shortValue();
            }
            int lastIndexOf = locale2.lastIndexOf(95);
            if (lastIndexOf < 1) {
                return (short) 1033;
            }
            locale2 = locale2.substring(0, lastIndexOf);
        }
        return (short) 1033;
    }

    private static short[] getLanguageCompatibleLCIDsFromLocale(Locale locale) {
        if (lcidLanguageCompatibilityMap == null) {
            createLCIDMap();
            createLCIDLanguageCompatibilityMap();
        }
        short[] sArr = lcidLanguageCompatibilityMap.get(locale.getLanguage());
        return sArr == null ? EMPTY_COMPATIBLE_LCIDS : sArr;
    }

    private boolean isLanguageCompatible(short s) {
        for (short s2 : this.languageCompatibleLCIDs) {
            if (s2 == s) {
                return true;
            }
        }
        return false;
    }

    private String makeString(byte[] bArr, int i, short s, short s2) {
        if (s == 1) {
            s2 = -1;
        }
        if (s2 >= 2 && s2 <= 6) {
            byte[] bArr2 = new byte[i];
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                byte b = bArr[i3];
                if (b != 0) {
                    bArr2[i2] = b;
                    i2++;
                }
            }
            bArr = bArr2;
            i = i2;
        }
        String str = "UTF-16";
        switch (s2) {
            case -1:
                str = "US-ASCII";
                break;
            case 2:
                str = StringUtils.SHIFT_JIS;
                break;
            case 3:
                str = TTFFont.CHARSET_GBK;
                break;
            case 4:
                str = "MS950";
                break;
            case 5:
                str = "EUC_KR";
                break;
            case 6:
                str = "Johab";
                break;
        }
        try {
            return new String(bArr, 0, i, str);
        } catch (UnsupportedEncodingException e) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logWarning(e + " EncodingID=" + ((int) s2));
            }
            return new String(bArr, 0, i);
        } catch (Throwable unused) {
            return null;
        }
    }

    private synchronized FileChannel open() throws FontFormatException {
        return open(true);
    }

    private void setCJKSupport(ByteBuffer byteBuffer) {
        if (byteBuffer == null || byteBuffer.capacity() < 50) {
            return;
        }
        int i = byteBuffer.getInt(46);
        this.supportsCJK = (700383232 & i) != 0;
        this.supportsJA = (i & ArchiveFormatCode.ARCHIVE_FORMAT_EMPTY) != 0;
    }

    private void setStrikethroughMetrics(ByteBuffer byteBuffer, int i) {
        if (byteBuffer == null || byteBuffer.capacity() < 30 || i < 0) {
            this.stSize = 0.05f;
            this.stPos = -0.4f;
        } else {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            float f = i;
            this.stSize = asShortBuffer.get(13) / f;
            this.stPos = (-asShortBuffer.get(14)) / f;
        }
    }

    private void setUnderlineMetrics(ByteBuffer byteBuffer, int i) {
        if (byteBuffer == null || byteBuffer.capacity() < 12 || i < 0) {
            this.ulSize = 0.05f;
            this.ulPos = 0.1f;
        } else {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            float f = i;
            this.ulSize = asShortBuffer.get(5) / f;
            this.ulPos = (-asShortBuffer.get(4)) / f;
        }
    }

    private void verify(boolean z) throws FontFormatException {
        open(z);
    }

    @Override // sun.font.FileFont
    public synchronized void close() {
        this.disposerRecord.dispose();
    }

    public String[] getAllFamilyNames() {
        HashSet<String> hashSet = new HashSet<>();
        try {
            initAllNames(1, hashSet);
        } catch (Exception unused) {
        }
        return (String[]) hashSet.toArray(new String[0]);
    }

    public String[] getAllFullNames() {
        HashSet<String> hashSet = new HashSet<>();
        try {
            initAllNames(4, hashSet);
        } catch (Exception unused) {
        }
        return (String[]) hashSet.toArray(new String[0]);
    }

    public DirectoryEntry getDirectoryEntry(int i) {
        for (int i2 = 0; i2 < this.numTables; i2++) {
            DirectoryEntry directoryEntry = this.tableDirectory[i2];
            if (directoryEntry.tag == i) {
                return directoryEntry;
            }
        }
        return null;
    }

    @Override // sun.font.Font2D
    public String getFamilyName(Locale locale) {
        String str;
        if (locale == null) {
            return this.familyName;
        }
        if (locale.equals(this.nameLocale) && (str = this.localeFamilyName) != null) {
            return str;
        }
        String lookupName = lookupName(getLCIDFromLocale(locale), 1);
        return lookupName == null ? this.familyName : lookupName;
    }

    public int getFontCount() {
        return this.directoryCount;
    }

    @Override // sun.font.Font2D
    public String getFontName(Locale locale) {
        String str;
        if (locale == null) {
            return this.fullName;
        }
        if (locale.equals(this.nameLocale) && (str = this.localeFullName) != null) {
            return str;
        }
        String lookupName = lookupName(getLCIDFromLocale(locale), 4);
        return lookupName == null ? this.fullName : lookupName;
    }

    public String getFullName() {
        return this.fullName;
    }

    @Override // sun.font.PhysicalFont
    public Point2D.Float getGlyphPoint(long j, int i, int i2) {
        try {
            return getScaler().getGlyphPoint(j, i, i2);
        } catch (FontScalerException unused) {
            return null;
        }
    }

    @Override // sun.font.Font2D
    public CharToGlyphMapper getMapper() {
        if (this.mapper == null) {
            this.mapper = new TrueTypeGlyphMapper(this);
        }
        return this.mapper;
    }

    @Override // sun.font.Font2D
    public String getPostscriptName() {
        String lookupName = lookupName((short) 1033, 6);
        return lookupName == null ? this.fullName : lookupName;
    }

    @Override // sun.font.FileFont
    public synchronized FontScaler getScaler() {
        if (this.scaler == null) {
            this.scaler = FontScaler.getScaler(this, this.fontIndex, this.supportsCJK, this.fileSize);
        }
        return this.scaler;
    }

    @Override // sun.font.Font2D
    public void getStyleMetrics(float f, float[] fArr, int i) {
        int i2;
        if (this.ulSize == 0.0f && this.ulPos == 0.0f) {
            ByteBuffer tableBuffer = getTableBuffer(1751474532);
            if (tableBuffer == null || tableBuffer.capacity() < 18) {
                i2 = -1;
            } else {
                i2 = tableBuffer.asShortBuffer().get(9) & 65535;
                if (i2 < 16 || i2 > 16384) {
                    i2 = 2048;
                }
            }
            setStrikethroughMetrics(getTableBuffer(os_2Tag), i2);
            setUnderlineMetrics(getTableBuffer(postTag), i2);
        }
        fArr[i] = this.stPos * f;
        fArr[i + 1] = this.stSize * f;
        fArr[i + 2] = this.ulPos * f;
        fArr[i + 3] = this.ulSize * f;
    }

    public ByteBuffer getTableBuffer(int i) {
        DirectoryEntry directoryEntry;
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 >= this.numTables) {
                directoryEntry = null;
                break;
            }
            directoryEntry = this.tableDirectory[i3];
            if (directoryEntry.tag == i) {
                break;
            }
            i3++;
        }
        if (directoryEntry == null || (i2 = directoryEntry.length) == 0 || directoryEntry.offset + i2 > this.fileSize) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i2);
        synchronized (this) {
            try {
                try {
                    if (this.disposerRecord.channel == null) {
                        open();
                    }
                    this.disposerRecord.channel.position(directoryEntry.offset);
                    int read = this.disposerRecord.channel.read(allocate);
                    allocate.flip();
                    if (read < directoryEntry.length) {
                        return null;
                    }
                    return allocate;
                } catch (FontFormatException unused) {
                    return null;
                } catch (ClosedChannelException unused2) {
                    Thread.interrupted();
                    close();
                    return getTableBuffer(i);
                } catch (IOException unused3) {
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // sun.font.Font2D
    public byte[] getTableBytes(int i) {
        ByteBuffer tableBuffer = getTableBuffer(i);
        if (tableBuffer == null) {
            return null;
        }
        if (tableBuffer.hasArray()) {
            try {
                return tableBuffer.array();
            } catch (Exception unused) {
            }
        }
        byte[] bArr = new byte[this.getTableSize(i)];
        tableBuffer.get(bArr);
        return bArr;
    }

    public int getTableOffset(int i) {
        for (int i2 = 0; i2 < this.numTables; i2++) {
            DirectoryEntry directoryEntry = this.tableDirectory[i2];
            if (directoryEntry.tag == i) {
                return directoryEntry.offset;
            }
        }
        return 0;
    }

    public int getTableSize(int i) {
        for (int i2 = 0; i2 < this.numTables; i2++) {
            DirectoryEntry directoryEntry = this.tableDirectory[i2];
            if (directoryEntry.tag == i) {
                return directoryEntry.length;
            }
        }
        return 0;
    }

    @Override // sun.font.Font2D
    public int getWeight() {
        int i = this.fontWeight;
        return i > 0 ? i : super.getWeight();
    }

    @Override // sun.font.Font2D
    public int getWidth() {
        int i = this.fontWidth;
        return i > 0 ? i : super.getWidth();
    }

    @Override // sun.font.Font2D
    public boolean hasSupplementaryChars() {
        return ((TrueTypeGlyphMapper) getMapper()).hasSupplementaryChars();
    }

    public void init(int i) throws FontFormatException {
        int i2;
        ByteBuffer readBlock = readBlock(0, 12);
        try {
            int i3 = readBlock.getInt();
            if (i3 == 65536 || i3 == 1330926671 || i3 == 1953658213) {
                this.fontDataSize = this.fileSize;
                i2 = 0;
            } else {
                if (i3 != 1953784678) {
                    throw new FontFormatException("Unsupported sfnt " + getPublicFileName());
                }
                readBlock.getInt();
                int i4 = readBlock.getInt();
                this.directoryCount = i4;
                if (i >= i4) {
                    throw new FontFormatException("Bad collection index");
                }
                this.fontIndex = i;
                i2 = readBlock((i * 4) + 12, 4).getInt();
                this.fontDataSize = Math.max(0, this.fileSize - i2);
            }
            short s = readBlock(i2 + 4, 2).getShort();
            this.numTables = s;
            int i5 = i2 + 12;
            this.directoryOffset = i5;
            IntBuffer asIntBuffer = readBlock(i5, s * 16).asIntBuffer();
            this.tableDirectory = new DirectoryEntry[this.numTables];
            for (int i6 = 0; i6 < this.numTables; i6++) {
                DirectoryEntry[] directoryEntryArr = this.tableDirectory;
                DirectoryEntry directoryEntry = new DirectoryEntry();
                directoryEntryArr[i6] = directoryEntry;
                directoryEntry.tag = asIntBuffer.get();
                asIntBuffer.get();
                directoryEntry.offset = asIntBuffer.get() & Integer.MAX_VALUE;
                int i7 = asIntBuffer.get() & Integer.MAX_VALUE;
                directoryEntry.length = i7;
                if (directoryEntry.offset + i7 > this.fileSize) {
                    throw new FontFormatException("bad table, tag=" + directoryEntry.tag);
                }
            }
            if (getDirectoryEntry(1751474532) == null) {
                throw new FontFormatException("missing head table");
            }
            if (getDirectoryEntry(maxpTag) == null) {
                throw new FontFormatException("missing maxp table");
            }
            if (getDirectoryEntry(hmtxTag) != null && getDirectoryEntry(hheaTag) == null) {
                throw new FontFormatException("missing hhea table");
            }
            initNames();
            if (this.familyName == null || this.fullName == null) {
                throw new FontFormatException("Font name not found");
            }
            ByteBuffer tableBuffer = getTableBuffer(os_2Tag);
            setStyle(tableBuffer);
            setCJKSupport(tableBuffer);
        } catch (Exception e) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logSevere(e.toString());
            }
            if (!(e instanceof FontFormatException)) {
                throw new FontFormatException(e.toString());
            }
            throw ((FontFormatException) e);
        }
    }

    public void initAllNames(int i, HashSet<String> hashSet) {
        byte[] bArr = new byte[256];
        ByteBuffer tableBuffer = getTableBuffer(1851878757);
        if (tableBuffer != null) {
            ShortBuffer asShortBuffer = tableBuffer.asShortBuffer();
            asShortBuffer.get();
            short s = asShortBuffer.get();
            int i2 = asShortBuffer.get() & 65535;
            for (int i3 = 0; i3 < s; i3++) {
                short s2 = asShortBuffer.get();
                if (s2 != 3) {
                    asShortBuffer.position(asShortBuffer.position() + 5);
                } else {
                    short s3 = asShortBuffer.get();
                    asShortBuffer.get();
                    short s4 = asShortBuffer.get();
                    int i4 = asShortBuffer.get() & 65535;
                    int i5 = (asShortBuffer.get() & 65535) + i2;
                    if (s4 == i) {
                        tableBuffer.position(i5);
                        tableBuffer.get(bArr, 0, i4);
                        hashSet.add(makeString(bArr, i4, s2, s3));
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0085, code lost:
    
        if (r12 != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b7, code lost:
    
        if (r12 != false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initNames() {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.TrueTypeFont.initNames():void");
    }

    public String lookupName(short s, int i) {
        byte[] bArr = new byte[1024];
        ByteBuffer tableBuffer = getTableBuffer(1851878757);
        String str = null;
        if (tableBuffer != null) {
            ShortBuffer asShortBuffer = tableBuffer.asShortBuffer();
            asShortBuffer.get();
            short s2 = asShortBuffer.get();
            short s3 = 65535;
            int i2 = asShortBuffer.get() & 65535;
            int i3 = 0;
            while (i3 < s2) {
                short s4 = asShortBuffer.get();
                if (s4 != 3) {
                    asShortBuffer.position(asShortBuffer.position() + 5);
                } else {
                    short s5 = asShortBuffer.get();
                    short s6 = asShortBuffer.get();
                    short s7 = asShortBuffer.get();
                    int i4 = asShortBuffer.get() & s3;
                    int i5 = (asShortBuffer.get() & s3) + i2;
                    if (s7 == i && ((str == null && s6 == 1033) || s6 == s)) {
                        tableBuffer.position(i5);
                        tableBuffer.get(bArr, 0, i4);
                        str = makeString(bArr, i4, s4, s5);
                        if (s6 == s) {
                            return str;
                        }
                        i3++;
                        s3 = 65535;
                    }
                }
                i3++;
                s3 = 65535;
            }
        }
        return str;
    }

    public int readBlock(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = 0;
        try {
        } catch (FontFormatException e) {
            if (FontUtilities.isLogging()) {
                FontUtilities.getLogger().severe("While reading " + this.platName, e);
            }
            deregisterFontAndClearStrikeCache();
            return -1;
        } catch (ClosedChannelException unused) {
            Thread.interrupted();
            close();
            return readBlock(byteBuffer, i, i2);
        } catch (IOException e2) {
            if (FontUtilities.isLogging()) {
                FontUtilities.getLogger().severe("While reading " + this.platName, e2);
            }
            if (0 == 0) {
                deregisterFontAndClearStrikeCache();
                return -1;
            }
        }
        synchronized (this) {
            if (this.disposerRecord.channel == null) {
                open();
            }
            int i4 = i + i2;
            int i5 = this.fileSize;
            if (i4 > i5) {
                if (i >= i5) {
                    if (FontUtilities.isLogging()) {
                        FontUtilities.logSevere("Read offset is " + i + " file size is " + this.fileSize + " file is " + this.platName);
                    }
                    return -1;
                }
                i2 = i5 - i;
            }
            byteBuffer.clear();
            this.disposerRecord.channel.position(i);
            while (i3 < i2) {
                int read = this.disposerRecord.channel.read(byteBuffer);
                if (read == -1) {
                    String str = "Unexpected EOF " + this;
                    int size = (int) this.disposerRecord.channel.size();
                    if (size != this.fileSize) {
                        str = str + " File size was " + this.fileSize + " and now is " + size;
                    }
                    if (FontUtilities.isLogging()) {
                        FontUtilities.logSevere(str);
                    }
                    if (i3 <= i2 / 2 && i3 <= 16384) {
                        throw new IOException(str);
                    }
                    byteBuffer.flip();
                    if (FontUtilities.isLogging()) {
                        str = "Returning " + i3 + " bytes instead of " + i2;
                        FontUtilities.logSevere(str);
                    }
                    throw new IOException(str);
                }
                i3 += read;
            }
            byteBuffer.flip();
            if (i3 > i2) {
                i3 = i2;
            }
            return i3;
        }
    }

    public byte[] readBytes(int i, int i2) {
        ByteBuffer readBlock = readBlock(i, i2);
        if (readBlock.hasArray()) {
            return readBlock.array();
        }
        byte[] bArr = new byte[readBlock.limit()];
        readBlock.get(bArr);
        return bArr;
    }

    @Override // sun.font.Font2D
    public void setStyle() {
        setStyle(getTableBuffer(os_2Tag));
    }

    @Override // sun.font.Font2D
    public boolean supportsEncoding(String str) {
        if (str == null) {
            str = getCodePage();
        }
        if ("".equals(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals("gb18030")) {
            lowerCase = "gbk";
        } else if (lowerCase.equals("ms950_hkscs")) {
            lowerCase = "ms950";
        }
        ByteBuffer tableBuffer = getTableBuffer(os_2Tag);
        if (tableBuffer != null && tableBuffer.capacity() >= 86) {
            int i = tableBuffer.getInt(78);
            int i2 = 0;
            while (true) {
                String[] strArr = encoding_mapping;
                if (i2 >= strArr.length) {
                    break;
                }
                if (strArr[i2].equals(lowerCase) && ((1 << i2) & i) != 0) {
                    return true;
                }
                i2++;
            }
        }
        return false;
    }

    public boolean supportsJA() {
        return this.supportsJA;
    }

    public String toString() {
        return "** TrueType Font: Family=" + this.familyName + " Name=" + this.fullName + " style=" + this.style + " fileName=" + getPublicFileName();
    }

    @Override // sun.font.Font2D
    public boolean useAAForPtSize(int i) {
        char[] gaspTable = getGaspTable();
        if (gaspTable.length <= 0) {
            if (this.style == 1) {
                return true;
            }
            return i <= 8 || i >= 18;
        }
        for (int i2 = 0; i2 < gaspTable.length; i2 += 2) {
            if (i <= gaspTable[i2]) {
                return (gaspTable[i2 + 1] & 2) != 0;
            }
        }
        return true;
    }

    public boolean useEmbeddedBitmapsForSize(int i) {
        if (!this.supportsCJK || getDirectoryEntry(EBLCTag) == null) {
            return false;
        }
        ByteBuffer tableBuffer = getTableBuffer(EBLCTag);
        int i2 = tableBuffer.getInt(4);
        for (int i3 = 0; i3 < i2; i3++) {
            if ((tableBuffer.get((i3 * 48) + 8 + 45) & 255) == i) {
                return true;
            }
        }
        return false;
    }

    public TrueTypeFont(String str, Object obj, int i, boolean z, boolean z2) throws FontFormatException {
        super(str, obj);
        this.disposerRecord = new TTDisposerRecord();
        this.fontIndex = 0;
        this.directoryCount = 1;
        this.fontWidth = 0;
        this.fontWeight = 0;
        this.useJavaRasterizer = z;
        this.fontRank = 3;
        try {
            verify(z2);
            init(i);
            if (!z2) {
                close();
            }
            Disposer.addObjectRecord(this, this.disposerRecord);
        } catch (Throwable th) {
            close();
            if (th instanceof FontFormatException) {
                throw th;
            }
            throw new FontFormatException("Unexpected runtime exception.");
        }
    }

    private synchronized FileChannel open(boolean z) throws FontFormatException {
        if (this.disposerRecord.channel == null) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logInfo("open TTF: " + this.platName);
            }
            try {
                try {
                    try {
                        this.disposerRecord.channel = ((RandomAccessFile) AccessController.doPrivileged(new PrivilegedExceptionAction<RandomAccessFile>() { // from class: sun.font.TrueTypeFont.1
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // java.security.PrivilegedExceptionAction
                            public RandomAccessFile run() throws FileNotFoundException {
                                return new RandomAccessFile(TrueTypeFont.this.platName, "r");
                            }
                        })).getChannel();
                        this.fileSize = (int) this.disposerRecord.channel.size();
                        if (z) {
                            FontManager fontManagerFactory = FontManagerFactory.getInstance();
                            if (fontManagerFactory instanceof SunFontManager) {
                                ((SunFontManager) fontManagerFactory).addToPool(this);
                            }
                        }
                    } catch (IOException e) {
                        close();
                        throw new FontFormatException(e.toString());
                    }
                } catch (PrivilegedActionException e2) {
                    e = e2;
                    close();
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    throw new FontFormatException(e.toString());
                }
            } catch (ClosedChannelException unused) {
                Thread.interrupted();
                close();
                open();
            }
        }
        return this.disposerRecord.channel;
    }

    private void setStyle(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return;
        }
        if (byteBuffer.capacity() >= 8) {
            this.fontWeight = byteBuffer.getChar(4) & 65535;
            this.fontWidth = byteBuffer.getChar(6) & 65535;
        }
        if (byteBuffer.capacity() < 64) {
            super.setStyle();
            return;
        }
        int i = byteBuffer.getChar(62) & 65535;
        int i2 = i & 1;
        int i3 = i & 32;
        int i4 = i & 64;
        if (i4 != 0 && (i2 | i3) != 0) {
            super.setStyle();
            return;
        }
        if ((i4 | i2 | i3) == 0) {
            super.setStyle();
            return;
        }
        int i5 = i3 | i2;
        if (i5 == 1) {
            this.style = 2;
        } else if (i5 == 32) {
            this.style = 1;
        } else {
            if (i5 != 33) {
                return;
            }
            this.style = 3;
        }
    }

    @Override // sun.font.FileFont
    public ByteBuffer readBlock(int i, int i2) {
        ByteBuffer allocate = ByteBuffer.allocate(i2);
        try {
        } catch (FontFormatException unused) {
            return null;
        } catch (ClosedChannelException unused2) {
            Thread.interrupted();
            close();
            readBlock(allocate, i, i2);
        } catch (IOException unused3) {
            return null;
        }
        synchronized (this) {
            if (this.disposerRecord.channel == null) {
                open();
            }
            int i3 = i + i2;
            int i4 = this.fileSize;
            if (i3 > i4) {
                if (i > i4) {
                    return null;
                }
                allocate = ByteBuffer.allocate(i4 - i);
            }
            this.disposerRecord.channel.position(i);
            this.disposerRecord.channel.read(allocate);
            allocate.flip();
            return allocate;
        }
    }
}
