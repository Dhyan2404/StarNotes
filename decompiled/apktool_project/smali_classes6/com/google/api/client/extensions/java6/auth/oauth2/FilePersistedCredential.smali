.class public Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "access_token"
    .end annotation
.end field

.field private expirationTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "expiration_time_millis"
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "refresh_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object p0

    check-cast p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->clone()Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->clone()Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->clone()Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;

    move-result-object p0

    return-object p0
.end method

.method public load(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->refreshToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->expirationTimeMillis:Ljava/lang/Long;

    invoke-virtual {p1, p0}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p0

    check-cast p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;

    move-result-object p0

    return-object p0
.end method

.method public store(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/Credential;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->accessToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/Credential;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->refreshToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/Credential;->getExpirationTimeMilliseconds()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->expirationTimeMillis:Ljava/lang/Long;

    return-void
.end method

.method public toStoredCredential()Lcom/google/api/client/auth/oauth2/StoredCredential;
    .locals 2

    new-instance v0, Lcom/google/api/client/auth/oauth2/StoredCredential;

    invoke-direct {v0}, Lcom/google/api/client/auth/oauth2/StoredCredential;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/StoredCredential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/StoredCredential;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/StoredCredential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/StoredCredential;

    move-result-object v0

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->expirationTimeMillis:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Lcom/google/api/client/auth/oauth2/StoredCredential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/StoredCredential;

    move-result-object p0

    return-object p0
.end method
