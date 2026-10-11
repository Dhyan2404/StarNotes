.class public Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;
.super Lorg/apache/http/impl/client/RequestWrapper;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public j:Lorg/apache/http/HttpEntity;

.field public k:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->k:Z

    return p1
.end method


# virtual methods
.method public expectContinue()Z
    .locals 1

    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lorg/apache/http/message/AbstractHttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "100-continue"

    invoke-interface {p0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->j:Lorg/apache/http/HttpEntity;

    return-object p0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->j:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->k:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$a;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$a;-><init>(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->j:Lorg/apache/http/HttpEntity;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->k:Z

    return-void
.end method
