package com.onyx.galaxy.note.message.dialog;

import android.webkit.JavascriptInterface;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.galaxy.note.message.dialog.WebViewPopup;
import com.onyx.galaxy.note.message.dialog.WebViewPopup$initView$callback$1;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0007J\b\u0010\u0004\u001a\u00020\u0003H\u0007J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\b\u0010\u0007\u001a\u00020\u0003H\u0016¨\u0006\b"}, m61528d2 = {"com/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1", "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;", OnyxStatisticConstant.EVENT_TYPE_CLICK, "", "close", "getToken", "", "onWebViewTimeout", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class WebViewPopup$initView$callback$1 implements OnyxWebViewCallback {

    /* renamed from: a */
    public final /* synthetic */ WebViewPopup f61393a;

    public WebViewPopup$initView$callback$1(WebViewPopup webViewPopup) {
        this.f61393a = webViewPopup;
    }

    /* renamed from: c */
    public static final void m50612c(WebViewPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onPrimaryButtonClick(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
        notificationDisplayHandler.navigateWithStrategy(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getNavType(), this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getArgs());
        notificationDisplayHandler.closeWithStrategy(this$0, this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getCloseStrategy());
    }

    /* renamed from: d */
    public static final void m50613d(WebViewPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onSecondaryButtonClick(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
        notificationDisplayHandler.navigateWithStrategy(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getNavType(), this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getArgs());
        notificationDisplayHandler.closeWithStrategy(this$0, this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getCloseStrategy());
    }

    @JavascriptInterface
    public final void click() {
        final WebViewPopup webViewPopup = this.f61393a;
        RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.l6o
            @Override // java.lang.Runnable
            public final void run() {
                WebViewPopup$initView$callback$1.m50612c(WebViewPopup.this);
            }
        });
    }

    @JavascriptInterface
    public final void close() {
        final WebViewPopup webViewPopup = this.f61393a;
        RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.k6o
            @Override // java.lang.Runnable
            public final void run() {
                WebViewPopup$initView$callback$1.m50613d(WebViewPopup.this);
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
    @Nullable
    public final String getToken() {
        return AccountDataBundle.INSTANCE.getAccountToken();
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void navigate(@NotNull String str, @NotNull String str2) {
        OnyxWebViewCallback.DefaultImpls.navigate(this, str, str2);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onDataLoaded() {
        OnyxWebViewCallback.DefaultImpls.onDataLoaded(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onDocumentFinishLoading() {
        OnyxWebViewCallback.DefaultImpls.onDocumentFinishLoading(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onDocumentStartLoading() {
        OnyxWebViewCallback.DefaultImpls.onDocumentStartLoading(this);
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
    public void onWebViewTimeout() {
        this.f61393a.dismiss();
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void reportStatistic(@NotNull String str) {
        OnyxWebViewCallback.DefaultImpls.reportStatistic(this, str);
    }
}
