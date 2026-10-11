.class final Lcom/onyx/android/sdk/data/account/AccountDataBundle$updateLocalLoginAt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/account/AccountDataBundle;->updateLocalLoginAt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $account:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle$updateLocalLoginAt$1;->$account:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/AccountDataBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle$updateLocalLoginAt$1;->$account:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setLocalLoginAt(Ljava/util/Date;)V

    .line 3
    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle$updateLocalLoginAt$1;->$account:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle$updateLocalLoginAt$1;->accept(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V

    return-void
.end method
