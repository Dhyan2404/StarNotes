package com.onyx.galaxy.note.datarepository.p045ui;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.account.event.VipRoleChanged;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.pay.data.OrderArgs;
import com.onyx.android.sdk.pay.data.PayResult;
import com.onyx.android.sdk.pay.view.PayDialog;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.PolicyType;
import com.onyx.galaxy.note.account.view.dialog.PolicyDialog;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.NCreateNoteModelResultEvent;
import com.onyx.galaxy.note.common.action.PayAction;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.constant.WebJSConstants;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.databinding.FragmentDataRepositoryBinding;
import com.onyx.galaxy.note.datarepository.action.CreateNoteAction;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.download.DataRepositoryManager;
import com.onyx.galaxy.note.datarepository.event.DownloadEvent;
import com.onyx.galaxy.note.datarepository.p045ui.DataRepositoryFragment;
import com.onyx.galaxy.note.datarepository.viewmodel.DataRepositoryViewModel;
import com.onyx.galaxy.note.editor.handler.ProgressEventHandler;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleActivity;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.usercenter.handler.MemberPriceHandler;
import com.onyx.galaxy.note.utils.Navigator;
import com.onyx.galaxy.note.utils.WebViewExt;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0097\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0018\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bC\u0010DJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00152\u0006\u0010\u000f\u001a\u00020\u0006H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0006H\u0002J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0016\u0010\u001d\u001a\u00020\u00022\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0015H\u0002J\u0012\u0010 \u001a\u00020\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J$\u0010'\u001a\u00020&2\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010)\u001a\u00020\u00022\u0006\u0010(\u001a\u00020&2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020*H\u0007J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0007J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020/H\u0007R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u001b\u0010>\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010A¨\u0006E"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "A0", "B0", "y0", "", "id", "D0", "C0", "F0", "Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;", NotificationCompat.CATEGORY_EVENT, "E0", "Lcom/onyx/android/sdk/pay/data/OrderArgs;", "params", "x0", "t0", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "data", "v0", "", "u0", "r0", "com/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1", "p0", "()Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "notes", "o0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", "onNetworkChanged", "onDownloadEvent", "Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;", "onVipRoleChange", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", "onAccountChangedEvent", "Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;", "binding", "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;", "e1", "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;", "progressEventHandler", "Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;", "f1", "Lkotlin/Lazy;", "q0", "()Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;", "viewmodel", "Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;", "g1", "Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;", "priceHandler", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class DataRepositoryFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentDataRepositoryBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @Nullable
    public ProgressEventHandler progressEventHandler;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewmodel;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final MemberPriceHandler priceHandler;

    /* renamed from: com.onyx.galaxy.note.datarepository.ui.DataRepositoryFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11767a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f58064e;

        public C11767a(LoadingDialog loadingDialog) {
            this.f58064e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadingDialog loadingDialog = this.f58064e;
            if (loadingDialog != null) {
                loadingDialog.dismiss();
            }
        }
    }

    public DataRepositoryFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DataRepositoryViewModel>() { // from class: com.onyx.galaxy.note.datarepository.ui.DataRepositoryFragment$viewmodel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DataRepositoryViewModel invoke() {
                return (DataRepositoryViewModel) FragmentKt.getViewModel(DataRepositoryFragment.this, DataRepositoryViewModel.class);
            }
        });
        this.viewmodel = lazy;
        this.priceHandler = new MemberPriceHandler();
    }

    /* renamed from: s0 */
    public static final void m45502s0(LoadingDialog loadingDialog, Object obj) {
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
    }

    /* renamed from: w0 */
    public static final void m45503w0(DataRepositoryFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ProgressEventHandler progressEventHandler = this$0.progressEventHandler;
        if (progressEventHandler != null) {
            progressEventHandler.destroy();
        }
    }

    /* renamed from: z0 */
    public static final void m45504z0(DataRepositoryFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m45515t0();
    }

    /* renamed from: A0 */
    public final void m45505A0() {
        m45506B0();
    }

    /* renamed from: B0 */
    public final void m45506B0() {
        String navigateToDataUrl;
        Bundle arguments = getArguments();
        if (arguments == null || (navigateToDataUrl = arguments.getString("url")) == null) {
            navigateToDataUrl = Navigator.INSTANCE.getNavigateToDataUrl();
        }
        Intrinsics.checkNotNull(navigateToDataUrl);
        final DataRepositoryFragment$getOnyxWebViewCallback$1 m45512p0 = m45512p0();
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding = this.binding;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding2 = null;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        fragmentDataRepositoryBinding.webView.setWebViewCallback(m45512p0);
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding3 = this.binding;
        if (fragmentDataRepositoryBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding3 = null;
        }
        fragmentDataRepositoryBinding3.webView.registerNativeObject("native", m45512p0);
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding4 = this.binding;
        if (fragmentDataRepositoryBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding4 = null;
        }
        fragmentDataRepositoryBinding4.webView.openWebpage(navigateToDataUrl);
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding5 = this.binding;
        if (fragmentDataRepositoryBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding5 = null;
        }
        TintLinearLayout loadingView = fragmentDataRepositoryBinding5.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewExtKt.startAlphaAnimation$default(loadingView, 0.0f, 1.0f, 0L, null, 13, null);
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding6 = this.binding;
        if (fragmentDataRepositoryBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding6 = null;
        }
        fragmentDataRepositoryBinding6.webView.setFocusable(true);
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding7 = this.binding;
        if (fragmentDataRepositoryBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentDataRepositoryBinding2 = fragmentDataRepositoryBinding7;
        }
        fragmentDataRepositoryBinding2.webView.setFocusableInTouchMode(true);
        NetworkCheckAction.Companion.checkNetwork$default(NetworkCheckAction.INSTANCE, null, new Function1<Throwable, Unit>() { // from class: com.onyx.galaxy.note.datarepository.ui.DataRepositoryFragment$loadWebpage$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DataRepositoryFragment$getOnyxWebViewCallback$1.this.onWebViewTimeout();
            }
        }, null, false, 5, null);
    }

    /* renamed from: C0 */
    public final void m45507C0(final String id) {
        Object obj = new Object(id) { // from class: com.onyx.galaxy.note.datarepository.ui.DataRepositoryFragment$payFail$nativeArgs$1

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public final String id;

            {
                this.id = id;
            }

            @NotNull
            public final String getId() {
                return this.id;
            }
        };
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding = this.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        OnyxWebView webView = fragmentDataRepositoryBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.ERROR_FOR_PAY, obj, (Function1) null, (Function1) null, 12, (Object) null);
    }

    /* renamed from: D0 */
    public final void m45508D0(final String id) {
        Object obj = new Object(id) { // from class: com.onyx.galaxy.note.datarepository.ui.DataRepositoryFragment$paySuccess$nativeArgs$1

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public final String id;

            {
                this.id = id;
            }

            @NotNull
            public final String getId() {
                return this.id;
            }
        };
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding = this.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        OnyxWebView webView = fragmentDataRepositoryBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.SUCCESS_FOR_PAY, obj, (Function1) null, (Function1) null, 12, (Object) null);
    }

    /* renamed from: E0 */
    public final void m45509E0(final DownloadEvent event) {
        Object obj = new Object(event) { // from class: com.onyx.galaxy.note.datarepository.ui.DataRepositoryFragment$refreshProgress$nativeArgs$1

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public final String id;

            /* renamed from: b, reason: from kotlin metadata */
            public final int percent;

            /* renamed from: c, reason: from kotlin metadata */
            public final int status;

            {
                this.id = event.getId();
                this.percent = event.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String();
                this.status = event.getStatus();
            }

            @NotNull
            public final String getId() {
                return this.id;
            }

            public final int getPercent() {
                return this.percent;
            }

            public final int getStatus() {
                return this.status;
            }
        };
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding = this.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        OnyxWebView webView = fragmentDataRepositoryBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.REFRESH_PROGRESS, obj, (Function1) null, (Function1) null, 12, (Object) null);
    }

    /* renamed from: F0 */
    public final void m45510F0() {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding = this.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        OnyxWebView webView = fragmentDataRepositoryBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.REFRESH_USER_SHIP, (Object) null, (Function1) null, (Function1) null, 14, (Object) null);
    }

    /* renamed from: o0 */
    public final void m45511o0(List<? extends SyncNoteModel> notes) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) notes);
        SyncNoteModel syncNoteModel = (SyncNoteModel) firstOrNull;
        if (syncNoteModel == null) {
            return;
        }
        DocCollectionBundle.INSTANCE.postEvent(new NCreateNoteModelResultEvent(syncNoteModel));
        if (notes.size() != 1) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.multi_library_create_success, false, 2, (Object) null);
            return;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.single_library_create_success, false, 2, (Object) null);
        NoteScribbleActivity.INSTANCE.openNewTask(syncNoteModel);
        FragmentKt.finishActivity(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountChangedEvent(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!NoteConfigManager.INSTANCE.getNoteEditConfigInfo().isDataRepositoryNeedRedirection()) {
            m45510F0();
        } else {
            Navigator.navigateToDataRepository$default(Navigator.INSTANCE, null, 1, null);
            FragmentKt.finishActivity(this);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063285, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentDataRepositoryBinding inflate = FragmentDataRepositoryBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        GlobalBundle.INSTANCE.unregister(this);
        AccountDataBundle.INSTANCE.getEventBusHolder().unRegister(this);
        ProgressEventHandler progressEventHandler = this.progressEventHandler;
        if (progressEventHandler != null) {
            progressEventHandler.destroy();
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDownloadEvent(@NotNull DownloadEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m45509E0(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkChanged(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            FragmentDataRepositoryBinding fragmentDataRepositoryBinding = this.binding;
            if (fragmentDataRepositoryBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentDataRepositoryBinding = null;
            }
            if (ViewKt.isVisible(fragmentDataRepositoryBinding.webView)) {
                return;
            }
            m45506B0();
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m45505A0();
        m45519y0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVipRoleChange(@NotNull VipRoleChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (AccountDataBundle.INSTANCE.isVipRole()) {
            m45510F0();
        }
    }

    /* renamed from: p0 */
    public final DataRepositoryFragment$getOnyxWebViewCallback$1 m45512p0() {
        return new DataRepositoryFragment$getOnyxWebViewCallback$1(this);
    }

    /* renamed from: q0 */
    public final DataRepositoryViewModel m45513q0() {
        return (DataRepositoryViewModel) this.viewmodel.getValue();
    }

    /* renamed from: r0 */
    public final void m45514r0(String params) {
        Context context = getContext();
        final LoadingDialog createLoadingDialog = context != null ? ContextExtKt.createLoadingDialog(context) : null;
        if (createLoadingDialog != null) {
            String string = getString(C10651R.string.adding);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            createLoadingDialog.updateTitle(string);
        }
        if (createLoadingDialog != null) {
            createLoadingDialog.show();
        }
        m45513q0().addMaterials(params).observe(getViewLifecycleOwner(), new Observer() { // from class: com.sunia.HTREnginev2.rue
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                DataRepositoryFragment.m45502s0(LoadingDialog.this, obj);
            }
        });
    }

    /* renamed from: t0 */
    public final void m45515t0() {
        WebViewExt webViewExt = WebViewExt.INSTANCE;
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding = this.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        OnyxWebView webView = fragmentDataRepositoryBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        webViewExt.onBackPressed(webView, new Function0<Unit>() { // from class: com.onyx.galaxy.note.datarepository.ui.DataRepositoryFragment$handleBack$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                FragmentKt.finishActivity(DataRepositoryFragment.this);
            }
        });
    }

    /* renamed from: u0 */
    public final List<DownloadEvent> m45516u0(String params) {
        List<DownloadEvent> emptyList;
        List<LibraryBean> libraryList = m45513q0().toLibraryList(params);
        if (!libraryList.isEmpty()) {
            return DataRepositoryManager.INSTANCE.checkLocalLibraries(libraryList);
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    /* renamed from: v0 */
    public final void m45517v0(LibraryBean data) {
        Context context = getContext();
        LoadingDialog createLoadingDialog = context != null ? ContextExtKt.createLoadingDialog(context) : null;
        if (createLoadingDialog != null) {
            String string = getString(C10651R.string.creating_note);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            createLoadingDialog.updateTitle(string);
        }
        if (createLoadingDialog != null) {
            createLoadingDialog.show();
        }
        ProgressEventHandler progressEventHandler = this.progressEventHandler;
        if (progressEventHandler != null) {
            progressEventHandler.destroy();
        }
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        EditorBundleKt.register(docManagerBundle, requireActivity);
        FragmentActivity requireActivity2 = requireActivity();
        Intrinsics.checkNotNull(requireActivity2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        ProgressEventHandler progressEventHandler2 = new ProgressEventHandler((AppCompatActivity) requireActivity2, docManagerBundle);
        this.progressEventHandler = progressEventHandler2;
        progressEventHandler2.disableToast();
        FragmentActivity requireActivity3 = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity3, "requireActivity(...)");
        new CreateNoteAction(requireActivity3, data).build().subscribeOn(AndroidSchedulers.mainThread()).doOnSubscribe(new C11767a(createLoadingDialog)).doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.datarepository.ui.DataRepositoryFragment.b
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<? extends SyncNoteModel> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                DataRepositoryFragment.this.m45511o0(p0);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.pue
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DataRepositoryFragment.m45503w0(DataRepositoryFragment.this);
            }
        }).subscribe();
    }

    /* renamed from: x0 */
    public final void m45518x0(final OrderArgs params) {
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
        RxBaseAction.execute$default(new PayAction(childFragmentManager, params, new PayDialog.PayListener() { // from class: com.onyx.galaxy.note.datarepository.ui.DataRepositoryFragment$handlePay$1
            @Override // com.onyx.android.sdk.pay.view.PayDialog.PayListener
            public void onPayResult(@NotNull PayResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (result.isSuccess()) {
                    DataRepositoryFragment.this.m45508D0(params.getOrderId());
                } else {
                    DataRepositoryFragment.this.m45507C0(params.getOrderId());
                }
            }

            @Override // com.onyx.android.sdk.pay.view.PayDialog.PayListener
            public void onPaymentAgreement() {
                Context requireContext = DataRepositoryFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                new PolicyDialog(requireContext, PolicyType.MEMBER_PAYMENT_AGREEMENT).show();
            }
        }), null, null, null, 7, null);
    }

    /* renamed from: y0 */
    public final void m45519y0() {
        FragmentDataRepositoryBinding fragmentDataRepositoryBinding = this.binding;
        if (fragmentDataRepositoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentDataRepositoryBinding = null;
        }
        ImageView backButton = fragmentDataRepositoryBinding.backButton;
        Intrinsics.checkNotNullExpressionValue(backButton, "backButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(backButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.que
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DataRepositoryFragment.m45504z0(DataRepositoryFragment.this, view);
            }
        }, 1, null);
        requireActivity().getOnBackPressedDispatcher().addCallback(new OnBackPressedCallback() { // from class: com.onyx.galaxy.note.datarepository.ui.DataRepositoryFragment$initListener$2
            {
                super(true);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                DataRepositoryFragment.this.m45515t0();
            }
        });
    }
}
