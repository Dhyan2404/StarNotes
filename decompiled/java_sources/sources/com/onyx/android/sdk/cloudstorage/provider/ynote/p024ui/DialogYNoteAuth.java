package com.onyx.android.sdk.cloudstorage.provider.ynote.p024ui;

import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialog;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J(\u0010\n\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J(\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J(\u0010\r\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\b\u0010\u000e\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\u0007H\u0002R\u0016\u0010\u0012\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/ui/DialogYNoteAuth;", "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;", "dialog", "Landroid/webkit/WebView;", "webView", "Landroid/webkit/WebViewClient;", "webViewClient", "", "url", "", "webChromeClientCallback", "webViewCallback", "", "webViewClientPageFinished", "z0", "A0", "E1", Constants.HASIDCALL_INDEX_SIG, "loginTipsShown", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DialogYNoteAuth extends OAuthDialog {

    /* renamed from: E1, reason: from kotlin metadata */
    public boolean loginTipsShown;

    /* renamed from: A0 */
    public final String m32929A0() {
        return "javascript:function getClass(parent,sClass){var aEle=parent.getElementsByTagName('input');var aResult=[];var i=0;for(i<0;i<aEle.length;i++){if(aEle[i].className==sClass){aResult.push(aEle[i]);}};return aResult;}function setFontSize() {var userName = getClass(document,'login-username text')[0]; var password = getClass(document,'login-password text')[0]; userName.style.fontSize='26px';userName.style.width='320px';password.style.width='320px';password.style.fontSize='26px';}";
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialog
    public boolean webChromeClientCallback(@NotNull OAuthDialog dialog, @NotNull WebView webView, @NotNull WebViewClient webViewClient, @NotNull String url) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(webViewClient, "webViewClient");
        Intrinsics.checkNotNullParameter(url, "url");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(url, CloudStorageConstants.YNOTE_REGISTER_URL_PREFIX, false, 2, null);
        if (startsWith$default) {
            return false;
        }
        return super.webChromeClientCallback(dialog, webView, webViewClient, url);
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialog
    public boolean webViewCallback(@NotNull OAuthDialog dialog, @NotNull WebView webView, @NotNull WebViewClient webViewClient, @NotNull String url) {
        boolean startsWith$default;
        boolean startsWith$default2;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(webViewClient, "webViewClient");
        Intrinsics.checkNotNullParameter(url, "url");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(url, "http://www.onyx-international.com/", false, 2, null);
        if (startsWith$default) {
            String queryParameter = Uri.parse(url).getQueryParameter("state");
            Bundle extraMap = getDialogParam().getExtraMap();
            String str = (String) (extraMap != null ? extraMap.get(CloudStorageConstants.YNOTE_AUTH_STATE_KEY) : null);
            if (str != null && Intrinsics.areEqual(queryParameter, str)) {
                String queryParameter2 = Uri.parse(url).getQueryParameter("code");
                if (queryParameter2 == null) {
                    queryParameter2 = "";
                }
                setCode(queryParameter2);
            }
            dismiss();
        }
        startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(url, CloudStorageConstants.YNOTE_AUTH_URI, false, 2, null);
        if (startsWith$default2) {
            m32930z0();
        }
        return false;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialog
    public void webViewClientPageFinished(@NotNull OAuthDialog dialog, @NotNull WebView webView, @NotNull WebViewClient webViewClient, @NotNull String url) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(webViewClient, "webViewClient");
        Intrinsics.checkNotNullParameter(url, "url");
        webView.loadUrl(m32929A0());
        webView.loadUrl("javascript:setFontSize();");
        if (this.loginTipsShown) {
            return;
        }
        ResManager resManager = ResManager.INSTANCE;
        Toast.makeText(resManager.getAppContext(), resManager.getString(C7153R.string.not_support_netease_account_to_login), 0).show();
        this.loginTipsShown = true;
    }

    /* renamed from: z0 */
    public final void m32930z0() {
        int childCount = getContentView().getChildCount();
        if (childCount <= 1) {
            return;
        }
        for (int i = 1; i < childCount; i++) {
            getContentView().removeViewAt(i);
        }
    }
}
