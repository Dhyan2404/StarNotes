package com.onyx.galaxy.note.usercenter.p049ui;

import android.view.View;
import android.webkit.JavascriptInterface;
import android.widget.LinearLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.ReloadAccountAction;
import com.onyx.android.sdk.data.account.event.VipRoleChanged;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction;
import com.onyx.galaxy.note.common.data.JavascriptEvents;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.databinding.FragmentUserCenterBinding;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback;
import com.onyx.galaxy.note.usercenter.handler.MemberPriceHandler;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterFragment;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterFragment$loadWebpage$callback$1;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\b\u0010\u0006\u001a\u00020\u0004H\u0007J\b\u0010\u0007\u001a\u00020\u0004H\u0017J\b\u0010\b\u001a\u00020\u0004H\u0007J\u001a\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0007J\b\u0010\r\u001a\u00020\u0004H\u0017J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\tH\u0007J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0002H\u0002¨\u0006\u0013"}, m61528d2 = {"com/onyx/galaxy/note/usercenter/ui/UserCenterFragment$loadWebpage$callback$1", "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;", "", "getHistoryNoteCount", "", "gotoAccountSettings", "navigateBack", "onDocumentFinishLoading", "onJoinVip", "", "type", NotificationCompat.CATEGORY_EVENT, "onEvent", "onWebViewTimeout", "onSSLDateInvalid", "productArgs", "getVipPrice", "subTitleRes", "m", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UserCenterFragment$loadWebpage$callback$1 implements OnyxWebViewCallback {

    /* renamed from: a */
    public final /* synthetic */ UserCenterFragment f62492a;

    public UserCenterFragment$loadWebpage$callback$1(UserCenterFragment userCenterFragment) {
        this.f62492a = userCenterFragment;
    }

    /* renamed from: h */
    public static final void m51833h(UserCenterFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51824u0();
        FragmentKt.findNavController(this$0).navigate(C10651R.id.fragment_account_center);
    }

    /* renamed from: i */
    public static final void m51834i(UserCenterFragment this$0) {
        FragmentUserCenterBinding fragmentUserCenterBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentUserCenterBinding = this$0.binding;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        fragmentUserCenterBinding.backButton.performClick();
    }

    /* renamed from: j */
    public static final void m51835j(UserCenterFragment this$0) {
        FragmentUserCenterBinding fragmentUserCenterBinding;
        FragmentUserCenterBinding fragmentUserCenterBinding2;
        FragmentUserCenterBinding fragmentUserCenterBinding3;
        FragmentUserCenterBinding fragmentUserCenterBinding4;
        FragmentUserCenterBinding fragmentUserCenterBinding5;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentUserCenterBinding = this$0.binding;
        FragmentUserCenterBinding fragmentUserCenterBinding6 = null;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentUserCenterBinding.header1, true);
        fragmentUserCenterBinding2 = this$0.binding;
        if (fragmentUserCenterBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding2 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentUserCenterBinding2.header2, true);
        fragmentUserCenterBinding3 = this$0.binding;
        if (fragmentUserCenterBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding3 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentUserCenterBinding3.titleBar, false);
        fragmentUserCenterBinding4 = this$0.binding;
        if (fragmentUserCenterBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding4 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentUserCenterBinding4.webView, true);
        fragmentUserCenterBinding5 = this$0.binding;
        if (fragmentUserCenterBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentUserCenterBinding6 = fragmentUserCenterBinding5;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentUserCenterBinding6.offlinePlaceholderView, false);
    }

    /* renamed from: k */
    public static final void m51836k(UserCenterFragment this$0) {
        FragmentUserCenterBinding fragmentUserCenterBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentUserCenterBinding = this$0.binding;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        LinearLayout loadingView = fragmentUserCenterBinding.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewExtKt.startAlphaAnimation$default(loadingView, 0.0f, 0.0f, 0L, null, 13, null);
    }

    /* renamed from: l */
    public static final void m51837l() {
        AccountDataBundle.INSTANCE.postEvent(VipRoleChanged.INSTANCE);
    }

    /* renamed from: n */
    public static final void m51838n(UserCenterFragment this$0, int i) {
        FragmentUserCenterBinding fragmentUserCenterBinding;
        FragmentUserCenterBinding fragmentUserCenterBinding2;
        FragmentUserCenterBinding fragmentUserCenterBinding3;
        FragmentUserCenterBinding fragmentUserCenterBinding4;
        FragmentUserCenterBinding fragmentUserCenterBinding5;
        FragmentUserCenterBinding fragmentUserCenterBinding6;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentUserCenterBinding = this$0.binding;
        FragmentUserCenterBinding fragmentUserCenterBinding7 = null;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        fragmentUserCenterBinding.tipText.setText(ResManager.INSTANCE.getStringSafely(i));
        fragmentUserCenterBinding2 = this$0.binding;
        if (fragmentUserCenterBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding2 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentUserCenterBinding2.header1, true);
        fragmentUserCenterBinding3 = this$0.binding;
        if (fragmentUserCenterBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding3 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentUserCenterBinding3.header2, true);
        fragmentUserCenterBinding4 = this$0.binding;
        if (fragmentUserCenterBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding4 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentUserCenterBinding4.titleBar, true);
        fragmentUserCenterBinding5 = this$0.binding;
        if (fragmentUserCenterBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding5 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentUserCenterBinding5.webView, false);
        fragmentUserCenterBinding6 = this$0.binding;
        if (fragmentUserCenterBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentUserCenterBinding7 = fragmentUserCenterBinding6;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentUserCenterBinding7.offlinePlaceholderView, true);
    }

    /* renamed from: o */
    public static final void m51839o(UserCenterFragment this$0) {
        FragmentUserCenterBinding fragmentUserCenterBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentUserCenterBinding = this$0.binding;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        LinearLayout loadingView = fragmentUserCenterBinding.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewExtKt.startAlphaAnimation$default(loadingView, 0.0f, 0.0f, 0L, null, 13, null);
    }

    public static /* synthetic */ void onEvent$default(UserCenterFragment$loadWebpage$callback$1 userCenterFragment$loadWebpage$callback$1, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "{}";
        }
        userCenterFragment$loadWebpage$callback$1.onEvent(str, str2);
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

    @JavascriptInterface
    public final void getVipPrice(@NotNull String productArgs) {
        MemberPriceHandler memberPriceHandler;
        FragmentUserCenterBinding fragmentUserCenterBinding;
        Intrinsics.checkNotNullParameter(productArgs, "productArgs");
        memberPriceHandler = this.f62492a.memberPriceHandler;
        fragmentUserCenterBinding = this.f62492a.binding;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        OnyxWebView webView = fragmentUserCenterBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        memberPriceHandler.getVipPrice(productArgs, webView);
    }

    @JavascriptInterface
    public final void gotoAccountSettings() {
        FragmentUserCenterBinding fragmentUserCenterBinding;
        fragmentUserCenterBinding = this.f62492a.binding;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        View root = fragmentUserCenterBinding.getRoot();
        final UserCenterFragment userCenterFragment = this.f62492a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.jyn
            @Override // java.lang.Runnable
            public final void run() {
                UserCenterFragment$loadWebpage$callback$1.m51833h(UserCenterFragment.this);
            }
        });
    }

    /* renamed from: m */
    public final void m51840m(final int subTitleRes) {
        FragmentUserCenterBinding fragmentUserCenterBinding;
        FragmentUserCenterBinding fragmentUserCenterBinding2;
        fragmentUserCenterBinding = this.f62492a.binding;
        FragmentUserCenterBinding fragmentUserCenterBinding3 = null;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        View root = fragmentUserCenterBinding.getRoot();
        final UserCenterFragment userCenterFragment = this.f62492a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.gyn
            @Override // java.lang.Runnable
            public final void run() {
                UserCenterFragment$loadWebpage$callback$1.m51838n(UserCenterFragment.this, subTitleRes);
            }
        });
        long j = ResManager.INSTANCE.getLong(C7373R.integer.delay_time_dialog_close);
        fragmentUserCenterBinding2 = this.f62492a.binding;
        if (fragmentUserCenterBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentUserCenterBinding3 = fragmentUserCenterBinding2;
        }
        View root2 = fragmentUserCenterBinding3.getRoot();
        final UserCenterFragment userCenterFragment2 = this.f62492a;
        root2.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.hyn
            @Override // java.lang.Runnable
            public final void run() {
                UserCenterFragment$loadWebpage$callback$1.m51839o(UserCenterFragment.this);
            }
        }, j);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void navigate(@NotNull String str, @NotNull String str2) {
        OnyxWebViewCallback.DefaultImpls.navigate(this, str, str2);
    }

    @JavascriptInterface
    public final void navigateBack() {
        FragmentActivity requireActivity = this.f62492a.requireActivity();
        final UserCenterFragment userCenterFragment = this.f62492a;
        requireActivity.runOnUiThread(new Runnable() { // from class: com.sunia.HTREnginev2.myn
            @Override // java.lang.Runnable
            public final void run() {
                UserCenterFragment$loadWebpage$callback$1.m51834i(UserCenterFragment.this);
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
        FragmentUserCenterBinding fragmentUserCenterBinding;
        FragmentUserCenterBinding fragmentUserCenterBinding2;
        this.f62492a.m51823t0();
        fragmentUserCenterBinding = this.f62492a.binding;
        FragmentUserCenterBinding fragmentUserCenterBinding3 = null;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        View root = fragmentUserCenterBinding.getRoot();
        final UserCenterFragment userCenterFragment = this.f62492a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.kyn
            @Override // java.lang.Runnable
            public final void run() {
                UserCenterFragment$loadWebpage$callback$1.m51835j(UserCenterFragment.this);
            }
        });
        long j = ResManager.INSTANCE.getLong(C7373R.integer.delay_time_dialog_close);
        fragmentUserCenterBinding2 = this.f62492a.binding;
        if (fragmentUserCenterBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentUserCenterBinding3 = fragmentUserCenterBinding2;
        }
        View root2 = fragmentUserCenterBinding3.getRoot();
        final UserCenterFragment userCenterFragment2 = this.f62492a;
        root2.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.lyn
            @Override // java.lang.Runnable
            public final void run() {
                UserCenterFragment$loadWebpage$callback$1.m51836k(UserCenterFragment.this);
            }
        }, j);
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
        this.f62492a.m51825v0();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> doFinally = new ReloadAccountAction().build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.iyn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                UserCenterFragment$loadWebpage$callback$1.m51837l();
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
        m51840m(C10651R.string.user_tip_network_ssl_date_invalid);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onTokenExpired() {
        OnyxWebViewCallback.DefaultImpls.onTokenExpired(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onWebViewTimeout() {
        m51840m(C10651R.string.user_tip_bad_network);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void reportStatistic(@NotNull String str) {
        OnyxWebViewCallback.DefaultImpls.reportStatistic(this, str);
    }
}
