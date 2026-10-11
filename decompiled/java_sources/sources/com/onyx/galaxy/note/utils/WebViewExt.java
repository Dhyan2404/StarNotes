package com.onyx.galaxy.note.utils;

import android.util.Log;
import android.webkit.WebView;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.base.utils.MarketUtils;
import com.onyx.android.sdk.base.utils.PackageUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004J\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\n\u0010\u0007\u001a\u00020\b*\u00020\tJ\u001c\u0010\n\u001a\u00020\u000b*\u00020\f2\u0010\u0010\r\u001a\f\u0012\u0004\u0012\u00020\u000b0\u000ej\u0002`\u000f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/WebViewExt;", "", "()V", "createBaseHeaders", "", "", "getWebViewHeaders", "handleWebViewCrash", "", "Landroid/webkit/WebView;", "onBackPressed", "", "Lcom/onyx/galaxy/note/ui/view/OnyxWebView;", "nativeHandler", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class WebViewExt {

    @NotNull
    public static final WebViewExt INSTANCE = new WebViewExt();

    @NotNull
    public final Map<String, Object> createBaseHeaders() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String androidId = SecurityUtils.INSTANCE.getAndroidId();
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        linkedHashMap.put(Constant.TAG_AUTHORIZATION, accountDataBundle.getBearerToken());
        linkedHashMap.put(Constant.TAG_DEVICE_ID, androidId);
        linkedHashMap.put("clientId", androidId);
        linkedHashMap.put(Constant.HEADER_CLIENT_TYPE, "galaxy");
        linkedHashMap.put("language", ClusterManager.INSTANCE.getCurClusterInfo().getLang());
        linkedHashMap.put(Constant.TAG_DEVICE_LANG, LocaleUtils.INSTANCE.getNoteLanguage());
        linkedHashMap.put(Constant.TAG_APK_VERSION, Long.valueOf(PackageUtils.INSTANCE.getAppVersionCode()));
        linkedHashMap.put("channel", MarketUtils.INSTANCE.getMarketChannel());
        linkedHashMap.put(Constant.TAG_USER_ID, accountDataBundle.getAccountId());
        linkedHashMap.put(Constant.TAG_CLIENT_SYSTEM, DeviceFactory.INSTANCE.getCurrentDevice().getDeviceSystem());
        return linkedHashMap;
    }

    @Nullable
    public final String getWebViewHeaders() {
        return JSONUtils.INSTANCE.toJson(createBaseHeaders());
    }

    public final boolean handleWebViewCrash(@NotNull WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "<this>");
        Log.e("WebViewCrash", "render process crashed");
        LogUtils.file("WebViewCrash", LogcatGenerator.INSTANCE.generateWebViewCrashLog(webView));
        return true;
    }

    public final void onBackPressed(@NotNull OnyxWebView onyxWebView, @NotNull Function0<Unit> nativeHandler) {
        Intrinsics.checkNotNullParameter(onyxWebView, "<this>");
        Intrinsics.checkNotNullParameter(nativeHandler, "nativeHandler");
        if (!ViewKt.isVisible(onyxWebView)) {
            nativeHandler.invoke();
        } else if (onyxWebView.canGoBack()) {
            onyxWebView.goBack();
        } else {
            nativeHandler.invoke();
        }
    }
}
