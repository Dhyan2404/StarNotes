.class public final Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;->r(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$d;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$d;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;->access$getCloudFileBeanMap$p(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$d;->a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    return-void
.end method
