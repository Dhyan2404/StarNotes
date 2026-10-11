package com.onyx.android.sdk.base.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0002\bN\n\u0002\u0010 \n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b^\u0010_J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002J!\u0010\n\u001a\u00020\t2\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0007\"\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002J\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\tJ\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\tJ\u001a\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u0002H\u0002R\u001f\u0010\u001e\u001a\n \u001a*\u0004\u0018\u00010\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001bR\u0014\u0010 \u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u001bR\u0014\u0010!\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u001bR\u0014\u0010\"\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u001bR\u0014\u0010#\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u001bR\u0014\u0010$\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u001bR\u0014\u0010%\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\u001bR\u0014\u0010&\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\u001bR\u0014\u0010'\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\u001bR\u0014\u0010(\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\u001bR\u0014\u0010)\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010\u001bR\u0014\u0010*\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010\u001bR\u0014\u0010+\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010\u001bR\u0014\u0010,\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b,\u0010\u001bR\u0014\u0010-\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b-\u0010\u001bR\u0014\u0010.\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b.\u0010\u001bR\u0014\u0010/\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b/\u0010\u001bR\u0014\u00100\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u0010\u001bR\u0014\u00101\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b1\u0010\u001bR\u0014\u00102\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u0010\u001bR\u0014\u00103\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b3\u0010\u001bR\u0014\u00104\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b4\u0010\u001bR\u0014\u00105\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b5\u0010\u001bR\u0014\u00106\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b6\u0010\u001bR\u0014\u00107\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b7\u0010\u001bR\u0014\u00108\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b8\u0010\u001bR\u0014\u00109\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b9\u0010\u001bR\u0014\u0010:\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b:\u0010\u001bR\u0014\u0010;\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b;\u0010\u001bR\u0014\u0010<\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b<\u0010\u001bR\u0017\u0010?\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b=\u0010\u001b\u001a\u0004\b>\u0010\u001dR\u001a\u0010B\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b@\u0010\u001b\u001a\u0004\bA\u0010\u001dR\u001a\u0010E\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\bC\u0010\u001b\u001a\u0004\bD\u0010\u001dR\u0017\u0010H\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bF\u0010\u001b\u001a\u0004\bG\u0010\u001dR\u001a\u0010K\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\bI\u0010\u001b\u001a\u0004\bJ\u0010\u001dR\u001a\u0010N\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\bL\u0010\u001b\u001a\u0004\bM\u0010\u001dR\u0017\u0010Q\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bO\u0010\u001b\u001a\u0004\bP\u0010\u001dR\u0017\u0010T\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bR\u0010\u001b\u001a\u0004\bS\u0010\u001dR\u0017\u0010W\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bU\u0010\u001b\u001a\u0004\bV\u0010\u001dR\u001d\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00020X8\u0006¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\¨\u0006`"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/MarketUtils;", "", "", "getMarketChannel", MessageConst.KEY_PACKAGE_NAME, "", "openMarketByPackage", "", "channels", "", "isChannelInstalled", "([Ljava/lang/String;)Z", "channel", "openMarketByChannel", "openLocalMarketByChannel", "openWebMarketByChannel", "getMarketPackage", "getMarketWebsite", "supportUMeng", "supportGooglePlay", "isHuaWeiChannel", "isHuaWeiBrand", "isBydChannel", "key", "defaultValue", "a", "kotlin.jvm.PlatformType", Constants.STRING_SIG, "getPACKAGE_NAME_SELF", "()Ljava/lang/String;", "PACKAGE_NAME_SELF", "PACKAGE_RED_BOOK", "SDK_CHANNEL", "CHANNEL_KEY_MARKET", "PRODUCT_ID_HUAWEI", "PRODUCT_ID_VIVO", "MARKET_CHANNEL_NONE", "MARKET_CHANNEL_ONYX", "MARKET_CHANNEL_STAR_NOTE", "MARKET_CHANNEL_HUAWEI", "MARKET_CHANNEL_HONOR", "MARKET_CHANNEL_XIAOMI", "MARKET_CHANNEL_VIVO", "MARKET_CHANNEL_OPPO", "MARKET_CHANNEL_TENCENT", "MARKET_CHANNEL_ALIBABA", "MARKET_CHANNEL_BAIDU", "MARKET_CHANNEL_GOOGLE", "MARKET_CHANNEL_SAMSUNG", "MARKET_CHANNEL_LENOVO", "MARKET_CHANNEL_BYD", "MARKET_PACKAGE_HUAWEI", "MARKET_PACKAGE_HONOR", "MARKET_PACKAGE_XIAOMI", "MARKET_PACKAGE_VIVO", "MARKET_PACKAGE_OPPO", "MARKET_PACKAGE_GOOGLE", "MARKET_PACKAGE_SAMSUNG", "MARKET_PACKAGE_LENOVO", "MARKET_PACKAGE_LENOVO_ACTIVITY", "BRAND_HUAWEI", "b", "getMARKET_WEBSITE_STAR_NOTE", "MARKET_WEBSITE_STAR_NOTE", "c", "getMARKET_WEBSITE_HUAWEI", "MARKET_WEBSITE_HUAWEI", "d", "getMARKET_WEBSITE_HONOR", "MARKET_WEBSITE_HONOR", "e", "getMARKET_WEBSITE_XIAOMI", "MARKET_WEBSITE_XIAOMI", C6997f.f39671c, "getMARKET_WEBSITE_VIVO", "MARKET_WEBSITE_VIVO", C6998g.f39679a, "getMARKET_WEBSITE_OPPO", "MARKET_WEBSITE_OPPO", C6999h.f39688c, "getMARKET_WEBSITE_GOOGLE", "MARKET_WEBSITE_GOOGLE", "i", "getMARKET_WEBSITE_SAMSUNG", "MARKET_WEBSITE_SAMSUNG", "j", "getMARKET_WEBSITE_LENOVO", "MARKET_WEBSITE_LENOVO", "", C4921e.f26537n, "Ljava/util/List;", "getSUPPORTED_NOTE_CHANNELS", "()Ljava/util/List;", "SUPPORTED_NOTE_CHANNELS", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMarketUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarketUtils.kt\ncom/onyx/android/sdk/base/utils/MarketUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,201:1\n12474#2,2:202\n*S KotlinDebug\n*F\n+ 1 MarketUtils.kt\ncom/onyx/android/sdk/base/utils/MarketUtils\n*L\n77#1:202,2\n*E\n"})
/* loaded from: classes7.dex */
public final class MarketUtils {

