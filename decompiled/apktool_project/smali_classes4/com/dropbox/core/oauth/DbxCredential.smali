.class public Lcom/dropbox/core/oauth/DbxCredential;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXPIRE_MARGIN:J = 0x493e0L

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/oauth/DbxCredential;",
            ">;"
        }
    .end annotation
.end field

.field public static final Writer:Lcom/dropbox/core/json/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonWriter<",
            "Lcom/dropbox/core/oauth/DbxCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/oauth/DbxCredential$b;

    invoke-direct {v0}, Lcom/dropbox/core/oauth/DbxCredential$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/oauth/DbxCredential;->Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/oauth/DbxCredential$c;

    invoke-direct {v0}, Lcom/dropbox/core/oauth/DbxCredential$c;-><init>()V

    sput-object v0, Lcom/dropbox/core/oauth/DbxCredential;->Writer:Lcom/dropbox/core/json/JsonWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/oauth/DbxCredential;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/oauth/DbxCredential;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t refresh without app Key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing expireAt."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/dropbox/core/oauth/DbxCredential;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/dropbox/core/oauth/DbxCredential;->b:Ljava/lang/Long;

    .line 8
    iput-object p3, p0, Lcom/dropbox/core/oauth/DbxCredential;->c:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/dropbox/core/oauth/DbxCredential;->d:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/dropbox/core/oauth/DbxCredential;->e:Ljava/lang/String;

    return-void

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing access token."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxCredential;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxCredential;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxCredential;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxCredential;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxCredential;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public aboutToExpire()Z
    .locals 6

    invoke-virtual {p0}, Lcom/dropbox/core/oauth/DbxCredential;->getExpiresAt()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/dropbox/core/oauth/DbxCredential;->getExpiresAt()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxCredential;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxCredential;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxCredential;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiresAt()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxCredential;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxCredential;->c:Ljava/lang/String;

    return-object p0
.end method

.method public refresh(Lcom/dropbox/core/DbxRequestConfig;)Lcom/dropbox/core/oauth/DbxRefreshResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/dropbox/core/oauth/DbxCredential;->refresh(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/util/Collection;)Lcom/dropbox/core/oauth/DbxRefreshResult;

    move-result-object p0

    return-object p0
.end method

.method public refresh(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/util/Collection;)Lcom/dropbox/core/oauth/DbxRefreshResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Lcom/dropbox/core/DbxHost;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/oauth/DbxRefreshResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dropbox/core/oauth/DbxCredential;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/dropbox/core/oauth/DbxCredential;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "grant_type"

    const-string v2, "refresh_token"

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "refresh_token"

    .line 5
    iget-object v2, p0, Lcom/dropbox/core/oauth/DbxCredential;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "locale"

    .line 6
    invoke-virtual {p1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/dropbox/core/oauth/DbxCredential;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "client_id"

    .line 9
    iget-object v2, p0, Lcom/dropbox/core/oauth/DbxCredential;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/dropbox/core/oauth/DbxCredential;->d:Ljava/lang/String;

    invoke-static {v8, v2, v1}, Lcom/dropbox/core/DbxRequestUtil;->addBasicAuthHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    :goto_0
    if-eqz p3, :cond_1

    const-string v1, " "

    .line 11
    invoke-static {p3, v1}, Lcom/dropbox/core/util/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "scope"

    .line 12
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v4, "OfficialDropboxJavaSDKv2"

    .line 13
    invoke-virtual {p2}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v5

    const-string v6, "oauth2/token"

    .line 14
    invoke-static {v0}, Lcom/dropbox/core/DbxRequestUtil;->toParamsArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/dropbox/core/oauth/DbxCredential$a;

    invoke-direct {v9, p0}, Lcom/dropbox/core/oauth/DbxCredential$a;-><init>(Lcom/dropbox/core/oauth/DbxCredential;)V

    move-object v3, p1

    .line 15
    invoke-static/range {v3 .. v9}, Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/oauth/DbxRefreshResult;

    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/dropbox/core/oauth/DbxRefreshResult;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dropbox/core/oauth/DbxCredential;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/dropbox/core/oauth/DbxRefreshResult;->getExpiresAt()Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/dropbox/core/oauth/DbxCredential;->b:Ljava/lang/Long;

    .line 19
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DbxCredential\'s constructor should always guarantee appKey is not null if refreshToken is not null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_3
    new-instance p0, Lcom/dropbox/core/oauth/DbxOAuthException;

    new-instance p1, Lcom/dropbox/core/oauth/DbxOAuthError;

    const-string p2, "invalid_request"

    const-string p3, "Cannot refresh becasue there is no refresh token"

    invoke-direct {p1, p2, p3}, Lcom/dropbox/core/oauth/DbxOAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/dropbox/core/oauth/DbxOAuthException;-><init>(Ljava/lang/String;Lcom/dropbox/core/oauth/DbxOAuthError;)V

    throw p0
.end method

.method public refresh(Lcom/dropbox/core/DbxRequestConfig;Ljava/util/Collection;)Lcom/dropbox/core/oauth/DbxRefreshResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/oauth/DbxRefreshResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    invoke-virtual {p0, p1, v0, p2}, Lcom/dropbox/core/oauth/DbxCredential;->refresh(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/util/Collection;)Lcom/dropbox/core/oauth/DbxRefreshResult;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dropbox/core/oauth/DbxCredential;->Writer:Lcom/dropbox/core/json/JsonWriter;

    invoke-virtual {v0, p0}, Lcom/dropbox/core/json/JsonWriter;->writeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
