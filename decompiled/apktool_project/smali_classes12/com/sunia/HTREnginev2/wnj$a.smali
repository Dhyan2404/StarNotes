.class public Lcom/sunia/HTREnginev2/wnj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/wnj;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/wnj;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/wnj;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wnj$a;->e:Lcom/sunia/HTREnginev2/wnj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wnj$a;->e:Lcom/sunia/HTREnginev2/wnj;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/wnj;->j(Lcom/sunia/HTREnginev2/wnj;)Lorg/apache/http/conn/HttpClientConnectionManager;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/conn/HttpClientConnectionManager;->closeExpiredConnections()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wnj$a;->e:Lcom/sunia/HTREnginev2/wnj;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/wnj;->j(Lcom/sunia/HTREnginev2/wnj;)Lorg/apache/http/conn/HttpClientConnectionManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/conn/HttpClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public shutdown()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wnj$a;->e:Lcom/sunia/HTREnginev2/wnj;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/wnj;->j(Lcom/sunia/HTREnginev2/wnj;)Lorg/apache/http/conn/HttpClientConnectionManager;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/conn/HttpClientConnectionManager;->shutdown()V

    return-void
.end method
