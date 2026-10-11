package com.onyx.galaxy.note.p048ui.view;

import android.webkit.JavascriptInterface;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.LocalAccountExpired;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.utils.Navigator;
import com.onyx.galaxy.note.utils.WebViewExt;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\bf\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0017J\b\u0010\u0004\u001a\u00020\u0005H\u0017J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0017J\b\u0010\n\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\u0007H\u0016J\b\u0010\f\u001a\u00020\u0007H\u0016J\b\u0010\r\u001a\u00020\u0007H\u0017J\b\u0010\u000e\u001a\u00020\u0007H\u0016J\b\u0010\u000f\u001a\u00020\u0007H\u0017J\b\u0010\u0010\u001a\u00020\u0007H\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0003H\u0017¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;", "", "getHeaders", "", "getThemeCode", "", "navigate", "", "type", "argsString", "onDataLoaded", "onDocumentFinishLoading", "onDocumentStartLoading", "onReloadAccount", "onSSLDateInvalid", "onTokenExpired", "onWebViewTimeout", "reportStatistic", "params", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface OnyxWebViewCallback {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class DefaultImpls {
        @JavascriptInterface
        @Nullable
        public static String getHeaders(@NotNull OnyxWebViewCallback onyxWebViewCallback) {
            return WebViewExt.INSTANCE.getWebViewHeaders();
        }

        @JavascriptInterface
        public static int getThemeCode(@NotNull OnyxWebViewCallback onyxWebViewCallback) {
            return ThemeUtils.getThemeTypeForWeb();
        }

        @JavascriptInterface
        public static void navigate(@NotNull OnyxWebViewCallback onyxWebViewCallback, @NotNull String type, @NotNull String argsString) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(argsString, "argsString");
            StringMap stringMap = (StringMap) JSONUtils.INSTANCE.parseObject(argsString, StringMap.class);
            if (stringMap == null) {
                stringMap = new StringMap();
            }
            Navigator.navigate$default(Navigator.INSTANCE, type, stringMap, null, 4, null);
        }

        public static void onDataLoaded(@NotNull OnyxWebViewCallback onyxWebViewCallback) {
        }

        public static void onDocumentFinishLoading(@NotNull OnyxWebViewCallback onyxWebViewCallback) {
        }

        public static void onDocumentStartLoading(@NotNull OnyxWebViewCallback onyxWebViewCallback) {
        }

        @JavascriptInterface
        public static void onReloadAccount(@NotNull OnyxWebViewCallback onyxWebViewCallback) {
            RxBaseAction.execute$default(new FetchAccountConfigurationsAction(false, 1, null), null, null, null, 7, null);
        }

        public static void onSSLDateInvalid(@NotNull OnyxWebViewCallback onyxWebViewCallback) {
        }

        @JavascriptInterface
        public static void onTokenExpired(@NotNull OnyxWebViewCallback onyxWebViewCallback) {
            String stackTraceToString;
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(new Exception("onWebViewTokenExpired"));
            AccountDataBundle.INSTANCE.postEvent(new LocalAccountExpired(1, stackTraceToString));
        }

        public static void onWebViewTimeout(@NotNull OnyxWebViewCallback onyxWebViewCallback) {
        }

        @JavascriptInterface
        public static void reportStatistic(@NotNull OnyxWebViewCallback onyxWebViewCallback, @NotNull String params) {
            Intrinsics.checkNotNullParameter(params, "params");
            OnyxStatisticEvent onyxStatisticEvent = (OnyxStatisticEvent) JSONUtils.INSTANCE.parseObject(params, OnyxStatisticEvent.class);
            if (onyxStatisticEvent == null) {
                return;
            }
            String eventId = onyxStatisticEvent.getEventId();
            if (eventId == null || eventId.length() == 0) {
                return;
            }
            StatisticsBundle.INSTANCE.postEvent(onyxStatisticEvent);
        }
    }

    @JavascriptInterface
    @Nullable
    String getHeaders();

    @JavascriptInterface
    int getThemeCode();

    @JavascriptInterface
    void navigate(@NotNull String type, @NotNull String argsString);

    void onDataLoaded();

    void onDocumentFinishLoading();

    void onDocumentStartLoading();

    @JavascriptInterface
    void onReloadAccount();

    void onSSLDateInvalid();

    @JavascriptInterface
    void onTokenExpired();

    void onWebViewTimeout();

    @JavascriptInterface
    void reportStatistic(@NotNull String params);
}
