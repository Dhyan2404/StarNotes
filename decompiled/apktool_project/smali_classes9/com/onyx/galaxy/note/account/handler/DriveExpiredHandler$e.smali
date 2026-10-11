.class public final Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$e;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->INSTANCE:Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$e;->e:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->access$handleAuthResult(Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;Landroid/content/Context;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$e;->a(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V

    return-void
.end method
