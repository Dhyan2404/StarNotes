.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;
.super Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction<",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000M\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eH\u0014J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0016J\u001e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;",
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "googleProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "activityContext",
        "Landroid/content/Context;",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Landroid/content/Context;)V",
        "credentialRefreshListener",
        "com/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$credentialRefreshListener$1",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$credentialRefreshListener$1;",
        "userId",
        "",
        "auth",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "fetchAccountInfo",
        "",
        "result",
        "getProvider",
        "onAuth",
        "authDialog",
        "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;",
        "subject",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "saveLoadToken",
        "googleDriveTokenResponse",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final credentialRefreshListener:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$credentialRefreshListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final googleProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "googleProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->googleProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->activityContext:Landroid/content/Context;

    const-string p1, "google_drive_user"

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->userId:Ljava/lang/String;

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$credentialRefreshListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$credentialRefreshListener$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->credentialRefreshListener:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$credentialRefreshListener$1;

    return-void
.end method

.method public static final synthetic access$auth(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->auth()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchAccountInfo(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->fetchAccountInfo(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V

    return-void
.end method

.method public static final synthetic access$getGoogleProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;)Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->googleProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    return-object p0
.end method

.method public static final synthetic access$onAuth(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->onAuth(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    return-void
.end method

.method public static final synthetic access$saveLoadToken(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->saveLoadToken(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    return-object p0
.end method

.method private final auth()Lio/reactivex/rxjava3/core/Observable;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getClientSecrets()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getRedirectUris()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "https://accounts.google.com/o/oauth2/v2/auth?scope=https://www.googleapis.com/auth/drive.file&access_type=offline&prompt=consent&include_granted_scopes=true&response_type=code&state=state_parameter_passthrough_value&client_id=%s&redirect_uri=%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "format(locale, format, *args)"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;

    sget-object v3, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->GOOGLE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getRedirectUris()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    const-string v10, "code="

    const/4 v11, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->Companion:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$Companion;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$Companion;->newInstance(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;)Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$auth$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$auth$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->setOnDismissListener(Lkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->activityContext:Landroid/content/Context;

    const-string v2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v2, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private final fetchAccountInfo(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveFetchAccountInfoRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->googleProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->userId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveFetchAccountInfoRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->googleProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->setAccountId(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->migrateTokenStoredFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final onAuth(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;",
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authFail()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->googleProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "decode(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$onAuth$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$onAuth$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$onAuth$2;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$onAuth$2;-><init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$onAuth$3;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$onAuth$3;-><init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private final saveLoadToken(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 3

    new-instance v0, Lcom/google/api/client/auth/oauth2/TokenResponse;

    invoke-direct {v0}, Lcom/google/api/client/auth/oauth2/TokenResponse;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setScope(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;->getAccess_token()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;->getRefresh_token()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;->getToken_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;->getExpires_in()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->userId:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->credentialRefreshListener:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$credentialRefreshListener$1;

    invoke-virtual {p1, v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->getGoogleAuthorizationCodeFlow(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;

    move-result-object p0

    const-string p1, "google_drive_user"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->createAndStoreCredential(Lcom/google/api/client/auth/oauth2/TokenResponse;Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    new-instance p1, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    const-string v0, "google drive auth fail"

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authFail(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authSuccess()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$create$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction$create$2;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleAuthenticateAction;->googleProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    return-object p0
.end method
