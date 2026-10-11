.class public interface abstract Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\'J\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\tH\'J\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u000bH\'J\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\'J\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00032\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u000eH\'J\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u000eH\'J\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u000eH\'J\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00032\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\'J\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00032\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0016H\'J\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00032\n\u0008\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\'J>\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00032\n\u0008\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0001\u0010 \u001a\u0004\u0018\u00010\u001aH\'J\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\tH\'J>\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00032\n\u0008\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0001\u0010\"\u001a\u0004\u0018\u00010\u001aH\'J\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010$H\'J\u001a\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00032\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\'J\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00032\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u000eH\'J&\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020(0\u00032\n\u0008\u0001\u0010)\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010*H\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;",
        "",
        "completeUpload",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
        "session",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;",
        "copyFile",
        "body",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;",
        "createFolder",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;",
        "createUploadSession",
        "deleteFile",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;",
        "fetchFileById",
        "fetchFileByPath",
        "fetchFiles",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileListResult;",
        "queryArgs",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;",
        "getDownloadLink",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;",
        "getDriveInfo",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunAccount;",
        "bearToken",
        "",
        "loadToken",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
        "clientId",
        "clientSecret",
        "grantType",
        "code",
        "moveFile",
        "refreshToken",
        "renameFile",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileRename;",
        "searchFile",
        "softDeleteFile",
        "upload",
        "Lokhttp3/ResponseBody;",
        "url",
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
.method public abstract completeUpload(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/complete"
    .end annotation
.end method

.method public abstract copyFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/copy"
    .end annotation
.end method

.method public abstract createFolder(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/create"
    .end annotation
.end method

.method public abstract createUploadSession(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/create"
    .end annotation
.end method

.method public abstract deleteFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/delete"
    .end annotation
.end method

.method public abstract fetchFileById(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/get"
    .end annotation
.end method

.method public abstract fetchFileByPath(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/get_by_path"
    .end annotation
.end method

.method public abstract fetchFiles(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/list"
    .end annotation
.end method

.method public abstract getDownloadLink(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/getDownloadUrl"
    .end annotation
.end method

.method public abstract getDriveInfo(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunAccount;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/getDriveInfo"
    .end annotation
.end method

.method public abstract loadToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
            value = "client_secret"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "grant_type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "access_token"
    .end annotation
.end method

.method public abstract moveFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/move"
    .end annotation
.end method

.method public abstract refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
            value = "client_secret"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "grant_type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "refresh_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "access_token"
    .end annotation
.end method

.method public abstract renameFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileRename;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileRename;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileRename;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/update"
    .end annotation
.end method

.method public abstract searchFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/search"
    .end annotation
.end method

.method public abstract softDeleteFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "openFile/recyclebin/trash"
    .end annotation
.end method

.method public abstract upload(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
