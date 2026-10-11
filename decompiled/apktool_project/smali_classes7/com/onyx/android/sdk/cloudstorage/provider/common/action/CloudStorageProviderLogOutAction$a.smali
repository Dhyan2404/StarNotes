.class public final Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;->access$getCloudStorageProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->logOut(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction$a;->a(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;)V

    return-void
.end method
