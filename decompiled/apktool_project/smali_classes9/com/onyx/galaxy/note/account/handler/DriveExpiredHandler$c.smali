.class public final Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->buildBindDriveAction(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$c;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$c;->f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/data/account/AccountDataBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$c;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$c;->f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v4, Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$c;->a(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
