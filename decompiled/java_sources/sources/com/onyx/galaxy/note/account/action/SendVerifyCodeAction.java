package com.onyx.galaxy.note.account.action;

import android.content.Context;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.action.CheckCurrentAccountAction;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\b\b&\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B!\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0003H$J\b\u0010\t\u001a\u00020\bH\u0016J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0002R\"\u0010\u0011\u001a\u00020\u00038\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00038\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001a\u0010\u001b\u001a\u00020\u00168\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/SendVerifyCodeAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "verifiedData", "sendVerifyCode", "", "onNext", "l", C6998g.f39679a, Constants.STRING_SIG, "getPhoneOrEmail", "()Ljava/lang/String;", "setPhoneOrEmail", "(Ljava/lang/String;)V", "phoneOrEmail", C6999h.f39688c, "getAreaCode", "setAreaCode", "areaCode", "", "i", Constants.HASIDCALL_INDEX_SIG, "getCheckCurrentAccount", Constants.BOOLEAN_VALUE_SIG, "checkCurrentAccount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public abstract class SendVerifyCodeAction extends RxBaseNoteAppAction<ResultData<String>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String phoneOrEmail;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String areaCode;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean checkCurrentAccount;

    /* renamed from: com.onyx.galaxy.note.account.action.SendVerifyCodeAction$a */
    /* loaded from: classes9.dex */
    public static final class C10700a<T, R> implements Function {

        /* renamed from: e */
        public static final C10700a<T, R> f53423e = new C10700a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new NetworkCheckAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.SendVerifyCodeAction$b */
    /* loaded from: classes9.dex */
    public static final class C10701b<T, R> implements Function {
        public C10701b() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends ClusterInfo> m41804a(boolean z) {
            return SendVerifyCodeAction.this.updateClusterInfoObservable();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m41804a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.SendVerifyCodeAction$c */
    /* loaded from: classes9.dex */
    public static final class C10702c<T, R> implements Function {
        public C10702c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ResultData<String>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SendVerifyCodeAction.this.m41802l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.SendVerifyCodeAction$d */
    /* loaded from: classes9.dex */
    public static final class C10703d<T> implements Consumer {
        public C10703d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ResultData<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SendVerifyCodeAction.this.onNext();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.SendVerifyCodeAction$e */
    /* loaded from: classes9.dex */
    public static final class C10704e<T, R> implements Function {
        public C10704e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ResultData<String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SendVerifyCodeAction.this.sendVerifyCode(it2);
        }
    }

    public /* synthetic */ SendVerifyCodeAction(String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? false : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ResultData<String>> create() {
        Observable flatMap = Observable.just(Unit.INSTANCE).flatMap(C10700a.f53423e).flatMap(new C10701b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<ResultData<String>> doOnNext = RxjavaKt.flatMapIf(flatMap, new Function1<ClusterInfo, Boolean>() { // from class: com.onyx.galaxy.note.account.action.SendVerifyCodeAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ClusterInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(SendVerifyCodeAction.this.getCheckCurrentAccount());
            }
        }, new Function1<ClusterInfo, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.account.action.SendVerifyCodeAction$create$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull ClusterInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new CheckCurrentAccountAction(SendVerifyCodeAction.this.getPhoneOrEmail()).build();
            }
        }).flatMap(new C10702c()).observeOn(getMainUIScheduler()).doOnNext(new C10703d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final String getAreaCode() {
        return this.areaCode;
    }

    public final boolean getCheckCurrentAccount() {
        return this.checkCurrentAccount;
    }

    @NotNull
    public final String getPhoneOrEmail() {
        return this.phoneOrEmail;
    }

    /* renamed from: l */
    public final Observable<ResultData<String>> m41802l() throws Exception {
        Context activityContext = getActivityContext();
        Intrinsics.checkNotNull(activityContext);
        GetSecurityVerifyDataAction getSecurityVerifyDataAction = new GetSecurityVerifyDataAction(activityContext);
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        Observable map = getSecurityVerifyDataAction.setClusterInfo(clusterInfo).build().observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C10704e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public void onNext() {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.send_code_success, false, 2, (Object) null);
    }

    @NotNull
    public abstract ResultData<String> sendVerifyCode(@NotNull String verifiedData) throws Exception;

    public final void setAreaCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.areaCode = str;
    }

    public final void setPhoneOrEmail(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.phoneOrEmail = str;
    }

    public SendVerifyCodeAction(@NotNull String phoneOrEmail, @NotNull String areaCode, boolean z) {
        Intrinsics.checkNotNullParameter(phoneOrEmail, "phoneOrEmail");
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        this.phoneOrEmail = phoneOrEmail;
        this.areaCode = areaCode;
        this.checkCurrentAccount = z;
    }
}
