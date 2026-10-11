package com.onyx.galaxy.note.member.action;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.LoginTriggerFrom;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.event.StatisticLoginPageShowEvent;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.member.action.OpenMemberChargeAction;
import com.onyx.galaxy.note.member.data.ChargeFeatureBean;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import com.onyx.galaxy.note.member.dialog.ChargeFeatureDialog;
import com.onyx.galaxy.note.member.service.MemberService;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\tH\u0002R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "data", "", "p", "q", "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", C6998g.f39679a, "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", "getFeatureChargeArgs", "()Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", "featureChargeArgs", "Lio/reactivex/rxjava3/subjects/PublishSubject;", C6999h.f39688c, "Lio/reactivex/rxjava3/subjects/PublishSubject;", "loginPublishSubject", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOpenMemberChargeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenMemberChargeAction.kt\ncom/onyx/galaxy/note/member/action/OpenMemberChargeAction\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,108:1\n214#2:109\n*S KotlinDebug\n*F\n+ 1 OpenMemberChargeAction.kt\ncom/onyx/galaxy/note/member/action/OpenMemberChargeAction\n*L\n50#1:109\n*E\n"})
/* loaded from: classes9.dex */
public final class OpenMemberChargeAction extends RxBaseNoteAppAction<ChargeFeatureBean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final FeatureChargeArgs featureChargeArgs;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public PublishSubject<Boolean> loginPublishSubject;

    /* renamed from: com.onyx.galaxy.note.member.action.OpenMemberChargeAction$a */
    /* loaded from: classes9.dex */
    public static final class C12596a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f61251e;

        public C12596a(LoadingDialog loadingDialog) {
            this.f61251e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenMemberChargeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f61251e.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.action.OpenMemberChargeAction$b */
    /* loaded from: classes9.dex */
    public static final class C12597b<T, R> implements Function {
        public C12597b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull OpenMemberChargeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenMemberChargeAction.this.m50449o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.action.OpenMemberChargeAction$c */
    /* loaded from: classes9.dex */
    public static final class C12598c<T> implements Predicate {

        /* renamed from: e */
        public static final C12598c<T> f61253e = new C12598c<>();

        /* renamed from: a */
        public final boolean m50454a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m50454a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.action.OpenMemberChargeAction$d */
    /* loaded from: classes9.dex */
    public static final class C12599d<T, R> implements Function {
        public C12599d() {
        }

        @NotNull
        /* renamed from: a */
        public final ChargeFeatureBean m50455a(boolean z) {
            return OpenMemberChargeAction.this.m50448n();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m50455a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.action.OpenMemberChargeAction$e */
    /* loaded from: classes9.dex */
    public static final class C12600e<T> implements Consumer {
        public C12600e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChargeFeatureBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenMemberChargeAction.this.m50450p(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.action.OpenMemberChargeAction$f */
    /* loaded from: classes9.dex */
    public static final class C12601f<T> implements Consumer {

        /* renamed from: e */
        public static final C12601f<T> f61256e = new C12601f<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OnyxErrorHandler.handle$default(OnyxErrorHandler.INSTANCE, it2, null, null, 6, null);
        }
    }

    public OpenMemberChargeAction(@NotNull FeatureChargeArgs featureChargeArgs) {
        Intrinsics.checkNotNullParameter(featureChargeArgs, "featureChargeArgs");
        this.featureChargeArgs = featureChargeArgs;
    }

    /* renamed from: m */
    public static final void m50447m(LoadingDialog loading) {
        Intrinsics.checkNotNullParameter(loading, "$loading");
        loading.dismiss();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ChargeFeatureBean> create() {
        Activity activity = getActivity();
        if (activity == null) {
            Observable<ChargeFeatureBean> empty = Observable.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
            return empty;
        }
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(activity);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doFinally = Observable.just(this).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12596a(createLoadingDialog)).flatMap(new C12597b()).filter(C12598c.f61253e).observeOn(getCloudScheduler()).map(new C12599d()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12600e()).doOnError(C12601f.f61256e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.bhk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OpenMemberChargeAction.m50447m(LoadingDialog.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        Observable<ChargeFeatureBean> doOnError = doFinally.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.member.action.OpenMemberChargeAction$create$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    @NotNull
    public final FeatureChargeArgs getFeatureChargeArgs() {
        return this.featureChargeArgs;
    }

    /* renamed from: n */
    public final ChargeFeatureBean m50448n() {
        return (ChargeFeatureBean) RetrofitExt.INSTANCE.executeAndGetData(((MemberService) ServiceFactory.INSTANCE.getOnyxApiV2Service(MemberService.class)).getMemberChargeData(this.featureChargeArgs.getFunctionFrom()));
    }

    /* renamed from: o */
    public final Observable<Boolean> m50449o() {
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.loginPublishSubject = create;
        m50451q();
        StatisticsBundle.INSTANCE.postEvent(new StatisticLoginPageShowEvent(LoginTriggerFrom.HOME_PROGUIDE));
        Navigator.navigateToLogin$default(Navigator.INSTANCE, null, 1, null);
        return create;
    }

    /* renamed from: p */
    public final void m50450p(ChargeFeatureBean data) {
        Activity activity = getActivity();
        FragmentActivity fragmentActivity = activity instanceof FragmentActivity ? (FragmentActivity) activity : null;
        if (fragmentActivity == null) {
            return;
        }
        this.featureChargeArgs.ensureOperationCode();
        ChargeFeatureDialog.INSTANCE.createChargeFeatureDialog(data, this.featureChargeArgs).show(fragmentActivity.getSupportFragmentManager(), Reflection.getOrCreateKotlinClass(ChargeFeatureDialog.class).getSimpleName());
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.lifecycle.Lifecycle$State, T] */
    /* renamed from: q */
    public final void m50451q() {
        Activity activity = getActivity();
        final FragmentActivity fragmentActivity = activity instanceof FragmentActivity ? (FragmentActivity) activity : null;
        if (fragmentActivity != null) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = fragmentActivity.getLifecycle().getState();
            fragmentActivity.getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: com.onyx.galaxy.note.member.action.OpenMemberChargeAction$subscribeActivityLife$1
                /* JADX WARN: Type inference failed for: r1v3, types: [androidx.lifecycle.Lifecycle$State, T] */
                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public void onPause(@NotNull LifecycleOwner owner) {
                    Intrinsics.checkNotNullParameter(owner, "owner");
                    super.onPause(owner);
                    objectRef.element = fragmentActivity.getLifecycle().getState();
                }

                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public void onResume(@NotNull LifecycleOwner owner) {
                    PublishSubject publishSubject;
                    PublishSubject publishSubject2;
                    Intrinsics.checkNotNullParameter(owner, "owner");
                    super.onResume(owner);
                    if (objectRef.element == fragmentActivity.getLifecycle().getState()) {
                        return;
                    }
                    if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
                        publishSubject2 = this.loginPublishSubject;
                        if (publishSubject2 != null) {
                            RxjavaKt.done(publishSubject2, Boolean.valueOf(!r2.isVIPPermanent()));
                        }
                    } else {
                        publishSubject = this.loginPublishSubject;
                        if (publishSubject != null) {
                            RxjavaKt.done(publishSubject, Boolean.FALSE);
                        }
                    }
                    fragmentActivity.getLifecycle().removeObserver(this);
                }
            });
        } else {
            PublishSubject<Boolean> publishSubject = this.loginPublishSubject;
            if (publishSubject != null) {
                RxjavaKt.done(publishSubject, Boolean.FALSE);
            }
        }
    }
}
