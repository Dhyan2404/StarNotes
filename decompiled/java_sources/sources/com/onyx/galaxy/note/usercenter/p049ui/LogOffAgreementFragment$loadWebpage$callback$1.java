package com.onyx.galaxy.note.usercenter.p049ui;

import android.view.View;
import android.webkit.JavascriptInterface;
import android.widget.LinearLayout;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.databinding.FragmentLogOffAgreementBinding;
import com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback;
import com.onyx.galaxy.note.usercenter.p049ui.LogOffAgreementFragment;
import com.onyx.galaxy.note.usercenter.p049ui.LogOffAgreementFragment$loadWebpage$callback$1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\b\u0010\u0006\u001a\u00020\u0004H\u0007J\b\u0010\u0007\u001a\u00020\u0004H\u0017J\b\u0010\b\u001a\u00020\u0004H\u0017J\b\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0002¨\u0006\f"}, m61528d2 = {"com/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1", "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;", "", "getHistoryNoteCount", "", "onContinue", "onLogoff", "onDocumentFinishLoading", "onWebViewTimeout", "onSSLDateInvalid", "subTitleRes", "i", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LogOffAgreementFragment$loadWebpage$callback$1 implements OnyxWebViewCallback {

    /* renamed from: a */
    public final /* synthetic */ LogOffAgreementFragment f62434a;

    public LogOffAgreementFragment$loadWebpage$callback$1(LogOffAgreementFragment logOffAgreementFragment) {
        this.f62434a = logOffAgreementFragment;
    }

    /* renamed from: f */
    public static final void m51689f(LogOffAgreementFragment this$0) {
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentLogOffAgreementBinding = this$0.binding;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        fragmentLogOffAgreementBinding.backButton.performClick();
    }

    /* renamed from: g */
    public static final void m51690g(LogOffAgreementFragment this$0) {
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding2;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentLogOffAgreementBinding = this$0.binding;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding4 = null;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentLogOffAgreementBinding.titleBar, true);
        fragmentLogOffAgreementBinding2 = this$0.binding;
        if (fragmentLogOffAgreementBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding2 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentLogOffAgreementBinding2.webView, true);
        fragmentLogOffAgreementBinding3 = this$0.binding;
        if (fragmentLogOffAgreementBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLogOffAgreementBinding4 = fragmentLogOffAgreementBinding3;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentLogOffAgreementBinding4.offlinePlaceholderView, false);
    }

    /* renamed from: h */
    public static final void m51691h(LogOffAgreementFragment this$0) {
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentLogOffAgreementBinding = this$0.binding;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        LinearLayout loadingView = fragmentLogOffAgreementBinding.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewExtKt.startAlphaAnimation$default(loadingView, 0.0f, 0.0f, 0L, null, 13, null);
    }

    /* renamed from: j */
    public static final void m51692j(LogOffAgreementFragment this$0, int i) {
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding2;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding3;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentLogOffAgreementBinding = this$0.binding;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding5 = null;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        fragmentLogOffAgreementBinding.tipText.setText(ResManager.INSTANCE.getStringSafely(i));
        fragmentLogOffAgreementBinding2 = this$0.binding;
        if (fragmentLogOffAgreementBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding2 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentLogOffAgreementBinding2.titleBar, true);
        fragmentLogOffAgreementBinding3 = this$0.binding;
        if (fragmentLogOffAgreementBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding3 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentLogOffAgreementBinding3.webView, false);
        fragmentLogOffAgreementBinding4 = this$0.binding;
        if (fragmentLogOffAgreementBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLogOffAgreementBinding5 = fragmentLogOffAgreementBinding4;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentLogOffAgreementBinding5.offlinePlaceholderView, true);
    }

    /* renamed from: k */
    public static final void m51693k(LogOffAgreementFragment this$0) {
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentLogOffAgreementBinding = this$0.binding;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        LinearLayout loadingView = fragmentLogOffAgreementBinding.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewExtKt.startAlphaAnimation$default(loadingView, 0.0f, 0.0f, 0L, null, 13, null);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    @Nullable
    public String getHeaders() {
        return OnyxWebViewCallback.DefaultImpls.getHeaders(this);
    }

    @JavascriptInterface
    public final int getHistoryNoteCount() {
        return NoteTreeBundle.FilterManager.INSTANCE.getQuotaInfo().getDocHistoryCount();
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public int getThemeCode() {
        return OnyxWebViewCallback.DefaultImpls.getThemeCode(this);
    }

    /* renamed from: i */
    public final void m51694i(final int subTitleRes) {
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding2;
        fragmentLogOffAgreementBinding = this.f62434a.binding;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding3 = null;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        View root = fragmentLogOffAgreementBinding.getRoot();
        final LogOffAgreementFragment logOffAgreementFragment = this.f62434a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.x2j
            @Override // java.lang.Runnable
            public final void run() {
                LogOffAgreementFragment$loadWebpage$callback$1.m51692j(LogOffAgreementFragment.this, subTitleRes);
            }
        });
        long j = ResManager.INSTANCE.getLong(C7373R.integer.delay_time_dialog_close);
        fragmentLogOffAgreementBinding2 = this.f62434a.binding;
        if (fragmentLogOffAgreementBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLogOffAgreementBinding3 = fragmentLogOffAgreementBinding2;
        }
        View root2 = fragmentLogOffAgreementBinding3.getRoot();
        final LogOffAgreementFragment logOffAgreementFragment2 = this.f62434a;
        root2.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.y2j
            @Override // java.lang.Runnable
            public final void run() {
                LogOffAgreementFragment$loadWebpage$callback$1.m51693k(LogOffAgreementFragment.this);
            }
        }, j);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void navigate(@NotNull String str, @NotNull String str2) {
        OnyxWebViewCallback.DefaultImpls.navigate(this, str, str2);
    }

    @JavascriptInterface
    public final void onContinue() {
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding;
        fragmentLogOffAgreementBinding = this.f62434a.binding;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        View root = fragmentLogOffAgreementBinding.getRoot();
        final LogOffAgreementFragment logOffAgreementFragment = this.f62434a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.w2j
            @Override // java.lang.Runnable
            public final void run() {
                LogOffAgreementFragment$loadWebpage$callback$1.m51689f(LogOffAgreementFragment.this);
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
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding2;
        fragmentLogOffAgreementBinding = this.f62434a.binding;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding3 = null;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        View root = fragmentLogOffAgreementBinding.getRoot();
        final LogOffAgreementFragment logOffAgreementFragment = this.f62434a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.z2j
            @Override // java.lang.Runnable
            public final void run() {
                LogOffAgreementFragment$loadWebpage$callback$1.m51690g(LogOffAgreementFragment.this);
            }
        });
        long j = ResManager.INSTANCE.getLong(C7373R.integer.delay_time_dialog_close);
        fragmentLogOffAgreementBinding2 = this.f62434a.binding;
        if (fragmentLogOffAgreementBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLogOffAgreementBinding3 = fragmentLogOffAgreementBinding2;
        }
        View root2 = fragmentLogOffAgreementBinding3.getRoot();
        final LogOffAgreementFragment logOffAgreementFragment2 = this.f62434a;
        root2.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.a3j
            @Override // java.lang.Runnable
            public final void run() {
                LogOffAgreementFragment$loadWebpage$callback$1.m51691h(LogOffAgreementFragment.this);
            }
        }, j);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onDocumentStartLoading() {
        OnyxWebViewCallback.DefaultImpls.onDocumentStartLoading(this);
    }

    @JavascriptInterface
    public final void onLogoff() {
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding;
        fragmentLogOffAgreementBinding = this.f62434a.binding;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        View root = fragmentLogOffAgreementBinding.getRoot();
        final LogOffAgreementFragment logOffAgreementFragment = this.f62434a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.b3j
            @Override // java.lang.Runnable
            public final void run() {
                LogOffAgreementFragment.this.m51682w0();
            }
        });
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onReloadAccount() {
        OnyxWebViewCallback.DefaultImpls.onReloadAccount(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onSSLDateInvalid() {
        m51694i(C10651R.string.user_tip_network_ssl_date_invalid);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onTokenExpired() {
        OnyxWebViewCallback.DefaultImpls.onTokenExpired(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onWebViewTimeout() {
        m51694i(C10651R.string.user_tip_bad_network);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void reportStatistic(@NotNull String str) {
        OnyxWebViewCallback.DefaultImpls.reportStatistic(this, str);
    }
}
