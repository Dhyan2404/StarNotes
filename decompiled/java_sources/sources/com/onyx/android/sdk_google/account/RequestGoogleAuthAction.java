package com.onyx.android.sdk_google.account;

import android.app.Dialog;
import android.content.IntentSender;
import androidx.fragment.app.Fragment;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.auth.api.identity.Identity;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.action.LoadCertificatesAction;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.utils.MMKVCertificate;
import com.onyx.android.sdk_google.account.RequestGoogleAuthAction;
import com.onyx.android.sdk_google.constant.GoogleSdkConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB!\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u0003H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;", "signInRequest", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "q", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;", "providerCertificate", "u", "v", "Landroidx/fragment/app/Fragment;", "e", "Landroidx/fragment/app/Fragment;", "fragment", "Landroid/app/Dialog;", C6997f.f39671c, "Landroid/app/Dialog;", "dialog", "", C6998g.f39679a, "I", "requestCode", Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/Fragment;Landroid/app/Dialog;I)V", "Companion", "sdk-google_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RequestGoogleAuthAction extends RxBaseAction<Boolean> {

    /* renamed from: h */
    @NotNull
    public static final String f52875h = "RequestGoogleAuthAction";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Fragment fragment;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final Dialog dialog;

    /* renamed from: g, reason: from kotlin metadata */
    public final int requestCode;

    /* renamed from: com.onyx.android.sdk_google.account.RequestGoogleAuthAction$a */
    /* loaded from: classes8.dex */
    public static final class C10591a<T> implements Consumer {
        public C10591a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RequestGoogleAuthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Dialog dialog = RequestGoogleAuthAction.this.dialog;
            if (dialog != null) {
                dialog.show();
            }
        }
    }

    /* renamed from: com.onyx.android.sdk_google.account.RequestGoogleAuthAction$b */
    /* loaded from: classes8.dex */
    public static final class C10592b<T, R> implements Function {
        public C10592b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProviderCertificate> apply(@NotNull RequestGoogleAuthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RequestGoogleAuthAction.this.m41618v();
        }
    }

    /* renamed from: com.onyx.android.sdk_google.account.RequestGoogleAuthAction$c */
    /* loaded from: classes8.dex */
    public static final class C10593c<T, R> implements Function {
        public C10593c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BeginSignInRequest apply(@NotNull ProviderCertificate it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RequestGoogleAuthAction.this.m41617u(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk_google.account.RequestGoogleAuthAction$d */
    /* loaded from: classes8.dex */
    public static final class C10594d<T, R> implements Function {
        public C10594d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull BeginSignInRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RequestGoogleAuthAction.this.m41616q(it2);
        }
    }

    public RequestGoogleAuthAction(@NotNull Fragment fragment, @Nullable Dialog dialog, int i) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.fragment = fragment;
        this.dialog = dialog;
        this.requestCode = i;
    }

    /* renamed from: p */
    public static final void m41612p(RequestGoogleAuthAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Dialog dialog = this$0.dialog;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    /* renamed from: r */
    public static final void m41613r(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* renamed from: s */
    public static final void m41614s(ReplaySubject publisher, Exception e) {
        Intrinsics.checkNotNullParameter(publisher, "$publisher");
        Intrinsics.checkNotNullParameter(e, "e");
        LogUtils.eTag(f52875h, "google auth failed:" + e.getMessage());
        publisher.onError(e);
    }

    /* renamed from: t */
    public static final void m41615t(ReplaySubject publisher, Task it2) {
        Intrinsics.checkNotNullParameter(publisher, "$publisher");
        Intrinsics.checkNotNullParameter(it2, "it");
        RxjavaKt.done(publisher, Boolean.valueOf(it2.isSuccessful()));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doFinally = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10591a()).observeOn(Schedulers.m61350io()).flatMap(new C10592b()).observeOn(getMainUIScheduler()).map(new C10593c()).flatMap(new C10594d()).delay(500L, TimeUnit.MILLISECONDS).observeOn(getMainUIScheduler()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ykl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RequestGoogleAuthAction.m41612p(RequestGoogleAuthAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: q */
    public final ReplaySubject<Boolean> m41616q(BeginSignInRequest signInRequest) {
        final ReplaySubject<Boolean> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Task<BeginSignInResult> beginSignIn = Identity.getSignInClient(this.fragment.requireContext()).beginSignIn(signInRequest);
        final Function1<BeginSignInResult, Unit> function1 = new Function1<BeginSignInResult, Unit>() { // from class: com.onyx.android.sdk_google.account.RequestGoogleAuthAction$executeBeginSignInRequest$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BeginSignInResult beginSignInResult) {
                invoke2(beginSignInResult);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BeginSignInResult beginSignInResult) {
                Fragment fragment;
                int i;
                try {
                    fragment = RequestGoogleAuthAction.this.fragment;
                    IntentSender intentSender = beginSignInResult.getPendingIntent().getIntentSender();
                    i = RequestGoogleAuthAction.this.requestCode;
                    fragment.startIntentSenderForResult(intentSender, i, null, 0, 0, 0, null);
                } catch (IntentSender.SendIntentException e) {
                    LogUtils.eTag(RequestGoogleAuthAction.f52875h, "google auth failed,couldn't start One Tap UI: " + e.getLocalizedMessage());
                }
            }
        };
        beginSignIn.addOnSuccessListener(new OnSuccessListener() { // from class: com.sunia.HTREnginev2.zkl
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                RequestGoogleAuthAction.m41613r(Function1.this, obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.sunia.HTREnginev2.all
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                RequestGoogleAuthAction.m41614s(ReplaySubject.this, exc);
            }
        }).addOnCompleteListener(new OnCompleteListener() { // from class: com.sunia.HTREnginev2.bll
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                RequestGoogleAuthAction.m41615t(ReplaySubject.this, task);
            }
        });
        return create;
    }

    /* renamed from: u */
    public final BeginSignInRequest m41617u(ProviderCertificate providerCertificate) {
        String str;
        ProviderCertificate.Certificate find = providerCertificate.find(GoogleSdkConstant.GOOGLE_AUTH_SDK_NAME);
        if (find == null || (str = find.getSecret()) == null) {
            str = "";
        }
        BeginSignInRequest build = BeginSignInRequest.builder().setGoogleIdTokenRequestOptions(BeginSignInRequest.GoogleIdTokenRequestOptions.builder().setSupported(true).setServerClientId(str).setFilterByAuthorizedAccounts(false).build()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    /* renamed from: v */
    public final Observable<ProviderCertificate> m41618v() {
        return new LoadCertificatesAction(LoadCertificatesAction.SDK_KEY, MMKVCertificate.INSTANCE.getProviderCertificates(MMKVCertificate.SDK_CERTIFICATES_KEY) == null).create();
    }
}
