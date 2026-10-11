.class public final Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0000H\u0016J\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "()V",
        "onyxAccount",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "execute",
        "getOnyxAccount",
        "sdk-data_release"
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
.field private onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getLoggedInAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;->execute()Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-object p0
.end method
