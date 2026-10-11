.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;->access$getOneDriveProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;->access$getCode$p(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction$a;->a(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    move-result-object p0

    return-object p0
.end method
