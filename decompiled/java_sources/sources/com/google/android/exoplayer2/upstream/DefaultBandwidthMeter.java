package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.couchbase.lite.internal.core.C4Constants;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.NetworkTypeObserver;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.xml.XmlEscapers;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import com.onyx.android.sdk.base.scheduler.SchedulerManager;
import com.onyx.android.sdk.data.common.data.template.OfficialCoverType;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.sunia.HTREnginev2.rve;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.text.Typography;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.logging.log4j.util.Chars;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes5.dex */
public final class DefaultBandwidthMeter implements BandwidthMeter, TransferListener {
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;

    /* renamed from: p */
    public static final int f27990p = 0;

    /* renamed from: q */
    public static final int f27991q = 1;

    /* renamed from: r */
    public static final int f27992r = 2;

    /* renamed from: s */
    public static final int f27993s = 3;

    /* renamed from: t */
    public static final int f27994t = 4;

    /* renamed from: u */
    public static final int f27995u = 5;

    /* renamed from: v */
    @Nullable
    public static DefaultBandwidthMeter f27996v = null;

    /* renamed from: w */
    public static final int f27997w = 2000;

    /* renamed from: x */
    public static final int f27998x = 524288;

    /* renamed from: a */
    public final ImmutableMap<Integer, Long> f27999a;

    /* renamed from: b */
    public final BandwidthMeter.EventListener.EventDispatcher f28000b;

    /* renamed from: c */
    public final SlidingPercentile f28001c;

    /* renamed from: d */
    public final Clock f28002d;

    /* renamed from: e */
    public final boolean f28003e;

    /* renamed from: f */
    public int f28004f;

    /* renamed from: g */
    public long f28005g;

    /* renamed from: h */
    public long f28006h;

    /* renamed from: i */
    public int f28007i;

    /* renamed from: j */
    public long f28008j;

    /* renamed from: k */
    public long f28009k;

    /* renamed from: l */
    public long f28010l;

    /* renamed from: m */
    public long f28011m;

    /* renamed from: n */
    public boolean f28012n;