    @NotNull
    public static final String BRAND_HUAWEI = "HUAWEI";

    @NotNull
    public static final String CHANNEL_KEY_MARKET = "market";

    @NotNull
    public static final MarketUtils INSTANCE = new MarketUtils();

    @NotNull
    public static final String MARKET_CHANNEL_ALIBABA = "ALIBABA";

    @NotNull
    public static final String MARKET_CHANNEL_BAIDU = "BAIDU";

    @NotNull
    public static final String MARKET_CHANNEL_BYD = "BYD";

    @NotNull
    public static final String MARKET_CHANNEL_GOOGLE = "GOOGLE";

    @NotNull
    public static final String MARKET_CHANNEL_HONOR = "HONOR";

    @NotNull
    public static final String MARKET_CHANNEL_HUAWEI = "HUAWEI";

    @NotNull
    public static final String MARKET_CHANNEL_LENOVO = "LENOVO";

    @NotNull
    public static final String MARKET_CHANNEL_NONE = "";

    @NotNull
    public static final String MARKET_CHANNEL_ONYX = "ONYX";

    @NotNull
    public static final String MARKET_CHANNEL_OPPO = "OPPO";

    @NotNull
    public static final String MARKET_CHANNEL_SAMSUNG = "SAMSUNG";

    @NotNull
    public static final String MARKET_CHANNEL_STAR_NOTE = "STARNOTE";

    @NotNull
    public static final String MARKET_CHANNEL_TENCENT = "TENCENT";

    @NotNull
    public static final String MARKET_CHANNEL_VIVO = "VIVO";

    @NotNull
    public static final String MARKET_CHANNEL_XIAOMI = "XIAOMI";

    @NotNull
    public static final String MARKET_PACKAGE_GOOGLE = "com.android.vending";

    @NotNull
    public static final String MARKET_PACKAGE_HONOR = "com.hihonor.appmarket";

    @NotNull
    public static final String MARKET_PACKAGE_HUAWEI = "com.huawei.appmarket";

    @NotNull
    public static final String MARKET_PACKAGE_LENOVO = "com.lenovo.leos.appstore";

    @NotNull
    public static final String MARKET_PACKAGE_LENOVO_ACTIVITY = "com.lenovo.leos.appstore.detail.AppDetailActivity";

    @NotNull
    public static final String MARKET_PACKAGE_OPPO = "com.heytap.market";

    @NotNull
    public static final String MARKET_PACKAGE_SAMSUNG = "com.sec.android.app.samsungapps";

