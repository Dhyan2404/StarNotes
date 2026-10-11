package com.onyx.android.sdk.cloudstorage.provider.ynote.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.ynote.YNoteProvider;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.AccessTokenResponse;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;", CouchFieldKey.KEY_PROVIDER, "", "b", Constants.STRING_SIG, "authCode", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class YNoteAccessTokenRequest extends RxBaseRequest<AccessTokenResponse> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final YNoteProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String authCode;

    public YNoteAccessTokenRequest(@NotNull YNoteProvider provider, @NotNull String authCode) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(authCode, "authCode");
        this.provider = provider;
        this.authCode = authCode;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public AccessTokenResponse execute() throws Exception {
        Response<AccessTokenResponse> execute = this.provider.getNoteClient().getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).getAccessToken(this.provider.getProviderContext().getKey(), this.provider.getProviderContext().getSecret(), CloudStorageConstants.AUTHORIZATION_GRANT_TYPE, "http://www.onyx-international.com/", this.authCode).execute();
        if (execute.isSuccessful()) {
            AccessTokenResponse body = execute.body();
            Intrinsics.checkNotNullExpressionValue(body, "body(...)");
            return body;
        }
        throw new Exception(execute.message());
    }
}
