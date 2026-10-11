package com.onyx.android.sdk.cloudstorage.provider.googledriver;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpUnsuccessfulResponseHandler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J$\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0016J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0012\u0010\u0012\u001a\u00020\u00112\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CredentialAdapter;", "Lcom/google/api/client/http/HttpExecuteInterceptor;", "Lcom/google/api/client/http/HttpRequestInitializer;", "Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;", "credential", "Lcom/google/api/client/auth/oauth2/Credential;", "(Lcom/google/api/client/auth/oauth2/Credential;)V", "getCredential", "()Lcom/google/api/client/auth/oauth2/Credential;", "handleResponse", "", AbstractLogger.REQUEST, "Lcom/google/api/client/http/HttpRequest;", AbstractLogger.RESPONSE, "Lcom/google/api/client/http/HttpResponse;", "supportsRetry", "initialize", "", "intercept", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CredentialAdapter implements HttpExecuteInterceptor, HttpRequestInitializer, HttpUnsuccessfulResponseHandler {

    @NotNull
    private final Credential credential;

    public CredentialAdapter(@NotNull Credential credential) {
        Intrinsics.checkNotNullParameter(credential, "credential");
        this.credential = credential;
    }

    @NotNull
    public final Credential getCredential() {
        return this.credential;
    }

    @Override // com.google.api.client.http.HttpUnsuccessfulResponseHandler
    public boolean handleResponse(@Nullable HttpRequest request, @Nullable HttpResponse response, boolean supportsRetry) {
        return this.credential.handleResponse(request, response, supportsRetry);
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public void initialize(@Nullable HttpRequest request) {
        this.credential.initialize(request);
        if (request != null) {
            request.setConnectTimeout(60000);
        }
        if (request != null) {
            request.setReadTimeout(60000);
        }
    }

    @Override // com.google.api.client.http.HttpExecuteInterceptor
    public void intercept(@Nullable HttpRequest request) {
        this.credential.intercept(request);
    }
}