    @NotNull
    public static final String MARKET_PACKAGE_VIVO = "com.bbk.appstore";

    @NotNull
    public static final String MARKET_PACKAGE_XIAOMI = "com.xiaomi.market";

    @NotNull
    public static final String PACKAGE_RED_BOOK = "com.xingin.xhs";

    @NotNull
    public static final String PRODUCT_ID_HUAWEI = "C111711797";

    @NotNull
    public static final String PRODUCT_ID_VIVO = "40413";

    @NotNull
    public static final String SDK_CHANNEL = "sdk_channel";

    /* renamed from: a, reason: from kotlin metadata */
    public static final String PACKAGE_NAME_SELF;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String MARKET_WEBSITE_STAR_NOTE;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String MARKET_WEBSITE_HUAWEI;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String MARKET_WEBSITE_HONOR;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String MARKET_WEBSITE_XIAOMI;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final String MARKET_WEBSITE_VIVO;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final String MARKET_WEBSITE_OPPO;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final String MARKET_WEBSITE_GOOGLE;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public static final String MARKET_WEBSITE_SAMSUNG;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public static final String MARKET_WEBSITE_LENOVO;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public static final List<String> SUPPORTED_NOTE_CHANNELS;

    static {
        List<String> list;
        ResManager resManager = ResManager.INSTANCE;
        String packageName = resManager.getAppContext().getPackageName();
        PACKAGE_NAME_SELF = packageName;
        String string = resManager.getString(C7106R.string.homepage);
        if (string == null) {
            string = "";
        }
        MARKET_WEBSITE_STAR_NOTE = string;
        MARKET_WEBSITE_HUAWEI = "https://appgallery.huawei.com/app/C111711797";
        MARKET_WEBSITE_HONOR = "";
        MARKET_WEBSITE_XIAOMI = "https://app.mi.com/details?id=" + packageName;
        MARKET_WEBSITE_VIVO = "https://h5.appstore.vivo.com.cn/#/details?appId=40413&frompage=searchResultApp";
        MARKET_WEBSITE_OPPO = "https://store.oppomobile.com";
        MARKET_WEBSITE_GOOGLE = "https://play.google.com/store/apps/details?id=" + packageName;
        MARKET_WEBSITE_SAMSUNG = "http://www.samsungapps.com/appquery/appDetail.as?appId=" + packageName;
        MARKET_WEBSITE_LENOVO = "https://3g.lenovomm.com/redsea/" + packageName;
        list = ArraysKt___ArraysKt.toList(resManager.getStringArray(C7106R.array.supported_market_channel));
        SUPPORTED_NOTE_CHANNELS = list;
    }

    /* renamed from: b */
    public static /* synthetic */ String m32104b(MarketUtils marketUtils, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return marketUtils.m32105a(str, str2);
    }

