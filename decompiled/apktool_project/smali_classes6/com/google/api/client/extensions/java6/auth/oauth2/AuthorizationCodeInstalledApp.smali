.class public Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

.field private final receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    iput-object p1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    iput-object p1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    return-void
.end method

.method public static browse(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Unable to open browser"

    invoke-static {p0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Please open the following address in your browser:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "  "

    if-eqz v3, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/awt/Desktop;->isDesktopSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/awt/Desktop;->getDesktop()Ljava/awt/Desktop;

    move-result-object v1

    sget-object v2, Ljava/awt/Desktop$Action;->BROWSE:Ljava/awt/Desktop$Action;

    invoke-virtual {v1, v2}, Ljava/awt/Desktop;->isSupported(Ljava/awt/Desktop$Action;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Attempting to open that address in the default browser now..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/awt/Desktop;->browse(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v1, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object v1, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public authorize(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->loadCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x3c

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->stop()V

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v0}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newAuthorizationUrl()Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->onAuthorization(Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;)V

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v1}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->waitForCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v2, v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newTokenRequest(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/TokenRequest;->execute()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v1, v0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->createAndStoreCredential(Lcom/google/api/client/auth/oauth2/TokenResponse;Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->stop()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->stop()V

    throw p1
.end method

.method public final getFlow()Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    return-object p0
.end method

.method public final getReceiver()Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    return-object p0
.end method

.method public onAuthorization(Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->browse(Ljava/lang/String;)V

    return-void
.end method
