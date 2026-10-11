.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static final c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Optional;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2;->b(Ljava/util/Optional;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/util/Optional;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 2
    .param p1    # Ljava/util/Optional;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;)",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "optionalDavResource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2$1;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;)V

    new-instance v1, Lcom/sunia/HTREnginev2/wqf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/wqf;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;->access$getFileBean$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method
