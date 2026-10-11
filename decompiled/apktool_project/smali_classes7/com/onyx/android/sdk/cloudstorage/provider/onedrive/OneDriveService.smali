.class public interface abstract Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\'J5\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\u0019\u0008\u0001\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\r0\u000cH\'J7\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\n2\u001b\u0008\u0001\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\r\u0018\u00010\u000cH\'J+\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\u001b\u0008\u0001\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\r\u0018\u00010\u000cH\'J&\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00032\n\u0008\u0001\u0010\u0015\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\'J\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\'J7\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00032\n\u0008\u0001\u0010\u0015\u001a\u0004\u0018\u00010\n2\u001b\u0008\u0001\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\r\u0018\u00010\u000cH\'J\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\'J\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\n\u0008\u0001\u0010\u0015\u001a\u0004\u0018\u00010\nH\'J7\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00032\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\u001b\u0008\u0001\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\r\u0018\u00010\u001fH\'J\u000e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u0003H\'J\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u00032\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\nH\'JJ\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u00032\n\u0008\u0001\u0010\'\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010(\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010)\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010*\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010+\u001a\u0004\u0018\u00010\nH\'J5\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\u0019\u0008\u0001\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\r0\u000cH\'JJ\u0010-\u001a\u0008\u0012\u0004\u0012\u00020&0\u00032\n\u0008\u0001\u0010\'\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010(\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010)\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010-\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010+\u001a\u0004\u0018\u00010\nH\'J7\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\u001b\u0008\u0001\u0010\u000b\u001a\u0015\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\r\u0018\u00010\u000cH\'J5\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00032\n\u0008\u0001\u00100\u001a\u0004\u0018\u00010\n2\u0019\u0008\u0001\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\r0\u000cH\'J<\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0001\u00102\u001a\u0002032\n\u0008\u0001\u00104\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u00105\u001a\u0004\u0018\u000106H\'\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;",
        "",
        "batchProcess",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/BatchResponse;",
        "request",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/BatchRequest;",
        "copyFile",
        "Lokhttp3/ResponseBody;",
        "id",
        "",
        "updateMap",
        "",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "createFolder",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        "parentId",
        "filedMap",
        "createRootFolder",
        "createUploadSession",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;",
        "path",
        "session",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;",
        "deleteFile",
        "fetchChildrenByPath",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;",
        "queryMap",
        "fetchFileById",
        "fetchFileByPath",
        "fetchFilesById",
        "",
        "getAccount",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveAccount;",
        "getOperationStatus",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverOperationStatus;",
        "url",
        "loadToken",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
        "clientId",
        "redirectUri",
        "clientSecret",
        "code",
        "grantType",
        "moveFile",
        "refreshToken",
        "renameFile",
        "searchFiles",
        "query",
        "upload",
        "contentLength",
        "",
        "contentRange",
        "body",
        "Lokhttp3/RequestBody;",
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


# virtual methods
.method public abstract batchProcess(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/BatchRequest;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/BatchRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/BatchRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/BatchResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "$batch"
    .end annotation
.end method

.method public abstract copyFile(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "me/drive/items/{id}/copy"
    .end annotation
.end method

.method public abstract createFolder(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "parent"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "me/drive/items/{parent}/children"
    .end annotation
.end method

.method public abstract createRootFolder(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "me/drive/root/children"
    .end annotation
.end method

.method public abstract createUploadSession(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "path"
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "me/drive/root:{path}:/createUploadSession"
    .end annotation
.end method

.method public abstract deleteFile(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "me/drive/items/{id}"
    .end annotation
.end method

.method public abstract fetchChildrenByPath(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "path"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "me/drive/root:{path}:/children"
    .end annotation
.end method

.method public abstract fetchFileById(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "me/drive/items/{id}"
    .end annotation
.end method

.method public abstract fetchFileByPath(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "path"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "me/drive/root:{path}"
    .end annotation
.end method

.method public abstract fetchFilesById(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "me/drive/items/{id}/children"
    .end annotation
.end method

.method public abstract getAccount()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveAccount;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "me"
    .end annotation
.end method

.method public abstract getOperationStatus(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverOperationStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method

.method public abstract loadToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "client_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "redirect_uri"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "client_secret"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "code"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "grant_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "common/oauth2/v2.0/token"
    .end annotation
.end method

.method public abstract moveFile(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "me/drive/items/{id}"
    .end annotation
.end method

.method public abstract refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "client_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "redirect_uri"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "client_secret"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "refresh_token"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "grant_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "common/oauth2/v2.0/token"
    .end annotation
.end method

.method public abstract renameFile(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "me/drive/items/{id}"
    .end annotation
.end method

.method public abstract searchFiles(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "name"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "me/drive/root/search(q=\'{name}\')"
    .end annotation
.end method

.method public abstract upload(Ljava/lang/String;JLjava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Header;
            value = "Content-Length"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "Content-Range"
        .end annotation
    .end param
    .param p5    # Lokhttp3/RequestBody;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
    .end annotation
.end method
