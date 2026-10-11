package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.data.GoogleDriveTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.utils.GoogleDriverUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.scribe.model.OAuthConstants;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010%\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0016\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleLoadTokenRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;", "code", "", "(Ljava/lang/String;)V", "execute", "generateQueryMap", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleLoadTokenRequest extends RxBaseRequest<GoogleDriveTokenResponse> {

    @Nullable
    private final String code;

    public GoogleLoadTokenRequest(@Nullable String str) {
        this.code = str;
    }

    private final Map<String, String> generateQueryMap() {
        Map<String, String> mutableMapOf;
        GoogleClientSecrets.Details details = GoogleDriveManager.INSTANCE.getClientSecrets().getDetails();
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OAuthConstants.CLIENT_ID, details.getClientId()), TuplesKt.m61535to(OAuthConstants.CLIENT_SECRET, details.getClientSecret()));
        mutableMapOf.put("grant_type", CloudStorageConstants.AUTHORIZATION_GRANT_TYPE);
        mutableMapOf.put("code", this.code);
        mutableMapOf.put(OAuthConstants.REDIRECT_URI, details.getRedirectUris().get(0));
        return mutableMapOf;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public GoogleDriveTokenResponse execute() {
        Response<GoogleDriveTokenResponse> execute = GoogleDriverUtils.INSTANCE.getGoogleDriveAuthService().accessToken(generateQueryMap()).execute();
        if (execute.isSuccessful()) {
            GoogleDriveTokenResponse body = execute.body();
            Debug.INSTANCE.m32035d(GoogleLoadTokenRequest.class, "google drive load token finish: " + JSONUtils.INSTANCE.toJson(body), new Object[0]);
            Intrinsics.checkNotNull(body);
            return body;
        }
        throw new Exception(execute.raw().message());
    }
}