    /* renamed from: a */
    public final String m32105a(String key, final String defaultValue) {
        return ContextKt.getMetaData(ResManager.INSTANCE.getAppContext(), key, new Function0<String>() { // from class: com.onyx.android.sdk.base.utils.MarketUtils$getChannel$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return defaultValue;
            }
        });
    }

    @NotNull
    public final String getMARKET_WEBSITE_GOOGLE() {
        return MARKET_WEBSITE_GOOGLE;
    }

    @NotNull
    public final String getMARKET_WEBSITE_HONOR() {
        return MARKET_WEBSITE_HONOR;
    }

    @NotNull
    public final String getMARKET_WEBSITE_HUAWEI() {
        return MARKET_WEBSITE_HUAWEI;
    }

    @NotNull
    public final String getMARKET_WEBSITE_LENOVO() {
        return MARKET_WEBSITE_LENOVO;
    }

    @NotNull
    public final String getMARKET_WEBSITE_OPPO() {
        return MARKET_WEBSITE_OPPO;
    }

    @NotNull
    public final String getMARKET_WEBSITE_SAMSUNG() {
        return MARKET_WEBSITE_SAMSUNG;
    }

    @NotNull
    public final String getMARKET_WEBSITE_STAR_NOTE() {
        return MARKET_WEBSITE_STAR_NOTE;
    }

    @NotNull
    public final String getMARKET_WEBSITE_VIVO() {
        return MARKET_WEBSITE_VIVO;
    }

    @NotNull
    public final String getMARKET_WEBSITE_XIAOMI() {
        return MARKET_WEBSITE_XIAOMI;
    }

    @NotNull
    public final String getMarketChannel() {
        String upperCase = m32105a(CHANNEL_KEY_MARKET, MARKET_CHANNEL_STAR_NOTE).toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e A[ORIG_RETURN, RETURN] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getMarketPackage(@org.jetbrains.annotations.NotNull java.lang.String r1) {
        /*
            r0 = this;
            java.lang.String r0 = "channel"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            int r0 = r1.hashCode()
            switch(r0) {
                case -2053026509: goto L62;
                case -1712043046: goto L56;
                case -1706170181: goto L4a;
                case 2432928: goto L3e;
                case 2634924: goto L32;
                case 68924490: goto L26;
                case 2108052025: goto L1a;
                case 2141820391: goto Le;
                default: goto Lc;
            }
        Lc:
            goto L6e
        Le:
            java.lang.String r0 = "HUAWEI"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L17
            goto L6e
        L17:
            java.lang.String r0 = "com.huawei.appmarket"
            goto L70
        L1a:
            java.lang.String r0 = "GOOGLE"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L23
            goto L6e
        L23:
            java.lang.String r0 = "com.android.vending"
            goto L70
        L26:
            java.lang.String r0 = "HONOR"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L2f
            goto L6e
        L2f:
            java.lang.String r0 = "com.hihonor.appmarket"
            goto L70
        L32:
            java.lang.String r0 = "VIVO"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L3b
            goto L6e
        L3b:
            java.lang.String r0 = "com.bbk.appstore"
            goto L70
        L3e:
            java.lang.String r0 = "OPPO"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L47
            goto L6e
        L47:
            java.lang.String r0 = "com.heytap.market"
            goto L70
        L4a:
            java.lang.String r0 = "XIAOMI"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L53
            goto L6e
        L53:
            java.lang.String r0 = "com.xiaomi.market"
            goto L70
        L56:
            java.lang.String r0 = "SAMSUNG"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L5f
            goto L6e
        L5f:
            java.lang.String r0 = "com.sec.android.app.samsungapps"
            goto L70
        L62:
            java.lang.String r0 = "LENOVO"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L6b
            goto L6e
        L6b:
            java.lang.String r0 = "com.lenovo.leos.appstore"
            goto L70
        L6e:
            java.lang.String r0 = ""
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.MarketUtils.getMarketPackage(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @NotNull
    public final String getMarketWebsite(@NotNull String channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        switch (channel.hashCode()) {
            case -2053026509:
                if (channel.equals("LENOVO")) {
                    return MARKET_WEBSITE_LENOVO;
                }
                return "";
            case -1712043046:
                if (channel.equals("SAMSUNG")) {
                    return MARKET_WEBSITE_SAMSUNG;
                }
                return "";
            case -1706170181:
                if (channel.equals("XIAOMI")) {
                    return MARKET_WEBSITE_XIAOMI;
                }
                return "";
            case 2432928:
                if (channel.equals("OPPO")) {
                    return MARKET_WEBSITE_OPPO;
                }
                return "";
            case 2634924:
                if (channel.equals("VIVO")) {
                    return MARKET_WEBSITE_VIVO;
                }
                return "";
            case 68924490:
                if (channel.equals("HONOR")) {
                    return MARKET_WEBSITE_HONOR;
                }
                return "";
            case 2108052025:
                if (channel.equals("GOOGLE")) {
                    return MARKET_WEBSITE_GOOGLE;
                }
                return "";
            case 2141820391:
                if (channel.equals("HUAWEI")) {
                    return MARKET_WEBSITE_HUAWEI;
                }
                return "";
            default:
                return "";
        }
    }

    public final String getPACKAGE_NAME_SELF() {
        return PACKAGE_NAME_SELF;
    }

    @NotNull
    public final List<String> getSUPPORTED_NOTE_CHANNELS() {
        return SUPPORTED_NOTE_CHANNELS;
    }

    public final boolean isBydChannel() {
        return Intrinsics.areEqual(getMarketChannel(), MARKET_CHANNEL_BYD);
    }

    public final boolean isChannelInstalled(@NotNull String... channels) {
        Intrinsics.checkNotNullParameter(channels, "channels");
        for (String str : channels) {
            if (ContextKt.isPackageInstalled(ResManager.INSTANCE.getAppContext(), INSTANCE.getMarketPackage(str))) {
                return true;
            }
        }
        return false;
    }

    public final boolean isHuaWeiBrand() {
        return StringUtils.equalsIgnoreCase(Build.BRAND, "HUAWEI");
    }

    public final boolean isHuaWeiChannel() {
        return Intrinsics.areEqual(getMarketChannel(), "HUAWEI");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void openLocalMarketByChannel(@NotNull String channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Context appContext = ResManager.INSTANCE.getAppContext();
        String packageName = appContext.getPackageName();
        String marketPackage = getMarketPackage(channel);
        Intent intent = new Intent("android.intent.action.VIEW");
        switch (channel.hashCode()) {
            case -2053026509:
                if (channel.equals("LENOVO")) {
                    intent.setData(Uri.parse("lestore://details?id=" + packageName));
                    intent.setClassName(MARKET_PACKAGE_LENOVO, MARKET_PACKAGE_LENOVO_ACTIVITY);
                    break;
                }
                intent.setData(Uri.parse("market://details?id=" + packageName));
                intent.setPackage(marketPackage);
                break;
            case -1712043046:
                if (channel.equals("SAMSUNG")) {
                    intent.setData(Uri.parse("samsungapps://ProductDetail/" + packageName));
                    intent.setPackage(MARKET_PACKAGE_SAMSUNG);
                    break;
                }
                intent.setData(Uri.parse("market://details?id=" + packageName));
                intent.setPackage(marketPackage);
                break;
            case -1706170181:
                if (channel.equals("XIAOMI")) {
                    intent.setData(Uri.parse("mimarket://details?id=" + packageName));
                    intent.setPackage(MARKET_PACKAGE_XIAOMI);
                    break;
                }
                intent.setData(Uri.parse("market://details?id=" + packageName));
                intent.setPackage(marketPackage);
                break;
            case 2432928:
                if (channel.equals("OPPO")) {
                    intent.setData(Uri.parse("oppomarket://details?packagename=" + packageName));
                    intent.setPackage(MARKET_PACKAGE_OPPO);
                    break;
                }
                intent.setData(Uri.parse("market://details?id=" + packageName));
                intent.setPackage(marketPackage);
                break;
            case 2634924:
                if (channel.equals("VIVO")) {
                    intent.setData(Uri.parse("vivomarket://details?id=" + packageName));
                    intent.setPackage(MARKET_PACKAGE_VIVO);
                    break;
                }
                intent.setData(Uri.parse("market://details?id=" + packageName));
                intent.setPackage(marketPackage);
                break;
            case 68924490:
                if (channel.equals("HONOR")) {
                    intent.setData(Uri.parse("honormarket://details?id=" + packageName));
                    intent.setPackage(MARKET_PACKAGE_HONOR);
                    break;
                }
                intent.setData(Uri.parse("market://details?id=" + packageName));
                intent.setPackage(marketPackage);
                break;
            case 2108052025:
                if (channel.equals("GOOGLE")) {
                    intent.setData(Uri.parse("market://details?id=" + packageName));
                    intent.setPackage("com.android.vending");
                    break;
                }
                intent.setData(Uri.parse("market://details?id=" + packageName));
                intent.setPackage(marketPackage);
                break;
            case 2141820391:
                if (channel.equals("HUAWEI")) {
                    intent.setData(Uri.parse("appmarket://details?id=" + packageName));
                    intent.setPackage(MARKET_PACKAGE_HUAWEI);
                    break;
                }
                intent.setData(Uri.parse("market://details?id=" + packageName));
                intent.setPackage(marketPackage);
                break;
            default:
                intent.setData(Uri.parse("market://details?id=" + packageName));
                intent.setPackage(marketPackage);
                break;
        }
        intent.addFlags(268435456);
        appContext.startActivity(intent);
    }

    public final void openMarketByChannel(@NotNull String channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        if (ContextKt.isPackageInstalled(ResManager.INSTANCE.getAppContext(), getMarketPackage(channel))) {
            openLocalMarketByChannel(channel);
        } else {
            openWebMarketByChannel(channel);
        }
    }

    public final void openMarketByPackage(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName));
        intent.addFlags(268435456);
        ResManager.INSTANCE.getAppContext().startActivity(intent);
    }

    public final void openWebMarketByChannel(@NotNull String channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Context appContext = ResManager.INSTANCE.getAppContext();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(getMarketWebsite(channel)));
        intent.addFlags(268435456);
        appContext.startActivity(intent);
    }

    public final boolean supportGooglePlay() {
        return Intrinsics.areEqual(getMarketChannel(), "GOOGLE");
    }

    public final boolean supportUMeng() {
        return !Intrinsics.areEqual(getMarketChannel(), "GOOGLE");
    }
}
