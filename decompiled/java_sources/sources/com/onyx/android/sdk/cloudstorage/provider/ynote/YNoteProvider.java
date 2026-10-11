package com.onyx.android.sdk.cloudstorage.provider.ynote;

import android.content.Context;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxSimpleAction;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.AsyncResult;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotation;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.model.ProviderContext;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.cloudstorage.provider.ynote.action.YNoteAuthAction;
import com.onyx.android.sdk.cloudstorage.provider.ynote.request.YNoteLoadAccountRequest;
import com.onyx.android.sdk.cloudstorage.provider.ynote.request.YNoteSaveAnnotationRequest;
import com.onyx.android.sdk.cloudstorage.provider.ynote.request.YNoteSaveNoteRequest;
import com.onyx.android.sdk.cloudstorage.provider.ynote.utils.YNoteUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b2\u00103J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u000b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0017\u001a\u00020\u0016H\u0016J\u0016\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00140\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\b\u0010\u001c\u001a\u00020\u001bH\u0016J\u000e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0016R\u001b\u0010%\u001a\u00020 8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0005\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R$\u00101\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "providerContext", "", "initProvider", "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", Constant.USER_INFO, "activityContext", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "authenticate", "", "token", "updateTokenHeader", "logOut", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "saveNote", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getAccountInfo", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "saveAnnotation", "", "isAuth", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getEnableFeatures", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;", "a", "Lkotlin/Lazy;", "getNoteClient", "()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;", "noteClient", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "getProviderContext", "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "setProviderContext", "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V", "b", Constants.STRING_SIG, "getAccessToken", "()Ljava/lang/String;", "setAccessToken", "(Ljava/lang/String;)V", "accessToken", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class YNoteProvider extends BaseCloudStorageProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteClient;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String accessToken;
    public ProviderContext providerContext;

    public YNoteProvider() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<YNoteClient>() { // from class: com.onyx.android.sdk.cloudstorage.provider.ynote.YNoteProvider$noteClient$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final YNoteClient invoke() {
                return new YNoteClient();
            }
        });
        this.noteClient = lazy;
        setProvider(Provider.YNOTE);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AuthResult> authenticate(@NotNull UserInfo userInfo, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        return new YNoteAuthAction(this, activityContext).build();
    }

    @Nullable
    public final String getAccessToken() {
        return this.accessToken;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public AccountInfoBean getAccountInfo() {
        YNoteLoadAccountRequest yNoteLoadAccountRequest = new YNoteLoadAccountRequest(getNoteClient());
        yNoteLoadAccountRequest.setAccountId(getAccountId());
        return yNoteLoadAccountRequest.executeSafety();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Set<ProviderFeature> getEnableFeatures() {
        Set<ProviderFeature> of;
        if (getProviderAccountModel() == null) {
            of = SetsKt__SetsJVMKt.setOf(ProviderFeature.Note);
            return of;
        }
        ProviderAccountModel providerAccountModel = getProviderAccountModel();
        Intrinsics.checkNotNull(providerAccountModel);
        return providerAccountModel.getEnableFeatures();
    }

    @NotNull
    public final YNoteClient getNoteClient() {
        return (YNoteClient) this.noteClient.getValue();
    }

    @NotNull
    public final ProviderContext getProviderContext() {
        ProviderContext providerContext = this.providerContext;
        if (providerContext != null) {
            return providerContext;
        }
        Intrinsics.throwUninitializedPropertyAccessException("providerContext");
        return null;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(providerContext, "providerContext");
        setProviderContext(providerContext);
        String accessToken = YNoteUtils.INSTANCE.getAccessToken(getAccountId());
        this.accessToken = accessToken;
        updateTokenHeader(accessToken);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public boolean isAuth() {
        String str = this.accessToken;
        return !(str == null || str.length() == 0);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.accessToken = null;
        YNoteUtils.INSTANCE.logoutAccount(getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        YNoteClient noteClient = getNoteClient();
        String str = this.accessToken;
        Intrinsics.checkNotNull(str);
        return flatMap(new RxSimpleAction(new YNoteSaveAnnotationRequest(noteClient, cloudAnnotation, str), getObserveOn()).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        if (StringKt.isNotBlank(this.accessToken)) {
            Observable<AsyncResult> just = Observable.just(AsyncResult.INSTANCE.fail());
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        YNoteClient noteClient = getNoteClient();
        String str = this.accessToken;
        Intrinsics.checkNotNull(str);
        return flatMap(new RxSimpleAction(new YNoteSaveNoteRequest(noteClient, cloudNote, str), getObserveOn()).build());
    }

    public final void setAccessToken(@Nullable String str) {
        this.accessToken = str;
    }

    public final void setProviderContext(@NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(providerContext, "<set-?>");
        this.providerContext = providerContext;
    }

    public final void updateTokenHeader(@Nullable String token) {
        if (token == null || token.length() == 0) {
            return;
        }
        getNoteClient().addRetrofitTokenHeader(CloudStorageConstants.YNOTE_BASE_URL, "Authorization", "OAuth oauth_token=\"" + token + '\"');
    }
}