    /* renamed from: o */
    public int f28013o;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = ImmutableList.m26166of(5400000L, 3300000L, 2000000L, 1300000L, 760000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = ImmutableList.m26166of(1700000L, 820000L, 450000L, 180000L, 130000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = ImmutableList.m26166of(2300000L, 1300000L, 1000000L, 820000L, 570000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = ImmutableList.m26166of(3400000L, 2000000L, 1400000L, 1000000L, 620000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = ImmutableList.m26166of(7500000L, 5200000L, 3700000L, 1800000L, 1100000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = ImmutableList.m26166of(3300000L, 1900000L, 1700000L, 1500000L, 1200000L);

    /* renamed from: c */
    public static int[] m21313c(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 2083:
                if (str.equals("AD")) {
                    c = 0;
                    break;
                }
                break;
            case 2084:
                if (str.equals("AE")) {
                    c = 1;
                    break;
                }
                break;
            case 2085:
                if (str.equals("AF")) {
                    c = 2;
                    break;
                }
                break;
            case 2086:
                if (str.equals("AG")) {
                    c = 3;
                    break;
                }
                break;
            case 2088:
                if (str.equals("AI")) {
                    c = 4;
                    break;
                }
                break;
            case 2091:
                if (str.equals("AL")) {
                    c = 5;
                    break;
                }
                break;
            case 2092:
                if (str.equals("AM")) {
                    c = 6;
                    break;
                }
                break;
            case 2094:
                if (str.equals("AO")) {
                    c = 7;
                    break;
                }
                break;
            case 2096:
                if (str.equals("AQ")) {
                    c = '\b';
                    break;
                }
                break;
            case 2097:
                if (str.equals("AR")) {
                    c = '\t';
                    break;
                }
                break;
            case 2098:
                if (str.equals("AS")) {
                    c = '\n';
                    break;
                }
                break;
            case 2099:
                if (str.equals("AT")) {
                    c = 11;
                    break;
                }
                break;
            case 2100:
                if (str.equals("AU")) {
                    c = '\f';
                    break;
                }
                break;
            case 2102:
                if (str.equals("AW")) {
                    c = '\r';
                    break;
                }
                break;
            case 2103:
                if (str.equals("AX")) {
                    c = 14;
                    break;
                }
                break;
            case 2105:
                if (str.equals("AZ")) {
                    c = 15;
                    break;
                }
                break;
            case 2111:
                if (str.equals("BA")) {
                    c = 16;
                    break;
                }
                break;
            case 2112:
                if (str.equals("BB")) {
                    c = 17;
                    break;
                }
                break;
            case 2114:
                if (str.equals("BD")) {
                    c = 18;
                    break;
                }
                break;
            case 2115:
                if (str.equals("BE")) {
                    c = 19;
                    break;
                }
                break;
            case 2116:
                if (str.equals("BF")) {
                    c = 20;
                    break;
                }
                break;
            case 2117:
                if (str.equals("BG")) {
                    c = 21;
                    break;
                }
                break;
            case 2118:
                if (str.equals("BH")) {
                    c = 22;
                    break;
                }
                break;
            case 2119:
                if (str.equals("BI")) {
                    c = 23;
                    break;
                }
                break;
            case 2120:
                if (str.equals("BJ")) {
                    c = 24;
                    break;
                }
                break;
            case 2122:
                if (str.equals("BL")) {
                    c = 25;
                    break;
                }
                break;
            case 2123:
                if (str.equals("BM")) {
                    c = 26;
                    break;
                }
                break;
            case 2124:
                if (str.equals("BN")) {
                    c = 27;
                    break;
                }
                break;
            case 2125:
                if (str.equals("BO")) {
                    c = rve.f83545n;
                    break;
                }
                break;
            case 2127:
                if (str.equals("BQ")) {
                    c = rve.f83546o;
                    break;
                }
                break;
            case 2128:
                if (str.equals("BR")) {
                    c = rve.f83547p;
                    break;
                }
                break;
            case 2129:
                if (str.equals("BS")) {
                    c = XmlEscapers.f35498b;
                    break;
                }
                break;
            case 2130:
                if (str.equals("BT")) {
                    c = ' ';
                    break;
                }
                break;
            case 2133:
                if (str.equals("BW")) {
                    c = PublicSuffixDatabase.f103895g;
                    break;
                }
                break;
            case 2135:
                if (str.equals("BY")) {
                    c = '\"';
                    break;
                }
                break;
            case 2136:
                if (str.equals("BZ")) {
                    c = '#';
                    break;
                }
                break;
            case 2142:
                if (str.equals("CA")) {
                    c = '$';
                    break;
                }
                break;
            case 2145:
                if (str.equals("CD")) {
                    c = '%';
                    break;
                }
                break;
            case 2147:
                if (str.equals("CF")) {
                    c = '&';
                    break;
                }
                break;
            case 2148:
                if (str.equals("CG")) {
                    c = Chars.QUOTE;
                    break;
                }
                break;
            case 2149:
                if (str.equals("CH")) {
                    c = '(';
                    break;
                }
                break;
            case 2150:
                if (str.equals("CI")) {
                    c = ')';
                    break;
                }
                break;
            case 2152:
                if (str.equals("CK")) {
                    c = '*';
                    break;
                }
                break;
            case 2153:
                if (str.equals("CL")) {
                    c = PhoneNumberUtil.f36455s;
                    break;
                }
                break;
            case 2154:
                if (str.equals("CM")) {
                    c = ',';
                    break;
                }
                break;
            case 2155:
                if (str.equals(BaseTLSIdentity.CERT_ATTRIBUTE_COMMON_NAME)) {
                    c = '-';
                    break;
                }
                break;
            case 2156:
                if (str.equals("CO")) {
                    c = '.';
                    break;
                }
                break;
            case 2159:
                if (str.equals("CR")) {
                    c = '/';
                    break;
                }
                break;
            case 2162:
                if (str.equals("CU")) {
                    c = '0';
                    break;
                }
                break;
            case 2163:
                if (str.equals("CV")) {
                    c = '1';
                    break;
                }
                break;
            case 2164:
                if (str.equals("CW")) {
                    c = '2';
                    break;
                }
                break;
            case 2165:
                if (str.equals("CX")) {
                    c = '3';
                    break;
                }
                break;
            case 2166:
                if (str.equals("CY")) {
                    c = '4';
                    break;
                }
                break;
            case 2167:
                if (str.equals("CZ")) {
                    c = '5';
                    break;
                }
                break;
            case 2177:
                if (str.equals("DE")) {
                    c = '6';
                    break;
                }
                break;
            case 2182:
                if (str.equals("DJ")) {
                    c = '7';
                    break;
                }
                break;
            case 2183:
                if (str.equals("DK")) {
                    c = '8';
                    break;
                }
                break;
            case 2185:
                if (str.equals("DM")) {
                    c = '9';
                    break;
                }
                break;
            case 2187:
                if (str.equals("DO")) {
                    c = ':';
                    break;
                }
                break;
            case 2198:
                if (str.equals("DZ")) {
                    c = ';';
                    break;
                }
                break;
            case 2206:
                if (str.equals("EC")) {
                    c = '<';
                    break;
                }
                break;
            case 2208:
                if (str.equals("EE")) {
                    c = '=';
                    break;
                }
                break;
            case 2210:
                if (str.equals("EG")) {
                    c = '>';
                    break;
                }
                break;
            case 2221:
                if (str.equals("ER")) {
                    c = '?';
                    break;
                }
                break;
            case 2222:
                if (str.equals("ES")) {
                    c = '@';
                    break;
                }
                break;
            case 2223:
                if (str.equals("ET")) {
                    c = 'A';
                    break;
                }
                break;
            case 2243:
                if (str.equals("FI")) {
                    c = 'B';
                    break;
                }
                break;
            case 2244:
                if (str.equals("FJ")) {
                    c = 'C';
                    break;
                }
                break;
            case 2245:
                if (str.equals("FK")) {
                    c = 'D';
                    break;
                }
                break;
            case 2247:
                if (str.equals("FM")) {
                    c = 'E';
                    break;
                }
                break;
            case 2249:
                if (str.equals("FO")) {
                    c = 'F';
                    break;
                }
                break;
            case 2252:
                if (str.equals("FR")) {
                    c = 'G';
                    break;
                }
                break;
            case 2266:
                if (str.equals("GA")) {
                    c = 'H';
                    break;
                }
                break;
            case 2267:
                if (str.equals("GB")) {
                    c = 'I';
                    break;
                }
                break;
            case 2269:
                if (str.equals("GD")) {
                    c = 'J';
                    break;
                }
                break;
            case 2270:
                if (str.equals("GE")) {
                    c = 'K';
                    break;
                }
                break;
            case 2271:
                if (str.equals("GF")) {
                    c = 'L';
                    break;
                }
                break;
            case 2272:
                if (str.equals("GG")) {
                    c = 'M';
                    break;
                }
                break;
            case 2273:
                if (str.equals("GH")) {
                    c = 'N';
                    break;
                }
                break;
            case 2274:
                if (str.equals("GI")) {
                    c = 'O';
                    break;
                }
                break;
            case 2277:
                if (str.equals("GL")) {
                    c = 'P';
                    break;
                }
                break;
            case 2278:
                if (str.equals("GM")) {
                    c = 'Q';
                    break;
                }
                break;
            case 2279:
                if (str.equals(BaseTLSIdentity.CERT_ATTRIBUTE_GIVEN_NAME)) {
                    c = 'R';
                    break;
                }
                break;
            case 2281:
                if (str.equals("GP")) {
                    c = 'S';
                    break;
                }
                break;
            case 2282:
                if (str.equals("GQ")) {
                    c = 'T';
                    break;
                }
                break;
            case 2283:
                if (str.equals("GR")) {
                    c = 'U';
                    break;
                }
                break;
            case 2285:
                if (str.equals("GT")) {
                    c = 'V';
                    break;
                }
                break;
            case 2286:
                if (str.equals("GU")) {
                    c = 'W';
                    break;
                }
                break;
            case 2288:
                if (str.equals("GW")) {
                    c = 'X';
                    break;
                }
                break;
            case 2290:
                if (str.equals("GY")) {
                    c = 'Y';
                    break;
                }
                break;
            case 2307:
                if (str.equals("HK")) {
                    c = 'Z';
                    break;
                }
                break;
            case 2310:
                if (str.equals("HN")) {
                    c = '[';
                    break;
                }
                break;
            case 2314:
                if (str.equals("HR")) {
                    c = '\\';
                    break;
                }
                break;
            case 2316:
                if (str.equals("HT")) {
                    c = ']';
                    break;
                }
                break;
            case 2317:
                if (str.equals("HU")) {
                    c = '^';
                    break;
                }
                break;
            case 2331:
                if (str.equals("ID")) {
                    c = NameUtil.USCORE;
                    break;
                }
                break;
            case 2332:
                if (str.equals("IE")) {
                    c = '`';
                    break;
                }
                break;
            case 2339:
                if (str.equals("IL")) {
                    c = 'a';
                    break;
                }
                break;
            case 2340:
                if (str.equals("IM")) {
                    c = 'b';
                    break;
                }
                break;
            case 2341:
                if (str.equals("IN")) {
                    c = 'c';
                    break;
                }
                break;
            case 2342:
                if (str.equals(SchedulerManager.f40832IO)) {
                    c = 'd';
                    break;
                }
                break;
            case 2344:
                if (str.equals("IQ")) {
                    c = 'e';
                    break;
                }
                break;
            case 2345:
                if (str.equals("IR")) {
                    c = 'f';
                    break;
                }
                break;
            case 2346:
                if (str.equals("IS")) {
                    c = 'g';
                    break;
                }
                break;
            case 2347:
                if (str.equals("IT")) {
                    c = 'h';
                    break;
                }
                break;
            case 2363:
                if (str.equals("JE")) {
                    c = 'i';
                    break;
                }
                break;
            case 2371:
                if (str.equals("JM")) {
                    c = 'j';
                    break;
                }
                break;
            case 2373:
                if (str.equals("JO")) {
                    c = 'k';
                    break;
                }
                break;
            case 2374:
                if (str.equals("JP")) {
                    c = 'l';
                    break;
                }
                break;
            case 2394:
                if (str.equals("KE")) {
                    c = 'm';
                    break;
                }
                break;
            case 2396:
                if (str.equals(ExpandedProductParsedResult.KILOGRAM)) {
                    c = 'n';
                    break;
                }
                break;
            case 2397:
                if (str.equals("KH")) {
                    c = 'o';
                    break;
                }
                break;
            case 2398:
                if (str.equals("KI")) {
                    c = 'p';
                    break;
                }
                break;
            case 2402:
                if (str.equals("KM")) {
                    c = 'q';
                    break;
                }
                break;
            case 2405:
                if (str.equals("KP")) {
                    c = 'r';
                    break;
                }
                break;
            case 2407:
                if (str.equals("KR")) {
                    c = 's';
                    break;
                }
                break;
            case 2412:
                if (str.equals("KW")) {
                    c = 't';
                    break;
                }
                break;
            case 2414:
                if (str.equals("KY")) {
                    c = 'u';
                    break;
                }
                break;
            case 2415:
                if (str.equals("KZ")) {
                    c = 'v';
                    break;
                }
                break;
            case 2421:
                if (str.equals("LA")) {
                    c = 'w';
                    break;
                }
                break;
            case 2422:
                if (str.equals(ExpandedProductParsedResult.POUND)) {
                    c = 'x';
                    break;
                }
                break;
            case 2423:
                if (str.equals("LC")) {
                    c = 'y';
                    break;
                }
                break;
            case 2429:
                if (str.equals("LI")) {
                    c = 'z';
                    break;
                }
                break;
            case 2431:
                if (str.equals("LK")) {
                    c = '{';
                    break;
                }
                break;
            case 2438:
                if (str.equals("LR")) {
                    c = '|';
                    break;
                }
                break;
            case 2439:
                if (str.equals("LS")) {
                    c = '}';
                    break;
                }
                break;
            case 2440:
                if (str.equals("LT")) {
                    c = '~';
                    break;
                }
                break;
            case 2441:
                if (str.equals("LU")) {
                    c = Ascii.MAX;
                    break;
                }
                break;
            case 2442:
                if (str.equals("LV")) {
                    c = 128;
                    break;
                }
                break;
            case 2445:
                if (str.equals("LY")) {
                    c = HighLevelEncoder.f38476a;
                    break;
                }
                break;
            case 2452:
                if (str.equals("MA")) {
                    c = 130;
                    break;
                }
                break;
            case 2454:
                if (str.equals("MC")) {
                    c = 131;
                    break;
                }
                break;
            case 2455:
                if (str.equals("MD")) {
                    c = 132;
                    break;
                }
                break;
            case 2456:
                if (str.equals("ME")) {
                    c = 133;
                    break;
                }
                break;
            case 2457:
                if (str.equals("MF")) {
                    c = 134;
                    break;
                }
                break;
            case 2458:
                if (str.equals("MG")) {
                    c = 135;
                    break;
                }
                break;
            case 2459:
                if (str.equals("MH")) {
                    c = 136;
                    break;
                }
                break;
            case 2462:
                if (str.equals("MK")) {
                    c = 137;
                    break;
                }
                break;
            case 2463:
                if (str.equals(HwrRecognizerConstant.RECOGNIZER_ML)) {
                    c = 138;
                    break;
                }
                break;
            case 2464:
                if (str.equals("MM")) {
                    c = 139;
                    break;
                }
                break;
            case 2465:
                if (str.equals("MN")) {
                    c = 140;
                    break;
                }
                break;
            case 2466:
                if (str.equals("MO")) {
                    c = 141;
                    break;
                }
                break;
            case 2467:
                if (str.equals("MP")) {
                    c = 142;
                    break;
                }
                break;
            case 2468:
                if (str.equals("MQ")) {
                    c = 143;
                    break;
                }
                break;
            case 2469:
                if (str.equals("MR")) {
                    c = 144;
                    break;
                }
                break;
            case 2470:
                if (str.equals("MS")) {
                    c = 145;
                    break;
                }
                break;
            case 2471:
                if (str.equals("MT")) {
                    c = 146;
                    break;
                }
                break;
            case 2472:
                if (str.equals("MU")) {
                    c = 147;
                    break;
                }
                break;
            case 2473:
                if (str.equals("MV")) {
                    c = 148;
                    break;
                }
                break;
            case 2474:
                if (str.equals("MW")) {
                    c = 149;
                    break;
                }
                break;
            case 2475:
                if (str.equals("MX")) {
                    c = 150;
                    break;
                }
                break;
            case 2476:
                if (str.equals("MY")) {
                    c = 151;
                    break;
                }
                break;
            case 2477:
                if (str.equals("MZ")) {
                    c = 152;
                    break;
                }
                break;
            case 2483:
                if (str.equals("NA")) {
                    c = 153;
                    break;
                }
                break;
            case 2485:
                if (str.equals("NC")) {
                    c = 154;
                    break;
                }
                break;
            case 2487:
                if (str.equals("NE")) {
                    c = 155;
                    break;
                }
                break;
            case 2489:
                if (str.equals("NG")) {
                    c = 156;
                    break;
                }
                break;
            case 2491:
                if (str.equals("NI")) {
                    c = 157;
                    break;
                }
                break;
            case 2494:
                if (str.equals("NL")) {
                    c = 158;
                    break;
                }
                break;
            case 2497:
                if (str.equals(HlsPlaylistParser.f26143N0)) {
                    c = 159;
                    break;
                }
                break;
            case 2498:
                if (str.equals("NP")) {
                    c = 160;
                    break;
                }
                break;
            case DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS /* 2500 */:
                if (str.equals("NR")) {
                    c = 161;
                    break;
                }
                break;
            case OfficialCoverType.COVER_ILLUSTRATION3_HORIZONTAL /* 2503 */:
                if (str.equals("NU")) {
                    c = Typography.cent;
                    break;
                }
                break;
            case OfficialCoverType.COVER_LITTLE_RABBIT1_HORIZONTAL /* 2508 */:
                if (str.equals("NZ")) {
                    c = Typography.pound;
                    break;
                }
                break;
            case 2526:
                if (str.equals("OM")) {
                    c = 164;
                    break;
                }
                break;
            case 2545:
                if (str.equals("PA")) {
                    c = 165;
                    break;
                }
                break;
            case 2549:
                if (str.equals("PE")) {
                    c = 166;
                    break;
                }
                break;
            case 2550:
                if (str.equals("PF")) {
                    c = Typography.section;
                    break;
                }
                break;
            case 2551:
                if (str.equals("PG")) {
                    c = 168;
                    break;
                }
                break;
            case 2552:
                if (str.equals("PH")) {
                    c = Typography.copyright;
                    break;
                }
                break;
            case 2555:
                if (str.equals("PK")) {
                    c = 170;
                    break;
                }
                break;
            case 2556:
                if (str.equals("PL")) {
                    c = 171;
                    break;
                }
                break;
            case 2557:
                if (str.equals("PM")) {
                    c = 172;
                    break;
                }
                break;
            case 2562:
                if (str.equals("PR")) {
                    c = 173;
                    break;
                }
                break;
            case 2563:
                if (str.equals("PS")) {
                    c = Typography.registered;
                    break;
                }
                break;
            case 2564:
                if (str.equals("PT")) {
                    c = 175;
                    break;
                }
                break;
            case 2567:
                if (str.equals("PW")) {
                    c = Typography.degree;
                    break;
                }
                break;
            case 2569:
                if (str.equals("PY")) {
                    c = Typography.plusMinus;
                    break;
                }
                break;
            case 2576:
                if (str.equals("QA")) {
                    c = 178;
                    break;
                }
                break;
            case 2611:
                if (str.equals("RE")) {
                    c = 179;
                    break;
                }
                break;
            case 2621:
                if (str.equals("RO")) {
                    c = 180;
                    break;
                }
                break;
            case 2625:
                if (str.equals("RS")) {
                    c = 181;
                    break;
                }
                break;
            case 2627:
                if (str.equals("RU")) {
                    c = Typography.paragraph;
                    break;
                }
                break;
            case 2629:
                if (str.equals("RW")) {
                    c = 183;
                    break;
                }
                break;
            case 2638:
                if (str.equals("SA")) {
                    c = 184;
                    break;
                }
                break;
            case 2639:
                if (str.equals("SB")) {
                    c = 185;
                    break;
                }
                break;
            case 2640:
                if (str.equals("SC")) {
                    c = 186;
                    break;
                }
                break;
            case 2641:
                if (str.equals("SD")) {
                    c = 187;
                    break;
                }
                break;
            case 2642:
                if (str.equals("SE")) {
                    c = 188;
                    break;
                }
                break;
            case 2644:
                if (str.equals("SG")) {
                    c = Typography.half;
                    break;
                }
                break;
            case 2645:
                if (str.equals("SH")) {
                    c = 190;
                    break;
                }
                break;
            case 2646:
                if (str.equals("SI")) {
                    c = 191;
                    break;
                }
                break;
            case 2647:
                if (str.equals("SJ")) {
                    c = 192;
                    break;
                }
                break;
            case 2648:
                if (str.equals("SK")) {
                    c = 193;
                    break;
                }
                break;
            case 2649:
                if (str.equals("SL")) {
                    c = 194;
                    break;
                }
                break;
            case 2650:
                if (str.equals("SM")) {
                    c = 195;
                    break;
                }
                break;
            case 2651:
                if (str.equals(BaseTLSIdentity.CERT_ATTRIBUTE_SURNAME)) {
                    c = 196;
                    break;
                }
                break;
            case 2652:
                if (str.equals("SO")) {
                    c = 197;
                    break;
                }
                break;
            case 2655:
                if (str.equals("SR")) {
                    c = 198;
                    break;
                }
                break;
            case 2656:
                if (str.equals("SS")) {
                    c = 199;
                    break;
                }
                break;
            case 2657:
                if (str.equals(BaseTLSIdentity.CERT_ATTRIBUTE_STATE_OR_PROVINCE)) {
                    c = 200;
                    break;
                }
                break;
            case 2659:
                if (str.equals("SV")) {
                    c = 201;
                    break;
                }
                break;
            case 2661:
                if (str.equals("SX")) {
                    c = 202;
                    break;
                }
                break;
            case 2662:
                if (str.equals("SY")) {
                    c = 203;
                    break;
                }
                break;
            case 2663:
                if (str.equals("SZ")) {
                    c = 204;
                    break;
                }
                break;
            case 2671:
                if (str.equals("TC")) {
                    c = 205;
                    break;
                }
                break;
            case 2672:
                if (str.equals("TD")) {
                    c = 206;
                    break;
                }
                break;
            case 2675:
                if (str.equals("TG")) {
                    c = 207;
                    break;
                }
                break;
            case 2676:
                if (str.equals("TH")) {
                    c = 208;
                    break;
                }
                break;
            case 2678:
                if (str.equals("TJ")) {
                    c = 209;
                    break;
                }
                break;
            case 2680:
                if (str.equals("TL")) {
                    c = 210;
                    break;
                }
                break;
            case 2681:
                if (str.equals("TM")) {
                    c = 211;
                    break;
                }
                break;
            case 2682:
                if (str.equals("TN")) {
                    c = 212;
                    break;
                }
                break;
            case 2683:
                if (str.equals("TO")) {
                    c = 213;
                    break;
                }
                break;
            case 2686:
                if (str.equals("TR")) {
                    c = 214;
                    break;
                }
                break;
            case 2688:
                if (str.equals("TT")) {
                    c = Typography.times;
                    break;
                }
                break;
            case 2690:
                if (str.equals("TV")) {
                    c = 216;
                    break;
                }
                break;
            case 2691:
                if (str.equals("TW")) {
                    c = 217;
                    break;
                }
                break;
            case 2694:
                if (str.equals("TZ")) {
                    c = 218;
                    break;
                }
                break;
            case 2700:
                if (str.equals("UA")) {
                    c = 219;
                    break;
                }
                break;
            case 2706:
                if (str.equals("UG")) {
                    c = 220;
                    break;
                }
                break;
            case 2718:
                if (str.equals("US")) {
                    c = 221;
                    break;
                }
                break;
            case 2724:
                if (str.equals("UY")) {
                    c = 222;
                    break;
                }
                break;
            case 2725:
                if (str.equals("UZ")) {
                    c = 223;
                    break;
                }
                break;
            case 2733:
                if (str.equals("VC")) {
                    c = 224;
                    break;
                }
                break;
            case 2735:
                if (str.equals("VE")) {
                    c = 225;
                    break;
                }
                break;
            case 2737:
                if (str.equals("VG")) {
                    c = 226;
                    break;
                }
                break;
            case 2739:
                if (str.equals("VI")) {
                    c = 227;
                    break;
                }
                break;
            case 2744:
                if (str.equals("VN")) {
                    c = 228;
                    break;
                }
                break;
            case 2751:
                if (str.equals("VU")) {
                    c = 229;
                    break;
                }
                break;
            case 2767:
                if (str.equals("WF")) {
                    c = HighLevelEncoder.f38477b;
                    break;
                }
                break;
            case 2780:
                if (str.equals(C4Constants.LogDomain.WEB_SOCKET)) {
                    c = HighLevelEncoder.f38478c;
                    break;
                }
                break;
            case 2803:
                if (str.equals("XK")) {
                    c = 232;
                    break;
                }
                break;
            case 2828:
                if (str.equals("YE")) {
                    c = 233;
                    break;
                }
                break;
            case 2843:
                if (str.equals("YT")) {
                    c = 234;
                    break;
                }
                break;
            case 2855:
                if (str.equals("ZA")) {
                    c = HighLevelEncoder.f38479d;
                    break;
                }
                break;
            case 2867:
                if (str.equals("ZM")) {
                    c = HighLevelEncoder.f38480e;
                    break;
                }
                break;
            case 2877:
                if (str.equals("ZW")) {
                    c = HighLevelEncoder.f38481f;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 26:
            case 'P':
            case 'y':
                return new int[]{1, 2, 0, 0, 2, 2};
            case 1:
                return new int[]{1, 4, 4, 4, 3, 2};
            case 2:
            case ']':
            case 155:
            case 187:
            case 196:
            case 206:
            case 225:
            case 233:
                return new int[]{4, 4, 4, 4, 2, 2};
            case 3:
                return new int[]{2, 3, 1, 2, 2, 2};
            case 4:
            case 25:
            case '3':
            case '9':
            case 'J':
            case 145:
            case 224:
                return new int[]{1, 2, 2, 2, 2, 2};
            case 5:
            case 16:
            case 'u':
                return new int[]{1, 2, 0, 1, 2, 2};
            case 6:
                return new int[]{2, 3, 2, 4, 2, 2};
            case 7:
            case ',':
                return new int[]{3, 4, 3, 2, 2, 2};
            case '\b':
            case '?':
            case 'd':
            case 162:
            case 190:
            case 199:
            case 216:
                return new int[]{4, 2, 2, 2, 2, 2};
            case '\t':
                return new int[]{2, 4, 1, 1, 2, 2};
            case '\n':
                return new int[]{2, 2, 2, 3, 2, 2};
            case 11:
            case '(':
            case 'g':
            case 188:
            case 193:
                return new int[]{0, 0, 0, 0, 0, 2};
            case '\f':
                return new int[]{0, 1, 0, 1, 2, 2};
            case '\r':
            case 'W':
                return new int[]{1, 2, 4, 4, 2, 2};
            case 14:
            case 'O':
            case 'z':
            case 142:
            case 172:
            case 192:
            case 195:
                return new int[]{0, 2, 2, 2, 2, 2};
            case 15:
            case 154:
                return new int[]{3, 2, 4, 4, 2, 2};
            case 17:
            case 'F':
            case 'M':
                return new int[]{0, 2, 0, 0, 2, 2};
            case 18:
            case 151:
                return new int[]{2, 1, 3, 3, 2, 2};
            case 19:
                return new int[]{0, 0, 3, 3, 2, 2};
            case 20:
                return new int[]{4, 3, 4, 3, 2, 2};
            case 21:
            case '5':
            case 191:
                return new int[]{0, 0, 0, 0, 1, 2};
            case 22:
                return new int[]{1, 2, 2, 4, 4, 2};
            case 23:
            case ';':
            case 203:
            case 210:
                return new int[]{4, 3, 4, 4, 2, 2};
            case 24:
                return new int[]{4, 4, 3, 4, 2, 2};
            case 27:
                return new int[]{3, 2, 1, 1, 2, 2};
            case 28:
                return new int[]{1, 3, 3, 2, 2, 2};
            case 29:
                return new int[]{1, 2, 2, 0, 2, 2};
            case 30:
            case 198:
                return new int[]{2, 3, 2, 2, 2, 2};
            case 31:
                return new int[]{4, 2, 2, 3, 2, 2};
            case ' ':
                return new int[]{3, 1, 3, 2, 2, 2};
            case '!':
            case 'Y':
                return new int[]{3, 4, 1, 0, 2, 2};
            case '\"':
                return new int[]{0, 1, 1, 3, 2, 2};
            case '#':
                return new int[]{2, 4, 2, 2, 2, 2};
            case '$':
                return new int[]{0, 2, 1, 2, 4, 1};
            case '%':
                return new int[]{4, 2, 3, 1, 2, 2};
            case '&':
                return new int[]{4, 2, 3, 2, 2, 2};
            case '\'':
            case 150:
                return new int[]{2, 4, 3, 4, 2, 2};
            case ')':
                return new int[]{3, 3, 3, 4, 2, 2};
            case '*':
                return new int[]{2, 2, 2, 1, 2, 2};
            case '+':
            case 171:
            case 221:
                return new int[]{1, 1, 2, 2, 3, 2};
            case '-':
                return new int[]{2, 0, 2, 2, 3, 1};
            case '.':
                return new int[]{2, 2, 4, 2, 2, 2};
            case '/':
                return new int[]{2, 2, 4, 4, 2, 2};
            case '0':
            case 168:
                return new int[]{4, 4, 3, 2, 2, 2};
            case '1':
                return new int[]{2, 3, 1, 0, 2, 2};
            case '2':
                return new int[]{2, 2, 0, 0, 2, 2};
            case '4':
                return new int[]{1, 0, 0, 0, 1, 2};
            case '6':
                return new int[]{0, 0, 2, 2, 1, 2};
            case '7':
                return new int[]{4, 1, 4, 4, 2, 2};
            case '8':
                return new int[]{0, 0, 1, 0, 0, 2};
            case ':':
            case 'j':
                return new int[]{3, 4, 4, 4, 2, 2};
            case '<':
                return new int[]{2, 4, 2, 1, 2, 2};
            case '=':
            case '~':
            case 128:
            case 146:
                return new int[]{0, 0, 0, 0, 2, 2};
            case '>':
                return new int[]{3, 4, 2, 3, 2, 2};
            case '@':
            case '`':
                return new int[]{0, 1, 1, 1, 2, 2};
            case 'A':
                return new int[]{4, 4, 3, 1, 2, 2};
            case 'B':
                return new int[]{0, 0, 0, 1, 0, 2};
            case 'C':
                return new int[]{3, 1, 3, 3, 2, 2};
            case 'D':
            case 'r':
            case 130:
            case 152:
            case 200:
                return new int[]{3, 2, 2, 2, 2, 2};
            case 'E':
                return new int[]{3, 2, 4, 2, 2, 2};
            case 'G':
                return new int[]{1, 1, 2, 1, 1, 1};
            case 'H':
                return new int[]{2, 3, 1, 1, 2, 2};
            case 'I':
                return new int[]{0, 0, 1, 1, 2, 3};
            case 'K':
                return new int[]{1, 1, 1, 3, 2, 2};
            case 'L':
            case 'S':
            case 143:
                return new int[]{2, 1, 2, 3, 2, 2};
            case 'N':
                return new int[]{3, 2, 3, 2, 2, 2};
            case 'Q':
            case 230:
                return new int[]{4, 2, 2, 4, 2, 2};
            case 'R':
                return new int[]{4, 3, 4, 2, 2, 2};
            case 'T':
                return new int[]{4, 2, 3, 4, 2, 2};
            case 'U':
            case '\\':
            case 132:
            case 137:
            case 181:
                return new int[]{1, 0, 0, 0, 2, 2};
            case 'V':
                return new int[]{2, 3, 2, 1, 2, 2};
            case 'X':
            case 218:
                return new int[]{3, 4, 3, 3, 2, 2};
            case 'Z':
                return new int[]{0, 1, 2, 3, 2, 0};
            case '[':
            case 170:
            case 197:
                return new int[]{3, 2, 3, 3, 2, 2};
            case '^':
                return new int[]{0, 0, 0, 1, 3, 2};
            case '_':
                return new int[]{3, 2, 3, 3, 3, 2};
            case 'a':
                return new int[]{1, 1, 2, 3, 4, 2};
            case 'b':
                return new int[]{0, 2, 0, 1, 2, 2};
            case 'c':
                return new int[]{1, 1, 3, 2, 4, 3};
            case 'e':
            case 220:
                return new int[]{3, 3, 3, 3, 2, 2};
            case 'f':
                return new int[]{3, 0, 1, 1, 3, 0};
            case 'h':
                return new int[]{0, 1, 0, 1, 1, 2};
            case 'i':
                return new int[]{3, 2, 1, 2, 2, 2};
            case 'k':
            case 133:
                return new int[]{1, 0, 0, 1, 2, 2};
            case 'l':
                return new int[]{0, 1, 0, 1, 1, 1};
            case 'm':
                return new int[]{3, 3, 2, 2, 2, 2};
            case 'n':
                return new int[]{2, 1, 1, 1, 2, 2};
            case 'o':
                return new int[]{1, 1, 4, 2, 2, 2};
            case 'p':
            case 'q':
            case 129:
            case 185:
                return new int[]{4, 2, 4, 3, 2, 2};
            case 's':
                return new int[]{0, 0, 1, 3, 4, 4};
            case 't':
                return new int[]{1, 1, 0, 0, 0, 2};
            case 'v':
                return new int[]{1, 1, 2, 2, 2, 2};
            case 'w':
            case 222:
                return new int[]{2, 2, 1, 2, 2, 2};
            case 'x':
                return new int[]{3, 2, 1, 4, 2, 2};
            case '{':
                return new int[]{3, 1, 3, 4, 4, 2};
            case '|':
                return new int[]{3, 4, 4, 3, 2, 2};
            case '}':
                return new int[]{3, 3, 4, 3, 2, 2};
            case 127:
                return new int[]{1, 0, 2, 2, 2, 2};
            case 131:
                return new int[]{0, 2, 2, 0, 2, 2};
            case 134:
                return new int[]{1, 2, 1, 0, 2, 2};
            case 135:
                return new int[]{3, 4, 2, 2, 2, 2};
            case 136:
                return new int[]{3, 2, 2, 4, 2, 2};
            case 138:
                return new int[]{4, 3, 3, 1, 2, 2};
            case 139:
                return new int[]{2, 4, 3, 3, 2, 2};
            case 140:
                return new int[]{2, 0, 1, 2, 2, 2};
            case 141:
                return new int[]{0, 2, 4, 4, 2, 2};
            case 144:
                return new int[]{4, 1, 3, 4, 2, 2};
            case 147:
                return new int[]{3, 1, 1, 2, 2, 2};
            case 148:
                return new int[]{3, 4, 1, 4, 2, 2};
            case 149:
                return new int[]{4, 2, 1, 0, 2, 2};
            case 153:
                return new int[]{4, 3, 2, 2, 2, 2};
            case 156:
                return new int[]{3, 4, 1, 1, 2, 2};
            case 157:
                return new int[]{2, 3, 4, 3, 2, 2};
            case 158:
                return new int[]{0, 0, 3, 2, 0, 4};
            case 159:
                return new int[]{0, 0, 2, 0, 0, 2};
            case 160:
                return new int[]{2, 1, 4, 3, 2, 2};
            case 161:
                return new int[]{3, 2, 2, 0, 2, 2};
            case 163:
                return new int[]{1, 0, 1, 2, 4, 2};
            case 164:
                return new int[]{2, 3, 1, 3, 4, 2};
            case 165:
                return new int[]{1, 3, 3, 3, 2, 2};
            case 166:
                return new int[]{2, 3, 4, 4, 4, 2};
            case 167:
                return new int[]{2, 3, 3, 1, 2, 2};
            case 169:
                return new int[]{2, 2, 3, 3, 3, 2};
            case 173:
                return new int[]{2, 3, 2, 2, 3, 3};
            case 174:
                return new int[]{3, 4, 1, 2, 2, 2};
            case 175:
                return new int[]{0, 1, 0, 0, 2, 2};
            case 176:
                return new int[]{2, 2, 4, 1, 2, 2};
            case 177:
                return new int[]{2, 2, 3, 2, 2, 2};
            case 178:
                return new int[]{2, 4, 2, 4, 4, 2};
            case 179:
                return new int[]{1, 1, 1, 2, 2, 2};
            case 180:
                return new int[]{0, 0, 1, 1, 1, 2};
            case 182:
                return new int[]{0, 0, 0, 1, 2, 2};
            case 183:
                return new int[]{3, 4, 3, 0, 2, 2};
            case 184:
            case 212:
            case 226:
                return new int[]{2, 2, 1, 1, 2, 2};
            case 186:
                return new int[]{4, 3, 0, 2, 2, 2};
            case 189:
                return new int[]{1, 1, 2, 3, 1, 4};
            case 194:
                return new int[]{4, 3, 4, 1, 2, 2};
            case 201:
                return new int[]{2, 2, 3, 3, 2, 2};
            case 202:
            case 205:
                return new int[]{2, 2, 1, 0, 2, 2};
            case 204:
                return new int[]{4, 3, 2, 4, 2, 2};
            case 207:
                return new int[]{3, 3, 2, 0, 2, 2};
            case 208:
                return new int[]{0, 3, 2, 3, 3, 0};
            case 209:
                return new int[]{4, 2, 4, 4, 2, 2};
            case 211:
                return new int[]{4, 2, 4, 2, 2, 2};
            case 213:
                return new int[]{4, 2, 3, 3, 2, 2};
            case 214:
                return new int[]{1, 1, 0, 1, 2, 2};
            case 215:
                return new int[]{1, 4, 1, 1, 2, 2};
            case 217:
                return new int[]{0, 0, 0, 0, 0, 0};
            case 219:
                return new int[]{0, 3, 1, 1, 2, 2};
            case 223:
                return new int[]{2, 2, 3, 4, 2, 2};
            case 227:
                return new int[]{1, 2, 1, 3, 2, 2};
            case 228:
                return new int[]{0, 3, 3, 4, 2, 2};
            case 229:
                return new int[]{4, 2, 2, 1, 2, 2};
            case 231:
                return new int[]{3, 1, 2, 1, 2, 2};
            case 232:
                return new int[]{1, 1, 1, 1, 2, 2};
            case 234:
                return new int[]{4, 1, 1, 1, 2, 2};
            case 235:
                return new int[]{3, 3, 1, 1, 1, 2};
            case 236:
                return new int[]{3, 3, 4, 2, 2, 2};
            case 237:
                return new int[]{3, 2, 4, 3, 2, 2};
            default:
                return new int[]{2, 2, 2, 2, 2, 2};
        }
    }

    /* renamed from: e */
    public static boolean m21314e(DataSpec dataSpec, boolean z) {
        return z && !dataSpec.isFlagSet(8);
    }

    public static synchronized DefaultBandwidthMeter getSingletonInstance(Context context) {
        DefaultBandwidthMeter defaultBandwidthMeter;
        synchronized (DefaultBandwidthMeter.class) {
            if (f27996v == null) {
                f27996v = new Builder(context).build();
            }
            defaultBandwidthMeter = f27996v;
        }
        return defaultBandwidthMeter;
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        Assertions.checkNotNull(handler);
        Assertions.checkNotNull(eventListener);
        this.f28000b.addListener(handler, eventListener);
    }

    /* renamed from: d */
    public final long m21315d(int i) {
        Long l = this.f27999a.get(Integer.valueOf(i));
        if (l == null) {
            l = this.f27999a.get(0);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }

    /* renamed from: f */
    public final void m21316f(int i, long j, long j2) {
        if (i == 0 && j == 0 && j2 == this.f28011m) {
            return;
        }
        this.f28011m = j2;
        this.f28000b.bandwidthSample(i, j, j2);
    }

    /* renamed from: g */
    public final synchronized void m21317g(int i) {
        int i2 = this.f28007i;
        if (i2 == 0 || this.f28003e) {
            if (this.f28012n) {
                i = this.f28013o;
            }
            if (i2 == i) {
                return;
            }
            this.f28007i = i;
            if (i != 1 && i != 0 && i != 8) {
                this.f28010l = m21315d(i);
                long elapsedRealtime = this.f28002d.elapsedRealtime();
                m21316f(this.f28004f > 0 ? (int) (elapsedRealtime - this.f28005g) : 0, this.f28006h, this.f28010l);
                this.f28005g = elapsedRealtime;
                this.f28006h = 0L;
                this.f28009k = 0L;
                this.f28008j = 0L;
                this.f28001c.reset();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.f28010l;
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public TransferListener getTransferListener() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z, int i) {
        if (m21314e(dataSpec, z)) {
            this.f28006h += i;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferEnd(DataSource dataSource, DataSpec dataSpec, boolean z) {
        if (m21314e(dataSpec, z)) {
            Assertions.checkState(this.f28004f > 0);
            long elapsedRealtime = this.f28002d.elapsedRealtime();
            int i = (int) (elapsedRealtime - this.f28005g);
            this.f28008j += i;
            long j = this.f28009k;
            long j2 = this.f28006h;
            this.f28009k = j + j2;
            if (i > 0) {
                this.f28001c.addSample((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i);
                if (this.f28008j >= 2000 || this.f28009k >= 524288) {
                    this.f28010l = this.f28001c.getPercentile(0.5f);
                }
                m21316f(i, this.f28006h, this.f28010l);
                this.f28005g = elapsedRealtime;
                this.f28006h = 0L;
            }
            this.f28004f--;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z) {
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z) {
        if (m21314e(dataSpec, z)) {
            if (this.f28004f == 0) {
                this.f28005g = this.f28002d.elapsedRealtime();
            }
            this.f28004f++;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.f28000b.removeListener(eventListener);
    }

    public synchronized void setNetworkTypeOverride(int i) {
        this.f28013o = i;
        this.f28012n = true;
        m21317g(i);
    }

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        @Nullable
        public final Context f28014a;

        /* renamed from: b */
        public Map<Integer, Long> f28015b;

        /* renamed from: c */
        public int f28016c;

        /* renamed from: d */
        public Clock f28017d;

        /* renamed from: e */
        public boolean f28018e;

        public Builder(Context context) {
            this.f28014a = context == null ? null : context.getApplicationContext();
            this.f28015b = m21318a(Util.getCountryCode(context));
            this.f28016c = 2000;
            this.f28017d = Clock.DEFAULT;
            this.f28018e = true;
        }

        /* renamed from: a */
        public static Map<Integer, Long> m21318a(String str) {
            int[] m21313c = DefaultBandwidthMeter.m21313c(str);
            HashMap hashMap = new HashMap(8);
            hashMap.put(0, 1000000L);
            ImmutableList<Long> immutableList = DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI;
            hashMap.put(2, immutableList.get(m21313c[0]));
            hashMap.put(3, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(m21313c[1]));
            hashMap.put(4, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(m21313c[2]));
            hashMap.put(5, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(m21313c[3]));
            hashMap.put(10, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(m21313c[4]));
            hashMap.put(9, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(m21313c[5]));
            hashMap.put(7, immutableList.get(m21313c[0]));
            return hashMap;
        }

        public DefaultBandwidthMeter build() {
            return new DefaultBandwidthMeter(this.f28014a, this.f28015b, this.f28016c, this.f28017d, this.f28018e);
        }

        public Builder setClock(Clock clock) {
            this.f28017d = clock;
            return this;
        }

        public Builder setInitialBitrateEstimate(long j) {
            Iterator<Integer> it2 = this.f28015b.keySet().iterator();
            while (it2.hasNext()) {
                setInitialBitrateEstimate(it2.next().intValue(), j);
            }
            return this;
        }

        public Builder setResetOnNetworkTypeChange(boolean z) {
            this.f28018e = z;
            return this;
        }

        public Builder setSlidingWindowMaxWeight(int i) {
            this.f28016c = i;
            return this;
        }

        public Builder setInitialBitrateEstimate(int i, long j) {
            this.f28015b.put(Integer.valueOf(i), Long.valueOf(j));
            return this;
        }

        public Builder setInitialBitrateEstimate(String str) {
            this.f28015b = m21318a(Ascii.toUpperCase(str));
            return this;
        }
    }

    @Deprecated
    public DefaultBandwidthMeter() {
        this(null, ImmutableMap.m26185of(), 2000, Clock.DEFAULT, false);
    }

    public DefaultBandwidthMeter(@Nullable Context context, Map<Integer, Long> map, int i, Clock clock, boolean z) {
        this.f27999a = ImmutableMap.copyOf((Map) map);
        this.f28000b = new BandwidthMeter.EventListener.EventDispatcher();
        this.f28001c = new SlidingPercentile(i);
        this.f28002d = clock;
        this.f28003e = z;
        if (context != null) {
            NetworkTypeObserver networkTypeObserver = NetworkTypeObserver.getInstance(context);
            int networkType = networkTypeObserver.getNetworkType();
            this.f28007i = networkType;
            this.f28010l = m21315d(networkType);
            networkTypeObserver.register(new NetworkTypeObserver.Listener() { // from class: com.sunia.HTREnginev2.wye
                @Override // com.google.android.exoplayer2.util.NetworkTypeObserver.Listener
                public final void onNetworkTypeChanged(int i2) {
                    DefaultBandwidthMeter.this.m21317g(i2);
                }
            });
            return;
        }
        this.f28007i = 0;
        this.f28010l = m21315d(0);
    }
}
