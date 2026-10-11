.class public Lcom/evernote/clients/UserStoreClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/evernote/edam/userstore/UserStore$Client;


# direct methods
.method public constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 6
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$Client;

    invoke-direct {v0, p1, p2}, Lcom/evernote/edam/userstore/UserStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V

    iput-object v0, p0, Lcom/evernote/clients/UserStoreClient;->b:Lcom/evernote/edam/userstore/UserStore$Client;

    .line 7
    iput-object p3, p0, Lcom/evernote/clients/UserStoreClient;->a:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TProtocol and Token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$Client;

    invoke-direct {v0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;)V

    iput-object v0, p0, Lcom/evernote/clients/UserStoreClient;->b:Lcom/evernote/edam/userstore/UserStore$Client;

    .line 3
    iput-object p2, p0, Lcom/evernote/clients/UserStoreClient;->a:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TProtocol and Token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lcom/evernote/edam/userstore/UserStore$Client;
    .locals 0

    iget-object p0, p0, Lcom/evernote/clients/UserStoreClient;->b:Lcom/evernote/edam/userstore/UserStore$Client;

    return-object p0
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/edam/userstore/UserStore$Client;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/evernote/edam/userstore/UserStore$Client;->authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateToBusiness()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->authenticateToBusiness(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/clients/UserStoreClient;->a:Ljava/lang/String;

    return-object p0
.end method

.method public checkVersion(Ljava/lang/String;SS)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/userstore/UserStore$Client;->checkVersion(Ljava/lang/String;SS)Z

    move-result p0

    return p0
.end method

.method public completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/userstore/UserStore$Client;->completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    return-void
.end method

.method public getBootstrapInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/BootstrapInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->getBootstrapInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/BootstrapInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNoteStoreUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->getNoteStoreUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPremiumInfo()Lcom/evernote/edam/type/PremiumInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->getPremiumInfo(Ljava/lang/String;)Lcom/evernote/edam/type/PremiumInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPublicUserInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->getPublicUserInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/PublicUserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUser()Lcom/evernote/edam/type/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->getUser(Ljava/lang/String;)Lcom/evernote/edam/type/User;

    move-result-object p0

    return-object p0
.end method

.method public isBusinessUser()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->getUser(Ljava/lang/String;)Lcom/evernote/edam/type/User;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result p0

    return p0
.end method

.method public refreshAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->refreshAuthentication(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public revokeLongSession()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->a()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/UserStoreClient;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/userstore/UserStore$Client;->revokeLongSession(Ljava/lang/String;)V

    return-void
.end method
