package com.onyx.android.sdk.cloudstorage.common.p019ui;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialog;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.math3.dfp.Dfp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.scribe.model.ParameterList;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\t\b\u0016\u0018\u0000 E2\u00020\u0001:\u0001EB\u0007¢\u0006\u0004\bC\u0010DJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J&\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\u0016\u0010\u0011\u001a\u00020\u00042\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000fJ(\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0014J(\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0014J(\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0014J\u0018\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0017H\u0004J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\nH\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0003J\b\u0010!\u001a\u00020\u0004H\u0002J\u0010\u0010\"\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010$\u001a\u00020\u0004H\u0002R*\u0010,\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u00178\u0006@DX\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010.\u001a\u00020-8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105R\"\u00107\u001a\u0002068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001a\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00130=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006F"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "dismiss", "Lkotlin/Function0;", "dismissListener", "setOnDismissListener", "dialog", "Landroid/webkit/WebView;", "webView", "Landroid/webkit/WebViewClient;", "webViewClient", "", "url", "", "webChromeClientCallback", "webViewCallback", "webViewClientPageFinished", "codeKey", "loadCodeFromUrl", "x0", "w0", "u0", "t0", "s0", "y0", "<set-?>", "z1", Constants.STRING_SIG, "getCode", "()Ljava/lang/String;", "setCode", "(Ljava/lang/String;)V", "code", "Landroid/widget/FrameLayout;", "contentView", "Landroid/widget/FrameLayout;", "getContentView", "()Landroid/widget/FrameLayout;", "setContentView", "(Landroid/widget/FrameLayout;)V", "A1", "Landroid/webkit/WebView;", "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;", "dialogParam", "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;", "getDialogParam", "()Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;", "setDialogParam", "(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;)V", "", "B1", "Ljava/util/List;", "webViewList", "C1", "Lkotlin/jvm/functions/Function0;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOAuthDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OAuthDialog.kt\ncom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n1855#2,2:266\n*S KotlinDebug\n*F\n+ 1 OAuthDialog.kt\ncom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog\n*L\n77#1:266,2\n*E\n"})
/* loaded from: classes17.dex */
public class OAuthDialog extends DialogFragment {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: D1 */
    @NotNull
    public static final String f41076D1 = "ARGS_OAUTH_DIALOG_PARAM_KEY";

    /* renamed from: A1, reason: from kotlin metadata */
    public WebView webView;

    /* renamed from: C1, reason: from kotlin metadata */
    @Nullable
    public Function0<Unit> dismissListener;
    protected FrameLayout contentView;
    public OAuthDialogParam dialogParam;

    /* renamed from: z1, reason: from kotlin metadata */
    @NotNull
    public String code = "";

    /* renamed from: B1, reason: from kotlin metadata */
    @NotNull
    public final List<WebView> webViewList = new ArrayList();

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$Companion;", "", "()V", OAuthDialog.f41076D1, "", Dfp.f108018r, "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;", "dialogParam", "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final OAuthDialog newInstance(@NotNull OAuthDialogParam dialogParam) {
            Intrinsics.checkNotNullParameter(dialogParam, "dialogParam");
            Bundle bundle = new Bundle();
            bundle.putString(OAuthDialog.f41076D1, JSONUtils.INSTANCE.toJson(dialogParam));
            OAuthDialog oAuthDialog = new OAuthDialog();
            oAuthDialog.setArguments(bundle);
            return oAuthDialog;
        }

        public Companion() {
        }
    }

    /* renamed from: v0 */
    public static final boolean m32291v0(OAuthDialog this$0, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (keyEvent.getAction() != 0 || i != 4) {
            return false;
        }
        if (!this$0.webViewList.isEmpty()) {
            this$0.m32297y0();
        } else {
            this$0.dismiss();
        }
        return true;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        List reversed;
        super.dismiss();
        reversed = CollectionsKt___CollectionsKt.reversed(this.webViewList);
        Iterator it2 = reversed.iterator();
        while (it2.hasNext()) {
            m32293t0((WebView) it2.next());
        }
        Function0<Unit> function0 = this.dismissListener;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @NotNull
    public final String getCode() {
        return this.code;
    }

    @NotNull
    public final FrameLayout getContentView() {
        FrameLayout frameLayout = this.contentView;
        if (frameLayout != null) {
            return frameLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("contentView");
        return null;
    }

    @NotNull
    public final OAuthDialogParam getDialogParam() {
        OAuthDialogParam oAuthDialogParam = this.dialogParam;
        if (oAuthDialogParam != null) {
            return oAuthDialogParam;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dialogParam");
        return null;
    }

    @NotNull
    public final String loadCodeFromUrl(@NotNull String url, @NotNull String codeKey) {
        int indexOf$default;
        int indexOf$default2;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(codeKey, "codeKey");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) url, codeKey, 0, false, 6, (Object) null);
        if (indexOf$default < 0) {
            return "";
        }
        String substring = url.substring(indexOf$default + codeKey.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) substring, ParameterList.f115951c, 0, false, 6, (Object) null);
        if (indexOf$default2 < 0) {
            return substring;
        }
        String substring2 = substring.substring(0, indexOf$default2);
        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063353, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return LayoutInflater.from(getContext()).inflate(C7153R.layout.dialog_oauth, container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m32296x0(view);
        WebView webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView = null;
        }
        webView.loadUrl(getDialogParam().getAuthUrl());
    }

    /* renamed from: s0 */
    public final void m32292s0(WebView webView) {
        this.webViewList.add(webView);
    }

    public final void setCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.code = str;
    }

    public final void setContentView(@NotNull FrameLayout frameLayout) {
        Intrinsics.checkNotNullParameter(frameLayout, "<set-?>");
        this.contentView = frameLayout;
    }

    public final void setDialogParam(@NotNull OAuthDialogParam oAuthDialogParam) {
        Intrinsics.checkNotNullParameter(oAuthDialogParam, "<set-?>");
        this.dialogParam = oAuthDialogParam;
    }

    public final void setOnDismissListener(@Nullable Function0<Unit> dismissListener) {
        this.dismissListener = dismissListener;
    }

    /* renamed from: t0 */
    public final void m32293t0(WebView webView) {
        this.webViewList.remove(webView);
        getContentView().removeView(webView);
        webView.destroy();
    }

    /* renamed from: u0 */
    public final void m32294u0() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.sunia.HTREnginev2.d6k
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                    boolean m32291v0;
                    m32291v0 = OAuthDialog.m32291v0(OAuthDialog.this, dialogInterface, i, keyEvent);
                    return m32291v0;
                }
            });
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: w0 */
    public final void m32295w0(WebView webView) {
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptThirdPartyCookies(webView, true);
        cookieManager.removeAllCookies(null);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        WebSettings settings = webView.getSettings();
        settings.setCacheMode(2);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setBuiltInZoomControls(false);
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setBlockNetworkImage(false);
        settings.setSupportMultipleWindows(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUserAgentString(System.getProperty("http.agent"));
        if (Debug.INSTANCE.getDebug()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
    }

    public boolean webChromeClientCallback(@NotNull OAuthDialog dialog, @NotNull WebView webView, @NotNull WebViewClient webViewClient, @NotNull String url) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(webViewClient, "webViewClient");
        Intrinsics.checkNotNullParameter(url, "url");
        webView.loadUrl(url);
        return true;
    }

    public boolean webViewCallback(@NotNull OAuthDialog dialog, @NotNull WebView webView, @NotNull WebViewClient webViewClient, @NotNull String url) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(webViewClient, "webViewClient");
        Intrinsics.checkNotNullParameter(url, "url");
        String authSuccessCallbackUrl = getDialogParam().getAuthSuccessCallbackUrl();
        if (authSuccessCallbackUrl != null) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(url, authSuccessCallbackUrl, false, 2, null);
            if (startsWith$default) {
                String codeKey = getDialogParam().getCodeKey();
                if (codeKey != null) {
                    this.code = loadCodeFromUrl(url, codeKey);
                }
                Debug.INSTANCE.m32035d(getClass(), "auth code=" + this.code, new Object[0]);
                dismiss();
            }
        }
        return false;
    }

    public void webViewClientPageFinished(@NotNull OAuthDialog dialog, @NotNull WebView webView, @NotNull WebViewClient webViewClient, @NotNull String url) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(webViewClient, "webViewClient");
        Intrinsics.checkNotNullParameter(url, "url");
    }

    /* renamed from: x0 */
    public final void m32296x0(View view) {
        View findViewById = view.findViewById(C7153R.id.content_view);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        setContentView((FrameLayout) findViewById);
        View findViewById2 = view.findViewById(C7153R.id.webView);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        WebView webView = (WebView) findViewById2;
        this.webView = webView;
        WebView webView2 = null;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView = null;
        }
        m32295w0(webView);
        m32294u0();
        WebView webView3 = this.webView;
        if (webView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView3 = null;
        }
        webView3.setWebChromeClient(new WebChromeClient() { // from class: com.onyx.android.sdk.cloudstorage.common.ui.OAuthDialog$initView$1
            /* renamed from: a */
            public final WebView m32298a(Context context) {
                WebView webView4 = new WebView(context);
                OAuthDialog oAuthDialog = OAuthDialog.this;
                oAuthDialog.m32295w0(webView4);
                oAuthDialog.getContentView().addView(webView4);
                webView4.setWebViewClient(new WebViewClient() { // from class: com.onyx.android.sdk.cloudstorage.common.ui.OAuthDialog$initView$1$createNewWebView$newWebView$1$1
                });
                webView4.setWebChromeClient(this);
                OAuthDialog.this.m32292s0(webView4);
                return webView4;
            }

            @Override // android.webkit.WebChromeClient
            public void onCloseWindow(@NotNull WebView window) {
                Intrinsics.checkNotNullParameter(window, "window");
                OAuthDialog.this.m32293t0(window);
                super.onCloseWindow(window);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onCreateWindow(@NotNull WebView view2, boolean isDialog, boolean isUserGesture, @NotNull Message resultMsg) {
                Intrinsics.checkNotNullParameter(view2, "view");
                Intrinsics.checkNotNullParameter(resultMsg, "resultMsg");
                Context context = view2.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                WebView m32298a = m32298a(context);
                Object obj = resultMsg.obj;
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.webkit.WebView.WebViewTransport");
                ((WebView.WebViewTransport) obj).setWebView(m32298a);
                resultMsg.sendToTarget();
                return true;
            }
        });
        WebView webView4 = this.webView;
        if (webView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView4 = null;
        }
        webView4.setWebViewClient(new WebViewClient() { // from class: com.onyx.android.sdk.cloudstorage.common.ui.OAuthDialog$initView$2
            @Override // android.webkit.WebViewClient
            public void onPageFinished(@NotNull WebView view2, @NotNull String url) {
                Intrinsics.checkNotNullParameter(view2, "view");
                Intrinsics.checkNotNullParameter(url, "url");
                OAuthDialog oAuthDialog = OAuthDialog.this;
                oAuthDialog.webViewClientPageFinished(oAuthDialog, view2, this, url);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(@NotNull WebView view2, @NotNull WebResourceRequest request) {
                Intrinsics.checkNotNullParameter(view2, "view");
                Intrinsics.checkNotNullParameter(request, "request");
                String uri = request.getUrl().toString();
                Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
                Debug.INSTANCE.m32035d(OAuthDialog$initView$2.class, OAuthDialog.this.getDialogParam().getProvider() + " drive shouldOverrideUrlLoading: " + uri, new Object[0]);
                OAuthDialog oAuthDialog = OAuthDialog.this;
                return oAuthDialog.webViewCallback(oAuthDialog, view2, this, uri);
            }
        });
        List<WebView> list = this.webViewList;
        WebView webView5 = this.webView;
        if (webView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        } else {
            webView2 = webView5;
        }
        list.add(0, webView2);
    }

    /* renamed from: y0 */
    public final void m32297y0() {
        Object last;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.webViewList);
        WebView webView = (WebView) last;
        if (webView.canGoBack()) {
            webView.goBack();
            return;
        }
        m32293t0(webView);
        if (this.webViewList.isEmpty()) {
            dismiss();
        }
    }
}
