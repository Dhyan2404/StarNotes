.class public Lcom/evernote/edam/userstore/UserStore$Client;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TServiceClient;
.implements Lcom/evernote/edam/userstore/UserStore$Iface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/userstore/UserStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# instance fields
.field protected iprot_:Lcom/evernote/thrift/protocol/TProtocol;

.field protected oprot_:Lcom/evernote/thrift/protocol/TProtocol;

.field protected seqid_:I


# direct methods
.method public constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/evernote/edam/userstore/UserStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    .line 4
    iput-object p2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/evernote/edam/userstore/UserStore$Client;->send_authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_authenticate()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Lcom/evernote/edam/userstore/UserStore$Client;->send_authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_authenticateLongSession()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateToBusiness(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_authenticateToBusiness(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_authenticateToBusiness()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public checkVersion(Ljava/lang/String;SS)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/userstore/UserStore$Client;->send_checkVersion(Ljava/lang/String;SS)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_checkVersion()Z

    move-result p0

    return p0
.end method

.method public completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/userstore/UserStore$Client;->send_completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_completeTwoFactorAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public getBootstrapInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/BootstrapInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_getBootstrapInfo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_getBootstrapInfo()Lcom/evernote/edam/userstore/BootstrapInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInputProtocol()Lcom/evernote/thrift/protocol/TProtocol;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    return-object p0
.end method

.method public getNoteStoreUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_getNoteStoreUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_getNoteStoreUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputProtocol()Lcom/evernote/thrift/protocol/TProtocol;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    return-object p0
.end method

.method public getPremiumInfo(Ljava/lang/String;)Lcom/evernote/edam/type/PremiumInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_getPremiumInfo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_getPremiumInfo()Lcom/evernote/edam/type/PremiumInfo;

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

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_getPublicUserInfo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_getPublicUserInfo()Lcom/evernote/edam/userstore/PublicUserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUser(Ljava/lang/String;)Lcom/evernote/edam/type/User;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_getUser(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_getUser()Lcom/evernote/edam/type/User;

    move-result-object p0

    return-object p0
.end method

.method public recv_authenticate()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticate_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->access$200(Lcom/evernote/edam/userstore/UserStore$authenticate_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->access$300(Lcom/evernote/edam/userstore/UserStore$authenticate_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->access$400(Lcom/evernote/edam/userstore/UserStore$authenticate_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->access$400(Lcom/evernote/edam/userstore/UserStore$authenticate_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "authenticate failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->access$300(Lcom/evernote/edam/userstore/UserStore$authenticate_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "authenticate failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_authenticateLongSession()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->access$500(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->access$600(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->access$700(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->access$700(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "authenticateLongSession failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->access$600(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "authenticateLongSession failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_authenticateToBusiness()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->access$1300(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->access$1400(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->access$1500(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->access$1500(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "authenticateToBusiness failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->access$1400(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "authenticateToBusiness failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_checkVersion()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->access$000(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "checkVersion failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "checkVersion failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_completeTwoFactorAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->access$800(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->access$900(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->access$1000(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->access$1000(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "completeTwoFactorAuthentication failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->access$900(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "completeTwoFactorAuthentication failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getBootstrapInfo()Lcom/evernote/edam/userstore/BootstrapInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->access$100(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)Lcom/evernote/edam/userstore/BootstrapInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getBootstrapInfo failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getBootstrapInfo failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getNoteStoreUrl()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->access$2900(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->access$3000(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->access$3100(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->access$3100(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getNoteStoreUrl failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->access$3000(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getNoteStoreUrl failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getPremiumInfo()Lcom/evernote/edam/type/PremiumInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->access$2600(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/type/PremiumInfo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->access$2700(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->access$2800(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->access$2800(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getPremiumInfo failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->access$2700(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getPremiumInfo failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getPublicUserInfo()Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2200(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/userstore/PublicUserInfo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2300(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2400(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2500(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2500(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getPublicUserInfo failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2400(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2300(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getPublicUserInfo failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_getUser()Lcom/evernote/edam/type/User;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getUser_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->access$1900(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/type/User;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->access$2000(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->access$2100(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->access$2100(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "getUser failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->access$2000(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "getUser failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_refreshAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->access$1600(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->access$1700(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->access$1800(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->access$1800(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x5

    const-string v1, "refreshAuthentication failed: unknown result"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->access$1700(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "refreshAuthentication failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public recv_revokeLongSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    iget v0, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;-><init>()V

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->access$1100(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->access$1200(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->access$1200(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {v0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->access$1100(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Lcom/evernote/thrift/TApplicationException;

    const/4 v0, 0x4

    const-string v1, "revokeLongSession failed: out of sequence response"

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v0}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    throw v0
.end method

.method public refreshAuthentication(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_refreshAuthentication(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_refreshAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public revokeLongSession(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_revokeLongSession(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_revokeLongSession()V

    return-void
.end method

.method public send_authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "authenticate"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticate_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->setConsumerKey(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->setConsumerSecret(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->setSupportsTwoFactor(Z)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "authenticateLongSession"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setConsumerKey(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setConsumerSecret(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setDeviceIdentifier(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setDeviceDescription(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setSupportsTwoFactor(Z)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_authenticateToBusiness(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "authenticateToBusiness"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_checkVersion(Ljava/lang/String;SS)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "checkVersion"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setClientName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMajor(S)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMinor(S)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "completeTwoFactorAuthentication"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->setAuthenticationToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->setOneTimeCode(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->setDeviceIdentifier(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->setDeviceDescription(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getBootstrapInfo(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "getBootstrapInfo"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->setLocale(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getNoteStoreUrl(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "getNoteStoreUrl"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getPremiumInfo(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "getPremiumInfo"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getPublicUserInfo(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "getPublicUserInfo"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->setUsername(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_getUser(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "getUser"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getUser_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getUser_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getUser_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getUser_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_refreshAuthentication(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "refreshAuthentication"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method

.method public send_revokeLongSession(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    iget v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    const-string v4, "revokeLongSession"

    invoke-direct {v1, v4, v3, v2}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    new-instance v0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_args;-><init>()V

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_args;->setAuthenticationToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    return-void
.end method
