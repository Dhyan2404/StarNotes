package com.onyx.galaxy.note.usercenter.p049ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavController;
import androidx.navigation.NavDirections;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.UpdateAccountAction;
import com.onyx.android.sdk.data.account.action.WechatVerifyAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.bean.WechatVerifyArgs;
import com.onyx.android.sdk.data.account.bean.WechatVerifyTypes;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.p039ui.DoubleOptionDialog;
import com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction;
import com.onyx.android.sdk.statistics.AuthResultListener;
import com.onyx.android.sdk.statistics.StatisticsManager;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentWechatVerifyBinding;
import com.onyx.galaxy.note.p048ui.dialog.MessageDialogAction;
import com.onyx.galaxy.note.p048ui.view.WechatLoadingDrawable;
import com.onyx.galaxy.note.usercenter.p049ui.WechatVerifyFragment;
import com.onyx.galaxy.note.usercenter.viewmodel.WechatVerifyViewModel;
import com.onyx.galaxy.note.utils.ServiceUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b.\u0010/J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0016H\u0007J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u0004H\u0002J\b\u0010 \u001a\u00020\u0004H\u0002J\b\u0010!\u001a\u00020\u0004H\u0002R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;", NotificationCompat.CATEGORY_EVENT, "onQrRefresh", "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;", "onQrVerified", "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", "onVerifyCodeWaitTimeUpdate", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", "onNetworkStatusChange", "p0", "v0", "w0", "t0", "z0", "u0", "B0", "y0", "C0", "x0", "Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;", "e1", "Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;", "verifyViewModel", "Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;", "f1", "Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;", "loadingDrawable", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class WechatVerifyFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentWechatVerifyBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final WechatVerifyViewModel verifyViewModel = new WechatVerifyViewModel();

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final WechatLoadingDrawable loadingDrawable = new WechatLoadingDrawable();

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12903a<T> implements Consumer {
        public C12903a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Map<String, String> mapOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            mapOf = MapsKt__MapsJVMKt.mapOf(new Pair(Constant.TAG_AUTHORIZATION, BaseCloudRequest.INSTANCE.getBearerToken(AccountDataBundle.INSTANCE.getAccountToken())));
            FragmentWechatVerifyBinding fragmentWechatVerifyBinding = WechatVerifyFragment.this.binding;
            if (fragmentWechatVerifyBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentWechatVerifyBinding = null;
            }
            fragmentWechatVerifyBinding.webWidget.loadUrlWithHeader(it2, mapOf);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12904b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ WechatVerifyFragment$loadWechatApp$authResultListener$1 f62509f;

        public C12904b(WechatVerifyFragment$loadWechatApp$authResultListener$1 wechatVerifyFragment$loadWechatApp$authResultListener$1) {
            this.f62509f = wechatVerifyFragment$loadWechatApp$authResultListener$1;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProviderCertificate it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StatisticsManager statisticsManager = StatisticsBundle.INSTANCE.getStatisticsManager();
            Context applicationContext = WechatVerifyFragment.this.requireContext().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            FragmentActivity requireActivity = WechatVerifyFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            statisticsManager.getWeChatInfo(applicationContext, requireActivity, this.f62509f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12905c<T> implements Consumer {

        /* renamed from: e */
        public static final C12905c<T> f62510e = new C12905c<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C7106R.string.network_bad, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$d */
    /* loaded from: classes9.dex */
    public static final class C12906d<T> implements Consumer {
        public C12906d() {
        }

        /* renamed from: a */
        public final void m51882a(boolean z) {
            FragmentKt.finishActivity(WechatVerifyFragment.this);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51882a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$e */
    /* loaded from: classes9.dex */
    public static final class C12907e<T, R> implements Function {

        /* renamed from: e */
        public static final C12907e<T, R> f62512e = new C12907e<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends LogoutOnyxAccountAction> m51883a(boolean z) {
            return new LogoutOnyxAccountAction().build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51883a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$f */
    /* loaded from: classes9.dex */
    public static final class C12908f<T, R> implements Function {
        public C12908f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (!Intrinsics.areEqual(WechatVerifyFragment.this.verifyViewModel.getPurpose().getValue(), "destroy")) {
                Observable just = Observable.just(it2);
                Intrinsics.checkNotNull(just);
                return just;
            }
            AccountDataBundle.INSTANCE.logoffAccount();
            LogoutOnyxAccountAction logoutOnyxAccountAction = new LogoutOnyxAccountAction();
            logoutOnyxAccountAction.setSkipCloudLogout(true);
            return logoutOnyxAccountAction.build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$g */
    /* loaded from: classes9.dex */
    public static final class C12909g<T> implements Consumer {
        public C12909g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WechatVerifyFragment.this.m51873u0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$h */
    /* loaded from: classes9.dex */
    public static final class C12910h<T> implements Consumer {
        public C12910h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WechatVerifyFragment.this.verifyViewModel.isVerifyFinished().postValue(Boolean.FALSE);
            OnyxErrorHandler.handle$default(OnyxErrorHandler.INSTANCE, it2, null, null, 6, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$i */
    /* loaded from: classes9.dex */
    public static final class C12911i<T> implements Consumer {
        public C12911i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WechatVerifyFragment.this.m51876x0();
        }
    }

    /* renamed from: A0 */
    public static final void m51861A0(WechatVerifyFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51874v0();
    }

    /* renamed from: q0 */
    public static final void m51866q0(WechatVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: r0 */
    public static final void m51867r0(WechatVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51874v0();
        VerifyCodeBundle.INSTANCE.startWechatTimer();
    }

    /* renamed from: s0 */
    public static final void m51868s0(WechatVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51875w0();
    }

    /* renamed from: B0 */
    public final void m51869B0() {
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding = this.binding;
        if (fragmentWechatVerifyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWechatVerifyBinding = null;
        }
        fragmentWechatVerifyBinding.qrCodeImage.performClick();
    }

    /* renamed from: C0 */
    public final void m51870C0() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> doOnNext = new UpdateAccountAction(null, 1, null).build().doOnNext(new C12911i());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063240, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentWechatVerifyBinding inflate = FragmentWechatVerifyBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding2 = this.binding;
        if (fragmentWechatVerifyBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWechatVerifyBinding2 = null;
        }
        fragmentWechatVerifyBinding2.setVerifyViewModel(this.verifyViewModel);
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding3 = this.binding;
        if (fragmentWechatVerifyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWechatVerifyBinding3 = null;
        }
        fragmentWechatVerifyBinding3.qrCodeImage.setImageDrawable(this.loadingDrawable);
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding4 = this.binding;
        if (fragmentWechatVerifyBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentWechatVerifyBinding = fragmentWechatVerifyBinding4;
        }
        View root = fragmentWechatVerifyBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
        verifyCodeBundle.releaseWechatTimer();
        GlobalBundle.INSTANCE.unregister(this);
        EventBusHolderKt.ensureUnRegister(verifyCodeBundle.getEventBus(), this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkStatusChange(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            m51874v0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQrRefresh(@NotNull WechatLoadWebWidget.WechatQRCodeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding = this.binding;
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding2 = null;
        if (fragmentWechatVerifyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWechatVerifyBinding = null;
        }
        RequestBuilder error = Glide.with(fragmentWechatVerifyBinding.getRoot()).load(event.getQrCodeUrl()).placeholder(this.loadingDrawable).error((Drawable) this.loadingDrawable);
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding3 = this.binding;
        if (fragmentWechatVerifyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentWechatVerifyBinding2 = fragmentWechatVerifyBinding3;
        }
        error.into(fragmentWechatVerifyBinding2.qrCodeImage);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQrVerified(@NotNull WechatLoadWebWidget.WechatQRVerifiedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.verifyViewModel.isVerifyFinished().postValue(Boolean.TRUE);
        WechatVerifyViewModel wechatVerifyViewModel = this.verifyViewModel;
        String code = event.getCode();
        if (code == null) {
            code = "";
        }
        wechatVerifyViewModel.setCode(code);
        WechatVerifyViewModel wechatVerifyViewModel2 = this.verifyViewModel;
        String state = event.getState();
        wechatVerifyViewModel2.setState(state != null ? state : "");
        this.verifyViewModel.setVerifyType(WechatVerifyTypes.QR);
        m51872t0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVerifyCodeWaitTimeUpdate(@NotNull VerifyCodeNotifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getKey(), VerifyCodeBundle.INSTANCE.getKEY_WECHAT()) && event.getLeftTime() <= 0) {
            m51869B0();
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51871p0();
        m51869B0();
    }

    /* renamed from: p0 */
    public final void m51871p0() {
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding = this.binding;
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding2 = null;
        if (fragmentWechatVerifyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWechatVerifyBinding = null;
        }
        fragmentWechatVerifyBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y6o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WechatVerifyFragment.m51866q0(WechatVerifyFragment.this, view);
            }
        });
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding3 = this.binding;
        if (fragmentWechatVerifyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWechatVerifyBinding3 = null;
        }
        fragmentWechatVerifyBinding3.qrCodeImage.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.z6o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WechatVerifyFragment.m51867r0(WechatVerifyFragment.this, view);
            }
        });
        FragmentWechatVerifyBinding fragmentWechatVerifyBinding4 = this.binding;
        if (fragmentWechatVerifyBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentWechatVerifyBinding2 = fragmentWechatVerifyBinding4;
        }
        fragmentWechatVerifyBinding2.startAppButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.a7o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WechatVerifyFragment.m51868s0(WechatVerifyFragment.this, view);
            }
        });
    }

    /* renamed from: t0 */
    public final void m51872t0() {
        if (!Intrinsics.areEqual(this.verifyViewModel.getPurpose().getValue(), "destroy")) {
            m51878z0();
            return;
        }
        DoubleOptionDialog.Companion companion = DoubleOptionDialog.INSTANCE;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        DoubleOptionDialog createWithConfirmWarningIconStyle = companion.createWithConfirmWarningIconStyle(requireActivity);
        createWithConfirmWarningIconStyle.setMask(0.7f);
        createWithConfirmWarningIconStyle.setMessageTextRes(C10651R.string.user_tip_logoff_warning);
        createWithConfirmWarningIconStyle.setLeftButtonTitleRes(C10651R.string.user_title_continue_use);
        createWithConfirmWarningIconStyle.setRightButtonTitleRes(C10651R.string.user_title_confirm_logoff);
        createWithConfirmWarningIconStyle.setOnLeftButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$askForContinue$1$1
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
                WechatVerifyFragment.this.m51876x0();
            }
        });
        createWithConfirmWarningIconStyle.setOnRightButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$askForContinue$1$2
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
                WechatVerifyFragment.this.m51878z0();
            }
        });
        createWithConfirmWarningIconStyle.show();
    }

    /* renamed from: u0 */
    public final void m51873u0() {
        String value = this.verifyViewModel.getPurpose().getValue();
        if (value != null) {
            int hashCode = value.hashCode();
            if (hashCode == -840745386) {
                if (value.equals("unbind")) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_tip_unbind_success, false, 2, (Object) null);
                    m51870C0();
                    return;
                }
                return;
            }
            if (hashCode != 3023933) {
                if (hashCode == 1557372922 && value.equals("destroy")) {
                    m51877y0();
                    return;
                }
                return;
            }
            if (value.equals("bind")) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_tip_bind_success, false, 2, (Object) null);
                m51870C0();
            }
        }
    }

    /* renamed from: v0 */
    public final void m51874v0() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        ServiceUtils serviceUtils = ServiceUtils.INSTANCE;
        String value = this.verifyViewModel.getPurpose().getValue();
        Intrinsics.checkNotNull(value);
        Observable<String> doOnNext = serviceUtils.loadWechatQrCodeUrl(value).doOnNext(new C12903a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$loadWechatApp$authResultListener$1] */
    /* renamed from: w0 */
    public final void m51875w0() {
        Observable<ProviderCertificate> build;
        Observable<ProviderCertificate> doOnNext;
        Observable<ProviderCertificate> doOnError;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        StatisticsManager statisticsManager = statisticsBundle.getStatisticsManager();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        if (statisticsManager.isWechatInstallation(requireActivity)) {
            ?? r1 = new AuthResultListener() { // from class: com.onyx.galaxy.note.usercenter.ui.WechatVerifyFragment$loadWechatApp$authResultListener$1
                @Override // com.onyx.android.sdk.statistics.AuthResultListener
                public void onCancel(int p1) {
                }

                @Override // com.onyx.android.sdk.statistics.AuthResultListener
                public void onComplete(int p1, @NotNull Map<String, String> data) {
                    Intrinsics.checkNotNullParameter(data, "data");
                    WechatVerifyFragment.this.verifyViewModel.isVerifyFinished().postValue(Boolean.TRUE);
                    WechatVerifyFragment.this.verifyViewModel.setOpenId(data.get("openid"));
                    WechatVerifyFragment.this.verifyViewModel.setAccessToken(data.get("accessToken"));
                    WechatVerifyFragment.this.verifyViewModel.setVerifyType("APP");
                    WechatVerifyFragment.this.m51872t0();
                }

                @Override // com.onyx.android.sdk.statistics.AuthResultListener
                public void onError(int p1, @Nullable Throwable t) {
                }

                @Override // com.onyx.android.sdk.statistics.AuthResultListener
                public void onStart() {
                }
            };
            StatisticsManager statisticsManager2 = statisticsBundle.getStatisticsManager();
            FragmentActivity requireActivity2 = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity2, "requireActivity(...)");
            if (statisticsManager2.isWechatInstallation(requireActivity2)) {
                StatisticsManager statisticsManager3 = statisticsBundle.getStatisticsManager();
                Context applicationContext = requireContext().getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                RxBaseAction<ProviderCertificate> createInitSdkAction = statisticsManager3.createInitSdkAction(applicationContext);
                if (createInitSdkAction == null || (build = createInitSdkAction.build()) == null || (doOnNext = build.doOnNext(new C12904b(r1))) == null || (doOnError = doOnNext.doOnError(C12905c.f62510e)) == null) {
                    return;
                }
                doOnError.subscribe();
            }
        }
    }

    /* renamed from: x0 */
    public final void m51876x0() {
        NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
        NavDirections wechatVerifyToAccountCenter = WechatVerifyFragmentDirections.wechatVerifyToAccountCenter();
        Intrinsics.checkNotNullExpressionValue(wechatVerifyToAccountCenter, "wechatVerifyToAccountCenter(...)");
        findNavController.navigate(wechatVerifyToAccountCenter);
    }

    /* renamed from: y0 */
    public final void m51877y0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        new MessageDialogAction(requireActivity, C10651R.string.user_title_logoff_success, C10651R.string.user_tip_logoff_thanks).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12906d()).flatMap(C12907e.f62512e).subscribe();
    }

    /* renamed from: z0 */
    public final void m51878z0() {
        WechatVerifyArgs wechatVerifyArgs = new WechatVerifyArgs();
        wechatVerifyArgs.setAction(AccountVerifyPurpose.INSTANCE.purposeToAction(this.verifyViewModel.getPurpose().getValue()));
        wechatVerifyArgs.setType(this.verifyViewModel.getVerifyType());
        wechatVerifyArgs.setCode(this.verifyViewModel.getCode());
        wechatVerifyArgs.setState(this.verifyViewModel.getState());
        wechatVerifyArgs.setOpenId(this.verifyViewModel.getOpenId());
        wechatVerifyArgs.setAccessToken(this.verifyViewModel.getAccessToken());
        new WechatVerifyAction(wechatVerifyArgs).build().flatMap(new C12908f()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12909g()).doOnError(new C12910h()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.x6o
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                WechatVerifyFragment.m51861A0(WechatVerifyFragment.this);
            }
        }).subscribe();
    }
}
