package com.onyx.galaxy.note.usercenter.p049ui;

import android.graphics.Color;
import android.webkit.JavascriptInterface;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.ReloadAccountAction;
import com.onyx.android.sdk.data.account.event.VipRoleChanged;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.pay.data.OrderArgs;
import com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction;
import com.onyx.galaxy.note.common.data.JavascriptEvents;
import com.onyx.galaxy.note.databinding.ActivityHtmlWindowBinding;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback;
import com.onyx.galaxy.note.p048ui.view.WebViewLoadingStatus;
import com.onyx.galaxy.note.usercenter.data.FileDownloadArgs;
import com.onyx.galaxy.note.usercenter.handler.FileDownloadHandler;
import com.onyx.galaxy.note.usercenter.handler.MemberPriceHandler;
import com.onyx.galaxy.note.usercenter.p049ui.HtmlWindowActivity;
import com.onyx.galaxy.note.usercenter.p049ui.HtmlWindowActivity$loadWebpage$callback$1;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0007J\b\u0010\b\u001a\u00020\u0003H\u0007J\b\u0010\t\u001a\u00020\u0003H\u0017J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u0005H\u0007J\b\u0010\r\u001a\u00020\u0003H\u0007J\b\u0010\u000e\u001a\u00020\u0003H\u0017J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0005H\u0007J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0005H\u0007J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0005H\u0007J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0005H\u0007J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0005H\u0007¨\u0006\u0019"}, m61528d2 = {"com/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity$loadWebpage$callback$1", "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;", "download", "", "downloadArgs", "", "getVipPrice", "productArgs", "navigateBack", "onDocumentFinishLoading", "onEvent", "type", NotificationCompat.CATEGORY_EVENT, "onJoinVip", "onWebViewTimeout", "pay", "params", "setBackButtonColor", "rgbColorString", "setTitleTextColor", "showToastMessage", "message", "updateProgressDialog", "visible", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class HtmlWindowActivity$loadWebpage$callback$1 implements OnyxWebViewCallback {

    /* renamed from: a */
    public final /* synthetic */ HtmlWindowActivity f62417a;

    public HtmlWindowActivity$loadWebpage$callback$1(HtmlWindowActivity htmlWindowActivity) {
        this.f62417a = htmlWindowActivity;
    }

    /* renamed from: h */
    public static final void m51655h(HtmlWindowActivity this$0, FileDownloadArgs args) {
        FileDownloadHandler fileDownloadHandler;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(args, "$args");
        fileDownloadHandler = this$0.fileDownloadHandler;
        fileDownloadHandler.download(this$0, args);
    }

    /* renamed from: i */
    public static final void m51656i(HtmlWindowActivity this$0) {
        ActivityHtmlWindowBinding activityHtmlWindowBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        activityHtmlWindowBinding = this$0.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        activityHtmlWindowBinding.backButton.performClick();
    }

    /* renamed from: j */
    public static final void m51657j() {
        AccountDataBundle.INSTANCE.postEvent(VipRoleChanged.INSTANCE);
    }

    /* renamed from: k */
    public static final void m51658k(String rgbColorString, HtmlWindowActivity this$0) {
        ActivityHtmlWindowBinding activityHtmlWindowBinding;
        Intrinsics.checkNotNullParameter(rgbColorString, "$rgbColorString");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int parseColor = Color.parseColor('#' + rgbColorString);
        activityHtmlWindowBinding = this$0.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        activityHtmlWindowBinding.backButton.setColorFilter(parseColor);
    }

    /* renamed from: l */
    public static final void m51659l(String rgbColorString, HtmlWindowActivity this$0) {
        ActivityHtmlWindowBinding activityHtmlWindowBinding;
        Intrinsics.checkNotNullParameter(rgbColorString, "$rgbColorString");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int parseColor = Color.parseColor('#' + rgbColorString);
        activityHtmlWindowBinding = this$0.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        activityHtmlWindowBinding.titleText.setTextColor(parseColor);
    }

    /* renamed from: m */
    public static final void m51660m(String message) {
        Intrinsics.checkNotNullParameter(message, "$message");
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) message, false, 2, (Object) null);
    }

    /* renamed from: n */
    public static final void m51661n(HtmlWindowActivity this$0, boolean z, String message) {
        ActivityHtmlWindowBinding activityHtmlWindowBinding;
        ActivityHtmlWindowBinding activityHtmlWindowBinding2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(message, "$message");
        activityHtmlWindowBinding = this$0.binding;
        ActivityHtmlWindowBinding activityHtmlWindowBinding3 = null;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        ViewKt.setViewVisibleOrInvisible(activityHtmlWindowBinding.progressLayoutBinding.getRoot(), z);
        activityHtmlWindowBinding2 = this$0.binding;
        if (activityHtmlWindowBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityHtmlWindowBinding3 = activityHtmlWindowBinding2;
        }
        activityHtmlWindowBinding3.progressLayoutBinding.loadingText.setText(message);
    }

    public static /* synthetic */ void onEvent$default(HtmlWindowActivity$loadWebpage$callback$1 htmlWindowActivity$loadWebpage$callback$1, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "{}";
        }
        htmlWindowActivity$loadWebpage$callback$1.onEvent(str, str2);
    }

    @JavascriptInterface
    public final void download(@NotNull String downloadArgs) {
        Intrinsics.checkNotNullParameter(downloadArgs, "downloadArgs");
        final FileDownloadArgs fileDownloadArgs = (FileDownloadArgs) JSONUtils.INSTANCE.parseObject(downloadArgs, FileDownloadArgs.class);
        if (fileDownloadArgs == null) {
            return;
        }
        final HtmlWindowActivity htmlWindowActivity = this.f62417a;
        htmlWindowActivity.runOnUiThread(new Runnable() { // from class: com.sunia.HTREnginev2.tzh
            @Override // java.lang.Runnable
            public final void run() {
                HtmlWindowActivity$loadWebpage$callback$1.m51655h(HtmlWindowActivity.this, fileDownloadArgs);
            }
        });
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    @Nullable
    public String getHeaders() {
        return OnyxWebViewCallback.DefaultImpls.getHeaders(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public int getThemeCode() {
        return OnyxWebViewCallback.DefaultImpls.getThemeCode(this);
    }

    @JavascriptInterface
    public final void getVipPrice(@NotNull String productArgs) {
        MemberPriceHandler memberPriceHandler;
        ActivityHtmlWindowBinding activityHtmlWindowBinding;
        Intrinsics.checkNotNullParameter(productArgs, "productArgs");
        memberPriceHandler = this.f62417a.memberPriceHandler;
        activityHtmlWindowBinding = this.f62417a.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        OnyxWebView webView = activityHtmlWindowBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        memberPriceHandler.getVipPrice(productArgs, webView);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void navigate(@NotNull String str, @NotNull String str2) {
        OnyxWebViewCallback.DefaultImpls.navigate(this, str, str2);
    }

    @JavascriptInterface
    public final void navigateBack() {
        final HtmlWindowActivity htmlWindowActivity = this.f62417a;
        htmlWindowActivity.runOnUiThread(new Runnable() { // from class: com.sunia.HTREnginev2.vzh
            @Override // java.lang.Runnable
            public final void run() {
                HtmlWindowActivity$loadWebpage$callback$1.m51656i(HtmlWindowActivity.this);
            }
        });
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onDataLoaded() {
        OnyxWebViewCallback.DefaultImpls.onDataLoaded(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onDocumentFinishLoading() {
        this.f62417a.m51646Q(WebViewLoadingStatus.LOADED);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onDocumentStartLoading() {
        OnyxWebViewCallback.DefaultImpls.onDocumentStartLoading(this);
    }

    @JavascriptInterface
    public final void onEvent(@NotNull String type, @NotNull String event) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(type, JavascriptEvents.ON_ACCOUNT_CONFIG_CHANGED)) {
            FetchAccountConfigurationsAction.INSTANCE.debounceFetch();
        }
    }

    @JavascriptInterface
    public final void onJoinVip() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> doFinally = new ReloadAccountAction().build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.wzh
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                HtmlWindowActivity$loadWebpage$callback$1.m51657j();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally, null, null, 3, null);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onReloadAccount() {
        OnyxWebViewCallback.DefaultImpls.onReloadAccount(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onSSLDateInvalid() {
        OnyxWebViewCallback.DefaultImpls.onSSLDateInvalid(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onTokenExpired() {
        OnyxWebViewCallback.DefaultImpls.onTokenExpired(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onWebViewTimeout() {
        this.f62417a.m51646Q(WebViewLoadingStatus.TIMEOUT);
    }

    @JavascriptInterface
    public final void pay(@NotNull String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        OrderArgs orderArgs = (OrderArgs) JSONUtils.INSTANCE.parseObject(params, OrderArgs.class);
        if (orderArgs == null) {
            return;
        }
        this.f62417a.m51641L(orderArgs);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void reportStatistic(@NotNull String str) {
        OnyxWebViewCallback.DefaultImpls.reportStatistic(this, str);
    }

    @JavascriptInterface
    public final void setBackButtonColor(@NotNull final String rgbColorString) {
        Intrinsics.checkNotNullParameter(rgbColorString, "rgbColorString");
        final HtmlWindowActivity htmlWindowActivity = this.f62417a;
        htmlWindowActivity.runOnUiThread(new Runnable() { // from class: com.sunia.HTREnginev2.xzh
            @Override // java.lang.Runnable
            public final void run() {
                HtmlWindowActivity$loadWebpage$callback$1.m51658k(rgbColorString, htmlWindowActivity);
            }
        });
    }

    @JavascriptInterface
    public final void setTitleTextColor(@NotNull final String rgbColorString) {
        Intrinsics.checkNotNullParameter(rgbColorString, "rgbColorString");
        final HtmlWindowActivity htmlWindowActivity = this.f62417a;
        htmlWindowActivity.runOnUiThread(new Runnable() { // from class: com.sunia.HTREnginev2.yzh
            @Override // java.lang.Runnable
            public final void run() {
                HtmlWindowActivity$loadWebpage$callback$1.m51659l(rgbColorString, htmlWindowActivity);
            }
        });
    }

    @JavascriptInterface
    public final void showToastMessage(@NotNull final String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.f62417a.runOnUiThread(new Runnable() { // from class: com.sunia.HTREnginev2.uzh
            @Override // java.lang.Runnable
            public final void run() {
                HtmlWindowActivity$loadWebpage$callback$1.m51660m(message);
            }
        });
    }

    @JavascriptInterface
    public final void updateProgressDialog(final boolean visible, @NotNull final String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        final HtmlWindowActivity htmlWindowActivity = this.f62417a;
        htmlWindowActivity.runOnUiThread(new Runnable() { // from class: com.sunia.HTREnginev2.zzh
            @Override // java.lang.Runnable
            public final void run() {
                HtmlWindowActivity$loadWebpage$callback$1.m51661n(HtmlWindowActivity.this, visible, message);
            }
        });
    }
}
