package com.onyx.galaxy.note.datarepository.p045ui;

import android.view.View;
import android.webkit.JavascriptInterface;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.LoginTriggerFrom;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.event.StatisticLoginPageShowEvent;
import com.onyx.android.sdk.pay.data.OrderArgs;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.data.NavigationType;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentDataRepositoryBinding;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.download.DataRepositoryManager;
import com.onyx.galaxy.note.datarepository.p045ui.DataRepositoryFragment;
import com.onyx.galaxy.note.datarepository.p045ui.DataRepositoryFragment$getOnyxWebViewCallback$1;
import com.onyx.galaxy.note.datarepository.viewmodel.DataRepositoryViewModel;
import com.onyx.galaxy.note.member.action.OpenMemberChargeAction;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback;
import com.onyx.galaxy.note.usercenter.handler.MemberPriceHandler;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007J\b\u0010\b\u001a\u00020\u0004H\u0017J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006H\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0007J\b\u0010\u0010\u001a\u00020\u0006H\u0007J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0007J\b\u0010\u0012\u001a\u00020\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0017J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0007J\b\u0010\u0019\u001a\u00020\u0004H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016J\u0006\u0010\u001b\u001a\u00020\u0004¨\u0006\u001c"}, m61528d2 = {"com/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1", "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;", "", "subTitleRes", "", "p", "", "getToken", "onDocumentFinishLoading", "params", "pay", "downloadLibrary", "id", "deleteLibrary", "createNote", "checkLocalLibraries", "getUserShip", "openMemberCharge", "navigateBack", "addMaterials", "deleteMaterials", "type", "argsString", "navigate", "getPrices", "onWebViewTimeout", "onSSLDateInvalid", "hideLoading", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDataRepositoryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataRepositoryFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,387:1\n256#2,2:388\n256#2,2:390\n256#2,2:392\n*S KotlinDebug\n*F\n+ 1 DataRepositoryFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1\n*L\n265#1:388,2\n365#1:390,2\n368#1:392,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DataRepositoryFragment$getOnyxWebViewCallback$1 implements OnyxWebViewCallback {

    /* renamed from: a */
    public final /* synthetic */ DataRepositoryFragment f58066a;

    public DataRepositoryFragment$getOnyxWebViewCallback$1(DataRepositoryFragment dataRepositoryFragment) {
        this.f58066a = dataRepositoryFragment;
    }

    /* renamed from: i */
    public static final void m45530i(DataRepositoryFragment this$0, String params) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(params, "$params");
        this$0.m45514r0(params);
    }

    /* renamed from: j */
    public static final void m45531j(DataRepositoryFragment this$0, LibraryBean this_apply) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.m45517v0(this_apply);
    }

    /* renamed from: k */
    public static final void m45532k(DataRepositoryFragment this$0) {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentDataRepositoryBinding = this$0.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        TintLinearLayout loadingView = fragmentDataRepositoryBinding.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewExtKt.startAlphaAnimation$default(loadingView, 0.0f, 0.0f, 0L, null, 13, null);
    }

    /* renamed from: l */
    public static final void m45533l() {
        StatisticsBundle.INSTANCE.postEvent(new StatisticLoginPageShowEvent(LoginTriggerFrom.MATERIAL_DOWNLOAD));
    }

    /* renamed from: m */
    public static final void m45534m(DataRepositoryFragment this$0) {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentDataRepositoryBinding = this$0.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        fragmentDataRepositoryBinding.backButton.performClick();
    }

    /* renamed from: n */
    public static final void m45535n(DataRepositoryFragment this$0) {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding2;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding3;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentDataRepositoryBinding = this$0.binding;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding5 = null;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentDataRepositoryBinding.titleBar, true);
        fragmentDataRepositoryBinding2 = this$0.binding;
        if (fragmentDataRepositoryBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding2 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentDataRepositoryBinding2.webView, true);
        fragmentDataRepositoryBinding3 = this$0.binding;
        if (fragmentDataRepositoryBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding3 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentDataRepositoryBinding3.webViewTimeoutLayout.getRoot(), false);
        fragmentDataRepositoryBinding4 = this$0.binding;
        if (fragmentDataRepositoryBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentDataRepositoryBinding5 = fragmentDataRepositoryBinding4;
        }
        ImageView backButton = fragmentDataRepositoryBinding5.backButton;
        Intrinsics.checkNotNullExpressionValue(backButton, "backButton");
        backButton.setVisibility(8);
    }

    /* renamed from: o */
    public static final void m45536o(FeatureChargeArgs args, DataRepositoryFragment this$0) {
        Intrinsics.checkNotNullParameter(args, "$args");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OpenMemberChargeAction openMemberChargeAction = new OpenMemberChargeAction(args);
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        RxBaseAction.execute$default(openMemberChargeAction.setActivityContext(requireActivity), null, null, null, 7, null);
    }

    /* renamed from: q */
    public static final void m45537q(DataRepositoryFragment this$0, int i) {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding2;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding3;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding4;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding5;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentDataRepositoryBinding = this$0.binding;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding6 = null;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        LinearLayout root = fragmentDataRepositoryBinding.webViewTimeoutLayout.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(0);
        fragmentDataRepositoryBinding2 = this$0.binding;
        if (fragmentDataRepositoryBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding2 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentDataRepositoryBinding2.titleBar, true);
        fragmentDataRepositoryBinding3 = this$0.binding;
        if (fragmentDataRepositoryBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding3 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentDataRepositoryBinding3.webView, false);
        fragmentDataRepositoryBinding4 = this$0.binding;
        if (fragmentDataRepositoryBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding4 = null;
        }
        ImageView backButton = fragmentDataRepositoryBinding4.backButton;
        Intrinsics.checkNotNullExpressionValue(backButton, "backButton");
        backButton.setVisibility(0);
        fragmentDataRepositoryBinding5 = this$0.binding;
        if (fragmentDataRepositoryBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentDataRepositoryBinding6 = fragmentDataRepositoryBinding5;
        }
        fragmentDataRepositoryBinding6.webViewTimeoutLayout.tvErrorSubTitle.setText(ResManager.INSTANCE.getStringSafely(i));
    }

    @JavascriptInterface
    public final void addMaterials(@NotNull final String params) {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        Intrinsics.checkNotNullParameter(params, "params");
        fragmentDataRepositoryBinding = this.f58066a.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        View root = fragmentDataRepositoryBinding.getRoot();
        final DataRepositoryFragment dataRepositoryFragment = this.f58066a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.uue
            @Override // java.lang.Runnable
            public final void run() {
                DataRepositoryFragment$getOnyxWebViewCallback$1.m45530i(DataRepositoryFragment.this, params);
            }
        });
    }

    @JavascriptInterface
    @NotNull
    public final String checkLocalLibraries(@NotNull String params) {
        List m45516u0;
        Intrinsics.checkNotNullParameter(params, "params");
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        m45516u0 = this.f58066a.m45516u0(params);
        String json = jSONUtils.toJson(m45516u0);
        return json == null ? "" : json;
    }

    @JavascriptInterface
    public final void createNote(@NotNull String params) {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        Intrinsics.checkNotNullParameter(params, "params");
        final LibraryBean libraryBean = (LibraryBean) JSONUtils.INSTANCE.parseObject(params, LibraryBean.class);
        if (libraryBean != null) {
            final DataRepositoryFragment dataRepositoryFragment = this.f58066a;
            fragmentDataRepositoryBinding = dataRepositoryFragment.binding;
            if (fragmentDataRepositoryBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentDataRepositoryBinding = null;
            }
            fragmentDataRepositoryBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.sue
                @Override // java.lang.Runnable
                public final void run() {
                    DataRepositoryFragment$getOnyxWebViewCallback$1.m45531j(DataRepositoryFragment.this, libraryBean);
                }
            });
        }
    }

    @JavascriptInterface
    public final void deleteLibrary(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        DataRepositoryManager.INSTANCE.deleteLibrary(id);
    }

    @JavascriptInterface
    public final void deleteMaterials(@NotNull String params) {
        DataRepositoryViewModel m45513q0;
        Intrinsics.checkNotNullParameter(params, "params");
        m45513q0 = this.f58066a.m45513q0();
        m45513q0.deleteMaterials(params);
    }

    @JavascriptInterface
    public final void downloadLibrary(@NotNull String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        LibraryBean libraryBean = (LibraryBean) JSONUtils.INSTANCE.parseObject(params, LibraryBean.class);
        if (libraryBean != null) {
            DataRepositoryManager.INSTANCE.addDownloadTask(libraryBean);
        }
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    @Nullable
    public String getHeaders() {
        return OnyxWebViewCallback.DefaultImpls.getHeaders(this);
    }

    @JavascriptInterface
    public final void getPrices(@NotNull String params) {
        MemberPriceHandler memberPriceHandler;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        Intrinsics.checkNotNullParameter(params, "params");
        memberPriceHandler = this.f58066a.priceHandler;
        fragmentDataRepositoryBinding = this.f58066a.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        OnyxWebView webView = fragmentDataRepositoryBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        memberPriceHandler.getProductsPrice(params, webView);
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

    @JavascriptInterface
    @NotNull
    public final String getUserShip() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        String json = jSONUtils.toJson(onyxAccount != null ? onyxAccount.getRoles() : null);
        return json == null ? "" : json;
    }

    public final void hideLoading() {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        long j = ResManager.INSTANCE.getLong(C7373R.integer.delay_time_dialog_close);
        fragmentDataRepositoryBinding = this.f58066a.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        View root = fragmentDataRepositoryBinding.getRoot();
        final DataRepositoryFragment dataRepositoryFragment = this.f58066a;
        root.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.yue
            @Override // java.lang.Runnable
            public final void run() {
                DataRepositoryFragment$getOnyxWebViewCallback$1.m45532k(DataRepositoryFragment.this);
            }
        }, j);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void navigate(@NotNull String type, @NotNull String argsString) {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(argsString, "argsString");
        OnyxWebViewCallback.DefaultImpls.navigate(this, type, argsString);
        if (Intrinsics.areEqual(type, NavigationType.LOGIN)) {
            fragmentDataRepositoryBinding = this.f58066a.binding;
            if (fragmentDataRepositoryBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentDataRepositoryBinding = null;
            }
            fragmentDataRepositoryBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.wue
                @Override // java.lang.Runnable
                public final void run() {
                    DataRepositoryFragment$getOnyxWebViewCallback$1.m45533l();
                }
            });
        }
    }

    @JavascriptInterface
    public final void navigateBack() {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        fragmentDataRepositoryBinding = this.f58066a.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        View root = fragmentDataRepositoryBinding.getRoot();
        final DataRepositoryFragment dataRepositoryFragment = this.f58066a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.zue
            @Override // java.lang.Runnable
            public final void run() {
                DataRepositoryFragment$getOnyxWebViewCallback$1.m45534m(DataRepositoryFragment.this);
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
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        fragmentDataRepositoryBinding = this.f58066a.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        View root = fragmentDataRepositoryBinding.getRoot();
        final DataRepositoryFragment dataRepositoryFragment = this.f58066a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.xue
            @Override // java.lang.Runnable
            public final void run() {
                DataRepositoryFragment$getOnyxWebViewCallback$1.m45535n(DataRepositoryFragment.this);
            }
        });
        hideLoading();
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
        m45538p(C10651R.string.user_tip_network_ssl_date_invalid);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onTokenExpired() {
        OnyxWebViewCallback.DefaultImpls.onTokenExpired(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onWebViewTimeout() {
        m45538p(C10651R.string.user_tip_bad_network);
    }

    @JavascriptInterface
    public final void openMemberCharge(@NotNull String params) {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        Intrinsics.checkNotNullParameter(params, "params");
        final FeatureChargeArgs featureChargeArgs = (FeatureChargeArgs) JSONUtils.INSTANCE.parseObject(params, FeatureChargeArgs.class);
        if (featureChargeArgs == null) {
            return;
        }
        fragmentDataRepositoryBinding = this.f58066a.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        OnyxWebView onyxWebView = fragmentDataRepositoryBinding.webView;
        final DataRepositoryFragment dataRepositoryFragment = this.f58066a;
        onyxWebView.post(new Runnable() { // from class: com.sunia.HTREnginev2.tue
            @Override // java.lang.Runnable
            public final void run() {
                DataRepositoryFragment$getOnyxWebViewCallback$1.m45536o(FeatureChargeArgs.this, dataRepositoryFragment);
            }
        });
    }

    /* renamed from: p */
    public final void m45538p(final int subTitleRes) {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding;
        fragmentDataRepositoryBinding = this.f58066a.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        View root = fragmentDataRepositoryBinding.getRoot();
        final DataRepositoryFragment dataRepositoryFragment = this.f58066a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.vue
            @Override // java.lang.Runnable
            public final void run() {
                DataRepositoryFragment$getOnyxWebViewCallback$1.m45537q(DataRepositoryFragment.this, subTitleRes);
            }
        });
        hideLoading();
    }

    @JavascriptInterface
    public final void pay(@NotNull String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        OrderArgs orderArgs = (OrderArgs) JSONUtils.INSTANCE.parseObject(params, OrderArgs.class);
        if (orderArgs == null) {
            return;
        }
        this.f58066a.m45518x0(orderArgs);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void reportStatistic(@NotNull String str) {
        OnyxWebViewCallback.DefaultImpls.reportStatistic(this, str);
    }
}
