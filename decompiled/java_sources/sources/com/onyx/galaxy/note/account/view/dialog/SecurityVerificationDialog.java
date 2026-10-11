package com.onyx.galaxy.note.account.view.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.LanguageManager;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.view.dialog.SecurityVerificationDialog;
import com.onyx.galaxy.note.databinding.DialogSecurityVerificationBinding;
import com.onyx.galaxy.note.settings.data.LanguageType;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.functions.Action;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \"2\u00020\u0001:\u0002\"#B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u0012\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0007J\b\u0010\f\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0003J\b\u0010\u0010\u001a\u00020\tH\u0003J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\u0012\u001a\u00020\tH\u0002J\b\u0010\u0013\u001a\u00020\tH\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\f\u0010\u001cR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;", "Landroid/app/Dialog;", "Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;", "verifyListener", "setVerifyListener", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "", "verifyData", "getSlideData", C6998g.f39679a, "Landroid/webkit/WebView;", "webView", "i", "c", "j", "e", "d", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "clusterInfo", "Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;", "Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;", "binding", C6999h.f39688c, "Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V", "Companion", "OnVerifyListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class SecurityVerificationDialog extends Dialog {

    /* renamed from: i */
    @NotNull
    public static final String f53557i = "Android";

    /* renamed from: j */
    public static final int f53558j = 500;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ClusterInfo clusterInfo;

    /* renamed from: g, reason: from kotlin metadata */
    public DialogSecurityVerificationBinding binding;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public OnVerifyListener verifyListener;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;", "", "receiveVerifyData", "", "verifyData", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface OnVerifyListener {
        void receiveVerifyData(@NotNull String verifyData);
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LanguageType.values().length];
            try {
                iArr[LanguageType.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LanguageType.CHINESE_SIMPLIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LanguageType.CHINESE_TRADITIONAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecurityVerificationDialog(@NotNull Context context, @NotNull ClusterInfo clusterInfo) {
        super(context, C10651R.style.Custom_NoTitle_Dialog);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        this.context = context;
        this.clusterInfo = clusterInfo;
    }

    /* renamed from: f */
    public static final void m42036f(SecurityVerificationDialog this$0, String verifyData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(verifyData, "$verifyData");
        this$0.m42043j(verifyData);
    }

    /* renamed from: h */
    public static final void m42037h(SecurityVerificationDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.cancel();
    }

    @SuppressLint({"NewApi"})
    /* renamed from: c */
    public final String m42038c() {
        String str = this.clusterInfo.getClusterHost().getOnyxSend2BooxHostBaseUrl() + "/nc.html?client=Android&lang=" + m42040e();
        Debug.INSTANCE.m32035d(SecurityVerificationDialog.class, "verify url:" + str, new Object[0]);
        return str;
    }

    /* renamed from: d */
    public final String m42039d() {
        LocaleUtils localeUtils = LocaleUtils.INSTANCE;
        Locale currentLocale = localeUtils.getCurrentLocale(this.context);
        if (localeUtils.isChinaLocale(currentLocale)) {
            String country = Locale.SIMPLIFIED_CHINESE.getCountry();
            Intrinsics.checkNotNull(country);
            return country;
        }
        String country2 = localeUtils.isTWHKLocale(currentLocale) ? Locale.TRADITIONAL_CHINESE.getCountry() : Locale.ENGLISH.getLanguage();
        Intrinsics.checkNotNull(country2);
        String lowerCase = country2.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    /* renamed from: e */
    public final String m42040e() {
        int i = WhenMappings.$EnumSwitchMapping$0[LanguageType.INSTANCE.getByAppLanguageCode(LanguageManager.INSTANCE.getAppLanguageStrict()).ordinal()];
        String language = i != 1 ? i != 2 ? i != 3 ? Locale.ENGLISH.getLanguage() : Locale.TRADITIONAL_CHINESE.getCountry() : Locale.SIMPLIFIED_CHINESE.getCountry() : m42039d();
        Intrinsics.checkNotNull(language);
        String lowerCase = language.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    /* renamed from: g */
    public final void m42041g() {
        DialogSecurityVerificationBinding dialogSecurityVerificationBinding = this.binding;
        DialogSecurityVerificationBinding dialogSecurityVerificationBinding2 = null;
        if (dialogSecurityVerificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSecurityVerificationBinding = null;
        }
        dialogSecurityVerificationBinding.btnClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mdm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SecurityVerificationDialog.m42037h(SecurityVerificationDialog.this, view);
            }
        });
        DialogSecurityVerificationBinding dialogSecurityVerificationBinding3 = this.binding;
        if (dialogSecurityVerificationBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSecurityVerificationBinding3 = null;
        }
        WebView webView = dialogSecurityVerificationBinding3.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        m42042i(webView);
        DialogSecurityVerificationBinding dialogSecurityVerificationBinding4 = this.binding;
        if (dialogSecurityVerificationBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogSecurityVerificationBinding2 = dialogSecurityVerificationBinding4;
        }
        dialogSecurityVerificationBinding2.webView.loadUrl(m42038c());
    }

    @JavascriptInterface
    public final void getSlideData(@NotNull final String verifyData) {
        Intrinsics.checkNotNullParameter(verifyData, "verifyData");
        DialogSecurityVerificationBinding dialogSecurityVerificationBinding = this.binding;
        if (dialogSecurityVerificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSecurityVerificationBinding = null;
        }
        WebView webView = dialogSecurityVerificationBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        RxjavaKt.postDelayObservable(webView, f53558j).observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.ndm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SecurityVerificationDialog.m42036f(SecurityVerificationDialog.this, verifyData);
            }
        }).subscribe();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: i */
    public final void m42042i(WebView webView) {
        webView.getSettings().setDisplayZoomControls(false);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setCacheMode(2);
        webView.setWebViewClient(new WebViewClient() { // from class: com.onyx.galaxy.note.account.view.dialog.SecurityVerificationDialog$initWebView$1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(@NotNull WebView view, @NotNull String url) {
                DialogSecurityVerificationBinding dialogSecurityVerificationBinding;
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(url, "url");
                dialogSecurityVerificationBinding = SecurityVerificationDialog.this.binding;
                if (dialogSecurityVerificationBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogSecurityVerificationBinding = null;
                }
                ViewKt.setViewVisibleOrGone(dialogSecurityVerificationBinding.loading, false);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(@Nullable WebView view, @Nullable WebResourceRequest request) {
                if (view == null) {
                    return true;
                }
                view.loadUrl(String.valueOf(request != null ? request.getUrl() : null));
                return true;
            }
        });
        webView.getSettings().setJavaScriptEnabled(true);
        webView.addJavascriptInterface(this, f53557i);
    }

    /* renamed from: j */
    public final void m42043j(String verifyData) {
        OnVerifyListener onVerifyListener = this.verifyListener;
        if (onVerifyListener != null) {
            onVerifyListener.receiveVerifyData(verifyData);
        }
        dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063327, this, savedInstanceState);
    }

    @NotNull
    public final SecurityVerificationDialog setVerifyListener(@NotNull OnVerifyListener verifyListener) {
        Intrinsics.checkNotNullParameter(verifyListener, "verifyListener");
        this.verifyListener = verifyListener;
        return this;
    }
}
