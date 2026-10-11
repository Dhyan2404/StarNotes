package com.onyx.galaxy.note.p048ui.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogWebviewGuideBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0015\u0010\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0003R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001b\u0010\u0012\u001a\u00020\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/dialog/GuideWebViewDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/webkit/WebView;", "webView", "b", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "e", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "guideInfo", "Lcom/onyx/galaxy/note/databinding/DialogWebviewGuideBinding;", C6997f.f39671c, "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogWebviewGuideBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/GuideInfo;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGuideWebViewDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideWebViewDialog.kt\ncom/onyx/galaxy/note/ui/dialog/GuideWebViewDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,62:1\n256#2,2:63\n*S KotlinDebug\n*F\n+ 1 GuideWebViewDialog.kt\ncom/onyx/galaxy/note/ui/dialog/GuideWebViewDialog\n*L\n36#1:63,2\n*E\n"})
/* loaded from: classes17.dex */
public final class GuideWebViewDialog extends Dialog {

    /* renamed from: g */
    @NotNull
    public static final String f61985g = "Android";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final GuideInfo guideInfo;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GuideWebViewDialog(@NotNull final Context context, @NotNull GuideInfo guideInfo) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(guideInfo, "guideInfo");
        this.guideInfo = guideInfo;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogWebviewGuideBinding>() { // from class: com.onyx.galaxy.note.ui.dialog.GuideWebViewDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogWebviewGuideBinding invoke() {
                DialogWebviewGuideBinding inflate = DialogWebviewGuideBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
    }

    /* renamed from: c */
    public static final void m51316c(GuideWebViewDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    @SuppressLint({"SetJavaScriptEnabled", "JavascriptInterface"})
    /* renamed from: b */
    public final void m51317b(WebView webView) {
        webView.getSettings().setDisplayZoomControls(false);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setCacheMode(2);
        webView.setWebViewClient(new WebViewClient() { // from class: com.onyx.galaxy.note.ui.dialog.GuideWebViewDialog$initWebView$1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(@NotNull WebView view, @NotNull String url) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(url, "url");
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(@NotNull WebView view, @NotNull String url) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(url, "url");
                view.loadUrl(url);
                return true;
            }
        });
        webView.getSettings().setJavaScriptEnabled(true);
        webView.addJavascriptInterface(this, f61985g);
    }

    @NotNull
    public final DialogWebviewGuideBinding getBinding() {
        return (DialogWebviewGuideBinding) this.binding.getValue();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063261, this, savedInstanceState);
    }
}
