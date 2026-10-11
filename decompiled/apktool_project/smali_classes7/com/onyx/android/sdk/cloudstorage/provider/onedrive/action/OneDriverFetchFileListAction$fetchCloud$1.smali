.class final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction$fetchCloud$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;->fetchCloud()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileInfo",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        "invoke"
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
.field final synthetic this$0:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction$fetchCloud$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction$fetchCloud$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;->access$getOneDriveProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v1

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction$fetchCloud$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;->access$getOneDriveProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v0, v1, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction$fetchCloud$1;->invoke(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method
