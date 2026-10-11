package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import android.content.Context;
import androidx.core.net.MailTo;
import androidx.fragment.app.FragmentActivity;
import com.couchbase.lite.internal.core.C4Replicator;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.CredentialRefreshListener;
import com.google.api.client.auth.oauth2.TokenErrorResponse;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialog;
import com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialogParam;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.data.GoogleDriveTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriveFetchAccountInfoRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.config.cloudnote.ConfigConstant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000M\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000eH\u0014J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0016J\u001e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "googleProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "activityContext", "Landroid/content/Context;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Landroid/content/Context;)V", "credentialRefreshListener", "com/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$credentialRefreshListener$1", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$credentialRefreshListener$1;", Constant.TAG_USER_ID, "", C4Replicator.REPLICATOR_OPTION_AUTHENTICATION, "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "fetchAccountInfo", "", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "getProvider", "onAuth", "authDialog", "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;", MailTo.f5529g, "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "saveLoadToken", "googleDriveTokenResponse", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleAuthenticateAction extends BaseCloudStorageAction<AuthResult> {

    @NotNull
    private final Context activityContext;

    @NotNull
    private final GoogleAuthenticateAction$credentialRefreshListener$1 credentialRefreshListener;

    @NotNull
    private final GoogleDriverProvider googleProvider;

    @NotNull
    private final String userId;

    /* JADX WARN: Type inference failed for: r2v2, types: [com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleAuthenticateAction$credentialRefreshListener$1] */
    public GoogleAuthenticateAction(@NotNull GoogleDriverProvider googleProvider, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(googleProvider, "googleProvider");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.googleProvider = googleProvider;
        this.activityContext = activityContext;
        this.userId = ConfigConstant.GOOGLE_DRIVE_USER;
        this.credentialRefreshListener = new CredentialRefreshListener() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleAuthenticateAction$credentialRefreshListener$1
            @Override // com.google.api.client.auth.oauth2.CredentialRefreshListener
            public void onTokenErrorResponse(@Nullable Credential credential, @Nullable TokenErrorResponse tokenErrorResponse) {
                GoogleDriverProvider googleDriverProvider;
                googleDriverProvider = GoogleAuthenticateAction.this.googleProvider;
                googleDriverProvider.onProviderAuthFail();
            }

            @Override // com.google.api.client.auth.oauth2.CredentialRefreshListener
            public void onTokenResponse(@Nullable Credential credential, @Nullable TokenResponse tokenResponse) {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<AuthResult> auth() {
        final BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        GoogleClientSecrets.Details details = GoogleDriveManager.INSTANCE.getClientSecrets().getDetails();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.getDefault(), CloudStorageConstants.GOOGLE_DRIVER_AUTH_CODE_URL, Arrays.copyOf(new Object[]{details.getClientId(), details.getRedirectUris().get(0)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        final OAuthDialog newInstance = OAuthDialog.INSTANCE.newInstance(new OAuthDialogParam(Provider.GOOGLE_DRIVE.getTitle(), format, details.getRedirectUris().get(0), "code=", null, 16, null));
        newInstance.setOnDismissListener(new Function0<Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleAuthenticateAction$auth$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                GoogleAuthenticateAction.this.onAuth(newInstance, create);
            }
        });
        Context context = this.activityContext;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        newInstance.show(((FragmentActivity) context).getSupportFragmentManager(), GoogleAuthenticateAction.class.getSimpleName());
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fetchAccountInfo(AuthResult result) throws Exception {
        if (result.getIsSuccess()) {
            ProviderAccountModel execute = new GoogleDriveFetchAccountInfoRequest(this.googleProvider, this.userId).execute();
            this.googleProvider.configureProviderAccountModel(execute);
            result.setAccountId(execute.getAccountId());
            GoogleDriveManager.INSTANCE.migrateTokenStoredFile(this.userId, execute.getAccountId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAuth(OAuthDialog authDialog, final BehaviorSubject<AuthResult> subject) {
        String code = authDialog.getCode();
        if (StringUtils.isEmpty(code)) {
            RxjavaKt.done(subject, AuthResult.INSTANCE.authFail());
            return;
        }
        GoogleDriverProvider googleDriverProvider = this.googleProvider;
        String decode = URLDecoder.decode(code, "UTF-8");
        Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
        new GoogleDriveLoadTokenAction(googleDriverProvider, decode).build().map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleAuthenticateAction$onAuth$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final AuthResult apply(@NotNull GoogleDriveTokenResponse it2) {
                AuthResult saveLoadToken;
                Intrinsics.checkNotNullParameter(it2, "it");
                saveLoadToken = GoogleAuthenticateAction.this.saveLoadToken(it2);
                return saveLoadToken;
            }
        }).doOnError(new Consumer() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleAuthenticateAction$onAuth$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                subject.onError(p0);
            }
        }).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleAuthenticateAction$onAuth$3
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull AuthResult it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RxjavaKt.done(subject, it2);
            }
        }).subscribe();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AuthResult saveLoadToken(GoogleDriveTokenResponse googleDriveTokenResponse) {
        TokenResponse tokenResponse = new TokenResponse();
        tokenResponse.setScope(googleDriveTokenResponse.getScope());
        tokenResponse.setAccessToken(googleDriveTokenResponse.getAccess_token());
        tokenResponse.setRefreshToken(googleDriveTokenResponse.getRefresh_token());
        tokenResponse.setTokenType(googleDriveTokenResponse.getToken_type());
        tokenResponse.setExpiresInSeconds(Long.valueOf(googleDriveTokenResponse.getExpires_in()));
        String accessToken = GoogleDriveManager.INSTANCE.getOurInstance().getGoogleAuthorizationCodeFlow(this.userId, this.credentialRefreshListener).createAndStoreCredential(tokenResponse, ConfigConstant.GOOGLE_DRIVE_USER).getAccessToken();
        return accessToken == null || accessToken.length() == 0 ? AuthResult.INSTANCE.authFail(new CloudNoteException("google drive auth fail")) : AuthResult.INSTANCE.authSuccess();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AuthResult> create() {
        Observable<AuthResult> doOnNext = Observable.just(this).observeOn(AndroidSchedulers.mainThread()).flatMap(new Function() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleAuthenticateAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends AuthResult> apply(@NotNull GoogleAuthenticateAction it2) {
                Observable auth;
                Intrinsics.checkNotNullParameter(it2, "it");
                auth = GoogleAuthenticateAction.this.auth();
                return auth;
            }
        }).observeOn(getObserveOn()).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleAuthenticateAction$create$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull AuthResult it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                GoogleAuthenticateAction.this.fetchAccountInfo(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getGoogleDriverProvider() {
        return this.googleProvider;
    }
}
