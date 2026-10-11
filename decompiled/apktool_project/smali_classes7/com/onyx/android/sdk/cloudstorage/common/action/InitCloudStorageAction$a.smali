.class public final Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/AccountDataBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;->access$getAppContext$p(Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->initCloudNote(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction$a;->a(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
