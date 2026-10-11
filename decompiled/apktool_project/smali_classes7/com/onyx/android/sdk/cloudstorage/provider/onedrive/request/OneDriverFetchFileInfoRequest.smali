.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R$\u0010\u000f\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0013\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\n\u001a\u0004\u0008\u0011\u0010\u000c\"\u0004\u0008\u0012\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;",
        "oneDriveClient",
        "",
        "b",
        "Ljava/lang/String;",
        "getPath",
        "()Ljava/lang/String;",
        "setPath",
        "(Ljava/lang/String;)V",
        "path",
        "c",
        "getId",
        "setId",
        "id",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oneDriveClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;->getOneDriveService()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "execute(...)"

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->c:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;->fetchFileById(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->parsePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;->fetchFileByPath(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    return-object p0

    .line 8
    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;->parseError(Lretrofit2/Response;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->b:Ljava/lang/String;

    return-void
.end method
