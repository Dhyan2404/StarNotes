package com.onyx.android.sdk_google.account;

import android.app.Dialog;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AdditionalUserInfo;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.OAuthCredential;
import com.google.firebase.auth.OAuthProvider;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk_google.account.RequestMicrosoftAuthAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 62\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00016B!\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b4\u00105J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0014\u0010\n\u001a\u00020\u00052\n\u0010\t\u001a\u00060\u0007j\u0002`\bH\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u0010\u001a\u00020\u00052\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eH\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0012R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR'\u0010!\u001a\u0015\u0012\f\u0012\n \u001d*\u0004\u0018\u00010\u00020\u00020\u001c¢\u0006\u0002\b\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001b\u0010'\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\u000b0(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\"\u0010/\u001a\u0010\u0012\f\u0012\n \u001d*\u0004\u0018\u00010\u000b0\u000b0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102¨\u00067"}, m61528d2 = {"Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "p", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "u", "Lcom/google/firebase/auth/AuthResult;", "authResult", "w", "Lcom/google/android/gms/tasks/Task;", "task", "s", "Landroidx/fragment/app/Fragment;", "Landroidx/fragment/app/Fragment;", "fragment", "Landroid/app/Dialog;", C6997f.f39671c, "Landroid/app/Dialog;", "dialog", "", C6998g.f39679a, "I", "requestCode", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", C6999h.f39688c, "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "publisher", "Lcom/google/firebase/auth/FirebaseAuth;", "i", "Lkotlin/Lazy;", "r", "()Lcom/google/firebase/auth/FirebaseAuth;", "firebaseAuth", "Lcom/google/android/gms/tasks/OnSuccessListener;", "j", "Lcom/google/android/gms/tasks/OnSuccessListener;", "onSuccessListener", "Lcom/google/android/gms/tasks/OnCompleteListener;", C4921e.f26537n, "Lcom/google/android/gms/tasks/OnCompleteListener;", "onCompleteListener", "Lcom/google/android/gms/tasks/OnFailureListener;", "l", "Lcom/google/android/gms/tasks/OnFailureListener;", "onFailureListener", Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/Fragment;Landroid/app/Dialog;I)V", "Companion", "sdk-google_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RequestMicrosoftAuthAction extends RxBaseAction<Boolean> {

    @NotNull
    public static final String MICROSOFT_ACCESS_TOKEN_KEY = "MICROSOFT_ACCESS_TOKEN_KEY";

    @NotNull
    public static final String MICROSOFT_ID_KEY = "MICROSOFT_ID_KEY";

    @NotNull
    public static final String MICROSOFT_ID_TOKEN_KEY = "MICROSOFT_ID_TOKEN_KEY";

    /* renamed from: m */
    @NotNull
    public static final String f52883m = "RequestMicrosoftAuthAction";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Fragment fragment;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final Dialog dialog;

    /* renamed from: g, reason: from kotlin metadata */
    public final int requestCode;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ReplaySubject<Boolean> publisher;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy firebaseAuth;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final OnSuccessListener<AuthResult> onSuccessListener;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final OnCompleteListener<AuthResult> onCompleteListener;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final OnFailureListener onFailureListener;

    /* renamed from: com.onyx.android.sdk_google.account.RequestMicrosoftAuthAction$a */
    /* loaded from: classes8.dex */
    public static final class C10595a<T> implements Consumer {
        public C10595a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RequestMicrosoftAuthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Dialog dialog = RequestMicrosoftAuthAction.this.dialog;
            if (dialog != null) {
                dialog.show();
            }
        }
    }

    /* renamed from: com.onyx.android.sdk_google.account.RequestMicrosoftAuthAction$b */
    /* loaded from: classes8.dex */
    public static final class C10596b<T, R> implements Function {
        public C10596b() {
        }

        /* renamed from: a */
        public final void m41637a(@NotNull RequestMicrosoftAuthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RequestMicrosoftAuthAction.this.m41631p();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m41637a((RequestMicrosoftAuthAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk_google.account.RequestMicrosoftAuthAction$c */
    /* loaded from: classes8.dex */
    public static final class C10597c<T, R> implements Function {
        public C10597c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RequestMicrosoftAuthAction.this.publisher;
        }
    }

    public RequestMicrosoftAuthAction(@NotNull Fragment fragment, @Nullable Dialog dialog, int i) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.fragment = fragment;
        this.dialog = dialog;
        this.requestCode = i;
        ReplaySubject<Boolean> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publisher = create;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FirebaseAuth>() { // from class: com.onyx.android.sdk_google.account.RequestMicrosoftAuthAction$firebaseAuth$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FirebaseAuth invoke() {
                return FirebaseAuth.getInstance();
            }
        });
        this.firebaseAuth = lazy;
        this.onSuccessListener = new OnSuccessListener() { // from class: com.sunia.HTREnginev2.fll
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                RequestMicrosoftAuthAction.m41630x(RequestMicrosoftAuthAction.this, (AuthResult) obj);
            }
        };
        this.onCompleteListener = new OnCompleteListener() { // from class: com.sunia.HTREnginev2.gll
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                RequestMicrosoftAuthAction.m41628t(RequestMicrosoftAuthAction.this, task);
            }
        };
        this.onFailureListener = new OnFailureListener() { // from class: com.sunia.HTREnginev2.hll
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                RequestMicrosoftAuthAction.m41629v(RequestMicrosoftAuthAction.this, exc);
            }
        };
    }

    /* renamed from: q */
    public static final void m41627q(RequestMicrosoftAuthAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Dialog dialog = this$0.dialog;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    /* renamed from: t */
    public static final void m41628t(RequestMicrosoftAuthAction this$0, Task it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m41633s(it2);
    }

    /* renamed from: v */
    public static final void m41629v(RequestMicrosoftAuthAction this$0, Exception it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m41634u(it2);
    }

    /* renamed from: x */
    public static final void m41630x(RequestMicrosoftAuthAction this$0, AuthResult authResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(authResult);
        this$0.m41635w(authResult);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doFinally = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10595a()).map(new C10596b()).flatMap(new C10597c()).delay(500L, TimeUnit.MILLISECONDS).observeOn(getMainUIScheduler()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ell
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RequestMicrosoftAuthAction.m41627q(RequestMicrosoftAuthAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: p */
    public final void m41631p() {
        Task<AuthResult> pendingAuthResult = m41632r().getPendingAuthResult();
        if (pendingAuthResult != null) {
            pendingAuthResult.addOnSuccessListener(this.onSuccessListener).addOnFailureListener(this.onFailureListener).addOnCompleteListener(this.onCompleteListener);
            return;
        }
        OAuthProvider.Builder newBuilder = OAuthProvider.newBuilder("microsoft.com");
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder(...)");
        newBuilder.addCustomParameter("prompt", "consent");
        m41632r().startActivityForSignInWithProvider(this.fragment.requireActivity(), newBuilder.build()).addOnSuccessListener(this.onSuccessListener).addOnFailureListener(this.onFailureListener).addOnCompleteListener(this.onCompleteListener);
    }

    /* renamed from: r */
    public final FirebaseAuth m41632r() {
        return (FirebaseAuth) this.firebaseAuth.getValue();
    }

    /* renamed from: s */
    public final void m41633s(Task<AuthResult> task) {
        RxjavaKt.done(this.publisher, Boolean.valueOf(task.isSuccessful()));
    }

    /* renamed from: u */
    public final void m41634u(Exception e) {
        LogUtils.eTag(f52883m, "microsoft auth failed:" + e.getMessage());
        this.publisher.onError(e);
    }

    /* renamed from: w */
    public final void m41635w(AuthResult authResult) {
        Map<String, Object> profile;
        AdditionalUserInfo additionalUserInfo = authResult.getAdditionalUserInfo();
        String valueOf = String.valueOf((additionalUserInfo == null || (profile = additionalUserInfo.getProfile()) == null) ? null : profile.get("id"));
        AuthCredential credential = authResult.getCredential();
        Intrinsics.checkNotNull(credential, "null cannot be cast to non-null type com.google.firebase.auth.OAuthCredential");
        OAuthCredential oAuthCredential = (OAuthCredential) credential;
        String accessToken = oAuthCredential.getAccessToken();
        String idToken = oAuthCredential.getIdToken();
        Intent intent = new Intent();
        intent.putExtra(MICROSOFT_ID_KEY, valueOf);
        intent.putExtra(MICROSOFT_ACCESS_TOKEN_KEY, accessToken);
        intent.putExtra(MICROSOFT_ID_TOKEN_KEY, idToken);
        this.fragment.onActivityResult(this.requestCode, -1, intent);
    }
}
