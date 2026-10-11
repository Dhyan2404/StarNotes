.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction$loadAllFolderResult$list$1;
.super Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction;->loadAllFolderResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction$loadAllFolderResult$list$1",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;",
        "abort",
        "",
        "file",
        "Lcom/google/api/services/drive/model/File;",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    return-void
.end method


# virtual methods
.method public abort(Lcom/google/api/services/drive/model/File;)Z
    .locals 0
    .param p1    # Lcom/google/api/services/drive/model/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->isDir(Lcom/google/api/services/drive/model/File;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
