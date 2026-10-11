.class public Lcom/evernote/client/android/EvernoteOAuthHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final CALLBACK_SCHEME:Ljava/lang/String; = "en-oauth"

.field protected static final CAT:Lcom/evernote/client/android/helper/Cat;

.field public static final CHINA_PROFILE_NAME:Ljava/lang/String; = "Evernote-China"

.field protected static final NOTE_STORE_REGEX:Ljava/util/regex/Pattern;

.field protected static final USER_ID_REGEX:Ljava/util/regex/Pattern;

.field protected static final WEB_API_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field protected mBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

.field protected final mConsumerKey:Ljava/lang/String;

.field protected final mConsumerSecret:Ljava/lang/String;

.field protected final mLocale:Ljava/util/Locale;

.field protected mOAuthService:Lorg/scribe/oauth/OAuthService;

.field protected mRequestToken:Lorg/scribe/model/Token;

.field protected final mSession:Lcom/evernote/client/android/EvernoteSession;

.field protected final mSupportAppLinkedNotebooks:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/evernote/client/android/helper/Cat;

    const-string v1, "OAuthHelper"

    invoke-direct {v0, v1}, Lcom/evernote/client/android/helper/Cat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/client/android/EvernoteOAuthHelper;->CAT:Lcom/evernote/client/android/helper/Cat;

    const-string v0, "edam_noteStoreUrl=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/android/EvernoteOAuthHelper;->NOTE_STORE_REGEX:Ljava/util/regex/Pattern;

    const-string v0, "edam_webApiUrlPrefix=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/android/EvernoteOAuthHelper;->WEB_API_REGEX:Ljava/util/regex/Pattern;

    const-string v0, "edam_userId=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/android/EvernoteOAuthHelper;->USER_ID_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/evernote/client/android/EvernoteSession;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/evernote/client/android/EvernoteOAuthHelper;-><init>(Lcom/evernote/client/android/EvernoteSession;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/client/android/EvernoteSession;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/EvernoteSession;

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mSession:Lcom/evernote/client/android/EvernoteSession;

    .line 4
    invoke-static {p2}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mConsumerKey:Ljava/lang/String;

    .line 5
    invoke-static {p3}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mConsumerSecret:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mSupportAppLinkedNotebooks:Z

    .line 7
    invoke-static {p5}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/scribe/utils/OAuthEncoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lorg/scribe/exceptions/OAuthException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response body is incorrect. Can\'t extract token and secret from this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createOAuthService(Lcom/evernote/edam/userstore/BootstrapProfile;Ljava/lang/String;Ljava/lang/String;)Lorg/scribe/oauth/OAuthService;
    .locals 3

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->getSettings()Lcom/evernote/edam/userstore/BootstrapSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->getServiceHost()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "https://app.yinxiang.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "https://sandbox.evernote.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "https://www.evernote.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported Evernote host: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-class p0, Lorg/scribe/builder/api/EvernoteApi$Yinxiang;

    goto :goto_1

    :pswitch_1
    const-class p0, Lorg/scribe/builder/api/EvernoteApi$Sandbox;

    goto :goto_1

    :pswitch_2
    const-class p0, Lorg/scribe/builder/api/EvernoteApi;

    :goto_1
    new-instance v0, Lorg/scribe/builder/ServiceBuilder;

    invoke-direct {v0}, Lorg/scribe/builder/ServiceBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/scribe/builder/ServiceBuilder;->provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/scribe/builder/ServiceBuilder;->apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/scribe/builder/ServiceBuilder;->apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object p0

    const-string p1, "en-oauth://callback"

    invoke-virtual {p0, p1}, Lorg/scribe/builder/ServiceBuilder;->callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/scribe/builder/ServiceBuilder;->build()Lorg/scribe/oauth/OAuthService;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1389e397 -> :sswitch_2
        -0x10436647 -> :sswitch_1
        0xc32093a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mOAuthService:Lorg/scribe/oauth/OAuthService;

    invoke-interface {v0, p1}, Lorg/scribe/oauth/OAuthService;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mSupportAppLinkedNotebooks:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&supportLinkedSandbox=true"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public createRequestToken()Lorg/scribe/model/Token;
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mOAuthService:Lorg/scribe/oauth/OAuthService;

    invoke-interface {v0}, Lorg/scribe/oauth/OAuthService;->getRequestToken()Lorg/scribe/model/Token;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mRequestToken:Lorg/scribe/model/Token;

    return-object v0
.end method

