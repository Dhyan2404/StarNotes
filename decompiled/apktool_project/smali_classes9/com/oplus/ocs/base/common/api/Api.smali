.class public Lcom/oplus/ocs/base/common/api/Api;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/common/api/Api$BaseClientBuilder;,
        Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;,
        Lcom/oplus/ocs/base/common/api/Api$ApiOptions;,
        Lcom/oplus/ocs/base/common/api/Api$AnyClientKey;,
        Lcom/oplus/ocs/base/common/api/Api$ClientKey;,
        Lcom/oplus/ocs/base/common/api/Api$AnyClient;,
        Lcom/oplus/ocs/base/common/api/Api$Client;,
        Lcom/oplus/ocs/base/common/api/Api$SimpleClient;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/oplus/ocs/base/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClientBuilder:Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder<",
            "*TO;>;"
        }
    .end annotation
.end field

.field private mClientKey:Lcom/oplus/ocs/base/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/Api$ClientKey<",
            "*>;"
        }
    .end annotation
.end field

.field private mIsAuth:Z

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;Lcom/oplus/ocs/base/common/api/Api$ClientKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/oplus/ocs/base/common/api/Api$Client;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder<",
            "TC;TO;>;",
            "Lcom/oplus/ocs/base/common/api/Api$ClientKey<",
            "TC;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/ocs/base/common/api/Api;-><init>(Ljava/lang/String;Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;Lcom/oplus/ocs/base/common/api/Api$ClientKey;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;Lcom/oplus/ocs/base/common/api/Api$ClientKey;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/oplus/ocs/base/common/api/Api$Client;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder<",
            "TC;TO;>;",
            "Lcom/oplus/ocs/base/common/api/Api$ClientKey<",
            "TC;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "can not construct whit the null AbstractClientBuilder"

    .line 3
    invoke-static {p2, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "can not construct with the null ClientKey"

    .line 4
    invoke-static {p3, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/Api;->mName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/Api;->mClientBuilder:Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;

    .line 7
    iput-object p3, p0, Lcom/oplus/ocs/base/common/api/Api;->mClientKey:Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    .line 8
    iput-boolean p4, p0, Lcom/oplus/ocs/base/common/api/Api;->mIsAuth:Z

    return-void
.end method


# virtual methods
.method public getBaseClientBuilder()Lcom/oplus/ocs/base/common/api/Api$BaseClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/ocs/base/common/api/Api$BaseClientBuilder<",
            "*TO;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/Api;->mClientBuilder:Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;

    return-object p0
.end method

.method public getClientBuilder()Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder<",
            "*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/Api;->mClientBuilder:Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The ClientBuilder is null"

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/utils/d;->a(ZLjava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/Api;->mClientBuilder:Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;

    return-object p0
.end method

.method public getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/ocs/base/common/api/Api$ClientKey<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/Api;->mClientKey:Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This API was constructed with null clientKey."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/Api;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public isAuth()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/ocs/base/common/api/Api;->mIsAuth:Z

    return p0
.end method
