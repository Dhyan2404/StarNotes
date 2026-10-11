package com.onyx.android.sdk.cloudstorage.common.action;

import android.content.Context;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.common.action.CloudAuthAction;
import com.onyx.android.sdk.cloudstorage.event.CloudAuthEvent;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u001a\u001a\u00020\u0013\u0012\u0006\u0010\"\u001a\u00020\u001b\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010#¢\u0006\u0004\b+\u0010,J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0012\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002R$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R$\u0010*\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, C4921e.f26528e, "", "throwable", "", GoogleApiAvailabilityLight.f29016b, "Landroid/content/Context;", "e", "Landroid/content/Context;", "getActivityContext", "()Landroid/content/Context;", "setActivityContext", "(Landroid/content/Context;)V", "activityContext", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "getProvider", "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "setProvider", "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", C6998g.f39679a, "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", "getUserInfo", "()Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", "setUserInfo", "(Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;)V", Constant.USER_INFO, "", C6999h.f39688c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getTag", "()Ljava/lang/String;", "setTag", "(Ljava/lang/String;)V", "tag", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudAuthAction extends RxBaseAction<AuthResult> {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Provider provider;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public UserInfo userInfo;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String tag;

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.CloudAuthAction$a */
    /* loaded from: classes7.dex */
    public static final class C7154a<T> implements Consumer {
        public C7154a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            CloudAuthAction.this.m32256n(throwable);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.CloudAuthAction$b */
    /* loaded from: classes7.dex */
    public static final class C7155b<T, R> implements Function {
        public C7155b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AuthResult apply(@NotNull AuthResult authResult) {
            Intrinsics.checkNotNullParameter(authResult, "authResult");
            return CloudAuthAction.this.m32257o(authResult);
        }
    }

    public /* synthetic */ CloudAuthAction(Context context, Provider provider, UserInfo userInfo, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, provider, userInfo, (i & 8) != 0 ? null : str);
    }

    /* renamed from: m */
    public static final void m32255m(CloudAuthAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.activityContext = null;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AuthResult> create() {
        CloudStorageManager ourInstance = CloudStorageManager.INSTANCE.getOurInstance();
        Provider provider = this.provider;
        UserInfo userInfo = this.userInfo;
        Context context = this.activityContext;
        Intrinsics.checkNotNull(context);
        Observable<AuthResult> doOnDispose = ourInstance.authenticate(provider, userInfo, context).doOnError(new C7154a()).map(new C7155b()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.kvd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CloudAuthAction.m32255m(CloudAuthAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    @Nullable
    public final Context getActivityContext() {
        return this.activityContext;
    }

    @NotNull
    public final Provider getProvider() {
        return this.provider;
    }

    @Nullable
    public final String getTag() {
        return this.tag;
    }

    @NotNull
    public final UserInfo getUserInfo() {
        return this.userInfo;
    }

    /* renamed from: n */
    public final void m32256n(Throwable throwable) {
        CloudAuthEvent cloudAuthEvent = new CloudAuthEvent(this.tag);
        cloudAuthEvent.setThrowable(throwable);
        CloudStorageManager.INSTANCE.getOurInstance().getEventBus().post(cloudAuthEvent);
    }

    /* renamed from: o */
    public final AuthResult m32257o(AuthResult result) {
        result.setAuthName(this.provider.getTitle());
        CloudAuthEvent cloudAuthEvent = new CloudAuthEvent(this.tag);
        cloudAuthEvent.setAuthResult(result);
        CloudStorageManager.INSTANCE.getOurInstance().getEventBus().post(cloudAuthEvent);
        return result;
    }

    public final void setActivityContext(@Nullable Context context) {
        this.activityContext = context;
    }

    public final void setProvider(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "<set-?>");
        this.provider = provider;
    }

    public final void setTag(@Nullable String str) {
        this.tag = str;
    }

    public final void setUserInfo(@NotNull UserInfo userInfo) {
        Intrinsics.checkNotNullParameter(userInfo, "<set-?>");
        this.userInfo = userInfo;
    }

    public CloudAuthAction(@Nullable Context context, @NotNull Provider provider, @NotNull UserInfo userInfo, @Nullable String str) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        this.activityContext = context;
        this.provider = provider;
        this.userInfo = userInfo;
        this.tag = str;
    }
}
