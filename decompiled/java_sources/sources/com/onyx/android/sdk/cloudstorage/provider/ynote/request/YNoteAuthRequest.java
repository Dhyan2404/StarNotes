package com.onyx.android.sdk.cloudstorage.provider.ynote.request;

import com.evernote.client.android.login.EvernoteLoginFragment;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.ynote.YNoteClient;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R$\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0012\u0010\t\u001a\u0004\b\u0013\u0010\u000b\"\u0004\b\u0014\u0010\r¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;", "yNoteClient", "b", Constants.STRING_SIG, "getConsumerKey", "()Ljava/lang/String;", "setConsumerKey", "(Ljava/lang/String;)V", EvernoteLoginFragment.f21144B1, "authUrl", "getAuthUrl", "setAuthUrl", CloudStorageConstants.YNOTE_AUTH_STATE_KEY, "getAuthState", "setAuthState", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class YNoteAuthRequest extends RxBaseRequest<String> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final YNoteClient yNoteClient;
    public String authState;
    public String authUrl;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String consumerKey;

    public YNoteAuthRequest(@NotNull YNoteClient yNoteClient) {
        Intrinsics.checkNotNullParameter(yNoteClient, "yNoteClient");
        this.yNoteClient = yNoteClient;
    }

    @NotNull
    public final String getAuthState() {
        String str = this.authState;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException(CloudStorageConstants.YNOTE_AUTH_STATE_KEY);
        return null;
    }

    @NotNull
    public final String getAuthUrl() {
        String str = this.authUrl;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("authUrl");
        return null;
    }

    @Nullable
    public final String getConsumerKey() {
        return this.consumerKey;
    }

    public final void setAuthState(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.authState = str;
    }

    public final void setAuthUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.authUrl = str;
    }

    public final void setConsumerKey(@Nullable String str) {
        this.consumerKey = str;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public String execute() throws Exception {
        Response<ResponseBody> execute = this.yNoteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).authorize(this.consumerKey, "code", "http://www.onyx-international.com/", getAuthState(), "web").execute();
        if (execute.isSuccessful()) {
            setAuthUrl(execute.raw().request().url().getUrl());
            return getAuthUrl();
        }
        throw new Exception(execute.message());
    }
}