.method public fetchBootstrapProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/userstore/BootstrapProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/BootstrapManager;

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteService()Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    move-result-object v1

    iget-object v2, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mSession:Lcom/evernote/client/android/EvernoteSession;

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, p0}, Lcom/evernote/client/android/BootstrapManager;-><init>(Lcom/evernote/client/android/EvernoteSession$EvernoteService;Lcom/evernote/client/android/EvernoteSession;Ljava/util/Locale;)V

    invoke-virtual {v0}, Lcom/evernote/client/android/BootstrapManager;->a()Lcom/evernote/client/android/BootstrapManager$b;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/BootstrapManager$b;->a()Lcom/evernote/edam/userstore/BootstrapInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapInfo;->getProfiles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public finishAuthorization(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 9

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "oauth_callback_url"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "oauth_verifier"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "sandbox_lnb"

    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v1, 0x1

    if-nez p3, :cond_2

    const-string p3, "true"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v8, v1

    goto :goto_0

    :cond_2
    move v8, v0

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->CAT:Lcom/evernote/client/android/helper/Cat;

    const-string p1, "User did not authorize access"

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/helper/Cat;->i(Ljava/lang/String;)V

    return v0

    :cond_3
    new-instance p1, Lorg/scribe/model/Verifier;

    invoke-direct {p1, p2}, Lorg/scribe/model/Verifier;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mOAuthService:Lorg/scribe/oauth/OAuthService;

    iget-object p3, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mRequestToken:Lorg/scribe/model/Token;

    invoke-interface {p2, p3, p1}, Lorg/scribe/oauth/OAuthService;->getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getRawResponse()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/evernote/client/android/EvernoteOAuthHelper;->NOTE_STORE_REGEX:Ljava/util/regex/Pattern;

    invoke-static {p2, p1}, Lcom/evernote/client/android/EvernoteOAuthHelper;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    sget-object p1, Lcom/evernote/client/android/EvernoteOAuthHelper;->WEB_API_REGEX:Ljava/util/regex/Pattern;

    invoke-static {p2, p1}, Lcom/evernote/client/android/EvernoteOAuthHelper;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v5

    sget-object p1, Lcom/evernote/client/android/EvernoteOAuthHelper;->USER_ID_REGEX:Ljava/util/regex/Pattern;

    invoke-static {p2, p1}, Lcom/evernote/client/android/EvernoteOAuthHelper;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->getSettings()Lcom/evernote/edam/userstore/BootstrapSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->getServiceHost()Ljava/lang/String;

    move-result-object v6

    new-instance p1, Lcom/evernote/client/android/AuthenticationResult;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/evernote/client/android/AuthenticationResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p1}, Lcom/evernote/client/android/AuthenticationResult;->e()V

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/EvernoteSession;->setAuthenticationResult(Lcom/evernote/client/android/AuthenticationResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/evernote/client/android/EvernoteOAuthHelper;->CAT:Lcom/evernote/client/android/helper/Cat;

    const-string p2, "Failed to obtain OAuth access token"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/evernote/client/android/helper/Cat;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return v0
.end method

.method public getDefaultBootstrapProfile(Ljava/util/List;)Lcom/evernote/edam/userstore/BootstrapProfile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evernote/edam/userstore/BootstrapProfile;",
            ">;)",
            "Lcom/evernote/edam/userstore/BootstrapProfile;"
        }
    .end annotation

    const-string p0, "bootstrapProfiles"

    invoke-static {p1, p0}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/userstore/BootstrapProfile;

    return-object p0
.end method

.method public initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteOAuthHelper;->fetchBootstrapProfiles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/EvernoteOAuthHelper;->getDefaultBootstrapProfile(Ljava/util/List;)Lcom/evernote/edam/userstore/BootstrapProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/EvernoteOAuthHelper;->setBootstrapProfile(Lcom/evernote/edam/userstore/BootstrapProfile;)V

    :cond_0
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mConsumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mConsumerSecret:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/evernote/client/android/EvernoteOAuthHelper;->createOAuthService(Lcom/evernote/edam/userstore/BootstrapProfile;Ljava/lang/String;Ljava/lang/String;)Lorg/scribe/oauth/OAuthService;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mOAuthService:Lorg/scribe/oauth/OAuthService;

    return-void
.end method

.method public setBootstrapProfile(Lcom/evernote/edam/userstore/BootstrapProfile;)V
    .locals 0

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/edam/userstore/BootstrapProfile;

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    return-void
.end method

.method public startAuthorization(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteOAuthHelper;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteOAuthHelper;->createRequestToken()Lorg/scribe/model/Token;

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mRequestToken:Lorg/scribe/model/Token;

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/EvernoteOAuthHelper;->createAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteOAuthHelper;->mSession:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession;->i()Z

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/evernote/client/android/EvernoteUtil;->createAuthorizationIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/evernote/client/android/EvernoteOAuthHelper;->CAT:Lcom/evernote/client/android/helper/Cat;

    invoke-virtual {p1, p0}, Lcom/evernote/client/android/helper/Cat;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
